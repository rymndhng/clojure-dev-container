#!/bin/sh
# Simple script to setup yopa on alpine
cp /opt/yopa/yopa.initd /etc/init.d/yopa
cp /opt/yopa/yopa.confd /etc/conf.d/yopa
mkdir -p /tmp/yopa-in
cp /opt/yopa/yopa-config.yml /tmp/yopa-in
mkdir -p /tmp/yopa-out

# Figure out who runs this
chmod 777 /tmp/yopa-out
rc-update add yopa
