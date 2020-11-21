#!/usr/bin/env bash
set -e

mkdir "$1"
cp -r template/* "$1/"
cd "$1"
mv template.js "$1.js"
mv template.worker.js "$1.worker.js"
sed -i "s/template.js/$1.js/" index.html