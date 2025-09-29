#!/bin/bash

# Function to check palindrome
is_palindrome() {
  local str="$1"
  local reversed=$(echo "$str" | rev)
  
  if [[ "$str" == "$reversed" ]]; then
    echo "\"$str\" is a palindrome."
  else
    echo "\"$str\" is not a palindrome."
  fi
}

# Read input from user
read -p "Enter a string or number: " input

# Call the palindrome check function
is_palindrome "$input"
