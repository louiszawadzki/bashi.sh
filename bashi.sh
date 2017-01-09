#!/bin/bash

# Starts the web server
while true; do { echo -e 'HTTP/1.1 200 OK\r\n'; echo "hello"; } | nc -l 8888; done
