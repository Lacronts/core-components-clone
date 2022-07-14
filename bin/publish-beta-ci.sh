#!/bin/bash

# выхожу, если одна из команд завершилась неудачно
set -e

cd dist

npm version "$VERSION"

npm publish --tag beta

echo "Опубликована версия $VERSION"
