#!/bin/bash
# This script is used to create daily backups of the important files and directories. 
#It creates a backup of the specified files and directories and saves it in the 
#backup directory with the current date as the name of the backup file.
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi
backup_dir="/backup"
backup_file="$backup_dir/backup_$(date +%Y-%m-%d).tar.gz"
important_files="/mnt/c/Users/chaitanya/Documents/Guvi"
if [ ! -d "$backup_dir" ]; then
    echo "Backup directory does not exist. Creating backup directory..."
    mkdir -p "$backup_dir"
fi
tar -czvf "$backup_file" $important_files
echo "Backup created successfully at $backup_file"