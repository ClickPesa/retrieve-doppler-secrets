#!/bin/sh
(curl -Ls --tlsv1.2 --proto "=https" --retry 3 https://cli.doppler.com/install.sh || wget -t 3 -qO- https://cli.doppler.com/install.sh) | sudo sh
npm run doppler-install && ./doppler run --token $1
doppler run -- printenv | grep DOPPLER
echo "doppler secrets get $REACT_APP_REST_URL --plain"
