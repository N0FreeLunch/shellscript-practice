#!/bin/bash
echo $*

for language in $*
do
  echo "I can speak $language"
done


for value in a b c 'd e'
do
  echo "I can speak $value"
done


for language in Korean English "Japanses" "Chinese"
do
  echo "I can speak $language"
done