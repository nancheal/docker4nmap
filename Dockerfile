FROM alpine:3.8

# install nmap and nmap-script
RUN apk update \
    && apk add git \
    && apk add nmap \
    && apk add nmap-scripts

# add NSE script based on Vulners.com API
RUN git clone https://github.com/vulnersCom/nmap-vulners.git nmap-vulners \
    && cp nmap-vulners/vulners.nse /usr/share/nmap/scripts/vulners.nse

WORKDIR /
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]