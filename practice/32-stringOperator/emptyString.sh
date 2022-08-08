#!/bin/bash

echo ${1-\$1 is undefinded}
echo ${1:-\$1 is null or undefinded}
echo ${1:+\$1 is definded}

if [ -n "" ]
then echo empty string
else echo not empty string
fi

if [ -n "''" ]
then echo empty string
else echo not empty string
fi

if [ -n "test" ]
then echo empty string
else echo not empty string
fi

if [ -n ]
then echo not exist
else echo exist and defined
fi

if [ -n undefined ]
then echo undefined
else echo zero length
fi

if [ -n "$undefined" ]
then echo undefined
else echo zero length
fi

if [ -n $1 ]
then echo \$1 is non zero length
else echo \$1 is zero length
fi

if [ -n "$1" ]
then echo \"\$1\" is non zero length
else echo \"\$1\" is zero length
fi