#! /bin/bash

argument=$1

echo "Setting Java Default: $argument"

JAVA_HOME=`/usr/libexec/java_home -v $argument`
echo $JAVA_HOME
export JAVA_HOME=$JAVA_HOME

java -version
