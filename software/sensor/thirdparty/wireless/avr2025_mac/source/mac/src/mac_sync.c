/**
 * @file mac_sync.c
 *
 * @brief Implements the MLME-SYNC.request.
 *
 * Copyright (c) 2013-2015 Atmel Corporation. All rights reserved.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. The name of Atmel may not be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * 4. This software may only be redistributed and used in connection with an
 *    Atmel microcontroller product.
 *
 * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
 * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * \asf_license_stop
 *
 */

/*
 * Copyright (c) 2014-2015 Atmel Corporation. All rights reserved.
 *
 * Licensed under Atmel's Limited License Agreement --> EULA.txt
 */

/* === Includes ============================================================ */
#include <compiler.h>
#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include "return_val.h"
#include "pal.h"
#include "bmm.h"
#include "qmm.h"
#include "tal.h"
#include "ieee_const.h"
#include "mac_msg_const.h"
#include "mac_api.h"
#include "mac_msg_types.h"
#include "mac_data_structures.h"
#include "stack_config.h"
#include "mac_internal.h"
#include "mac.h"
#include "mac_config.h"
#include "mac_build_config.h"

/* === Macros =============================================================== */

/* === Globals ============================================================= */

/* === Prototypes ========================================================== */

#if (MAC_SYNC_REQUEST == 1)
static void mac_t_missed_beacons_cb(void *callback_parameter);

#endif  /* (MAC_SYNC_REQUEST == 1) */

/* === Implementation ====================================================== */

#if (MAC_SYNC_REQUEST == 1)

/**
 * @brief Implements the MLME-SYNC request.
 *
 * The MLME-SYNC.request primitive requests to synchronize with the
 * coordinator by acquiring and, if specified, tracking its beacons.
 * The MLME-SYNC.request primitive is generated by the next higher layer of a
 * device on a beacon-enabled PAN and issued to its MLME to synchronize with
 * the coordinator.
 *
 * Enable receiver and search for beacons for at most an interval of
 * [aBaseSuperframeDuration * ((2 ^ (n))+ 1)] symbols where n is the value of
 * macBeaconOrder. If a beacon frame containing the current PAN identifier of
 * the device is not received, the MLME shall repeat this search. Once the
 * number of missed beacons reaches aMaxLostBeacons, the MLME shall notify
 * the next higher layer by issuing the MLME-SYNC-LOSS.indication primitive
 * with a loss reason of BEACON_LOSS.
 *
 * @param m Pointer to the MLME sync request parameters.
 */
