#!/bin/bash

echo ${1:-undefined or null}
echo ${1-undefined}

if [ -z $1 ]
then echo True
else echo False
fi

emptyString=""

if [ -z $emptyString ]
then echo null
else echo not null
fi