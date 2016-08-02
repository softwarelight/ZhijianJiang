#!/bin/sh

# var=`date +%Y-%m-%d_%H:%M:%S`
git add .
git commit -m `date +%Y-%m-%d_%H:%M:%S`
git push origin master
