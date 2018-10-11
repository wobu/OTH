#!/bin/bash

for i in $( ls | grep [A-Z] ); 
  do mv -i -f $i `echo $i | tr 'A-Z' 'a-z'`;
done
