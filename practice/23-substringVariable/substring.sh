#!/bin/bash

OS_TYPE="Redhat Ununtu Fedora Debian"
echo ${OS_TYPE:14}
echo ${OS_TYPE:14:6}
echo ${OS_TYPE:(-6)}
echo ${OS_TYPE:(-6):2}
echo ${OS_TYPE:(-6):(-2)}