#!/bin/bash

# выхожу, если одна из команд завершилась неудачно
set -e

cd dist

npm config set _auth $NPM_TOKEN && npm config set registry "https://registry.npmjs.org" && npm config set always-auth=true && npm config set email=ikuz58@gmail.com

npm version "$VERSION" --no-git-tag-version

npm publish --tag beta

echo "Опубликована версия $VERSION"
