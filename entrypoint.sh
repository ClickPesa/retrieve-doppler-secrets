#!/bin/sh
echo "$1"
yarn run doppler-install && ./doppler run --token "$1"
# Configure new environment variables
# ./doppler configure set token "$1"
./doppler run -- printenv | grep DOPPLER
echo "$REACT_APP_REST_URL"
