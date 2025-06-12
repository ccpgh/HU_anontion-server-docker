#!/bin/bash

MYSQL_CONFIGFILE=/usr/local/src/asterisk/contrib/realtime/mysql/mysql_config.sql

if [[ ! -f "${MYSQL_CONFIGFILE}" ]]
then
  echn "mysql_config file missing ${MYSQL_CONFIGFILE} "
  exit 1
fi

#TODO uncomment mysql -u root -pNNNN -h 127.0.0.1 anontion_live < ${MYSQL_CONFIGFILE}

if [[ "$?" != "0" ]]
then
  echn "mysql_config update failed ${MYSQL_CONFIGFILE} "
  exit 1
fi

