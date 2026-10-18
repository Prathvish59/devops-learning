#!/bin/bash

echo "===== SYSTEM HEALTH CHECK ====="
date

echo
echo "===== DISK USAGE ====="
df -h /

disk_usage=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')

if [ "$disk_usage" -ge 80 ]; then
    echo "WARNING: Disk usage is ${disk_usage}%!"
else
    echo "Disk usage is normal: ${disk_usage}%"
fi

echo
echo "===== MEMORY USAGE ====="
free -h

echo
echo "===== CURRENT USER ====="
whoami

echo
echo "===== SYSTEM INFORMATION ====="
uname -a
