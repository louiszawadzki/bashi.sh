#!/bin/bash
# Imports
. lib/get_path.sh

filename=src/static/$(get_file_from_url)

if [ -e $filename ]
then
  # Send Headers
  echo -e 'HTTP/1.1 200 OK\r\n'
  # Send the a file based located on the src/static/ folder
  cat $filename
else
  # Send 404 header
  echo -e 'HTTP/1.1 404 Not Found\r\n'
fi