void mlme_sync_request(uint8_t *m)
{
#if (_DEBUG_ > 0)
	retval_t set_status, set_status_2;
#endif

	mlme_sync_req_t *msr = (mlme_sync_req_t *)BMM_BUFFER_POINTER(
			(buffer_t *)m);

	/*
	 * Sync is only allowed for nodes that are:
	 * 1) Devices (also before association.) or coordinators
	 *    (no PAN coordinators),
	 * 2) Currently NOT polling, and
	 * 3) Currently NOT scanning.
	 */
	if (
#if (MAC_START_REQUEST_CONFIRM == 1)
		(MAC_PAN_COORD_STARTED == mac_state) ||
#endif /* (MAC_START_REQUEST_CONFIRM == 1) */
		(MAC_POLL_IDLE != mac_poll_state) ||
		(MAC_SCAN_IDLE != mac_scan_state)
		) {
		/* Free the buffer allocated for MLME-SYNC-Request */
		bmm_buffer_free((buffer_t *)m);

		mac_sync_loss(MAC_BEACON_LOSS);

		return;
	}

	/* Stop the beacon tracking period timer. */
	pal_timer_stop(T_Beacon_Tracking_Period);

#if (_DEBUG_ > 0)
	if (pal_is_timer_running(T_Beacon_Tracking_Period)) {
		Assert("BCN tmr running" == 0);
	}
#endif

	/* Set MAC Sync state properly. */
	if (MAC_IDLE == mac_state) {
		/*
		 * We try to sync before association.
		 * This is a special sync state that checks beacon frames
		 * similar to
		 * MAC_SYNC_TRACKING_BEACON while being associated.
		 *
		 * Before this state can be entered successfully a number of PIB
		 * attributes have to be set properly:
		 * 1) PAN-Id (macPANId)
		 * 2) Coordinator Short or Long address (depending upon which
		 * type
		 *    of addressing the coordinator is using)
		 *    (macCoordShortAddress or mac macCoordExtendedAddress)
		 *
		 * Furthermore it is strongly recommended to set the Beacon
		 * order and
		 * Superframe order (macBeaconOrder, macSuperframeOrder).
		 * If these parameters are not set and the node tries to sync
		 * with a
		 * network, where it never receives a beacon from, the missed
		 * beacon
		 * timer (required for reporting a sync loss condition) will
		 * start
		 * with a huge time value (based on a beacon order = 15).
		 * If finally a beacon is received from the desired network, the
		 * timer
		 * will be updated.
		 * Nevertheless setting the PIB attributes before sync is safer.
		 */
		mac_sync_state = MAC_SYNC_BEFORE_ASSOC;
	} else {
		if (msr->TrackBeacon) {
			mac_sync_state = MAC_SYNC_TRACKING_BEACON;
		} else {
			mac_sync_state = MAC_SYNC_ONCE;
		}
	}

	/* Wake up radio first */
	mac_trx_wakeup();

#if (_DEBUG_ > 0)
	set_status =
#endif
	set_tal_pib_internal(phyCurrentPage, (void *)&(msr->ChannelPage));
#if (_DEBUG_ > 0)
	Assert(MAC_SUCCESS == set_status);
#endif

#if (_DEBUG_ > 0)
	set_status_2 =
#endif
	set_tal_pib_internal(phyCurrentChannel, (void *)&(msr->LogicalChannel));
#if (_DEBUG_ > 0)
	Assert(MAC_SUCCESS == set_status_2);
#endif

	mac_start_missed_beacon_timer();

	/* Start synching by switching ON the receiver. */
	tal_rx_enable(PHY_RX_ON);

	/* Free the buffer allocated by the higher layer */
	bmm_buffer_free((buffer_t *)m);
}

/*
 * @brief Timer function after sync request to wake up radio at beacon time
 *
 * This function is a callback from the tracking beacon timer and implements
 * the RX timer service  function during sync and enables the receiver before
 * the next beacon reception is expected.
 *
 * @param callback_parameter Callback parameter of the expired beacon
 *                           tracking timer
 */
void mac_t_tracking_beacons_cb(void *callback_parameter)
{
	/* Wake up radio first */
	mac_trx_wakeup();

	/* Turn the radio on */
	tal_rx_enable(PHY_RX_ON);
	mac_superframe_state = MAC_ACTIVE_CAP;

	callback_parameter = callback_parameter; /* Keep compiler happy. */
}

/*
 * @brief Timer function at start of the inactive portion at an end device.
 *
 * This function is a callback from the superframe beacon timer for an
 * end device and implements the functionality required for entering the
 * inactive portion for an end device.
 *
 * @param callback_parameter Callback parameter of the superframe timer
 */
void mac_t_start_inactive_device_cb(void *callback_parameter)
{
	/*
	 * Go to sleep (independent of the value of macRxOnWhenIdle)
	 * because we enter the incative portion now.
	 * Note: Do not use mac_sleep_trans() here, because this would check
	 * macRxOnWhenIdle first.
	 */
	/* mac_trx_init_sleep(); */

	mac_superframe_state = MAC_INACTIVE;
	mac_sleep_trans();

	callback_parameter = callback_parameter; /* Keep compiler happy. */
}

/*
 * @brief Timer function after sync request to count missed beacon frames.
 *
 * This function is a callback from the missed beacon timer and implements the
 * generation of sync loss if required.
 *
 * @param callback_parameter Callback parameter of the expired missed beacon
 *                           tracking timer
 */
static void mac_t_missed_beacons_cb(void *callback_parameter)
{
	if (MAC_SYNC_NEVER != mac_sync_state) {
		/* Since the node lost sync with it's parent, it reports sync
		 * loss. */
		mac_sync_loss(MAC_BEACON_LOSS);
	}

	callback_parameter = callback_parameter; /* Keep compiler happy. */
}

