FROM ubuntu:bionic

COPY init /init
COPY build.sh /tmp/

RUN /tmp/build.sh
RUN rm -f /tmp/build.sh

CMD ["/init"]
