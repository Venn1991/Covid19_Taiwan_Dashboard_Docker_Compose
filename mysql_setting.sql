CREATE USER 'aritek'@'%' IDENTIFIED WITH caching_sha2_password BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'aritek'@'%';
FLUSH PRIVILEGES;

SET GLOBAL max_allowed_packet=1048576000;

CREATE DATABASE airflow character set utf8mb4 collate utf8mb4_0900_ai_ci;
CREATE DATABASE airflow_db character set utf8mb4 collate utf8mb4_0900_ai_ci;
CREATE DATABASE django_app character set utf8mb4 collate utf8mb4_0900_ai_ci;