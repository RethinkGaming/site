#!/bin/bash

CMESSAGE=$(git log --pretty=%B -1)

rm -rf output
bundle exec nanoc
cd output
git config --global user.email qtreadzsd@gmail.com
git config --global user.name John Yang
git init
git remote add origin https://$GH_TOKEN@github.com/RethinkGaming/RethinkGaming.github.io.git
git add .
git commit -m "$CMESSAGE"
git push --force origin master
