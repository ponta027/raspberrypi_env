#!/bin/bash

docker build --build-arg user=$1 -t myneovim .
