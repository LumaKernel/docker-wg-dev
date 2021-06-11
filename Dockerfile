FROM linuxserver/wireguard

# hadolint ignore=DL3008,DL3009
RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get install -y --no-install-recommends \
    vim \
    curl \
    dnsutils \
    net-tools \
    iputils-ping \
    iproute2 \
    ifstat \
    nmap

WORKDIR /root/
COPY instruction.md .
COPY wg-temp-client.conf .
COPY wg-temp-server.conf .

ENTRYPOINT [ ]
CMD [ "sleep", "infinity" ]
