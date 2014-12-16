// publishToGithubPages.sh
#!/bin/bash
echo "Building ..."
git checkout source
echo "\tinstalling dependencies"
bundle install
npm install
bower install
echo "\tcleanup"
git branch -D master
git push origin --delete master
git checkout -b master
echo "\tbuilding"
ember build --environment production
echo "\tcleanup"
git rm -rf app addon config tests
git rm -rf Brocfile.js bower.json package.json testem.json
git rm -rf .bowerrc .editorconfig .jshintrc .travis.yml
mv dist/* .
rm -rf dist
echo "\tpublishing"
git add .
git commit -m "Publishing to github pages"
git push origin master
git checkout source
echo "done"
