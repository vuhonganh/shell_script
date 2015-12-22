#!/bin/bash
#File: debug_test.sh : need to export _DEBUG=on ./script_name.sh to run this script in debug mode

function DEBUG()
{
	[ "${_DEBUG}" == "on" ] && $@ || :  # : tell the bash to do nothing
}

for i in {1..10}
do
	DEBUG echo $i
done