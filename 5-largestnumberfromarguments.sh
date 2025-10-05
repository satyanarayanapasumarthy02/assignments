#!/bin/bash

# Check if at least one argument is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 number1 number2 number3 ..."
  exit 1
fi

largest=$1

for num in "$@"
do
  if (( num > largest )); then
    largest=$num
  fi
done

echo "Largest number is: $largest"
