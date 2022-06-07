#!/bin/sh
echo "$1"
echo "$2"
variables=$(echo $2 | tr "," "\n")
IFS=', ' read -r -a array <<< "$2"
echo "$variables"
echo "$IFS"
# echo "${variables[0]}"
yarn run doppler-install
# Configure new environment variables
./doppler configure set token "$1"
./doppler run -- printenv | grep DOPPLER
echo "$(./doppler secrets get REACT_APP_REST_URL --plain)"
echo "$(./doppler run -- printenv | grep DOPPLER)" >> $GITHUB_ENV