#!/usr/bin/env sh

# abort on errors
set -e

# push updates on github
git add .
git commit -m "new updates"
git push master master

# build
npm run build

# deploy to firebase
firebase deploy --only hosting