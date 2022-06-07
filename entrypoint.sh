#!/bin/sh
echo "$1"
echo "$2"
variables=$(echo $2 | tr "," "\n")
echo "$variables"
# echo "${variables[0]}"
yarn run doppler-install
# Configure new environment variables
./doppler configure set token "$1"
./doppler run -- printenv | grep DOPPLER
echo "$(./doppler secrets get REACT_APP_REST_URL --plain)" >> $GITHUB_ENV
echo "$(./doppler run -- printenv | grep DOPPLER)" >> $GITHUB_ENV