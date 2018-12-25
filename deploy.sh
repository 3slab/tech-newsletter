#!/bin/bash

now=$(date)

rm -rf /tmp/tech-newsletter
git clone -b gh-pages https://github.com/3slab/tech-newsletter.git /tmp/tech-newsletter
./node_modules/.bin/gulp build --production
cp -rf dist/* /tmp/tech-newsletter/
cd /tmp/tech-newsletter
git add .
git commit -m "$now"
git push origin gh-pages
cd -