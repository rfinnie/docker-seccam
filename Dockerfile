FROM ubuntu:bionic

COPY init /init
COPY container-build /tmp/
RUN /tmp/container-build && rm -f /tmp/container-build

USER streams
CMD ["/init"]
