#!/bin/bash
#File: count_loop_sleeping_test.sh : test counting while sleeping for each loop

echo using echo -n to not add a newline;


echo Enter the a POSITIVE count number, \(note that each count takes 0.5s\) \:
count=0;
read countVal;
if [ $countVal -lt 0 ]; then 
    echo You entered a NEGATIVE number, counting will not be processed;
    exit 1;
fi

echo -n Count\:;
tput sc; #store the cursor position

while true;
do
    if [ $count != $countVal ]; then
	let count++;
	sleep 0.5;
	tput rc;  #restore the cursor position
	#tput ed;  #to clear to the end of screen, however this takes no effect if i comment it so do not know what is this for
	echo -n $count;
    else 
	printf "\n%s\n" "Done counting"
	exit 0;
    fi
done


	
