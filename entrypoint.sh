#!/bin/sh

# RUN (curl -Ls https://cli.doppler.com/install.sh || wget -qO- https://cli.doppler.com/install.sh) | sh -s -- --no-install --no-package-manager
RUN (curl -Ls https://cli.doppler.com/install.sh || wget -qO- https://cli.doppler.com/install.sh)
npm run doppler-install && ./doppler run --token $1
# doppler run -- printenv | grep DOPPLER
echo "doppler secrets get $REACT_APP_REST_URL --plain"
