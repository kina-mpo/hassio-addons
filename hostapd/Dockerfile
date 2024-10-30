FROM alpine:latest
RUN apk add --no-cache hostapd
COPY run.sh /run.sh
RUN chmod +x /run.sh
CMD ["/run.sh"]
