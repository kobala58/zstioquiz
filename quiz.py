# -*- coding: utf-8 -*-
# quiz/quiz.py

from flask import Flask, render_template, request
from flaskext.mysql import MySQL

app = Flask(__name__)

mysql = MySQL()
# MySQL configurations########################
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_DB'] = 'slownictwo'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)
conn = mysql.connect()
cursor = conn.cursor()
###############################################

@app.route('/dzialy',methods=['POST', 'GET'])
def dzialy():

    if request.method=='POST':
       a=request.form['dzial']
       b=request.form['wtg']
       b = int(b)
       cursor.execute('SELECT * FROM {0} ORDER BY RAND() LIMIT {1}'.format(a,b))
       slowka = cursor.fetchall()
       return  render_template('dzialy.html',slowka = slowka)


@app.route('/' , methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        print("work")
        return  render_template('dzialy.html')

    cursor.execute('SHOW TABLES')
    dzialy = cursor.fetchall()
    return  render_template('index.html',dzialy=dzialy)


if __name__ == '__main__':
    app.run(debug=True)
