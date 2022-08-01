#!/bin/bash

OS_TYPE="Redhat Linux Ubuntu Linux Fedora Linux"

echo ${OS_TYPE/Linux/OS}
echo ${OS_TYPE//Linux/OS}
echo ${OS_TYPE/Linux}
echo ${OS_TYPE//Linux}
echo ${OS_TYPE/#Redhat/Unknown}
echo ${OS_TYPE/#Linux/Unknown}
echo ${OS_TYPE/%Linux/Unknown}