#!/bin/bash

echo Start...

for (( count=0; count<10; count++ ))
  do
    curl -H "Content-Type: application/json" -X POST -d '{"username":"admin'$(date '+%S')'","password":"secret'$(date '+%S')'"}' http://172.16.0.10 > /dev/null 2>&1
    sleep 1
  done

echo Done
