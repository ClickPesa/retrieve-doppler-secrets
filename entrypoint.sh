#!/bin/sh

cd /home/ubuntu/www/v2/develop
# Perform node_modules package installation
yarn install
# Stop current process
pm2 stop scripts/doppler-run.sh
# Configure new environment variables
doppler configure set token $1 --scope /home/ubuntu/www/v2/develop
# Start new process
pm2 start scripts/doppler-run.sh --name S1
# Clean up build archives
rm -rf $2
