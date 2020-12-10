#!/bin/bash -x
echo "Arithmetic Computation & sorting "

read -p "Enter First Number : " a
read -p "Enter second Number : " b
read -p "Enter third Number:" c

sum=$(($a+($b*$c)))
echo $sum

sum1=$(($a*$b)+$c))
echo $sum1

sum2=$(($c+($a/$b)))
echo $sum2

