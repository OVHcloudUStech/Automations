#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <server_name>"
    exit 1
fi

server="$1"
if ping -c 1 "$server" > /dev/null; then
    echo "Server $server is reachable."
else
    echo "Server $server is not reachable."
fi

