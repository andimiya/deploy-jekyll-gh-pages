#!/bin/bash

rm -rf _site
git clone -b gh-pages `git config remote.origin.url` _site
jekyll build
cd _site

touch CNAME // if you don't have a custom domain, remove this line
echo "blog.sudokrew.com" >> CNAME  // if you don't have a custome domain, remove this line. If you do, add your custom domain here

git add .
git commit -m "Scripted build to gh-pages"
git push
