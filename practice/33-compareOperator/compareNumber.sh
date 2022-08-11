#!/bin/bash

VAR1=10; VAR2=10

echo "-equal ge"
if [ $VAR1 -ge $VAR2 ]; then echo True; else echo False; fi
echo "equal -le"
if [ $VAR1 -le $VAR2 ]; then echo True; else echo False; fi



VAR1=10; VAR2=20

echo "not equal -ge"
if [ $VAR1 -ge $VAR2 ]; then echo True; else echo False; fi
echo "not equal -le"
if [ $VAR1 -le $VAR2 ]; then echo True; else echo False; fi

VAR1=10; VAR2=10
echo "equal -gt"
if [ $VAR1 -gt $VAR2 ]; then echo True; else echo False; fi
echo "equal -lt"
if [ $VAR1 -lt $VAR2 ]; then echo True; else echo False; fi

VAR1=10; VAR2=20
echo "not equal -gt"
if [ $VAR1 -gt $VAR2 ]; then echo True; else echo False; fi
echo "not equal -lt"
if [ $VAR1 -lt $VAR2 ]; then echo True; else echo False; fi