#!/bin/bash -e

scala_version=2.12
kafka_version=2.4.0

if [ $# -gt 0 ]; then
    echo "scala_version=$1"
	scala_version=$1
    echo "kafka_version=$2"
	kafka_version=$2
fi
    
docker.exe build -t acolasz/kafka-base:$kafka_version --build-arg scala_version=$scala_version --build-arg kafka_version=$kafka_version .