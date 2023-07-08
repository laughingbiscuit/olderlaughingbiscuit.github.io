#!/bin/sh
set -xe

# create file to host
mkdir -p static-files
echo "Hello World" > ./static-files/index.html

# start webserver
httpd -p 8081 -h ./static-files

# verify
curl -sSf localhost:8081

# clean up
pkill httpd
rm -rf static-files
