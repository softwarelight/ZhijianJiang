#uploading git automatically
#!/bin/sh
git add .
git commit -m `date +%Y-%m-%d_%H:%M:%S`
git push origin master
