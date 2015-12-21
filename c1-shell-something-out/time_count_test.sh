#!/bin/bash
#File: time_count_test.sh : count the time taken by a set of command by using epoch time (number of seconds since 1970-01-01 00:00:00 UTC)

start_time=$(date +%s);
echo "print some useful instruction";
echo calculate the epoch time \: start_time=\$\(date +\%s\);
echo "printing again before counting the end_time";
end_time=$(date +%s);

echo "time taken in seconds for thoses echo commands equals = `echo $[ $end_time - $start_time ] ` ";
echo "the above result is normally 0 because our computers are fast nowaday, so let make it sleep 2 second";
sleep 2;
end_time=$(date +%s);
echo "time taken in seconds now equals = `echo $[ $end_time - $start_time ] ` ";
echo "DONE for time_count_test.sh"
