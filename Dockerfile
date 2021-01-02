FROM alpine:3

ENV VERSION=2.7.2

RUN wget --no-verbose -O /usr/local/bin/duplicacy https://github.com/gilbertchen/duplicacy/releases/download/v${VERSION}/duplicacy_linux_arm_${VERSION}
RUN chmod 777 /usr/local/bin/duplicacy
RUN mkdir -p /config/scripts
RUN mkdir -p /data

COPY .duplicacy /

VOLUME /config
VOLUME /data

WORKDIR /

#CMD ["duplicacy", "backup"]
CMD ["/bin/sh", "-c", "while true; do echo hello; sleep 10;done"]