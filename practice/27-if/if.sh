#!/bin/bash

value1=10
value2=10

if [ $value1 = $value2 ]
then
    echo True 
else
    echo False
fi

if [ $value1 = $value2 ]; then echo True; else echo False; fi

value=0
if [ $value = 0 ]
then echo True
else echo False
fi

value=""
if [ -z $value ]
then echo True
else echo False
fi

value=""
unset value
if [ -z $value ]
then echo True
else echo False
fi

value=5
if [ $value -gt  0 ] && [ $value -lt 10 ]
then echo True; else echo False;
fi
