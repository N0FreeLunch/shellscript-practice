#!/bin/bash
echo $@
echo $*
echo a b 'c' 'd'
echo "'a' 'b' 'c' 'd'"

for language in $@
do
  echo "I can speak $language"
done

for language in "$@"
do
  echo "I can speak $language"
done