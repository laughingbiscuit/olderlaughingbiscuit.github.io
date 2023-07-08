#!/bin/sh

set -xe

docker rm -f some-nginx
docker run --name some-nginx --net=host -itd -p 80:80 nginx 
sleep 2
curl -sSf http://localhost
