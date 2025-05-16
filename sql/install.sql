FLUSH PRIVILEGES;

DROP USER IF EXISTS 'anontion'@'%';

CREATE USER 'anontion'@'%' IDENTIFIED BY 'NNNNN';

CREATE DATABASE IF NOT EXISTS anontion_live;

GRANT ALL PRIVILEGES ON anontion_live.* TO 'anontion'@'%';

DROP USER IF EXISTS 'asterisk'@'%';

CREATE USER 'asterisk'@'%' IDENTIFIED BY 'NNNNN';

CREATE DATABASE IF NOT EXISTS asterisk_live;

GRANT ALL PRIVILEGES ON asterisk_live.* TO 'asterisk'@'%';

FLUSH PRIVILEGES;
