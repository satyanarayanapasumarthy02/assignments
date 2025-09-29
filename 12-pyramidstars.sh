#!/bin/bash

# Explanation:
# The outer loop runs from 1 to 5 (lines).

# The first inner loop prints spaces to align the stars properly.

# The second inner loop prints stars in increasing odd numbers: 1, 3, 5, 7, 9.

# Each iteration prints one line of the pyramid.

lines=5

for ((i=1; i<=lines; i++))
do
  # Print leading spaces
  for ((j=lines; j>i; j--))
  do
    echo -n " "
  done

  # Print stars
  for ((k=1; k<=2*i-1; k++))
  do
    echo -n "*"
  done

  # Newline after each row
  echo ""
done
