FROM alpine:edge

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    curl \
    gcc \
    g++ \
    git \
    linux-headers \
    musl-dev\
    vim \
    neovim \
    python3-dev \
    py3-pip && \
    rm -rf /var/cache/apk/*

ARG user

ENV LANG="ja_JP.UTF-8" LANGUAGE="ja_JP:ja" LC_ALL="ja_JP.UTF-8"
RUN pip3 install --upgrade pip neovim && \
    rm -rf /root/.cache

RUN adduser -D $user
WORKDIR /home/$user
ENTRYPOINT ["nvim"]
