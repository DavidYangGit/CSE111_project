import sqlite3
from sqlite3 import Error

def openConnection(_dbFile):
    conn = None
    try:
        conn = sqlite3.connect(_dbFile)
        print("success")
    except Error as e:
        print(e)
    return conn

def closeConnection(_conn, _dbFile):
    try:
        _conn.close()
        print("success")
    except Error as e:
        print(e)
        
def popUser(_conn):
    c=_conn.cursor()
    c.executescript(f"""
                    
                    """)

