#!/bin/bash

docker run --platform=linux/arm64 --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp -e CGO_ENABLE=0 -e GOOS=linux -e GOARCH=arm64 golang:latest go build -tags "full" -ldflags="-s -w" -v
