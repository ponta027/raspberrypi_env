#!/bin/bash

docker run -v`pwd`/data:/data --rm -it doxygen doxygen 
