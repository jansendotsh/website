#/bin/bash

# Assorted troubleshooting of Travis errors
ls -larth /home/travis/build/garrettjj/website/
find /home/travis/build/ -type f "index.html" 

rsync -r --delete-after --quiet $TRAVIS_BUILD_DIR/_site deploy@69.164.214.227:/data/nginx/blog
ssh deploy@69.164.214.227 echo "Most recent successful deployment: $TRAVIS_BUILD_ID"
