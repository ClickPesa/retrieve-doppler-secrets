#!/bin/sh
yarn run doppler-install
./doppler configure set token "$1"
./doppler run -- printenv | grep DOPPLER
variables=$(echo $2 | tr ", " "\n")
Backup_of_internal_field_separator=$IFS
IFS=,
for item in $2; 
  do
    echo "$item=$(./doppler secrets get $item --plain)" >> $GITHUB_ENV
  done
IFS=$Backup_of_internal_field_separator