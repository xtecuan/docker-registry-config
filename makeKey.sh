#!/bin/bash

openssl genrsa 2048 >  /data/docker-registry/certs/domain.key
chmod  400  /data/docker-registry/certs/domain.key

