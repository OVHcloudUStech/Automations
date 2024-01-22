#!/bin/bash

# Check if the server name is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <server_name>"
    exit 1
fi

SERVER="$1"
# List of common email ports to test
EMAIL_PORTS=(25 465 587 2525)

echo "Testing email ports for server: $SERVER"

for port in "${EMAIL_PORTS[@]}"; do
    echo -n "Testing port $port: "
    if nc -zv "$SERVER" "$port"; then
        echo "Port $port is open"
    else
        echo "Port $port is closed"
    fi
done

