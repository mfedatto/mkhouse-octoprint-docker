#!/bin/bash

docker buildx build --push --platform $1 --tag mfedatto/mkh-octoprint:beta .
