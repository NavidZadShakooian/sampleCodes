#!/bin/bash

#Number of iteration
ITER=10
#ARR      array with lenght of 10 to prevent a repeated number output
#counter  loop counter
#do_iter  function

#Function generates numbers from 1 to 10 randomly and without any repeated number
function do_iter(){
counter=0

#Main loop
while [ $counter -lt $ITER ]
do
	#generate a random number between 1-10
	tmp=$(( $RANDOM % 10 + 1))
	
	#check to not print the number if it has been printed befor
	if [[ ! ${ARR[$tmp]} -eq  1 ]]
        then
		#sets corresponding array member to 1
	  	ARR[$tmp]=1
		#increment loop counter
		((counter+=1))

		echo -n  $tmp"  "
        fi
done
}


do_iter
echo ""
exit 0
