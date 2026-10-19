#!/bin/bash

echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Mukhammed"
echo "Surname: Mamlayev"
echo "Group: IT2-2306"
echo "Student ID: 37060"
echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -o)"
echo "Disk Usage:"
df -h /
echo "Memory Usage:"
free -h
echo "=============================="

if [ -f ../Mamlayev_Mukhammed_info.txt ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
