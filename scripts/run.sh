#!/bin/bash

COMMAND=$1
CONTAINER=$2

if [[ $COMMAND == 'up' ]] 
then
   docker run --rm -d -p 27017:27017 --name $CONTAINER mongo:latest
   echo "Run container ($CONTAINER)"
elif [[ $COMMAND == 'down' ]]
then
   docker stop $CONTAINER
   echo "Stop container ($CONTAINER)"
else
   echo "Unknown command ($COMMAND) is found"
fi
