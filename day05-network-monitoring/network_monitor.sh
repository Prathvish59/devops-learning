#!/bin/bash

echo "===== LINUX NETWORK MONITOR ====="
date

echo
echo "===== IP ADDRESS ====="
ip -brief address

echo
echo "===== NETWORK INTERFACES ====="
ip link show

echo
echo "===== DEFAULT ROUTE ====="
ip route

echo
echo "===== DNS RESOLUTION ====="
if getent hosts google.com; then
    echo "DNS resolution successful"
else
    echo "DNS resolution failed"
fi

echo
echo "===== INTERNET CONNECTIVITY ====="
if curl -Is --connect-timeout 5 https://google.com > /dev/null; then
    echo "Internet connection successful"
else
    echo "Internet connection failed"
fi

echo
echo "===== NETWORK MONITOR COMPLETE ====="
