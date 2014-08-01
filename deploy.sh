#!/bin/bash

# Stop if any step fails
set -e

git pull origin master
git add -A && git commit -m "." && git push
echo "Done. It might take a minute or two for changes to show up on the site."
