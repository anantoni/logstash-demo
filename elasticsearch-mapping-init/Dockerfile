FROM ubuntu

# Install packages
RUN apt-get update && \
apt-get install -y curl

COPY docker-entrypoint.sh /
COPY first-index-info.json /
COPY index-template-info.json /
COPY policy.json /
COPY schema.json /

ENTRYPOINT ["/docker-entrypoint.sh"]