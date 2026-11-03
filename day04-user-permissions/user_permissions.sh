#!/bin/bash

echo "===== LINUX USER & PERMISSION CHECK ====="
date

echo
echo "===== CURRENT USER ====="
whoami

echo
echo "===== USER ID AND GROUPS ====="
id

echo
echo "===== CURRENT USER GROUPS ====="
groups

echo
echo "===== FILE PERMISSIONS ====="
ls -l

echo
echo "===== CURRENT DIRECTORY OWNER ====="
stat -c '%U:%G %A %n' .

echo
echo "===== USER PERMISSION CHECK COMPLETE ====="
