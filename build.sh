#!/bin/bash -e

if [ $# -gt 0 ]; then
    echo "scala_version=$1"
    echo "kafka_version=$2"
	docker.exe build -t acolasz/myzookeeper:$2 --build-arg scala_version=$1 --build-arg kafka_version=$2 .

else
    echo "Your command line contains no arguments"
fi