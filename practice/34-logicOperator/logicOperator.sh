#!/bin/bash

VAR1=10; VAR2=20; VAR3=30

if [ $VAR1 -lt $VAR2 ] && [ $VAR2 -gt $VAR3 ]
then echo True;
else echo False;
fi

if [ $VAR1 -lt $VAR2 ] || [ $VAR2 -gt $VAR3 ]
then echo True;
else echo False;
fi

if [[ $VAR1 -lt $VAR2 && $VAR2 -gt $VAR3 ]]
then echo True;
else echo False;
fi

if [[ $VAR1 -lt $VAR2 || $VAR2 -gt $VAR3 ]]
then echo True
else echo False
fi