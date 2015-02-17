#!/bin/bash
docker run -d -v ~/spells/docker/consul:/data -p 8400:8400 -p 8301:8301 -p 8301:8301/udp -p 8300:8300 -p 8302:8302 -p 8302:8302/udp -p 8500:8500 -p 8600:53/udp -p 172.17.42.1:53:53/udp -h node1 --name consul progrium/consul -server -bootstrap -ui-dir /ui -advertise 192.168.122.1
