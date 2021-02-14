set VERSION=2.7.2
docker build . --no-cache --platform arm -t belidzs/duplicacy-cli-alpine:latest -t belidzs/duplicacy-cli-alpine:%VERSION% --build-arg %VERSION%
docker push belidzs/duplicacy-cli-alpine:latest
docker push belidzs/duplicacy-cli-alpine:%VERSION%