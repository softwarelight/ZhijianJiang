#!/bin/sh

var = `date +%Y-%m-%d_%H:%M:%S`
git add .
git commit -m var
git push origin master
