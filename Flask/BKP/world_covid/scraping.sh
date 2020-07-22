#!/bin/bash


file_path=`readlink -f $0`
HOME_DIR=`dirname ${file_path}`

python3 ${HOME_DIR}
