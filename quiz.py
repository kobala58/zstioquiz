# -*- coding: utf-8 -*-
# quiz/quiz.py

from flask import Flask, render_template, request
from flaskext.mysql import MySQL

app = Flask(__name__)

mysql = MySQL()
# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_DB'] = 'slownictwo'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)
conn = mysql.connect()
cursor = conn.cursor()

@app.route('/dzialy')
def dzialy():
    cursor.execute('SHOW TABLES')
    dzialy = cursor.fetchall()
    return  render_template('dzialy.html',dzialy=dzialy)

@app.route('/')
def index():
    # return 'Cześć, tu Python!'
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)
