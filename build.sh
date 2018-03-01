#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
WORKSPACE=${SCRIPT_DIR}/workspace
SRC_DIR=${SCRIPT_DIR}/lambda-src

if [ -d ${WORKSPACE} ]; then
    rm -rf ${WORKSPACE}
fi
mkdir ${WORKSPACE}

pip3 install -r ${SCRIPT_DIR}/requirements.txt -t ${WORKSPACE}
cp -rf ${SRC_DIR}/* ${WORKSPACE}
