@@ -0,0 +1,44 @@
#!/bin/bash
# Master Script to run entire OSS Audit Project

echo "========================================="
echo "   Open Source Audit Project - Git"
echo "========================================="

# Step 1: Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Installing..."
    sudo apt update && sudo apt install git -y
else
    echo "Git is already installed."
fi

echo ""

# Step 2: Give execute permissions
chmod +x script*.sh

# Step 3: Run all scripts
echo "Running Script 1..."
./script1_system_identity.sh

echo ""
echo "Running Script 2..."
./script2_package_inspector.sh

echo ""
echo "Running Script 3..."
./script3_disk_auditor.sh

echo ""
echo "Running Script 4 (default log check)..."
./script4_log_analyzer.sh /var/log/syslog

echo ""
echo "Running Script 5..."
./script5_manifesto.sh

echo ""
echo "========================================="
echo " All scripts executed successfully!"
echo "========================================="
