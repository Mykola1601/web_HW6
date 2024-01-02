
from mysql.connector import Error
from connect import create_connection, database


def delete(conn, table, id):
    sql = 'DELETE FROM %s WHERE id= %s'
    cur = conn.cursor()
    try:
        cur.execute(sql, (table, id))
        conn.commit()
    except Error as e:
        print(e)
    finally:
        cur.close()


if __name__ == '__main__':
    with create_connection(database) as conn:
        delete_task(conn, 1)
