#!/usr/bin/env sh

# abort on errors
set -e

# build
npm.cmd run build

# deploy to firebase
firebase deploy --token "1/pYmILKW17cdX55qzc_m42FR1HNo9Y8CZxkdHQCm6y8lPBK5NHATOe5ZqTTNZQAZt"
