#!/bin/bash

src_directory=$(realpath $1 )
dest_directory=$(realpath $2 )

for i in $( ls $src_directory | grep [A-Z] ); 
  do mv -i $src_directory/$i `echo $dest_directory/$i | tr 'A-Z' 'a-z'`;
done
