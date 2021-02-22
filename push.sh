#!/usr/bin/env bash

set -e

echo "Pushing to Quay.io..."
podman push --authfile="$HOME/.docker/config.json" quay.io/freedomben/squoosh:latest

echo "Pushing to Docker.io..."
podman push --authfile="$HOME/.docker/config.json" docker.io/freedomben/squoosh:latest
