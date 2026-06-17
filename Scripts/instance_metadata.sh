#!/bin/bash
# basic automation script to fetch instance metadata
if [ "$(id -u)" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi
metadata_url="http://172.31.28.171/latest/meta-data/"
echo "Fetching instance metadata from $metadata_url"
metadata=$(curl -s --connect-timeout 5 --max-time 10 "$metadata_url")
if [ -z "$metadata" ]; then
  echo "Failed to fetch metadata. Please check your network connection and try again."
  exit 1
fi
echo "Instance Metadata:"
echo "$metadata"