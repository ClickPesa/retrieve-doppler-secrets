#!/bin/sh

echo "$1"

cd /home/ubuntu/www/v2/master
# Configure new environment variables
doppler configure set token $1 --scope /home/ubuntu/www/v2/master
# doppler run -- printenv | grep DOPPLER
# echo "doppler secrets get DEVTO_API_KEY --plain"