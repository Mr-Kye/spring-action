#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

#java -cp app:app/lib/* hello.Application