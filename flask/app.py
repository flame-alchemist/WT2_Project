from flask import Flask, render_template, request
from flask_mysqldb import MySQL
app = Flask(__name__)


app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'project'

mysql = MySQL(app)

@app.route('/api/v1/users', methods=['POST'])
def add_user():
    print('sdfsd')
    cur = mysql.connection.cursor()

    name = request.json["name"]
    email = request.json["email"]
    password = request.json["password"]
    row = ('1', name, email, password)

    data = cur.execute('INSERT INTO user(userID, username, email, password )' \
            'VALUES("%s","%s", "%s", "%s")', row,';')
    cur.close()

    return jsonify({}),201

    # res = users.find_one({'email':email})

    # if res:
    #     abort(405)
    # else:
    #     users.insert({"name":name, "id":email, "phno":phno, "university":university, "CGPA":cgpa})
    #     return jsonify({}),201

@app.route('/')#, methods=['GET', 'POST'])
def queries():
    cur = mysql.connection.cursor()
    data = cur.execute('select * from books')
    print(data)
    cur.close()
    data=0
    if data:
        return "success"
    else:
        return "failure"

# def insert():
#     #if request.method == "POST":
#     cur = mysql.connection.cursor()
    
#     csv_data = csv.reader(file('tbdb.csv'))
#     for row in csv_data:
#         cur.execute('INSERT INTO book(names, \
#           classes, mark )' \
#           'VALUES("%s", "%s", "%s")', 
#           row)

#     mysql.connection.commit()
#     cur.close()
#     return 'success'
    # details = request.form
    # firstName = 'abc'
    # lastName = 'def'
    # cur = mysql.connection.cursor()
    # cur.execute("INSERT INTO book(IDENTIFIER,IDENTIFFIER_TYPE,PUBLISHER,TITLE,PRIMARY_CREATORS,UNIVERSITY,SEMESTER,DEPARTMENT,COURSE CODE,LECTURER,NO. OF STUDENTS,PRESCRIBED/RECOMMENDED,PRESCRIPTION TYPE,NOTES,LINK ON PAPERIGHT,PAGE EXT,Updated by,Date Last Updated) VALUES (%s, %s)", (firstName, lastName))
    #return render_template('index.html')




if __name__ == '__main__':
    app.run('0.0.0.0', port=8080, debug=True)