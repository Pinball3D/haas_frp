FROM ghcr.io/home-assistant/base:latest

# Copy data for app
COPY run.sh /
RUN chmod a+x /run.sh

RUN apk add --no-cache python3 py3-pip

EXPOSE 8000

CMD [ "/run.sh" ]