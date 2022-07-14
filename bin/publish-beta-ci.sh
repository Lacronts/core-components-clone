#!/bin/bash

# выхожу, если одна из команд завершилась неудачно
set -e

cd dist

npm version "$VERSION" --no-git-tag-version

npm publish --tag beta

echo "Опубликована версия $VERSION"
