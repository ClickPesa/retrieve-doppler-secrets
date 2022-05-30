#!/bin/sh
echo "$1"
yarn run doppler-install
# Configure new environment variables
./doppler configure set token "$1"
./doppler run -- printenv | grep DOPPLER
echo "::set-output name=env::$(./doppler secrets get --plain)')"