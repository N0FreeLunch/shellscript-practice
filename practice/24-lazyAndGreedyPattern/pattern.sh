#!/bin/bash

FILE_NAME="myvm_container_repo.tar.gz"
echo ${FILE_NAME#*_}
echo ${FILE_NAME##*_}

echo ${FILE_NAME%_*}
echo ${FILE_NAME%%_*}

FILE_PATH="/etc/nova/nova.conf"
echo ${FILE_PATH%/*}
echo ${FILE_PATH##*/}
echo ${#FILE_PATH}