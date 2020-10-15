#! /bin/bash

argument=$1

echo "Setting Java Default: $argument"

export JAVA_HOME=`/usr/libexec/java_home -v $argument`

java -version
