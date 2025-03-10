# Dockerfile

# Use the official Ubuntu 22.04 base image
FROM ubuntu:24.04

# Environment
ARG ANONTION_DOCKER_GITUSER=default_value
ARG ANONTION_SERVER_USER=default_value
ARG ANONTION_SERVER_PASSWORD=default_value
ARG ANONTION_SERVER_REPO=default_value

# Info
RUN bash -c "echo starting using github user ${ANONTION_DOCKER_GITUSER} "

# Install apt-utils
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils && \
    rm -rf /var/lib/apt/lists/*

# Install necessary build tools for C++
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
    rm -rf /var/lib/apt/lists/* \

# Install other named tools
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y git gradle curl wget openssl && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /usr/local/src

# Clone HU_anontion-server
RUN git clone https://github.com/${ANONTION_DOCKER_GITUSER}/${ANONTION_SERVER_REPO}.git

# Set the working directory
# WORKDIR /usr/local/src/${ANONTION_SERVER_REPO}/.../webapp/WEB-INF

# Update web.xml with user and password
# RUN sed -i.bak "s/__________USER_REPLACE_ME__________/${ANONTION_SERVER_USER}/" web.xml

# RUN sed -i,bak "s/__________PASSWORD_REPLACE_ME__________/${ANONTION_SERVER_PASSWORD}/" web.xml

# Gen private key
# RUN openssl genpkey -out server-private.key -algorithm RSA -pkeyopt rsa_keygen_bits:4096

# Check private key
# RUN if [ ! -e server-private.key ]; then echo "missing private key "; exit 1; fi

# Generate public key
# RUN openssl rsa -pubout -outform pem -in server-private.key -out server-public.key

# Check public key
# RUN if [ ! -e server-public.key ]; then echo "missing public key "; exit 1; fi

# RUN cat server-public.key

# Set the working directory
WORKDIR /usr/local/src/${ANONTION_SERVER_REPO}/bin

# Build
RUN ./c

# Check war
# RUN if [ ! -e /usr/local/src/dynip-server/dynip-server/build/libs/ipserver.war ]; then echo "missing war file "; exit 1; fi

# Copy war into place
# RUN cp /usr/local/src/dynip-server/dynip-server/build/libs/ipserver.war /var/lib/tomcat10/webapps/ipserver.war

# Check war copy
# RUN if [ ! -f /var/lib/tomcat10/webapps/ipserver.war ]; then echo "missing war copy "; exit 1; fi

# Config
RUN cp -f /var/lib/tomcat10/conf/server.xml /var/lib/tomcat10/conf/server.xml.bak

# Check config
RUN if [ ! -f /var/lib/tomcat10/conf/server.xml ]; then echo "missing server.xml "; exit 1; fi

RUN if [ ! -f /var/lib/tomcat10/conf/server.xml.bak ]; then echo "missing server.xml.bak "; exit 1; fi

# Customise config
# RUN awk 'BEGIN { found = 0; RS = "\0"; ORS = ""; }                         \
#      /<\/Host>[[:space:]\n]*<\/Engine>/ && !found {                        \
#         sub(/<\/Host>[[:space:]\n]*<\/Engine>/, "<Context docBase=\"ipserver\" path=\"/iserver\" reloadable=\"true\" /></Host></Engine>");  \
#         found = 1;                                                        \
#     }                                                                     \
#     { print; }' /var/lib/tomcat10/conf/server.xml.bak > /var/lib/tomcat10/conf/server.xml
     
# Empty default app 
# RUN echo "." >  /var/lib/tomcat10/webapps/ROOT/index.html

# Expose the default Tomcat port
EXPOSE 80
EXPOSE 443
EXPOSE 8080

# Set CATALINA_BASE and update PATH to include catalina.sh
ENV CATALINA_BASE /var/lib/tomcat10
ENV CATALINA_HOME /usr/share/tomcat10
ENV PATH $CATALINA_HOME/bin:$PATH

WORKDIR /var/lib/tomcat10/

# start apache
CMD service apache2 start  

# start tomcat when the container starts
CMD ["catalina.sh", "run"]

