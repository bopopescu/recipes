#!/bin/bash

#vars

ICECAST_SOURCE_PASSWORD=changeme
ICECAST_RELAY_PASSWORD=changeme
ICECAST_ADMIN_PASSWORD=changeme
ICECAST_ADMIN_USERNAME=changeme
ICECAST_ADMIN_EMAIL=changeme@changeme.com
ICECAST_LOCATION="America/New_York"
ICECAST_HOSTNAME=changeme
ICECAST_MAX_CLIENTS=20

#remove previous instance

docker rm -f icecast

#run a local icecast server 

docker run \
	-d \
	--name=icecast \
	-p 8000:8000 \
	-p 8001:8001 \
	-p 8002:8002 \
	-p 8003:8003 \
	-e ICECAST_SOURCE_PASSWORD=$ICECAST_SOURCE_PASSWORD \
	-e ICECAST_RELAY_PASSWORD=$ICECAST_RELAY_PASSWORD \
	-e ICECAST_ADMIN_PASSWORD=$ICECAST_ADMIN_PASSWORD \
	-e ICECAST_ADMIN_USERNAME=$ICECAST_ADMIN_USERNAME \
	-e ICECAST_ADMIN_EMAIL=$ICECAST_ADMIN_EMAIL \
	-e ICECAST_LOCATION=$ICECAST_LOCATION \
	-e ICECAST_HOSTNAME=$ICECAST_HOSTNAME \
	-e ICECAST_MAX_CLIENTS=$ICECAST_MAX_CLIENTS \
	infiniteproject/icecast \
