FROM mysql:latest

COPY source.sql ./source.sql
COPY cases.sql ./cases.sql
COPY vacc.sql ./vacc.sql
COPY suspects.sql ./suspects.sql

EXPOSE 3306

