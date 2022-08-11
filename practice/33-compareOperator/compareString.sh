#!/bin/bash

VAR1="abc"; VAR2="abc"

if [ $VAR1 = $VAR2 ]; then echo True; else echo False; fi

if [ $VAR1 = "$VAR2" ]; then echo True; else echo False; fi

if [ $VAR1 == $VAR2 ]; then echo True; else echo False; fi

if [ $VAR1 == "$VAR2" ]; then echo True; else echo False; fi


VAR1="abc"; VAR2="aba"

if [ $VAR1 != $VAR2 ]; then echo True; else echo False; fi

if [[ $VAR1 > $VAR2 ]]; then echo True; else echo False; fi

if [[ $VAR1 < $VAR2 ]]; then echo True; else echo False; fi

VAR1="abc"; VAR2="abz"

if [[ $VAR1 > $VAR2 ]]; then echo True; else echo False; fi

if [[ $VAR1 < $VAR2 ]]; then echo True; else echo False; fi