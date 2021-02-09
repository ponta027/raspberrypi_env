FROM ruby:2.5

RUN apt-get update -y && \
    apt-get install -y ruby-dev g++ make && \
    gem install fluentd fluent-plugin-secure-forward fluent-plugin-slack 

#RUN apt-get remove --purge -y  $(apt-mark showauto) && \ 
RUN    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    mkdir -p /fluentd/etc /fluentd/plugins

WORKDIR /home/ubuntu

COPY fluent.conf /fluentd/etc/
#COPY plugins /fluentd/plugins/

EXPOSE 24224

CMD ["fluentd", "-c", "/fluentd/etc/fluent.conf", "-p", "/fluentd/plugins"]
