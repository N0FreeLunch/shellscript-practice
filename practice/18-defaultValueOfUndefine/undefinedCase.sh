#!/bin/bash
OS_TYPE=redhat
unset OS_TYPE
echo ${OS_TYPE:-ubuntu}
echo ${OS_TYPE-ubuntu}
