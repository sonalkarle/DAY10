#!/bin/bash -x
##Storing the answer in dictionary
echo "Arithmetic Computation & sorting "
##varibales
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
##declaring the dictionry
declare -A dict
dict[1]=`echo $sum`
dict[2]=`echo $sum1`
dict[3]=`echo $sum2`
dict[4]=`echo $sum3`
