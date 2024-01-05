
from create_db import create_db
from seeds import *


if __name__ == '__main__':
    """creating DB"""
    create_db()

    """fill random data to DB"""
    try:
        seed_teachers()
        seed_disciplines()
        seed_groups()
        seed_students()
        seed_grades()

        connect.commit()
    except sqlite3.Error as e :
        print(e)
    finally:
        connect.close()

