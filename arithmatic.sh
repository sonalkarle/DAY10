#!/bin/bash -x
echo "Arithmetic Computation & sorting "
read -p "Enter First Number : " a
read -p "Enter second Number : " b
read -p "Enter third Number:" c

sum=$(($a+($b*$c)))
echo $sum

sum1=$((($a*$b)+$c))
echo $sum1

sum2=$(($c+($a/$b)))
echo $sum2

sum3=$((($a%$b)+$c))
echo $sum3
 
declare -A dict

dict[1]=`echo $sum`
dict[2]=`echo $sum1`
dict[3]=`echo $sum2`
dict[4]=`echo $sum3`

for value in "${dict[@]}"
do
	valsInArr[$arrayIndex]=$value
	arrayIndex=$(( $arrayIndex + 1 ))
done
arrLength=${#valsInArr[@]}


for (( i = 0 ; i <= $(( $arrLength - 1 )) ; i++ ))
do
	for (( j = 0 ; j < $i ;j++ ))
	do
		if [ `echo | awk -v iVal="${valsInArr[$i]}" -v jVal="${valsInArr[$j]}" '{ if( iVal >= jVal ) print "True" ; else print "False" ;}'` == True ]
		then
		Temp=${valsInArr[$i]}
		valsInArr[$i]=${valsInArr[$j]}
		valsInArr[$j]=$Temp
		fi
	done
done

echo ${valsInArr[@]}
echo " Values in Descending order : "${valsInArr[@]}

echo " Values in Ascending order : "

for (( i = $arrLength-1 ; i >= 0 ; i-- ))
do
		echo ${valsInArr[$i]}
done
echo ${valsInArr[@]}
