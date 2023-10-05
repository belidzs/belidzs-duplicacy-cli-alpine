set VERSION=3.2.2
docker buildx build . --no-cache --platform linux/amd64,linux/arm,linux/arm64 --tag belidzs/duplicacy-cli-alpine:latest --tag belidzs/duplicacy-cli-alpine:%VERSION% --build-arg VERSION=%VERSION% --push
