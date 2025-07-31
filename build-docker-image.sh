#!/bin/sh

docker buildx build -t askefc/darkeden:latest . -f Dockerfile.prod
