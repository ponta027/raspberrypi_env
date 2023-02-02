FROM ubuntu:22.04

ARG user

RUN apt-get update -y&&  \
    apt-get upgrade -y    &&\
    apt-get install -y \
    curl    \
    sudo    \
    g++    \
    cmake    \    
    exuberant-ctags   \
    neovim  \
    python3-pip   &&\
    useradd $user    && \
    echo "$user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers



COPY entrypoint.sh /
WORKDIR /home/$user
USER $user
ENV SHELL=/bin/bash
ENTRYPOINT ["/entrypoint.sh"]

