#!/bin/bash
echo ${OS_TYPE:=redhat}

OS_TYPE=""
echo ${OS_TYPE:-redhat}
echo ${OS_TYPE}
echo ${OS_TYPE:=redhat}
echo ${OS_TYPE}


OS_TYPE=""
unset OS_TYPE

echo ${OS_TYPE:-redhat}
echo ${OS_TYPE}
echo ${OS_TYPE:=redhat}
echo ${OS_TYPE}