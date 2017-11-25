#!/bin/bash

set -o errexit # Exit on error

cd tools
rm -rf timekeeper
git clone git@github.com:luetkemj/aglet-timekeeper.git temp
cd temp
yarn # install all dependencies and build
cd .. # move back to tools dir
mkdir timekeeper # make dir for timekeeper
mv temp/dist/* timekeeper # copy actual site files to timekeeper
rm -rf temp # clean up temp dir
