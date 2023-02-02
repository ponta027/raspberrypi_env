#!/bin/bash

if [ "$#" = 1 ] 
then 
  docker build --build-arg user=$1 -t myneovim_ubuntu .
else
  echo "ERROR"
fi

