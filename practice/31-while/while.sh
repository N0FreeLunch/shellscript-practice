#!/bin/bash

num=0

while [ $num -lt 3 ]
do
    echo $num
    num=$((num+1))
done

num=0

while [ $num -lt 3 ]; do echo $num; num=$((num+1)); done