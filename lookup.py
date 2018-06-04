# -*- coding:utf-8 -*-

import re
import sys
import os
import mysql.connector
import hashlib
from PyQt5.QtWidgets import QLineEdit, QInputDialog, QGridLayout, QLabel, QFrame, QComboBox
from PyQt5.QtWidgets import QWidget, QPushButton, QApplication, QDialog
from PyQt5.QtCore import QCoreApplication, pyqtSignal

#rzpxdd26 + exportResult[i][1].decode('utf-8')

class LookupView(QDialog):
    def __init__(self):
        super().__init__()
        self.initUI()

    def initUI(self):
        
        self.nusubut = QPushButton('确定', self)
        self.nusubut.clicked.connect(self.Sure)
        self.nusubut.resize(self.nusubut.sizeHint())
        
        self.exportbut = QPushButton('导出', self)
        self.exportbut.clicked.connect(self.Export)
        self.exportbut.resize(self.exportbut.sizeHint())
        self.exportbut.setEnabled(False)

        self.setGeometry(400, 400, 300, 150)
        label1=QLabel("请输入密码：")
        label2=QLabel("请选择专业：")
        self.label3=QLabel(self) #Label3
        self.passwd = QLineEdit(self)

        self.combo = QComboBox(self)
        self.combo.addItem("请选择")
        
        
        self.setWindowTitle("查看")

        lookupLayout = QGridLayout()
        lookupLayout.addWidget(self.label3,0,1)
        lookupLayout.addWidget(label1,1,0)
        lookupLayout.addWidget(label2,2,0)
        lookupLayout.addWidget(self.nusubut,1,2)
        lookupLayout.addWidget(self.passwd,1,1)
        lookupLayout.addWidget(self.combo,2,1)
        #lookupLayout.addWidget(nusubut,0,2)
        lookupLayout.addWidget(self.exportbut,3,2)
        self.setLayout(lookupLayout)

    def Export(self):
       
        conn = mysql.connector.connect(user='root', password='root', database='selectwork')
        result = conn.cursor()
        result.execute('select zy from zw_zy where zw = %s', (self.stuProfession, ))
        zyPro = result.fetchall()[0][0]
        result.execute('select sno,sname,splace from ' + zyPro + '_student ')
        exportResult = result.fetchall()
        print(str(exportResult[0][0]))
        if os.path.exists(self.stuProfession + '.txt'):
            os.remove(self.stuProfession + '.txt')
        with open (self.stuProfession + '.txt', 'w', encoding='utf-8') as f:
            for i in range(len(exportResult)):
                if exportResult[i][2] == None:
                    f.write(str(exportResult[i][0]) + ' ' + bytes.decode(exportResult[i][1]) + ' None\n')
                else:
                    f.write(str(exportResult[i][0]) + ' ' + bytes.decode(exportResult[i][1]) + ' '+ bytes.decode(exportResult[i][2]) + '\n')
        #print(exportResult)

    def GetProfession(self):
        conn = mysql.connector.connect(user='root', password='root', database='selectwork')
        result = conn.cursor()
        result.execute('select zw from zw_zy') 
        valuesPro = result.fetchall()
        profession = []
        #print(valuesPro[1][0])
        for i in range(len(valuesPro)):
                        profession.append(valuesPro[i][0])
        result.close()
        conn.close()
        return profession

    def onActivated(self, index):
        self.exportbut.setEnabled(False)
        self.stuProfession = self.combo.itemText(index)
        if self.stuProfession != '请选择':
            self.exportbut.setEnabled(True)

    def checkPasswd(self):
        inputPasswd = self.passwd.text()
        #print(inputPasswd)
        hash_md5 = hashlib.md5(str.encode(inputPasswd))
        inputPasswd = hash_md5.hexdigest()
        if inputPasswd == 'dbc627bdd5006763ac320b4c4813f694':
            return True
        else:
            return False


    def Sure(self):
        if self.checkPasswd():
            self.label3.setText('密码正确，请选择专业')
            self.label3.adjustSize()
            #print(self.stuProfession)
            select = self.GetProfession()
            for i in range(len(select)):
                self.combo.addItem(select[i])
                self.combo.adjustSize()
            self.combo.activated.connect(self.onActivated)
        else:
            self.combo.clear()
            self.combo.addItem('密码错误')
            self.label3.setText('请重新输入密码')
            self.label3.adjustSize()
            self.exportbut.setEnabled(False)



if __name__ == '__main__':
    
    app = QApplication(sys.argv)
    third = LookupView()
    third.show()
    sys.exit(app.exec_())