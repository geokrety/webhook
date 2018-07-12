FROM frolvlad/alpine-glibc:alpine-3.7

RUN apk update \
    && apk add \
      git \
      docker \
      make \
      curl

RUN curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose \
 && chmod a+x /usr/local/bin/docker-compose
COPY webhook /usr/local/bin/

COPY hooks.json /etc/webhook/hooks.json

COPY gkprod-update.sh /usr/local/bin/
COPY gkrec-update.sh /usr/local/bin/
COPY gkboly38-update.sh /usr/local/bin/

EXPOSE 9000
ENTRYPOINT ["/usr/local/bin/webhook"]
CMD ["-verbose", "-hooks=/etc/webhook/hooks.json", "-hotreload"]
