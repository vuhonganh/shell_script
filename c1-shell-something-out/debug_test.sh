#!/bin/bash
#File: debug_test.sh : need to export _DEBUG=on ./script_name.sh to run this script in debug mode

#NOTE some trick: 
#set -x : start displaying arguments and commands upon their execution
#set +x : stop displaying (disable) the effect of set -x
#set -v : display input when they are read and almost every things in the script (stronger effect than set -x )
#set +v : disable printing input

#another trick is to put one of these flags -xv, -x, -v next to shebang: #!/bin/bash -xv for example 

function DEBUG()
{
	[ "${_DEBUG}" == "on" ] && $@ || :  # : tell the bash to do nothing
}

for i in {1..10}
do
	DEBUG echo $i
done


echo Enter password:;
read password;
set -v; set +v; #make these 2 commands in one line avoid printing unnecessary lines to stdout
echo You have entered a password;
