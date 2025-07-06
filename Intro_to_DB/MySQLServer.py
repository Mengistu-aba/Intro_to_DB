# MySQLServer.py

import mysql.connector
from mysql.connector import Error
connection = None

try:
    connection = mysql.connector.connect(
         host='localhost',
        port=3307, 
        user='root',
        password='Aba71219@21'  # Replace with your MySQL root password
    )
    cursor = connection.cursor()
    cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")

except Error as e:
    print(f"Error connecting to MySQL: {e}")

finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
