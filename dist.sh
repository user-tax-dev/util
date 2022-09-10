#!/usr/bin/env bash

_DIR=$(cd "$(dirname "$0")"; pwd)

cd $_DIR

set -ex

git pull

version=$(cat package.json|jq -r '.version')

./build.sh
git add lib
git add -A
git commit -m$version || true
npm set unsafe-perm true
npm version patch
version=$(cat package.json|jq -r '.version')
git push origin v$version
