#!/bin/sh

RUN (curl -Ls https://cli.doppler.com/install.sh || wget -qO- https://cli.doppler.com/install.sh) | sh

ls

# cd /home/ubuntu/www/v2/master
# Configure new environment variables
# doppler configure set token $1 --scope /home/ubuntu/www/v2/master
doppler run -- printenv | grep DOPPLER
echo "doppler secrets get REACT_APP_REST_URL --plain"
