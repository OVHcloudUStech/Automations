#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <server_name>"
    exit 1
fi

server="$1"
if curl --output /dev/null --silent --head --fail "$server"; then
    echo "Website $server is accessible."
else
    echo "Website $server is not accessible."
fi