/*
 * @brief helper function to start missed beacon timer
 */
void mac_start_missed_beacon_timer(void)
{
	uint32_t sync_loss_time;
	uint8_t timer_status;

	/* Stop the missed beacon timer. */
	pal_timer_stop(T_Missed_Beacon);

#if (_DEBUG_ > 0)
	if (pal_is_timer_running(T_Missed_Beacon)) {
		Assert("Missed BCN tmr running" == 0);
	}
#endif

	/* Calculate the time allowed for missed beacons. */
	if (tal_pib.BeaconOrder < NON_BEACON_NWK) {
		/*
		 * This the regualar case where we already have a Beacon Order.
		 * In this case the Sync Loss time is a function of the actual
		 * Beacon Order.
		 */
		sync_loss_time = TAL_GET_BEACON_INTERVAL_TIME(
				tal_pib.BeaconOrder);
	} else {
		/*
		 * This the "pathological" case where we don NOT have a Beacon
		 * Order.
		 * This happens regularly in case of synchronization before
		 * association
		 * if the Beacon Order was not set be the network layer or
		 * application.
		 *
		 * In this case the Sync Loss time is based on the highest
		 * possible
		 * Beacon Order, which is 15 - 1, since 15 means no Beacon
		 * network.
		 */
		sync_loss_time
			= TAL_GET_BEACON_INTERVAL_TIME(NON_BEACON_NWK -
				1);
	}

	sync_loss_time *= aMaxLostBeacons;

	sync_loss_time = TAL_CONVERT_SYMBOLS_TO_US(sync_loss_time);

	timer_status = pal_timer_start(T_Missed_Beacon,
			sync_loss_time,
			TIMEOUT_RELATIVE,
			(FUNC_PTR)mac_t_missed_beacons_cb,
			NULL);

	if (MAC_SUCCESS != timer_status) {
#if (_DEBUG_ > 0)
		Assert(MAC_SUCCESS == timer_status);
#endif
		/* Sync timer could not be started hence report sync-loss */
		mac_sync_loss(MAC_BEACON_LOSS);
	}
}

#endif /* (MAC_SYNC_REQUEST == 1) */

#if (MAC_SYNC_LOSS_INDICATION == 1)

/**
 * @brief Function to initiate MLME-SYNC-LOSS.indication to NHLE.
 *
 * @param loss_reason MAC_REALIGNMENT if sync loss is due to receiving
 * coordinator realignment command and MAC_BEACON_LOSS if beacon was
 * lost following a sync request.
 */
void mac_sync_loss(uint8_t loss_reason)
{
	/*
	 * Static buffer used to give sync loss indication. This buffer is used
	 * in two
	 * instances
	 * 1) when the device looses sync with the parents beacons
	 * 2) when the device receives a coordinator realignment command from
	 * his
	 *    parent
	 * The buffer pointer is stored into the begin of the same static
	 * buffer.
	 */
	static uint8_t mac_sync_loss_buffer[sizeof(buffer_t) +
	sizeof(mlme_sync_loss_ind_t)];

	mlme_sync_loss_ind_t *sync_loss_ind;
	buffer_t *msg_ptr;

	/* Update static buffer allocated for sync loss indication. */
	msg_ptr = (buffer_t *)mac_sync_loss_buffer;
	msg_ptr->body = &mac_sync_loss_buffer[sizeof(buffer_t)]; /* begin of
	                                                          * message */
	sync_loss_ind = (mlme_sync_loss_ind_t *)(msg_ptr->body);

	sync_loss_ind->cmdcode = MLME_SYNC_LOSS_INDICATION;
	sync_loss_ind->LossReason = loss_reason;

#if (MAC_SCAN_SUPPORT == 1)
	if (MAC_SCAN_IDLE != mac_scan_state) {
#if ((MAC_SCAN_ACTIVE_REQUEST_CONFIRM == 1) || \
		(MAC_SCAN_PASSIVE_REQUEST_CONFIRM == 1))
		sync_loss_ind->PANId = mac_scan_orig_panid;
#else
		sync_loss_ind->PANId = tal_pib.PANId;
#endif  /* ((MAC_SCAN_ACTIVE_REQUEST_CONFIRM == 1) ||
		 *(MAC_SCAN_PASSIVE_REQUEST_CONFIRM == 1)) */
		sync_loss_ind->LogicalChannel = mac_scan_orig_channel;
		sync_loss_ind->ChannelPage = mac_scan_orig_page;
	} else
