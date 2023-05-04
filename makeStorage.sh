#!/bin/bash

sudo mkdir -p /data/docker-registry
sudo mkdir -p /data/docker-registry/certs
sudo mkdir -p /data/docker-registry/auth
sudo mkdir -p /data/docker-registry/registry
sudo chown -R analistas: /data/docker-registry
sudo chmod -R 777 /data/docker-registry
