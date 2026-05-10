FROM debian:bookworm-slim

ENV XRAY_VERSION=v26.3.27

COPY setup.sh /tmp/setup.sh
COPY config.json /etc/xray/config.json

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       bash curl wget unzip ca-certificates openssl \
    && rm -rf /var/lib/apt/lists/* \
    && chmod +x /tmp/setup.sh \
    && /tmp/setup.sh \
    && rm /tmp/setup.sh

RUN echo 'printf "\n\033[1;32m[Proxy]\033[0m Your connection link is ready. Check terminal for details.\n"' >> /etc/bash.bashrc

EXPOSE 443

CMD ["/usr/local/bin/xray", "run", "-c", "/etc/xray/config.json"]