#endif  /* (MAC_SCAN_SUPPORT == 1) */
	{
		sync_loss_ind->PANId = tal_pib.PANId;
		sync_loss_ind->LogicalChannel = tal_pib.CurrentChannel;
		sync_loss_ind->ChannelPage = tal_pib.CurrentPage;
	}

	/* Append the associate confirm message to MAC-NHLE queue. */
	qmm_queue_append(&mac_nhle_q, msg_ptr);

#ifdef GTS_SUPPORT
	handle_gts_sync_loss();
#endif /* GTS_SUPPORT */

	/* A device that is neither scanning nor polling shall go to sleep now.
	**/
	if ((MAC_IDLE == mac_state) || (MAC_ASSOCIATED == mac_state)) {
		if ((MAC_SCAN_IDLE == mac_scan_state) &&
				(MAC_POLL_IDLE == mac_poll_state)) {
			/* Set radio to sleep if allowed */
			mac_sleep_trans();
		}
	}

	mac_sync_state = MAC_SYNC_NEVER;
}

/**
 * @brief Processing a coordinator realignment command frame
 *
 * This function processes a coordinator realignment command frame received
 * from the coordinator (while NOT being in the middle of an Orphan scan, but
 * rather after initiation of a start request primitive from the coordinator
 * indicating realingment.
 * The PAN ID, coord. short address, logical channel, and the device's new
 * short address will be written to the PIB.
 *
 * @param ind Frame reception buffer
 */
void mac_process_coord_realign(buffer_t *ind)
{
	/*
	 * The coordinator realignment command is received without the orphan
	 * notification. Hence a sync loss indication is given to NHLE.
	 */
	mac_sync_loss(MAC_REALIGNMENT);

	/*
	 * The buffer in which the coordinator realignment is received is
	 * freed up
	 */
	bmm_buffer_free((buffer_t *)ind);

	/* Set the appropriate PIB entries */

#if (_DEBUG_ > 0)
	retval_t set_status =
#endif
	set_tal_pib_internal(macPANId,
			(void *)&mac_parse_data.mac_payload_data.coord_realign_data.pan_id);

#if (_DEBUG_ > 0)
	Assert(MAC_SUCCESS == set_status);
#endif

	if (BROADCAST !=
			mac_parse_data.mac_payload_data.coord_realign_data.
			short_addr) {
		/* Short address only to be set if not broadcast address */
#if (_DEBUG_ > 0)
		set_status =
#endif
		set_tal_pib_internal(macShortAddress,
				(void *)&mac_parse_data.mac_payload_data.coord_realign_data.short_addr);

#if (_DEBUG_ > 0)
		Assert(MAC_SUCCESS == set_status);
#endif
	}

	mac_pib.mac_CoordShortAddress
		= mac_parse_data.mac_payload_data.coord_realign_data.
			coord_short_addr;

	/*
	 * If frame version subfield indicates a 802.15.4-2006 compatible frame,
	 * the channel page is appended as additional information element.
	 */
	if (mac_parse_data.fcf & FCF_FRAME_VERSION_2006) {
#if (_DEBUG_ > 0)
		set_status =
#endif
		set_tal_pib_internal(phyCurrentPage,
				(void *)&mac_parse_data.mac_payload_data.coord_realign_data.channel_page);
#if (_DEBUG_ > 0)
		Assert(MAC_SUCCESS == set_status);
#endif
	}

#if (_DEBUG_ > 0)
	set_status =
#endif
	set_tal_pib_internal(phyCurrentChannel,
			(void *)&mac_parse_data.mac_payload_data.coord_realign_data.logical_channel);

#if (_DEBUG_ > 0)
	Assert(MAC_SUCCESS == set_status);
#endif
} /* mac_process_coord_realign() */

#endif /* MAC_SYNC_LOSS_INDICATION */

/* EOF */
