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
echo -n THIS_WILL_BE_REMOVED_BY tput ed
sleep 2

while true;
do
    if [ $count != $countVal ]; then
	let count++;
	sleep 0.5;
	tput rc;  #restore the cursor position
	tput ed;  #to clear to the end of screen, however this only takes effect if we have some previous stuff longer than current stuff printed (than the previous longer part will be removed completely
	echo -n $count;
    else 
	printf "\n%s\n" "Done counting"
	exit 0;
    fi
done


	
