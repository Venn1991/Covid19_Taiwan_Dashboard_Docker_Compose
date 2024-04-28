FROM python:3.8.3-slim

RUN apt-get update && apt-get install -y default-libmysqlclient-dev && apt-get install -y gcc && apt-get install -y  vim

WORKDIR /Covid19_Django_Webapp
COPY Covid19_Django_Webapp .

COPY django_requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 8000
CMD python manage.py migrate;python manage.py runserver 0.0.0.0:8000