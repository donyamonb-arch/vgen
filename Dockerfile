FROM debian:bookworm-slim

COPY setup.sh /tmp/setup.sh
COPY config.json /etc/xray/config.json
COPY show-link.sh /tmp/show-link.sh

RUN apt-get update && apt-get install -y curl unzip ca-certificates \
    && chmod +x /tmp/setup.sh /tmp/show-link.sh \
    && /tmp/setup.sh \
    && rm -rf /var/lib/apt/lists/* /tmp/setup.sh

EXPOSE 443
CMD ["sleep", "infinity"]