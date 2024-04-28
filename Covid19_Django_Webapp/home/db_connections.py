# Create MySql Connection
import pymysql

class mysql_connect:
	conn = pymysql.connect(host="mysql",user='aritek',password='password',db='airflow',cursorclass=pymysql.cursors.DictCursor)
