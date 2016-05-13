"""
comment
"""

from PyQt5.QtWidgets import QWidget, QPushButton, QGridLayout, QLineEdit


class HandyNbView(QWidget):
    def __init__(self, parent):
        super(HandyNbView, self).__init__(parent)

        self.handy_nb = [None, None, None, None, None, None, None, None, None, None]    #saved handynumbre

        self.grid = QGridLayout()
        self.grid.setSpacing(2)
        self.setLayout(self.grid)

        self.nr_edit = QLineEdit()
        if self.handy_nb == [None, None, None, None, None, None, None, None, None, None]:
            self.nr_edit.setText('Handynummer eingeben')
        else:
            self.nr_edit.setText(self.handy_nb)
        self.grid.addWidget(self.nr_edit, 0, 0, 1, 3)

        self.clear_bt = QPushButton('Clear')
        self.clear_bt.clicked.connect(self.clear_nb)
        self.clear_bt.setFixedSize(40, 40)
        self.grid.addWidget(self.clear_bt, 0, 3)

        names = ['7', '8', '9', '*',                 #numbreButtons
                 '4', '5', '6', '0',
                 '1', '2', '3', '#']

        positions = [(i + 1, j) for i in range(3) for j in range(4)]
        self.buttons = {}
        for position, name in zip(positions, names):
            self.buttons[name] = QPushButton(name)
            self.buttons[name].setFixedSize(40,40)
            self.buttons[name].clicked.connect(self.enter_character)
            self.grid.addWidget(self.buttons[name], *position)

        self.cancel_bt = QPushButton("Abbrechen")
        self.cancel_bt.clicked.connect(self.cancel_nb)
        self.grid.addWidget(self.cancel_bt, 5, 0, 2, 2)

        self.save_bt = QPushButton("Speichern")
        self.save_bt.clicked.connect(self.save_nb)
        self.grid.addWidget(self.save_bt, 5, 2, 2, 2)

    def clear_nb(self):
        self.nr_edit.clear()

    def enter_character(self):
        character = self.sender().text()
        old_text = self.nr_edit.text()
        new_text = old_text + character
        self.nr_edit.setText(new_text)

    def save_nb(self):
        self.handy_nb = self.nr_edit.text()
        print(self.handy_nb)
        #self.parent().show_home_view

    def cancel_nb(self):
        self.nr_edit.setText(self.handy_nb)
        #self.parent().show_home_view