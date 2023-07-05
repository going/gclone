#!/bin/bash

docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp -e GOOS=linux -e GOARCH=amd64 golang:alpine go build -tags "full" -ldflags="-s -w" -v
