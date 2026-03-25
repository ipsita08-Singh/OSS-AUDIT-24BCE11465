#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions:"

read -p "Tool you use: " TOOL
read -p "Freedom means: " FREEDOM
read -p "What will you build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I believe that open source is about $FREEDOM." > $OUTPUT
echo "Tools like $TOOL empower developers worldwide." >> $OUTPUT
echo "I aim to build $BUILD and share it freely." >> $OUTPUT

echo "Manifesto saved in $OUTPUT"
cat $OUTPUT
