#!/bin/bash
set -x

if [ `id -u` != 0 ]; then
    echo script should be run as root
    exit 0
fi

cd ../dockerfiles
DOCKERFILE=dockerfile-rocm351-migraphx

docker build -t rocm-migraphx:rocm351-migraphx -f ${DOCKERFILE} .
