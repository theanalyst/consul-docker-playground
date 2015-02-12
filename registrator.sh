#!/bin/bash
# Consul container must be already running
docker run --rm -h $HOSTNAME -v /var/run/docker.sock:/tmp/docker.sock progrium/registrator consul://$(dig -p 8600 consul.service.consul +short):8500
