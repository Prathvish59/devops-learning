#!/bin/bash

echo "===== LINUX LOG MONITOR ====="
date

echo
echo "===== RECENT SYSTEM LOGS ====="

if [ -f /var/log/syslog ]; then
    tail -n 10 /var/log/syslog
elif [ -f /var/log/messages ]; then
    tail -n 10 /var/log/messages
else
    echo "Traditional system log file not found."
    echo "Checking systemd journal instead..."
    journalctl -n 10 --no-pager
fi

echo
echo "===== LOG MONITOR COMPLETE ====="
