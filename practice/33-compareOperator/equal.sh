#!/bin/bash

VAR1=10; VAR2=10

if [ $VAR1 -eq $VAR2 ]; then echo True; else echo False; fi

if [ $VAR1 = $VAR2 ]; then echo True; else echo False; fi

VAR1=10; VAR2=20

if [ $VAR1 -ne $VAR2 ]; then echo True; else echo False; fi

if [ $VAR1 != $VAR2 ]; then echo True; else echo False; fi