FROM alpine:3

ARG VERSION

RUN apk update && apk add curl
RUN wget --no-verbose -O /usr/local/bin/duplicacy https://github.com/gilbertchen/duplicacy/releases/download/v${VERSION}/duplicacy_linux_arm_${VERSION}
RUN chmod 777 /usr/local/bin/duplicacy && mkdir -p /config/scripts && mkdir -p /config/cache && mkdir -p /data

COPY .duplicacy /

VOLUME /config
VOLUME /data

WORKDIR /

CMD ["duplicacy", "-log", "backup"]
