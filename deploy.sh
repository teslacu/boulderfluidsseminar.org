#!/bin/bash

# index
curl localhost:4567/ > ./public/index.html

# events
FILES=./views/events/*
for f in $FILES
do
  filename=$(basename "$f")
  extension="${filename##*.}"
  filename="${filename%.*}"
  echo "Processing $filename file..."
  mkdir ./public/$filename
  curl localhost:4567/$filename > ./public/$filename/index.html
done

# sync up the public directory github
cd public
git add *
git diff --diff-filter=D --name-only -z | xargs -0 git rm
git commit -m "updating live site"
git push origin gh-pages

# sync up the origin branch
cd ..
git add public
git commit -m "updating live site"
git push origin master

