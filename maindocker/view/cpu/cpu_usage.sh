#!/bin/sh

while true; do
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')

    echo "CPU Usage: $cpu_usage%" > /var/www/cpu/cpu_usage.txt

    sleep 3
done
