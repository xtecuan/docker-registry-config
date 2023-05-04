#!/bin/bash

export REGISTRY_DIR=/data/docker-registry

podman run -d \
--restart=always \
--name registry \
-v $REGISTRY_DIR/auth:/auth \
-v $REGISTRY_DIR/certs:/certs \
-v $REGISTRY_DIR/registry:/var/lib/registry \
-e REGISTRY_AUTH=htpasswd \
-e REGISTRY_AUTH_HTPASSWD_REALM="Registry Realm" \
-e REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd \
-e REGISTRY_HTTP_ADDR=0.0.0.0:5000 \
-e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt \
-e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
-p 5000:5000 \
registry:2.7.0
