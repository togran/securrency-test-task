#!/bin/bash

#Load variables
source vars

#Get first file and extract the value
VALUE1=$(curl "$URL1" | jq ".$KEY")

#Get second file and extract the value
VALUE2=$(curl "$URL2" | jq ".$KEY")

#Compare values
if [ "$VALUE1" == "$VALUE2" ]
then
  exit 0
else
  echo "Alert! Versions are different"
  exit 1
fi