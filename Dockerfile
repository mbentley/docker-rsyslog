# rebased/repackaged base image that only updates existing packages
FROM mbentley/alpine:latest
LABEL maintainer="Matt Bentley <mbentley@mbentley.net>"

RUN apk --no-cache add rsyslog
COPY rsyslog.conf /etc/rsyslog.conf
COPY entrypoint.sh /entrypoint.sh

EXPOSE 514 514/udp
VOLUME ["/var/log"]

ENTRYPOINT ["/entrypoint.sh"]
CMD ["rsyslogd","-n"]
