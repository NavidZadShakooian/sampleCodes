#!/bin/bash

#Number of iteration
ITER=10

#Function generates numbers from 1 to 10 randomly and without any repeated number
function do_iter(){
counter=0

#Main loop
while [ $counter -lt 10 ]
do
	#generate a random number between 1-10
	tmp=$(( $RANDOM % 10 + 1))
	
	#check to not print if number has been showned once
	if [[ ! ${ARR[$tmp]} -eq  1 ]]
  then
  	ARR[$tmp]=1
	((counter+=1))
	echo -n  $tmp"  "
  fi
done

}

do_iter
echo ""
exit 0

