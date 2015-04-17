FROM debian:unstable

RUN apt-get update -q \
    && apt-get install mumble-server -y --no-install-recommends

COPY start.sh /start.sh
USER mumble-server

CMD ["/start.sh"]