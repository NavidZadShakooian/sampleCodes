#!/bin/bash
#############################################
#####   Generate Random Number 1-10     #####
#####   input:		N/A		#####
#####   output: 	Screen		#####
#####   version:	1.0		#####
#####	release date:   March 27,2021   #####
#############################################

#Number of iteration (this could be also obtained from input arguments) 
ITER=10

#variables:
#ARR      array with lenght of 10 to prevent a repeated number output
#counter  loop counter
#do_iter  function

#Function generates numbers from 1 to 10 randomly and 
#without any repeated number
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

		echo -n  "$tmp  "
        fi
done
echo ""
}


do_iter

exit 0

