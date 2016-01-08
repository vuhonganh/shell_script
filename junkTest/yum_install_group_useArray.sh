#!/bin/zsh -x
#File : test_install_group.sh
echo IFS = ${IFS};

array=("X Window System" "Fonts");

echo "We have complicated the things, we can do like this"

function bestway()
{
    for elem in $array; do
        sudo yum groupinstall $elem
    done
}

function oldwayIused()
{
    defaultIFS=${IFS};
    IFS="";
    for elem in ${array[@]}; do
        #sudo yum groupinstall \"${elem}\" #WILL NOT WORK
        #sudo yum groupinstall `echo "${elem}"` #WORK
        sudo yum groupinstall "${elem}" #WORK TOO
    done
    IFS=${defaultIFS}
}

bestway
