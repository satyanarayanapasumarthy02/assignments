#!/bin/bash

# How this works:
# The script reads input from the user.

# It reverses the input using the rev command.

# Compares the original and reversed strings.

# Prints whether the input is a palindrome or not.

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
