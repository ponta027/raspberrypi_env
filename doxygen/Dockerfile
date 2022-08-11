FROM alpine:edge

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    openjdk8-jre fontconfig ttf-dejavu \
    doxygen \
    wget \
    graphviz \
    && \
    wget http://jaist.dl.sourceforge.jp/vlgothic/44715/VLGothic-20091202.zip -O /tmp/font.zip && \
    unzip /tmp/font.zip -d /usr/share/fonts/ && \
    rm /tmp/font.zip && \
    fc-cache -fv && \
    rm -rf /var/cache/apk/*
RUN mkdir /opt/plantuml && wget https://github.com/plantuml/plantuml/releases/download/v1.2022.6/plantuml-1.2022.6.jar -O /opt/plantuml/plantuml.jar
WORKDIR /data

