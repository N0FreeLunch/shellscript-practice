#!/bin/bash

VAR1=10; VAR2=20

if (( $VAR1 > $VAR2 )); then echo True; else echo False; fi

if (( $VAR1 >= $VAR2 )); then echo True; else echo Fasle; fi

if (( $VAR1 < $VAR2 )); then echo True; else echo False; fi

if (( $VAR1 <= $VAR2 )); then echo False; else echo False; fi
