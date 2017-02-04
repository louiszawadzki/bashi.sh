#!/bin/bash

rm -f out
mkfifo out
trap "rm -f out" EXIT
# Starts the web server
while true
do
  cat out | nc -l -p 80 > >( # from http://stackoverflow.com/a/24342101/6835068
    export REQUEST=
    while read line
    do
      line=$(echo "$line" | tr -d '[\r\n]')

      if echo "$line" | grep -qE '^GET /'
      then
        REQUEST=$(echo "$line" | cut -d ' ' -f2)
      elif [ "x$line" = x ]
      then
        lib/send_response.sh > out
      fi
    done
  )
done
