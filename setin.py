# -*- coding: utf-8 -*-

import re
import sys
import os
import mysql.connector
from PyQt5.QtWidgets import QLineEdit, QInputDialog, QGridLayout, QLabel, QFrame, QComboBox
from PyQt5.QtWidgets import QWidget, QPushButton, QApplication, QDialog
from PyQt5.QtCore import QCoreApplication, pyqtSignal

class SetinView(QDialog):
    def __init__(self):
        super().__init__()
        self.initUI()

    def initUI(self):
        self.nusubut = QPushButton('确定', self)
        self.nusubut.clicked.connect(self.Sure)
        self.nusubut.resize(self.nusubut.sizeHint())

        self.submitbut = QPushButton('提交', self)
        self.submitbut.clicked.connect(self.Submit)
        self.submitbut.resize(self.submitbut.sizeHint())
        self.submitbut.setEnabled(False)

        self.setGeometry(400, 400, 300, 150)
        label1=QLabel("请输入学号:")
        label2=QLabel("请选择单位:")
        self.label3=QLabel(self) #Label3
        self.number = QLineEdit(self)
        self.combobox = QComboBox(self)
        self.setWindowTitle("录入")

        setinLayout = QGridLayout()
        setinLayout.addWidget(label1,1,0)
        setinLayout.addWidget(self.label3,0,1)
        setinLayout.addWidget(label2,2,0)
        setinLayout.addWidget(self.number,1,1)
        setinLayout.addWidget(self.combobox,2,1)
        setinLayout.addWidget(self.nusubut,1,2)
        setinLayout.addWidget(self.submitbut,3,2)
        self.setLayout(setinLayout)

    def Sure(self):
        self.submitbut.setEnabled(False)
        self.studentID = self.number.text()
        select = self.GetWorkplace(self.studentID)
        self.combobox.clear()
        self.combobox.addItem('请选择')
        self.label3.adjustSize()
        for i in range(len(select)):
            self.combobox.addItem(select[i])
        self.combobox.adjustSize()
        if select[0] == '用户不存在' or select[0] == '请联系管理员' or select[0] == '请等待':
            pass
        else:
            self.combobox.activated.connect(self.onActivated)

    def Submit(self):
        #print(self.stuWork)
        #print(self.studenID)
        conn = mysql.connector.connect(user='root', password='root', database='selectwork')
        result = conn.cursor()
        if self.expectNum == self.nowNum:
            result.execute('select sstate from ' + self.values + '_student where sno = %s', (self.studentID, ))
            state = result.fetchall()[0][0]
            if state == 1:
                self.label3.setText('请重新确定')
                self.label3.adjustSize()
            else:
                result.execute('update ' + self.values + '_student set splace = %s where sno = %s', (self.stuWork,self.studentID,))
                conn.commit()
                result.execute('select pyx from ' + self.values + '_place where pname = %s', (self.stuWork, ))
                Pyx = result.fetchall()[0][0]
                result.execute('update ' + self.values + '_place set pyx = %s where pname = %s', (Pyx + 1,self.stuWork, ))
                conn.commit()
                result.execute('update rs_zy set now = %s where zy = %s', (self.nowNum + 1, self.values, ) )
                conn.commit()
                result.execute('update ' + self.values + '_student set sstate = %s where sno = %s', (1,self.studentID, ))
                conn.commit()
            #result.execute('update ' + self.values + '_student set sstate = %s where sno = %s', (self.nowNum,self.studentID,))
            #conn.commit()
                self.label3.setText('提交成功')
                self.label3.adjustSize()
        else:
            result.execute('select sstate from ' + self.values + '_student where sno = %s', (self.studentID, ))
            state = result.fetchall()[0][0]
            if state == 1:
                self.label3.setText('请重新确定')
                self.label3.adjustSize()
            else:
                result.execute('update ' + self.values + '_student set splace = %s where sno = %s', (self.stuWork,self.studentID,))
                conn.commit()
                result.execute('select pyx from ' + self.values + '_place where pname = %s', (self.oldPlace, ))
                Pyx = result.fetchall()[0][0]
                result.execute('update ' + self.values + '_place set pyx = %s where pname = %s', (Pyx - 1,self.oldPlace, ))
                conn.commit()
                result.execute('select pyx from ' + self.values + '_place where pname = %s', (self.stuWork, ))
                Pyx = result.fetchall()[0][0]
                result.execute('update ' + self.values + '_place set pyx = %s where pname = %s', (Pyx + 1,self.stuWork, ))
                conn.commit()
                result.execute('update ' + self.values + '_student set sstate = %s where sno = %s', (1,self.studentID, ))
                conn.commit()
                self.label3.setText('修改成功')
                self.label3.adjustSize()
        result.close()
        conn.close()
        self.submitbut.setEnabled(False)


    def GetWorkplace(self, stuID):
        conn = mysql.connector.connect(user='root', password='root', database='selectwork')
        result = conn.cursor()
        #获取专业名称简写
        result.execute('select zy from xh_zy where xh = %s', (stuID,)) 
        self.values = result.fetchall()
        print(stuID)
        
        #可选项列表
        optional = [] 
        if len(self.values) == 0:
            self.label3.setText('用户不存在')
            self.label3.adjustSize()
            optional.append('用户不存在')
        else:
            self.values = str(self.values[0][0]) #self.values存储当前登录学生专业
            #print(values)
            #根据专业获取当前期待选择学生的排名
            result.execute('select now from rs_zy where zy = %s', (self.values,)) 
            self.expectNum = (result.fetchall())[0][0]
            #根据学号获取当前登录学生的排名
            result.execute('select spm,sstate from ' + self.values + '_student where sno = %s', (stuID,)) 
            self.nowNum,state = (result.fetchall())[0]
            if self.expectNum > self.nowNum + 1:
                optional = ['请联系管理员']
                self.label3.setText('您已提交过，请联系管理员进行修改')
                self.label3.adjustSize()
            elif self.expectNum < self.nowNum:
                optional = ['请等待']
                self.label3.setText('请按排名顺序完成录入')
                self.label3.adjustSize()
            else:
                if self.expectNum == self.nowNum:
                    result.execute('update ' + self.values + '_student set sstate = %s where sno = %s', (0,stuID, ))
                    conn.commit()
                    #获取剩余可选工作单位
                    result.execute('select pname from ' + self.values + '_place where pkx > pyx') 
                    valuesPla = result.fetchall()
                    #根据学号获取学生姓名
                    result.execute('select sname from ' + self.values + '_student where sno = %s', (stuID,))
                    valuesNam = result.fetchall()
                    #显示学生姓名
                    self.label3.setText(bytes.decode(valuesNam[0][0]))
                    self.label3.adjustSize()
                    #填充可选单位列表
                    for i in range(len(valuesPla)):
                        optional.append(bytes.decode(valuesPla[i][0]))
                else:
                    result.execute('update ' + self.values + '_student set sstate = %s where sno = %s', (0,stuID, ))
                    conn.commit()
                    result.execute('select splace from ' + self.values + '_student where sno = %s', (stuID,))
                    self.oldPlace = result.fetchall()[0][0]
                    #获取剩余可选工作单位
                    result.execute('select pname from ' + self.values + '_place where pkx > pyx') 
                    valuesPla = result.fetchall()
                    #根据学号获取学生姓名
                    result.execute('select sname from ' + self.values + '_student where sno = %s', (stuID,))
                    valuesNam = result.fetchall()
                    #显示学生姓名
                    self.label3.setText(bytes.decode(valuesNam[0][0]) + '(修改)')
                    self.label3.adjustSize()
                    #填充可选单位列表
                    for i in range(len(valuesPla)):
                        optional.append(bytes.decode(valuesPla[i][0]))
                    if bytes.decode(self.oldPlace) not in optional:
                        optional.append(bytes.decode(self.oldPlace))
            result.close()
            conn.close()
        return optional

    def onActivated(self, index):
        self.stuWork = self.combobox.itemText(index)
        if self.stuWork == '请选择':
            pass
        else:
            self.submitbut.setEnabled(True)


if __name__ == '__main__':
    
    app = QApplication(sys.argv)
    second = SetinView()
    second.show()
    sys.exit(app.exec_())