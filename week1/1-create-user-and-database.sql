CREATE USER pg4e WITH PASSWORD 'secret';
CREATE DATABASE people WITH OWNER 'pg4e';
-- access database by command: psql <databasename> <username>