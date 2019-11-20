import csv
import MySQLdb

mydb = MySQLdb.connect(host='localhost',
    user='root',
    passwd='root',
    db='project')
cursor = mydb.cursor()

csv_data = csv.reader(file('tbdb.csv'))
for row in csv_data:

    cursor.execute('INSERT INTO book(names, \
          classes, mark )' \
          'VALUES("%s", "%s", "%s")', 
          row)
#close the connection to the database.
mydb.commit()
cursor.close()
print "Done"


#create table book(VARCHAR(25) IDENTIFIER,VARCHAR(25) IDENTIFFIER_TYPE,VARCHAR(25) PUBLISHER,VARCHAR(25) TITLE,VARCHAR(25) PRIMARY_CREATORS,VARCHAR(25) UNIVERSITY,VARCHAR(25) SEMESTER,VARCHAR(25) DEPARTMENT,VARCHAR(25) COURSE CODE,VARCHAR(25) LECTURER,INT(11) NO. OF STUDENTS,VARCHAR(25) PRESCRIBED/RECOMMENDED,VARCHAR(25) PRESCRIPTION TYPE,VARCHAR(25) NOTES,VARCHAR(25) LINK ON PAPERIGHT,VARCHAR(25) PAGE EXT,Updated by,Date Last Updated);
