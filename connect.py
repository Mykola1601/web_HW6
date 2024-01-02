
import sqlite3
from contextlib import contextmanager

database = './hw6.db'


@contextmanager
def create_connection(db_file):
    """ create a database connection to a SQLite database """
    conn = sqlite3.connect(db_file)
    yield conn
    conn.rollback()
    conn.close()

# # print(create_connection(database))


# from psycopg2 import connect, Error
# from contextlib import contextmanager

# database = './hw6.db'

# @contextmanager
# def create_connection(w):
#     conn = None
#     try:
#         conn = connect(host="localhost", port=5432, user="postgres", password="1601", database="postgres")
#         yield conn
#         conn.commit()
#     except Error as e:
#         print(e)
#         conn.rollback()
    # finally:
    #     if conn is not None
    #         conn.close()

# print(create_connection())