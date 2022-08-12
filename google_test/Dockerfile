FROM alpine:edge

ARG BRANCH_OR_TAG=master
ARG CMAKE_OPTIONS=
ENV DEBIAN_FRONTEND=nointeractive
RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    git make g++ \
    wget python3 py3-pip	\
    linux-headers    \
    openssl-dev    \
    lcov@testing	\
    && \ 
    rm -rf /var/cache/apk/*

RUN mkdir /cmake
WORKDIR /cmake
RUN wget https://github.com/Kitware/CMake/releases/download/v3.24.0/cmake-3.24.0.tar.gz
RUN tar zxvf cmake-3.24.0.tar.gz && cd cmake-3.24.0 && ./bootstrap && make && make install 

RUN git clone https://github.com/google/googletest.git /googletest

RUN mkdir -p /googletest/build
WORKDIR /googletest/build
RUN cmake .. ${CMAKE_OPTIONS} && make -j && make install
RUN mkdir -p /code

WORKDIR /code
RUN pip install lcov_cobertura
RUN rm -fr /googletest


