#!/bin/bash

MYSQL_PASSWORDFILE=/usr/local/src/sql/password
MYSQL_DATAFILE=/usr/local/src/sql/asterisk2.sql

if [[ ! -f "${MYSQL_DATAFILE}" ]]
then
  echo "mysql data file missing ${MYSQL_DATAFILE} "
  exit 1
fi

mysql --defaults-extra-file=${MYSQL_PASSWORDFILE} -u anontion -h 127.0.0.1 anontion_live < ${MYSQL_DATAFILE}

if [[ "$?" != "0" ]]
then
  echo "mysql data update failed ${MYSQL_DATAFILE}"
  exit 1
fi

