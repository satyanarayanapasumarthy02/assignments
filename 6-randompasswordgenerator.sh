#!/bin/bash

# Check if length argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <password_length>"
  exit 1
fi

length=$1

# Generate random password
password=$(< /dev/urandom tr -dc 'A-Za-z0-9!@#$%^&*()_+-=' | head -c "$length")

echo "Random password: $password"
