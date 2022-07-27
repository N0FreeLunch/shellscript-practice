#!/bin/bash

for language in $*
do
    echo "I can speak $language"
done

for language in "$*"
do
    echo "I can speak $language"
done
