#!/bin/bash

PROXY_IP="127.0.0.1:8000"
while [ 1 ]; do
    ab -t 10 -k -n 500 -c10 http://$PROXY_IP/cgi-bin/now.py
    sleep 1
done

