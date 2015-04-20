# docker-forgetproxy

A transparent socks proxy for Docker.

## Disclaimer 

**/!\ BEWARE! THIS CONTAINER MODIFIES YOUR IPTABLES RULES FOR YOUR docker0 INTERFACE!!!**
**PLEASE READ THE EXPLANATIONS BELOW AND MAKE SURE TO EXIT IT CLEANY OR TO RUN THE STOP COMMAND TO RESET YOUR RULES**

This container is based on "munkyboy / redsocks"(https://registry.hub.docker.com/u/munkyboy/redsocks/) one.
The present version runs entirely from inside the container.

## Transparent proxy for Docker

If you are running docker behind a corporate http proxy, you can run this container to 
just forget it and let docker run as if you had a direct connection to the outside world.

## How use

### launch

    docker run -ti --net=host --privileged -e http_proxy=http://myproxy:3128 -e https_proxy=http://myproxy:3128 klabs/forgetproxy

It is adviced to let the container run in front as it is configured to intercept the CTRL+C and clean the iptables rules on exit.

### stop

If you have your container running, just press CTRL+C.
If you need to manually clean the iptables rules that are set by the container, you can run the following command until you get an error telling you the rules do no exist.

    docker run --net=host --privileged klabs/forgetproxy stop


