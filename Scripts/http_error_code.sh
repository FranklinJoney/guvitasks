#!/bin/bash
#print the HTTP error code of guvi.in & print, 
#the success/failure message based on the error code response.
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi
response=$(curl -o /dev/null -s -w "%{http_code}\n" https://guvi.in)
if [ "$response" = 200 ]; then
    echo "HTTP error code: $response"
    echo "Success: The website is up and running."
else
    echo "HTTP error code: $response"
    echo "Failure: The website is down or there is an issue with the server."
fi