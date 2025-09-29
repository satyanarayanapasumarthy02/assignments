#!/bin/bash

#How it works:
# It excludes numbers less than or equal to 1.

# Checks divisibility starting from 2 up to the square root of the number.

# If divisible by any number in that range, it’s not prime.

# Otherwise, it is prime.

# Function to check if a number is prime

is_prime() {
  local num=$1
  
  # 1 and numbers less than 1 are not prime
  if (( num <= 1 )); then
    echo "$num is not a prime number."
    return
  fi
  
  # 2 is prime
  if (( num == 2 )); then
    echo "$num is a prime number."
    return
  fi
  
  # Check divisibility from 2 to sqrt(num)
  local limit=$(echo "sqrt($num)" | bc)
  for (( i=2; i<=limit; i++ ))
  do
    if (( num % i == 0 )); then
      echo "$num is not a prime number."
      return
    fi
  done
  
  echo "$num is a prime number."
}

# Read number from user
read -p "Enter a number: " number

# Call function to check primality
is_prime $number
