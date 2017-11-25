#!/bin/bash

set -o errexit # Exit on error

cd developers
rm -rf components
git clone git@github.com:luetkemj/aglet-components.git temp
cd temp
yarn # install all dependencies and build
yarn build:storybook # build static storybook app for deployment
cd .. # move back to developers dir
mkdir components # make dir for components
mv temp/storybook-static/* components # copy actual site files to components
rm -rf temp # clean up temp dir
