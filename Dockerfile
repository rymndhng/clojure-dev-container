FROM openjdk:8u131-jdk-alpine

RUN apk update
RUN apk add git openrc jq py-pip postgresql curl
RUN pip install awscli

# get postgres ready
RUN apk add postgresql && \
    rc-update add postgresql && \
    rc-status && \
    touch /run/openrc/softlevel && \
    /etc/init.d/postgresql start && \
    /etc/init.d/postgresql stop

# taken from juxt/docker
ENV LEIN_ROOT 1
RUN apk add --update wget ca-certificates bash && \
    wget -q "https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein" \
         -O /usr/local/bin/lein && \
    chmod 0755 /usr/local/bin/lein && \
    lein && \
    apk del wget ca-certificates && \
    rm -rf /tmp/* /var/cache/apk/*

# install yopa
COPY yopa /opt/yopa
RUN /opt/yopa/configure.sh
