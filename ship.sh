#!/bin/bash

CMESSAGE=$(git log --pretty=%B -1)

rm -rf output
bundle exec nanoc
cd output
git init
git remote add origin git@github.com:RethinkGaming/rethinkgaming.github.io
git add .
git commit -m "$CMESSAGE"
git push --force origin master
