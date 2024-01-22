#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <server_name> <port>"
    exit 1
fi

server="$1"
port="$2"
if nc -z -v -w1 "$server" "$port"; then
    echo "Port $port is open on $server."
else
    echo "Port $port is closed on $server."
fi


