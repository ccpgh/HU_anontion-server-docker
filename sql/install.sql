FLUSH PRIVILEGES;

DROP USER IF EXISTS 'anontion'@'localhost';

CREATE USER 'anontion'@'%' IDENTIFIED BY 'NNNNN';

CREATE DATABASE IF NOT EXISTS anontion_live;

GRANT ALL PRIVILEGES ON anontion_live.* TO 'anontion'@'%';

FLUSH PRIVILEGES;

