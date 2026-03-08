import mysql.connector

def get_db_connection():
    try:
     
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='mysql', 
            database='pyclgdb' 
        )
        return connection
    except Exception as e:
        print(f"Database error: {e}")
        return None