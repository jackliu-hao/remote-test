#!/bin/bash

subnet="172.122.15"

for host in $(seq 1 254); do
    ip="${subnet}.${host}"
    ping -c 1 -W 1 $ip > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Host $ip is alive"
    fi
done