FROM alpine:3

ARG VERSION
ARG TARGETARCH

RUN apk update && apk add curl
RUN if [ "$TARGETARCH" == "amd64" ]; then export TARGETARCH="x64"; fi; wget --no-verbose -O /usr/local/bin/duplicacy "https://github.com/gilbertchen/duplicacy/releases/download/v${VERSION}/duplicacy_linux_${TARGETARCH}_${VERSION}"
RUN chmod 777 /usr/local/bin/duplicacy && mkdir -p /config/scripts && mkdir -p /config/cache && mkdir -p /data

COPY .duplicacy /

VOLUME /config
VOLUME /data

WORKDIR /

CMD ["duplicacy", "-log", "backup"]
