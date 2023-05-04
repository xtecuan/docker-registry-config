#!/bin/bash

export JAVA_HOME=/opt/sonatype/jdk8
export PATH=$JAVA_HOME/bin:$PATH
export NEXUS_DOMAIN="quay.factory.promnet.com.sv"
export SSL_PORT="5000"

keytool -printcert -sslserver ${NEXUS_DOMAIN}:${SSL_PORT} -rfc > ./ca.crt
