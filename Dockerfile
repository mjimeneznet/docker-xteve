FROM alpine:latest
MAINTAINER Manuel Jimenez mjimenez@mjimenez.net

# Dependencies
RUN apk add ca-certificates

# xteve binary
ADD https://xteve.de:9443/download/?os=linux&arch=amd64&name=xteve&beta=false /xteve/xteve

RUN chmod +x /xteve/xteve

# Volumes
VOLUME /root/xteve
VOLUME /tmp/xteve

# Ports
EXPOSE 34400

# Entrypoint
ENTRYPOINT ["/xteve/xteve"]

# Command
CMD ["-port=34400"]
