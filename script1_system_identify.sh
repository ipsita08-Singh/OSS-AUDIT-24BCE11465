#!/bin/bash
# Script 1: System Identity Report
# Author: Ipsita Singh

name="Ipsita Singh"
tool="Git"

kernel_version=$(uname -r)
current_user=$(id -un)
system_uptime=$(uptime -p)
current_date=$(date)

distro_name=$(grep '^PRETTY_NAME' /etc/os-release | awk -F= '{print $2}' | tr -d '"')

echo "================================"
echo " Open Source Audit — $name"
echo "================================"
echo "Software : $tool"
echo "Kernel   : $kernel_version"
echo "Distro   : $distro_name"
echo "User     : $current_user"
echo "Uptime   : $system_uptime"
echo "Date     : $current_date"
echo "License  : Linux kernel is licensed under GPL v2"
