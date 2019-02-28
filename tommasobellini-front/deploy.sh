#!/usr/bin/env sh

# abort on errors
set -e

# build
npm.cmd run build

# deploy to firebase
firebase deploy