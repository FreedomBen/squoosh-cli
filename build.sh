#!/usr/bin/env bash

podman build \
  -t quay.io/freedomben/squoosh:latest \
  -t docker.io/freedomben/squoosh:latest \
  -t squoosh:latest \
  .
