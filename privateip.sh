/bin/bash

ifconfig | perl -nle 's/dr:(\S+)/print $1/e'


ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/'
