#!/usr/bin/env sh

# abort on errors
set -e

# build
npm.cmd run build

# deploy to firebase
firebase deploy --token "1/Ih83f_4ydAhZYQ44hVgyKieOB-aFw9nWQQb-taSdY2c"
