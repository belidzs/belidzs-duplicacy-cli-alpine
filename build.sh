#!/bin/sh
DUPLICACY_VERSION=2.7.2
podman build . --no-cache -t docker.io/belidzs/duplicacy-cli-alpine:latest -t "docker.io/belidzs/duplicacy-cli-alpine:$DUPLICACY_VERSION" --build-arg "VERSION=$DUPLICACY_VERSION"
podman push --format=docker docker.io/belidzs/duplicacy-cli-alpine:latest
podman push --format=docker "docker.io/belidzs/duplicacy-cli-alpine:$DUPLICACY_VERSION"
