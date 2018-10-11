#!/bin/bash

for i in $( ls | grep [A-Z] ) 
do
  echo "Rename $i"
done
