#!/bin/bash

set -e

echo "[program:newrelic-daemon]" >> /etc/supervisord.conf
echo "command=newrelic-daemon -f" >> /etc/supervisord.conf
echo "stdout_logfile=/dev/stdout" >> /etc/supervisord.conf
echo "stdout_logfile_maxbytes=0" >> /etc/supervisord.conf
echo "stderr_logfile=/dev/stderr" >> /etc/supervisord.conf
echo "stderr_logfile_maxbytes=0" >> /etc/supervisord.conf

if [ -z "${NR_APP_NAME}" ]; then
  appname="Unknown Application Name"
else
  appname="${NR_APP_NAME}"
fi

echo "Enabling APM metrics for ${NR_APP_NAME}"
newrelic-install install

# Update the application name
sed -i "s/newrelic.appname = \"PHP Application\"/newrelic.appname = \"${NR_APP_NAME}\"/" /etc/php.d/newrelic.ini