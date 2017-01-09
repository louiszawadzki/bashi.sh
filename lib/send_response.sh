#!/bin/bash
# Imports
. lib/get_path.sh

filename=$(get_file_from_url)

# Send Headers
echo -e 'HTTP/1.1 200 OK\r\n'

# Send the a file based located on the src/static/ folder
cat src/static/"$filename"
