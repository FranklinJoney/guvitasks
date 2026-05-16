#!/bin/bash
# This script is used to delete old log files from the logs directory. It deletes log files that are older than 7 days.
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi
sudo find /var/log -type f -name "*.log" -mtime +7 -delete
echo "Old log files deleted successfully!"