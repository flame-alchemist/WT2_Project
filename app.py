from flask_mysqldb import MySQL
from flask import Flask, render_template, request, abort, jsonify
from flask_cors import CORS
from bson.json_util import dumps
import json, base64
import requests,json

app = Flask(__name__)
cors = CORS(app, resources={r"/api/*": {"origins": "*"}})

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'project'

mysql = MySQL(app)

@app.route('/api/v1/uadd_user', methods=['POST'])
def add_user():

    cur = mysql.connection.cursor()

    name = request.json["name"]
    email = request.json["email"]
    password = request.json["password"]
    password = base64.b64encode(password.encode("utf-8"))
    row = (int('1'), name, email, password)
    print(row)
    cur.execute("insert into user values ( %s, %s, %s, %s)",row)
    mysql.connection.commit()
    cur.close()

    return jsonify({}),201

    # res = users.find_one({'email':email})

    # if res:
    #     abort(405)
    # else:
    #     users.insert({"name":name, "id":email, "phno":phno, "university":university, "CGPA":cgpa})
    #     return jsonify({}),201
@app.route('/api/v1/check_user', methods=['POST'])
def check_user():

    cur = mysql.connection.cursor()

    email = request.json["email"]
    password = request.json["password"]
    password = base64.b64encode(password.encode("utf-8"))
    row = (email, password)
    print(row)
    data = cur.execute("select username from user where email=%s and password=%s",row)
    cur.close()

    if(data):
        print('success')
        return render_template(‘project.html’)
    else:
        print('failure')
        return 403


@app.route('/api/v1/getBooks', methods=['POST'])
def get_books():
    
#
# @app.route('/')#, methods=['GET', 'POST'])
# def queries():
#     cur = mysql.connection.cursor()
#     data = cur.execute('select * from books')
#     cur.close()
#     if data:
#         return "success"
#     else:
#         return "failure"

if __name__ == '__main__':
    app.run('0.0.0.0', port=8080, debug=True)
