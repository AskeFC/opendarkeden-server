#!/bin/sh

docker buildx build -t darkeden:build . -f Dockerfile.build --no-cache

docker run --rm -v $(pwd):/home/darkeden/vs darkeden:build bash -c "make clean && make -j4"
