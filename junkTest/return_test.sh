#!/bin/bash
#File : return_test.sh : test the functionality of return

function returnOne()
{
    echo "This function will return one after this line"
    return 1
    echo "never see this line????"
}

returnOne
echo "call above function and here is it \$? = $?"

function returnStandsAlone()
{
    echo "This function will have one line return after this line"
    return
}

returnStandsAlone
echo "call above function and here is it \$? = $?"
echo "So, return stands alone has the result is 0"
