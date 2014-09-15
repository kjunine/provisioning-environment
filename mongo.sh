#!/usr/bin/env bash
source rc
docker.data run -it --rm --link mongodb:mongodb --entrypoint mongo kjunine/mongodb --host mongodb
