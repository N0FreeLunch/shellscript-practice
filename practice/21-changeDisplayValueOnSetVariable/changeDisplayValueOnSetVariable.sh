OS_TYPE="ubuntu"

echo ${OS_TYPE:+redhat}
echo ${OS_TYPE}

echo ${OS_TYPE+redhat}
echo ${OS_TYPE}

OS_TYPE=""

echo ${OS_TYPE:+redhat}
echo ${OS_TYPE}

echo ${OS_TYPE+redhat}
echo ${OS_TYPE}


OS_TYPE=""
unset OS_TYPE

echo ${OS_TYPE:+redhat}
echo ${OS_TYPE}

echo ${OS_TYPE+redhat}
echo ${OS_TYPE}
