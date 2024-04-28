#!/bin/bash
airflow connections add 'mysql_conn' --conn-type 'mysql' --conn-login 'aritek' --conn-password 'password' --conn-host 'mysql' --conn-port '3306' --conn-schema 'airflow'