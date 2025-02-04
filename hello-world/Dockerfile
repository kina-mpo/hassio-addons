FROM python:3.9-slim

WORKDIR /app

COPY run.sh /app/run.sh
COPY www /app/www

RUN chmod +x /app/run.sh

CMD ["./run.sh"]
