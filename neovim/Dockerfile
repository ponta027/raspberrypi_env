FROM alpine:edge

ARG user
ENV LANG="ja_JP.UTF-8" LANGUAGE="ja_JP:ja" LC_ALL="ja_JP.UTF-8"
COPY entrypoint.sh /

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    curl \
    gcc \
    g++ \
    git \
    sudo \
    fish \
    bash \
    linux-headers \
    musl-dev\
    openssl-dev  \
    vim \
    neovim \
    neovim-doc \
    python3-dev \
    py3-pip   \
    rustup    \
    rust-analysis  \
    && rustup-init -y \
    && rm -rf /var/cache/apk/*	\
    && pip3 install --upgrade pip neovim \
    && rm -rf /root/.cache	\
    && adduser --shell /bin/bash -G wheel -D $user	\
    && echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers	

WORKDIR /home/$user
USER $user
ENV SHELL=/bin/bash
ENTRYPOINT ["/entrypoint.sh"]

