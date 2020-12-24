#!/bin/bash -x
##Compute the a b and c
echo "Arithmetic Computation & sorting "
##variable
read -p "Enter First Number : " a
read -p "Enter second Number : " b
read -p "Enter third Number:" c
##computation
sum=$(($a+($b*$c)))
echo $sum

sum1=$(($a*$b)+$c))
echo $sum1
