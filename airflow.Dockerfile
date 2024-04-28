FROM apache/airflow:2.1.2rc1-python3.8

ENV AIRFLOW_HOME=/airflow
WORKDIR /airflow

COPY airflow_covid19_tw/requirements.txt requirements.txt
COPY airflow_covid19_tw/create_mysql_conn.sh create_mysql_conn.sh
COPY airflow_covid19_tw/dags ./dags
COPY airflow_covid19_tw/plugins ./plugins
RUN mkdir logs

# RUN airflow connections add 'mysql_conn' --conn-type 'mysql' --conn-login 'aritek' --conn-password 'password' --conn-host 'mysql' --conn-port '3306' --conn-schema 'airflow'

RUN pip install -r requirements.txt

EXPOSE 8080
