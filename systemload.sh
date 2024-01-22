#!/bin/bash
load=$(uptime | awk -F'average:' '{print $2}' | awk -F',' '{print $1}')
threshold=1.00  # Set your load threshold here

if [ -z "$load" ]; then
    echo "Error: Unable to retrieve load information."
    exit 1
fi

if (( $(echo "$load > $threshold" | bc -l) )); then
    echo "High CPU load: $load"
    # Add alerting actions here
else
    echo "CPU load is normal: $load"
fi


