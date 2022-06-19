FROM ubuntu:20.04

RUN apt upgrade && apt update && apt install -y python3 wget libhdf5-dev python3-distutils python3-dev make gcc g++
RUN wget https://bootstrap.pypa.io/pip/3.6/get-pip.py && python3 get-pip.py
RUN pip3 install requests Flask flask-cors sklearn scipy numpy matplotlib Pillow jupyter pandas Keras 
RUN pip3 install chainer


