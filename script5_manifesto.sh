#!/bin/bash

echo "======================================"
echo " OPEN SOURCE MANIFESTO GENERATOR"
echo "======================================"

until [ -n "$tool" ]; do
    read -p "1. Name an open-source tool: " tool
done

until [ -n "$freedom" ]; do
    read -p "2. What does freedom mean to you? " freedom
done

until [ -n "$build" ]; do
    read -p "3. What will you build and share? " build
done

today=$(date +"%d %B %Y")
user_name=$(id -un)
file="manifesto_${user_name}.txt"

echo "--------------------------------------"

printf "On %s, I believe in open source.\n" "$today" > "$file"
printf "I regularly use %s.\n" "$tool" >> "$file"
printf "For me, freedom means %s.\n" "$freedom" >> "$file"
printf "I aim to build %s and share it with the world.\n" "$build" >> "$file"

echo "--------------------------------------"
echo "Manifesto saved to $file"
echo "--------------------------------------"

cat "$file"
