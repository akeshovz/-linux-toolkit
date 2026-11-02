#!/bin/bash

# =================================
# PAINZ | LINUX SYSTEM INFORMATION
# =================================

clear

echo "================================"
echo "       PAINZ LINUX TOOLKIT"
echo "================================"

echo ""
echo "[ SYSTEM INFORMATION ]"

echo "Hostname: $(hostname)"
echo "Operating System: $(grep '^PRETTY_NAME=' /etc/os-release | cut -d '"' -f 2)"
echo "Kernel: $(uname -r)"
echo "Architecture: $(uname -m)"

echo ""
echo "[ CPU INFORMATION ]"

grep -m 1 "model name" /proc/cpuinfo

echo ""
echo "[ MEMORY INFORMATION ]"

free -h

echo ""
echo "[ DISK INFORMATION ]"

df -h /

echo ""
echo "[ SYSTEM UPTIME ]"

uptime -p

echo ""
echo "================================"
echo "       SCAN COMPLETED"
echo "================================"