#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <domain_name>"
    exit 1
fi

domain="$1"
if host "$domain" > /dev/null; then
    echo "DNS resolution is working for $domain."
else
    echo "DNS resolution is not working for $domain."
fi

