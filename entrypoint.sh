#!/bin/sh
RUN (curl -Ls https://cli.doppler.com/install.sh || wget -qO- https://cli.doppler.com/install.sh) | sh -s -- --no-install --no-package-manager
npm run doppler-install && ./doppler run --token $1
echo "doppler secrets get $REACT_APP_REST_URL --plain"
