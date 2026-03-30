#!/bin/bash
pkg="git"

if dpkg-query -W -f='${Status}' "$pkg" 2>/dev/null | grep -q "installed"; then
    echo "$pkg is installed."
    
    apt show "$pkg" 2>/dev/null | awk -F': ' '/Version|Maintainer|Description/ {print $1": "$2}'
else
    echo "$pkg is NOT installed."
fi
case "$pkg" in
    git)
        echo "Git: decentralized version control built for developers"
        ;;
    apache2)
        echo "Apache: backbone of the open web"
        ;;
    mysql)
        echo "MySQL: open source database powering applications"
        ;;
    firefox)
        echo "Firefox: privacy-focused open web browser"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
