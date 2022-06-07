#!/bin/sh
yarn run doppler-install
./doppler configure set token "$1"
./doppler run -- printenv | grep DOPPLER
variables=$(echo $2 | tr ", " "\n")
# echo "$variables"
## now loop through the above array
# for i in "${"${variables[@]}"}"; do
#    echo "$i"
# #    echo "$i=$(./doppler secrets get $i --plain)" >> $GITHUB_ENV
# done

# get length of an array
# arraylength=${#variables[@]}

# # use for loop to read all values and indexes
# for (( i=0; i<${arraylength}; i++ ));
# do
#   echo "index: $i, value: ${variables[$i]}"
# done

Backup_of_internal_field_separator=$IFS
IFS=,
for item in $2; 
  do
    echo "$item=$(./doppler secrets get $item --plain)" >> $GITHUB_ENV
  done
IFS=$Backup_of_internal_field_separator