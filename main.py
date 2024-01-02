
import mysql.connector

# from contextlib import contextmanager

connection = mysql.connector.connect(host = "MIKOLA1601.zzz.com.ua", port = 3306, user = "MIKOLA1601", password = "Hm134549", database = "mikola1601")
print(connection)

