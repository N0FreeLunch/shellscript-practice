#!/bin/bash

if [ -d $HOME ]; then echo $HOME is directory; else echo HOME is not directory; fi

if [ -e $HOME ]; then echo $HOME is file; else echo $HOME is not file; fi


FILE=/etc/localtime

if [ -f $FILE ]; then echo $FILE is file; else echo $FILE is not file; fi

if [ -L $FILE ]; then echo $FILE is symbolic link; else echo $FILE is not symbolic link; fi

if [ -r $FILE ]; then echo $FILE is readable; else echo $FILE is not readable; fi

if [ -w $FILE ]; then echo $FILE is writeable; else echo $FILE is not writeable; fi

if [ -x $FILE ]; then echo $FILE is executeable; else echo $FILE is not executeable; fi

if [ -s $FILE ]; then echo $FILE is not zero byte; else echo $FILE is zero byte; fi

if [ -O $FILE ]; then echo $FILE file owner is matched to current user; else echo $FILE file owner not matched to user; fi

if [ -G $FILE ]; then echo $FILE file owner is matched to current group; else echo $FILE file owner is not matched to current group; fi


PATH=$(pwd)
FILENAME=directoryOperator.sh
FILE=${PATH}/${FILENAME}

if [ -O $FILE ]; then echo $FILE file owner is matched to current user; else echo $FILE file owner not matched to user; fi

if [ -G $FILE ]; then echo $FILE file owner is matched to current group; else echo $FILE file owner is not matched to current group; fi

