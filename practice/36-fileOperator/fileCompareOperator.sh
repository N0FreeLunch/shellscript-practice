#!/bin/bash

echo "AAA" > first.txt
echo "BBB" > second.txt

FILE1=first.txt; FILE2=second.txt

if [ $FILE1 -nt $FILE2 ]; then echo True; else echo False; fi

if [ $FILE1 -ot $FILE2 ]; then echo True; else echo False; fi

FILE1=/etc/localtime
FILE2=/user/share/zoneinfo/Asia/Seoul

if [ $FILE1 -ef $FILE2 ]; then echo True; else echo False; fi

