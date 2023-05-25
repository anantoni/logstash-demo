FROM ubuntu

# Install packages
RUN apt-get update && \
apt-get install -y curl

COPY docker-entrypoint.sh /
COPY schema.json /

ENTRYPOINT ["/docker-entrypoint.sh"]