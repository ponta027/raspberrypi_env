project(SAMPLE)

set(SAMPLE_VERSION_MAJOR 0)

set(CMAKE_CXX_FLAGS "-g -O0 -Wall -fprofile-arcs -ftest-coverage")

cmake_minimum_required(VERSION 3.24)


enable_testing()
find_package(GTest REQUIRED)

add_executable( mytest sample.cc sample_test.cc)
target_link_libraries( mytest GTest::gtest_main Threads::Threads)

