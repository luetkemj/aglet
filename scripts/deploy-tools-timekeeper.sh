#!/bin/bash

set -o errexit # Exit on error

cd tools
rm -rf timekeeper
git clone git@github.com:luetkemj/aglet-timekeeper.git temp
cd temp
yarn # install all dependencies and build
cd .. # move to tools dir
mkdir timekeeper # make dir for timekeeper
mv temp/dist/* timekeeper # copy actual site files to timkeeper
rm -rf temp # clean up temp dir

# git stash save 'Before deploy' # Stash all changes before deploy
# git checkout deploy
# git merge master --no-edit # Merge in the master branch without prompting
# npm run build # Generate the bundled Javascript and CSS
# if $(git commit -am Deploy); then # Commit the changes, if any
#   echo 'Changes Committed'
# fi
# git push heroku deploy:master # Deploy to Heroku
# git checkout master # Checkout master again
# git stash pop # And restore the changes
