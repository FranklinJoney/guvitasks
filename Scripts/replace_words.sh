#!/bin/bash
#replace all occurrence of the word "give" with "learning" 
#from 5th line till the end in only those lines that contain the word "welcome"
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
    exit 1
fi
if [ ! -f "testfile.txt" ]; then
    echo "File testfile.txt does not exist...."
    exit 1
fi
sed -i '5,${/welcome/s/give/learning/g}' testfile.txt
echo "cat testfile.txt"
cat testfile.txt