#!/bin/bash

MYSQL_CONFIGFILE=/usr/local/src/asterisk/contrib/realtime/mysql/mysql_config.sql
MYSQL_PASSWORDFILE=/usr/local/src/sql/password
MYSQL_DATAFILE=/usr/local/src/sql/anontion.sql

if [[ ! -f "${MYSQL_CONFIGFILE}" ]]
then
  echo "mysql_config file missing ${MYSQL_CONFIGFILE} "
  exit 1
fi

mysql --defaults-extra-file=${MYSQL_PASSWORDFILE} -u root -h 127.0.0.1 asterisk_live < ${MYSQL_CONFIGFILE}

if [[ "$?" != "0" ]]
then
  echo "mysql_config update failed ${MYSQL_CONFIGFILE}"
  exit 1
fi

mysql --defaults-extra-file=${MYSQL_PASSWORDFILE} -u root -h 127.0.0.1 asterisk_live < ${MYSQL_DATAFILE}

if [[ "$?" != "0" ]]
then
  echo "mysql_config update failed ${MYSQL_DATAFILE}"
  exit 1
fi

