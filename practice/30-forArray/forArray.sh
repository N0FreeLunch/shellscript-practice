#!/bin/bash

array=("apple" "banana" "pineapple")

for fruit in ${array}
do
    echo $fruit;
done


for((num=0;num<3; num++))
do
    echo ${array[$num]};
done


for((num=0;num<3; num++)) do echo ${array[$num]}; done
