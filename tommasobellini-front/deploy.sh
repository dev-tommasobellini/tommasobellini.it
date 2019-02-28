#!/usr/bin/env sh

# abort on errors
set -e

# build
npm.cmd run build

# firebase login
firebase deploy --token "1/gqwF8Vz90pNqRB4aZYR0K8BE7ZJs7LBhfaLT0K3ikDo"

# deploy to firebase
firebase deploy