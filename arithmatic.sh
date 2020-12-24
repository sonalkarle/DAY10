#!/bin/bash -x
##Computation of a,b,c
echo "Arithmetic Computation & sorting "
##variable
read -p "Enter First Number : " a
read -p "Enter second Number : " b
read -p "Enter third Number:" c
##computation
sum=$(($a+($b*$c)))
echo $sum

sum1=$((($a*$b)+$c))
echo $sum1

sum2=$(($c+($a/$b)))
echo $sum2

sum3=$((($a%$b)+$c))
echo $sum3
 
