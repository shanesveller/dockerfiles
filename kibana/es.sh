#!/bin/sh

exec /opt/elasticsearch-1.2.0/bin/elasticsearch >>/var/log/elasticsearch.log 2>&1
