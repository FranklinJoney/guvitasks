#!/bin/bash
# This script is used to rename all txt files to yaml files from the current directory to the specified directory.
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
    exit 1
fi
destination_dir="/mnt/c/Users/chaitanya/Documents/Guvi"
if [ ! -d "$destination_dir" ]; then
    echo "Destination directory does not exist...."
fi  
for file in *.txt; do
    mv "$file" "$destination_dir/${file%.txt}.yaml"
done 