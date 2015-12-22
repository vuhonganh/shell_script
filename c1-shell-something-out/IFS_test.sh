#!/bin/bash
#File : IFS_test.sh : try IFS (Internal field separator), the default IFS is space, we need to reserve it and re-assign after modifying

data="name,sex,birthdate,location";

defaultIFS=$IFS;
IFS=,;
for item in $data;
do
    echo Item: $item
done

IFS=$defaultIFS;

