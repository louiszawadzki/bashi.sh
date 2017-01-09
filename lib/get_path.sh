#!/bin/bash

function get_file_from_url() {
  # Get the path from the path
  typeset -A routes
  # Load the routing from the config
  while read line
  do
    if echo $line | grep -F = &>/dev/null
    then
      requestedUrl=$(echo "$line" | cut -d '=' -f 1)
      if [ "$requestedUrl" = $REQUEST ]
      then
        filename=$(echo "$line" | cut -d '=' -f 2-)
      fi
    fi
  done < src/config/routing.conf

  # Set the filename to the request if not found
  filename=${filename:-$REQUEST}

  echo $filename
}
