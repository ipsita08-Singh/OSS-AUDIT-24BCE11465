@@ -0,0 +1,19 @@
#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: decentralized version control built for developers" ;;
    apache2) echo "Apache: backbone of the open web" ;;
    mysql) echo "MySQL: open source database powering applications" ;;
    firefox) echo "Firefox: privacy-focused open web browser" ;;
    *) echo "Unknown package" ;;
esac
