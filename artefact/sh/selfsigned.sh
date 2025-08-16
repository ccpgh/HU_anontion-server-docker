#!/bin/bash

openssl genrsa -out asterisk.key 2048
openssl req -new -key asterisk.key -out asterisk.csr -config asterisk.cnf
openssl x509 -req -days 365 -in asterisk.csr -signkey asterisk.key -out asterisk.crt -extensions req_ext -extfile asterisk.cnf


