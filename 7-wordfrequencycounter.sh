#!/bin/bash

# Check if filename is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 filename"
  exit 1
fi

filename=$1

# Check if file exists
if [ ! -f "$filename" ]; then
  echo "File not found!"
  exit 1
fi

# Process the file:  
# 1. Convert all to lowercase  
# 2. Replace non-alphanumeric characters with newlines (to separate words)  
# 3. Remove empty lines  
# 4. Sort words  
# 5. Count unique words  
# 6. Sort counts in descending order  
# 7. Print top 5  
echo "Top 5 most repeated words in '$filename':"
tr '[:upper:]' '[:lower:]' < "$filename" | tr -c '[:alnum:]' '[\n*]' | grep -v '^$' | sort | uniq -c | sort -nr | head -5

