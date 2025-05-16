FLUSH PRIVILEGES;

DROP USER IF EXISTS 'anontion'@'%';

DROP USER IF EXISTS 'anontion'@'localhost';

CREATE USER 'anontion'@'%' IDENTIFIED BY 'NNNNN';

CREATE USER 'anontion'@'localhost' IDENTIFIED BY 'NNNNN';

CREATE DATABASE IF NOT EXISTS anontion_live;

GRANT ALL PRIVILEGES ON anontion_live.* TO 'anontion'@'%';

GRANT ALL PRIVILEGES ON anontion_live.* TO 'anontion'@'localhost';

DROP USER IF EXISTS 'asterisk'@'%';

DROP USER IF EXISTS 'asterisk'@'localhost';

CREATE USER 'asterisk'@'%' IDENTIFIED BY 'NNNNN';

CREATE USER 'asterisk'@'localhost' IDENTIFIED BY 'NNNNN';

CREATE DATABASE IF NOT EXISTS asterisk_live;

GRANT ALL PRIVILEGES ON asterisk_live.* TO 'asterisk'@'%';

GRANT ALL PRIVILEGES ON asterisk_live.* TO 'asterisk'@'localhost';

FLUSH PRIVILEGES;
