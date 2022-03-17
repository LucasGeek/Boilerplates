CREATE USER dev with encrypted password 'dev';
CREATE DATABASE dev_api;
GRANT ALL PRIVILEGES ON DATABASE dev_api TO dev;
