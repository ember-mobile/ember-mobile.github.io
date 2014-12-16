// publishToGithubPages.sh
#!/bin/bash
git checkout source
git branch -D master
git push origin --delete master
git checkout -b master
ember build --environment production
git rm -rf app addon config tests
git rm -rf Brocfile.js bower.json package.json testem.json
git rm -rf .bowerrc .editorconfig .jshintrc .travis.yml
mv dist/* .
rm -rf dist
git add .
git commit -m "Publishing to github pages"
git push origin master
git checkout source
