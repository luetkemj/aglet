#!/bin/bash

set -o errexit # Exit on error

cd tools
rm -rf hunter-gatherer
git clone git@github.com:luetkemj/aglet-hunter-gatherer.git temp
cd temp
npm i # install all dependencies and build
cd .. # move back to tools dir
mkdir hunter-gatherer # make dir for hunter-gatherer
mv temp/dist/* hunter-gatherer # copy actual site files to hunter-gatherer
rm -rf temp # clean up temp dir
