#! /bin/bash
if [ "$TRAVIS_OS_NAME" == osx ]; then
    yarn electron:build -p always
else
    docker run --rm -e GH_TOKEN -v "${PWD}":/project -v ~/.cache/electron:/root/.cache/electron -v ~/.cache/electron-builder:/root/.cache/electron-builder electronuserland/builder:wine /bin/bash -c "yarn electron:build -p always"
fi