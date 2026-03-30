#!/bin/bash

paths=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for path in "${paths[@]}"; do
    if [ -d "$path" ]; then
        perms=$(stat -c "%A %U %G" "$path")
        
        size=$(du -sh "$path" 2>/dev/null | awk '{print $1}')
        
        echo "$path => Permissions: $perms | Size: $size"
    else
        echo "$path does not exist"
    fi
done

git_conf="$HOME/.gitconfig"

if [ -f "$git_conf" ]; then
    echo "Git config found:"
    ls -l "$git_conf"
else
    echo "Git config not found"
fi
