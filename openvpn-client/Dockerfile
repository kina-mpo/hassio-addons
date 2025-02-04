FROM ghcr.io/home-assistant/aarch64-homeassistant-base:latest
RUN apk add --no-cache openvpn
COPY run.sh /run.sh
RUN chmod +x /run.sh
CMD ["/run.sh"]
