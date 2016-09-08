#!/bin/bash

PROXY_IP=`docker inspect --format '{{ .NetworkSettings.IPAddress }}' stale-error-proxy`

while [ 1 ]; do
    ab -t 50 -k -n 1000 -c10 http://$PROXY_IP/cgi-bin/now.py
    sleep 1
done
