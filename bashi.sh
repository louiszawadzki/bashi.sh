#!/bin/bash

# Starts the web server
while true; do { echo -e 'HTTP/1.1 200 OK\r\n'; lib/send_response.sh; } | nc -l 8888; done
