#! /bin/bash
#File prepend_test.sh : test prepend function to ease export PATH=...:$PATH

apath=/usr/bin

#${parameter:+expression} will be expression if the parameter is set and not null
#the version of prepend function below works even if the $1 is null
prepend()
{
    [ -d $2 ] && eval $1=$2\$\{$1:+:\$$1\} && export $1; 
}

echo '$PATH' = $PATH
prepend PATH /home/anhvh
echo '$PATH' = $PATH

echo '$apath' = $apath
prepend apath /home/anhvh
echo '$apath' = $apath

nullpath=''
echo '$nullpath' = $nullpath
prepend nullpath /home/anhvh
echo '$nullpath' = $nullpath
