FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive

COPY setup.sh /tmp/setup.sh
COPY config.json /etc/xray/config.json
COPY entrypoint.sh /entrypoint.sh

RUN apt-get update && apt-get install -y curl unzip ca-certificates \
    && chmod +x /tmp/setup.sh /entrypoint.sh \
    && /tmp/setup.sh \
    && rm -rf /var/lib/apt/lists/* /tmp/setup.sh

EXPOSE 443
ENTRYPOINT ["/entrypoint.sh"]