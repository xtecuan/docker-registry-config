#!/bin/bash

export PASSFILE=/data/docker-registry/auth/htpasswd


if [ -n "$1" -a -n "$2" ]
then
  USERNAME=$1
  PASSWORD=$2
  podman run --rm --entrypoint htpasswd registry:2.7.0 -Bbn $USERNAME $PASSWORD > $PASSFILE
else
  echo "$0 USERNAME PASSWORD"
fi
