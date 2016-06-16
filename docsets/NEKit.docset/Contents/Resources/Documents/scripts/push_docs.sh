#!/usr/bin/env sh

if [ -n "GITHUB_API_KEY" ]; then
    git add .
    git -c user.name="Travis CI" commit -m "Update docs"
    git push --force --quiet https://$GITHUB_API_KEY@github.com/zhuhaow/NEKit.git gh-pages > /dev/null 2>&1
fi
