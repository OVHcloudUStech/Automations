#!/bin/bash

# Check if an argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <IP or hostname>"
    exit 1
fi

target="$1"

echo "Testing network connectivity to $target..."

# Check uptime
echo -n "Uptime: "
uptime

# Ping test
echo "Ping test:"
ping -c 5 "$target"

# Traceroute test
echo "Traceroute test:"
if ! command -v traceroute &> /dev/null
then
    echo "traceroute could not be found, please install it."
else
    traceroute "$target"
fi

# Port scanning with nmap
echo "Port scanning with nmap:"
nmap -p 1-65535 "$target"
