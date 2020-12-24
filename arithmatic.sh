#!/bin/bash -x
## Computation of a,b and c
echo "Arithmetic Computation & sorting "
##vriable
read -p "Enter First Number : " a
read -p "Enter second Number : " b
read -p "Enter third Number:" c
#computation
sum=$(($a+($b*$c)))
echo $sum

sum1=$(($a*$b)+$c))
echo $sum1

sum2=$(($c+($a/$b)))
echo $sum2

