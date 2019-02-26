FROM ubuntu:bionic

COPY build.sh /tmp/
RUN /tmp/build.sh
RUN rm -f /tmp/build.sh

COPY init /init

CMD ["/init"]
