#!/bin/bash

MYSQL_CONFIGFILE=/usr/local/src/asterisk/contrib/realtime/mysql/mysql_config.sql

if [[ ! -f "${MYSQL_CONFIGFILE}" ]]
then
  echo "mysql_config file missing ${MYSQL_CONFIGFILE} "
  exit 1
fi

mysql -u root -pNNNNN -h 127.0.0.1 asterisk_live < ${MYSQL_CONFIGFILE}

if [[ "$?" != "0" ]]
then
  echo "mysql_config update failed ${MYSQL_CONFIGFILE} "
  exit 1
fi

