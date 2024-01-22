#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <server>"
    exit 1
fi

server="$1"

echo "Testing connectivity to $server..."

# Test RDP (3389)
echo -n "Testing RDP (3389)..."
if nc -w 5 -z "$server" 3389; then
    echo " [OK]"
else
    echo " [Failed]"
fi

# Test SSH (22)
echo -n "Testing SSH (22)..."
if nc -w 5 -z "$server" 22; then
    echo " [OK]"
else
    echo " [Failed]"
fi

# Test HTTP (80)
echo -n "Testing HTTP (80)..."
if nc -w 5 -z "$server" 80; then
    echo " [OK]"
else
    echo " [Failed]"
fi

# Test HTTPS (443)
echo -n "Testing HTTPS (443)..."
if nc -w 5 -z "$server" 443; then
    echo " [OK]"
else
    echo " [Failed]"
fi

echo "Connectivity tests completed."

