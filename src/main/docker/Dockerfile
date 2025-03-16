# Dockerfile

# Use the official Ubuntu 24.04 base image
FROM ubuntu:24.04

# Environment
ARG ANONTION_DOCKER_GITUSER=default_value
ARG ANONTION_SERVER_USER=default_value
ARG ANONTION_SERVER_PASSWORD=default_value
ARG TAG_ID=default_value

# Diagnostic
RUN echo ANONTION_DOCKER_GITUSER=$ANONTION_DOCKER_GITUSER
RUN echo ANONTION_SERVER_USER=$ANONTION_SERVER_USER
RUN echo ANONTION_SERVER_PASSWORD=$ANONTION_SERVER_PASSWORD
RUN echo TAG_ID=$TAG_ID

# Info
RUN bash -c "echo starting using github user ${ANONTION_DOCKER_GITUSER} "

# Install apt-utils
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils && \
    rm -rf /var/lib/apt/lists/*

# Install necessary build tools for Java
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y default-jdk && \
    rm -rf /var/lib/apt/lists/*

# Install tomcat
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y tomcat10 && \
    rm -rf /var/lib/apt/lists/*

# Install net-tools
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y net-tools && \
    rm -rf /var/lib/apt/lists/*

# Install apache2
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y apache2 && \
    rm -rf /var/lib/apt/lists/* 

# Install certbot python3-certbot-apache
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y certbot python3-certbot-apache && \
    rm -rf /var/lib/apt/lists/*

# Install other named tools
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y git software-properties-common curl wget openssl gosu openssh-server xemacs21 unzip && \
    rm -rf /var/lib/apt/lists/*

# Install build tools
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential && \
    rm -rf /var/lib/apt/lists/*

# New repo
#RUN yes | add-apt-repository ppa:cwchien/gradle

# Install gradle
#RUN apt-get update && \
#    DEBIAN_FRONTEND=noninteractive apt-get install -y gradle && \
#    rm -rf /var/lib/apt/lists/*

#RUN apt upgrade gradle

# Set the working directory
WORKDIR /usr/local/src

# Manual gradle
RUN wget https://services.gradle.org/distributions/gradle-8.12-bin.zip

RUN unzip -d /opt/gradle gradle-8.12-bin.zip

RUN echo export GRADLE_HOME=/opt/gradle/gradle-8.12 > /etc/profile.d/gradle.sh

RUN echo 'export PATH=${GRADLE_HOME}/bin:${PATH}' >> /etc/profile.d/gradle.sh

RUN chmod +x /etc/profile.d/gradle.sh

RUN . /etc/profile.d/gradle.sh

# debug
RUN echo git clone "https://github.com/${ANONTION_DOCKER_GITUSER}/${TAG_ID}.git"

# Clone HU_anontion-server
RUN git clone "https://github.com/${ANONTION_DOCKER_GITUSER}/${TAG_ID}.git"

# Create ssl placeholders
RUN mkdir /etc/ssl/certs/anontion

RUN chmod 750 /etc/ssl/certs/anontion

RUN chgrp www-data /etc/ssl/certs/anontion

# Set the working directory
WORKDIR /etc/ssl/certs/anontion

# Create empty files
COPY ./anontion.key anontion.key
COPY ./www_anontion_com.ca-bundle anontion.ca-bundle
COPY ./www_anontion_com.crt anontion.crt

RUN chmod 640 *key *bundle *crt

RUN chgrp www-data *key *bundle *crt

# Apache modules
RUN a2enmod ssl
RUN a2ensite default-ssl.conf
RUN a2enmod proxy
RUN a2enmod proxy_http

RUN apachectl stop

# Set the working directory
WORKDIR /etc/apache2/sites-enabled

# Update 000-default.conf
ARG LHS1=/etc/ssl/certs/ssl-cert-snakeoil.pem
ARG RHS1=/etc/ssl/certs/anontion/anontion.crt
RUN sed -i.bak1 "s|${LHS1}|${RHS1}|" default-ssl.conf

ARG LHS2=/etc/ssl/private/ssl-cert-snakeoil.key
ARG RHS2=/etc/ssl/certs/anontion/anontion.key
RUN sed -i.bak2 "s|${LHS2}|${RHS2}|" default-ssl.conf

ARG LHS3='#SSLCertificateChainFile /etc/apache2/ssl.crt/server-ca.crt'
ARG RHS3='SSLCertificateChainFile /etc/ssl/certs/anontion/anontion.ca-bundle'
RUN sed -i.bak3 "s|${LHS3}|${RHS3}|" default-ssl.conf

ARG LHS4=SSLEngine on
ARG RHS4=SSLEngine off
RUN sed -i.bak4 "s|${LHS4}|${RHS4}|" default-ssl.conf

# Config
RUN cp -f default-ssl.conf default-ssl.conf.bak5

# Check config
RUN if [ ! -f default-ssl.conf ]; then echo "missing default-ssl.conf "; exit 1; fi

RUN if [ ! -f default-ssl.conf.bak5 ]; then echo "missing default-ssl.conf.bak "; exit 1; fi

RUN awk 'BEGIN { found = 0; RS = "\0"; ORS = ""; }                         \
     /<\/Directory>[[:space:]\n]*<\/VirtualHost>/ && !found {              \
         sub(/<\/Directory>[[:space:]\n]*<\/VirtualHost>/, "\n</Directory>\nProxyRequests Off\nProxyPass / http://localhost:8080/\nProxyPassReverse / http://localhost:8080/\n</VirtualHost>");  \
         found = 1;                                                        \
     }                                                                     \
     { print; }' default-ssl.conf.bak5 > default-ssl.conf

RUN apachectl start

# Set the working directory
WORKDIR /usr/local/src/${TAG_ID}/bin

# Build
RUN ./c

# Check war
#RUN if [ ! -e /usr/local/src/sudoku-server/sudoku-server/build/libs/sudoku.war ]; then echo "missing war file "; exit 1; fi

# Copy war into place
#RUN cp /usr/local/src/sudoku-server/sudoku-server/build/libs/sudoku.war /var/lib/tomcat9/webapps/sudoku.war

# Check war copy
#RUN if [ ! -f /var/lib/tomcat9/webapps/sudoku.war ]; then echo "missing war copy "; exit 1; fi

# Config
RUN cp -f /var/lib/tomcat10/conf/server.xml /var/lib/tomcat10/conf/server.xml.bak

# Check config
RUN if [ ! -f /var/lib/tomcat10/conf/server.xml ]; then echo "missing server.xml "; exit 1; fi

RUN if [ ! -f /var/lib/tomcat10/conf/server.xml.bak ]; then echo "missing server.xml.bak "; exit 1; fi

# Customise config
#RUN awk 'BEGIN { found = 0; RS = "\0"; ORS = ""; }                         \
#     /<\/Host>[[:space:]\n]*<\/Engine>/ && !found {                        \
#        sub(/<\/Host>[[:space:]\n]*<\/Engine>/, "<Context docBase=\"account\" path=\"/account\" reloadable=\"true\" /></Host></Engine>");  \
#        found = 1;                                                        \
#    }                                                                     \
#    { print; }' /var/lib/tomcat10/conf/server.xml.bak > /var/lib/tomcat10/conf/server.xml
     
# Empty default homepages
RUN echo "." >  /var/lib/tomcat10/webapps/ROOT/index.html
RUN echo "." >  /var/www/html/index.html

# Expose the default Tomcat port
EXPOSE 22
#EXPOSE 80
EXPOSE 443
#EXPOSE 8080

# Set CATALINA_BASE and update PATH to include catalina.sh
ENV CATALINA_BASE /var/lib/tomcat10
ENV CATALINA_HOME /usr/share/tomcat10
ENV PATH $CATALINA_HOME/bin:$PATH

WORKDIR /var/lib/tomcat10/

# start apache and tomcat when the container starts
CMD apachectl start && catalina.sh run

