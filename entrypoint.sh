#!/bin/sh
echo "$1"
yarn run doppler-install
# Configure new environment variables
./doppler configure set token "$1"
./doppler run -- printenv | grep DOPPLER
echo "$(./doppler run -- printenv | grep DOPPLER)" >> $GITHUB_ENV
echo "::set-output name=env::$(./doppler run -- printenv | grep DOPPLER)')"