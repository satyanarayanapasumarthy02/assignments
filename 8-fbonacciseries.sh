#!/bin/bash

# Explanation:
# The script reads the number of terms (n) from the user.

# It starts with the first two Fibonacci numbers 0 and 1.

# A loop runs n times, printing the current number and calculating the next.

# It prints all Fibonacci numbers in one line separated by spaces.

read -p "Enter the number of terms: " n

Initialize the first two terms
a=0
b=1

echo "Fibonacci series up to $n terms:"

for (( i=0; i<n; i++ ))
do
  echo -n "$a "
  fn=$((a + b))
  a=$b
  b=$fn
done

echo ""
