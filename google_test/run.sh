#!/bin/sh

APP_NAME=mytest
mkdir test/build
cd test/build
cmake ..
make
./${APP_NAME}

lcov -d . -c -o coverage.info
lcov -r coverage.info */googletest/* */c++/* */local/include/gtest/* -o coverageFiltered.info
genhtml -o lcovHtml --num-spaces 4 -s --legend coverageFiltered.info
lcov_cobertura coverageFiltereed.info -b `pwd` -o coverage.xml


