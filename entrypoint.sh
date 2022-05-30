#!/bin/sh
echo "$1"
echo "${{ inputs.DOPPLER_TOKEN }}"
yarn run doppler-install && ./doppler run --token "$1"
doppler run -- printenv | grep DOPPLER
echo "doppler secrets get $REACT_APP_REST_URL --plain"
