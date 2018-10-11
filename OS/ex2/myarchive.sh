#! /bin/bash

ARCHIVE_FILE_NAME=$1
SOURCEDIR=$2
DESTINATIONDIR="."

# check if archive exists
if [ -f $DESTINATIONDIR/$ARCHIVE_FILE_NAME.tar.gz ]
then
  echo "archive exists - abort"
  exit
fi

# destinationdirectory should exists and has to be a directory
if [ ! -d $DESTINATIONDIR ]
then
  echo "destination doesnt exist or isnt a directory - abort"
fi

# check if current user has readpermission for sourcedirectory
if ! [[ -r $SOURCEDIR ]]
then
  echo "user has not readpermission for source-directory - abort"
  exit
fi

# change working directory to sourcedirectory
tar cfvz $ARCHIVE_FILE_NAME.tar.gz $SOURCEDIR
