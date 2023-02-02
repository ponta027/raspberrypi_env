FROM alpine:edge

ARG user

ENV LANG="ja_JP.UTF-8" LANGUAGE="ja_JP:ja" LC_ALL="ja_JP.UTF-8"

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    curl \
    gcc \
    g++ \
    git \
    fish \
    bash \
    linux-headers \
    musl-dev\
    vim \
    neovim \
    sudo \
    ctags       \
    tzdata	\
    python3-dev \
    py3-pip && \
    rm -rf /var/cache/apk/*	&& \ 
    pip3 install --upgrade pip neovim && \
    rm -rf /root/.cache	&&\
    adduser --shell /bin/bash -D $user	&&	\
    echo "$user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

COPY entrypoint.sh /
WORKDIR /home/$user
USER $user
ENV SHELL=/bin/bash
ENTRYPOINT ["/entrypoint.sh"]
