#!/bin/bash
# File : test a strange loop to see its behavior

create_file_loop()
{
    echo "create_file_loop : this is the function which create the file loop "
    LOOP="./.loop.lock"
    touch $LOOP
    while [ -e "$LOOP" ]; do
	rm -f $LOOP
	echo "create_file_loop : delete the loop file, call other file"
	call_func
    done

}

call_func()
{
    [ -n "${LOOP}" ] && touch ${LOOP}
    echo "call_func : was called"
    i=0
    ((i = i + 1))
    [[ i -eq 6 ]] && exit 0
}


create_file_loop
