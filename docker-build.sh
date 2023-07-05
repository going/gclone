#!/bin/bash

docker run --platform=linux/amd64 --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp -e CC=gcc -e GOOS=linux -e GOARCH=amd64 golang:alpine go build -tags "full" -ldflags="-s -w" -v
