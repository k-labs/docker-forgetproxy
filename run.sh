#!/usr/bin/env sh

docker run -ti --net=host --privileged -e http_proxy=$http_proxy -e https_proxy=$https_proxy klabs/forgetproxy
