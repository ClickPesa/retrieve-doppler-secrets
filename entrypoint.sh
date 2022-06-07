#!/bin/sh
yarn run doppler-install
./doppler configure set token "$1"
./doppler run -- printenv | grep DOPPLER
variables=$(echo $2 | tr ", " "\n")
echo "$variables"
## now loop through the above array
for i in "${variables[@]}"
do
   echo "$i"
#    echo "$i=$(./doppler secrets get $i --plain)" >> $GITHUB_ENV
done