git pull origin master
bundle exec nanoc 
if [ "$?" -ne 0 ]; then
    echo "Website build failed"
    exit 1
fi
git add -A && git commit -m "." && git push
cd output
git add -A && git commit -m "." && git push --force
cd ..
