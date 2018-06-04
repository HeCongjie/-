# -*- coding:utf-8 -*-

import re
import sys
import os
import mysql.connector
from PyQt5.QtWidgets import QLineEdit, QInputDialog, QGridLayout, QLabel, QFrame, QComboBox
from PyQt5.QtWidgets import QWidget, QPushButton, QApplication, QDialog, QScrollArea
from PyQt5.QtCore import QCoreApplication, pyqtSignal, QEvent
import setin
import lookup


class View(QWidget):
    def __init__(self):
        super().__init__()
        self.initUI()

    def initUI(self):               
        enbut = QPushButton('录入', self)
        enbut.clicked.connect(self.Setin)
        enbut.resize(enbut.sizeHint())
        #qtbut.move(60, 50)

        lkbut = QPushButton('查看', self)
        lkbut.clicked.connect(self.Look)
        lkbut.resize(lkbut.sizeHint())
        #stbut.move(120, 100)

        qtbut = QPushButton('退出', self)
        qtbut.clicked.connect(QCoreApplication.instance().quit)
        qtbut.resize(qtbut.sizeHint())

        labelTitle = QLabel("毕业分配选岗系统")


        self.setGeometry(400, 400, 300, 150)
        self.setWindowTitle('毕业分配选岗系统 V1.0')
        buttenLayout = QGridLayout()
        buttenLayout.addWidget(enbut,1,0)
        buttenLayout.addWidget(lkbut,1,1)
        buttenLayout.addWidget(qtbut,1,2)

        mainLayout = QGridLayout()
        mainLayout.addWidget(labelTitle,0,2,1,1)
        mainLayout.addLayout(buttenLayout,1,1,1,3)
        self.setLayout(mainLayout)


    def Setin(self):
        self.setin = setin.SetinView()
        self.setin.exec_()

    def Look(self):
        self.lookup = lookup.LookupView()
        self.lookup.exec_()


if __name__ == '__main__':
    
    app = QApplication(sys.argv)
    first = View()
    first.show()
    sys.exit(app.exec_())