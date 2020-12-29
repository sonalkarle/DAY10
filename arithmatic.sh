#!/bin/bash -x
##Read the values from dictionary into array and sort in decending 
##Read the input from user
echo "Arithmetic Computation & sorting "
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
 ##declare dictionary 
declare -A dict

dict[1]=`echo $sum`
dict[2]=`echo $sum1`
dict[3]=`echo $sum2`
dict[4]=`echo $sum3`

for value in "${dict[@]}"
do
	valInArr[$arrayIndex]=$value
	arrayIndex=$(( $arrayIndex + 1 ))
done
echo "${arrayIndex[@]}"
