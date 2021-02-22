#!/usr/bin/env bash

podman run \
  --rm \
  --volume "$(pwd):/squoosh:Z" \
  squoosh:latest \
  "$@"
