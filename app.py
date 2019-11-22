from flask_mysqldb import MySQL
from flask import Flask, render_template, request, abort, jsonify
from flask_cors import CORS
from bson.json_util import dumps
import json, base64
import requests,json
import uuid
app = Flask(__name__)
cors = CORS(app, resources={r"/*": {"origins": "*"}})

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'project'

mysql = MySQL(app)

@app.route('/api/v1/add_user', methods=['POST'])
def add_user():

    cur = mysql.connection.cursor()

    name = request.json["name"]
    email = request.json["email"]
    password = request.json["password"]
    password = base64.b64encode(password.encode("utf-8"))
    user_id = str(uuid.uuid1())
    row = (user_id, name, email, password)
    print(row)
    cur.execute("insert into user values ( %s, %s, %s, %s)",row)
    mysql.connection.commit()
    cur.close()

    return jsonify({}),201

@app.route('/api/v1/checkUser', methods=['POST'])
def check_user():
    # print("check user")
    cur = mysql.connection.cursor()

    email = request.json["email"]
    password = request.json["password"]
    password = base64.b64encode(password.encode("utf-8"))
    row = (email, password)
    print(row)
    cur.execute("select userID,username from user where email=%s and password=%s",row)
    data = cur.fetchall()
    print(data)
    cur.close()

    if(data):
        print('success')
        return_data = {"id":str(data[0][0]), "name":str(data[0][1])}
        print("return_data", return_data)
        return jsonify(return_data),201
    else:
        print('failure')
        return jsonify({}),403


@app.route('/api/v1/getBooks', methods=['POST'])
def get_books():
    chunk_count = int(request.json['chunk_count'])
    cur = mysql.connection.cursor()
    cur.execute('select original_title, authors, image_url from books where id between ' + str(chunk_count*6) + ' and ' + str((chunk_count*6+6)))
    # cur.execute('select original_title, authors from books where id between ' + str(chunk_count) + ' and ' + str((chunk_count*10+10)))
    data = cur.fetchall()
    cur.close()
    print(data)
    return_data = []
    if data:
    for i in data:
    tmp = {"title":i[0],"author":i[1],"url":i[2]}
    return_data.append(tmp)
    return jsonify({"data":return_data}),200
    else:
    return jsonify({}),400


@app.route('/api/v1/suggest', methods=['POST'])
def get_terms():
    term = request.json['search_term']
    res = []
    cur = mysql.connection.cursor()
    cur.execute("select original_title from books where original_title like '" + term + "%'");
    data = cur.fetchall()
    print(data)
    return_data = [element for t in data for element in t]
    return jsonify({"data":return_data}), 200;

if __name__ == '__main__':
    app.run('0.0.0.0', port=8080, debug=True)
