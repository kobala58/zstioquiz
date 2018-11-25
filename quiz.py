# -*- coding: utf-8 -*-
# quiz/quiz.py

from flask import Flask, render_template, request, redirect, url_for, abort, flash
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
    if request.method=='GET':
       a=request.args.get('dzial')
       global b
       b=request.args.get('wtg')
       b = int(b)
       cursor.execute('SELECT * FROM {0} ORDER BY RAND() LIMIT {1}'.format(a,b))
       global slowka
       slowka = cursor.fetchall()
       return  render_template('dzialy.html',slowka = slowka)

    if request.method=='POST':
        test = []
        score = 0
        for x in request.form.items():
            if x in slowka:
                score = score+1
            else:
                test.append(x[0])
        wynik = (score / b)*100

        return render_template('wyniki.html',wynik = wynik, test = test)



@app.route('/' , methods=['GET', 'POST'])
def index():

    cursor.execute('SHOW TABLES')
    dzialy = cursor.fetchall()
    return  render_template('index.html',dzialy=dzialy)


if __name__ == '__main__':
    app.run(debug=True)
