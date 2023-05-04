#!/bin/bash

export DAYS=730
export KEY=/data/docker-registry/certs/domain.key
export CRT=/data/docker-registry/certs/domain.crt
export CONF=/data/docker-registry/certs/san.conf

cp config/san.conf $CONF

openssl req -new -x509 -nodes -sha1 -days $DAYS -key $KEY -out $CRT -config $CONF

chmod  400  $CRT

