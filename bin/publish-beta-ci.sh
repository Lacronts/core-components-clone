#!/bin/bash

# выхожу, если одна из команд завершилась неудачно
set -e

cd dist

LS=$(ls)
echo "$LS"

npm version "1.1.0-beta.0" --no-git-tag-version

npm publish --tag beta

echo "Опубликована версия $VERSION"
