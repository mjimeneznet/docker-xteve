# Xteve docker container
- Port exposed: 34400 (default)
- Volumes: `/root/xteve` and `/tmp/xteve`

## Create local folder on your host
`mkdir -p ~/xteve/tmp`
`mkdir -p ~/xteve/files`

## How to run
`docker run -it --network host --restart always --name xteve -v ~/xteve/tmp/:/tmp/xteve/ -v ~/xteve/files/:/root/xteve/ mjimeneznet/docker-xteve:latest`
