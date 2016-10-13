#!/usr/bin/env sh

cd /opt/flume
bin/flume-ng agent -n $FLUME_AGENT -c $FLUME_CONF -f $FLUME_CONF_FILE $FLUME_OPTS
