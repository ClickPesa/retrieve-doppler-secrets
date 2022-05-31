#!/bin/sh
echo "$1"
yarn run doppler-install
# Configure new environment variables
./doppler configure set token "$1"
echo "$(./doppler run -- printenv DOPPLER_CONFIG)" >> $GITHUB_ENV
# echo "::set-output name=env::$(./doppler secrets get --plain)')"