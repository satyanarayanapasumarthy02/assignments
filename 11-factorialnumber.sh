#!/bin/bash

# How it works:
# It loops from 2 to the number multiplying a running product fact.

# Finally, it outputs the factorial value.

# It uses a function for clarity and reusability.

# Function to calculate factorial of a number

factorial() {
  local num=$1
  local fact=1
  
  for (( i=2; i<=num; i++ ))
  do
    fact=$((fact * i))
  done
  
  echo $fact
}

# Read number from user
read -p "Enter a number: " number

# Call factorial function and store the result
result=$(factorial $number)

# Display the result
echo "Factorial of $number is: $result"
