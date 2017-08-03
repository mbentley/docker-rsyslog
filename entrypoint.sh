#!/bin/sh

# cleanup PID file if not running
if [ -f /var/run/rsyslogd.pid ] && [ -z "$(pidof rsyslogd)" ]
then
  echo "rsyslogd.pid exists; removing..."
  rm -v /var/run/rsyslogd.pid
fi

exec "${@}"
