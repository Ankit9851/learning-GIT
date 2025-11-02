#!/bin/bash

echo "Simple Calculator"

echo "Enter first number:"
read a
echo "Enter second number:"
read b

echo "Choose operation:"
echo "1) Add"
echo "2) Subtract"
echo "3) Multiply"
echo "4) Divide"
read op

case $op in
  1) echo "Result = $(($a + $b))" ;;
  2) echo "Result = $(($a - $b))" ;;
  3) echo "Result = $(($a * $b))" ;;
  4) 
     if [ $b -eq 0 ]; then
        echo "Error: Division by zero"
     else
        echo "Result = $(($a / $b))"
     fi
     ;;
  *) echo "Invalid Option" ;;
esac

