#!/bin/sh
echo "$1"
yarn run doppler-install && ./doppler run --token "$1" -- yarn run test
doppler run -- printenv | grep DOPPLER
echo "doppler secrets get $REACT_APP_REST_URL --plain"
