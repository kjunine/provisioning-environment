#!/usr/bin/env bash
source rc
docker.data run -it --rm --link redis:redis --entrypoint redis-cli kjunine/redis -h redis
