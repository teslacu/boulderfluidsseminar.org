#!/bin/bash

rm -rf ./public/*.html

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
  curl localhost:4567/$filename > ./public/$filename.html
done
