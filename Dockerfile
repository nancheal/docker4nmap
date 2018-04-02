FROM alpine:3.7
# install nmap
RUN apk update && apk add nmap
ENTRYPOINT [ "nmap" ]