#!/bin/bash

if [ "$#" = 1 ] 
then 
  docker build --build-arg user=$1 -t myneovim .
else
  echo "ERROR"
fi

