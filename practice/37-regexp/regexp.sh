#!/bin/bash

grep 'C.U' expression.txt

grep 'C..e' expression.txt

grep -E 'q[[:lower:]]*\?' expression.txt

grep -E 'q[[:lower:]]*\??' expression.txt

grep -E '\-2+\-' expression.txt

grep '^#' expression.txt

grep -E '^[[:alpha:]]{5}' expression.txt

grep -E '^[[:alpha:]]{5,}[[:space:]]' expression.txt

grep -E '[[:alpha:]]{4,6}$' expression.txt

grep -E '[[:digit:]]{4,6}.$' expression.txt

cat expression.txt | grep -v '^#' | grep -v '^$'

grep '\.\b' expression.txt

ip address show | grep '\.'

grep '\.\B' expression.txt

grep '\<C' expression.txt

grep 'n\>' expression.txt

grep '[[:cntl:]]' expression.txt

grep '[[:graph:]]' expression.txt

grep '[[:print:]]' expression.txt | head -n 10

grep -E '[[:alpha:]]{6,}[[punct]]' expression.txt

ip a | grep  -E '\<[[:xdigit:]]{2}:*:[[:xdigit:]]{2}\>'



