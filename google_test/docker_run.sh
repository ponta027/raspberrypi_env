#!/bin/sh

docker run --rm -v `pwd`:/code googletest "/code/run.sh"
