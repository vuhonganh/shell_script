#! /bin/bash
#File prepend_test.sh : test prepend function to ease export PATH=...:$PATH

apath=/usr/bin



prepend()
{
    [ -d $2 ] && eval $1=$2:\$$1 && export $1; 
}

echo '$PATH' = $PATH
prepend PATH /home/anhvh
echo '$PATH' = $PATH

echo '$apath' = $apath
prepend apath /home/anhvh
echo '$apath' = $apath
