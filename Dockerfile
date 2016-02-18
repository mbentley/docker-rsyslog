FROM alpine:latest
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN apk --no-cache add rsyslog
COPY rsyslog.conf /etc/rsyslog.conf

EXPOSE 514 514/udp
VOLUME ["/var/log","/etc/rsyslog.d"]

CMD ["rsyslogd","-n"]
