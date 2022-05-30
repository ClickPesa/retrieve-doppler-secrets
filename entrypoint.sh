#!/bin/sh
echo "$1"
yarn run doppler-install
# Configure new environment variables
./doppler configure set token "$1"
echo "$(./doppler secrets get DOPPLER --plain)" >> $GITHUB_ENV
# echo "::set-output name=env::$(./doppler secrets get --plain)')"