#!/bin/sh
echo "$1"
yarn run doppler-install
# Configure new environment variables
./doppler configure set token "$1"
echo "$(./doppler run -- printenv DOPPLER)" >> $GITHUB_ENV
