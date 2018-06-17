#!/bin/bash -e

# build
yarn run --silent build

git config --global user.name "Circle CI"
git config --global user.email "<>"
git add -A
git commit -m '[ci skip] Deploy by CI'

git push -f $(git config --get remote.origin.url) master:master &> /dev/null

echo 'Deploy a site!'

cd -
