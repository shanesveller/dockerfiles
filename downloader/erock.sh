#!/bin/sh

prepare () {
  mkdir -p /downloads/erock && cd /downloads/erock
}

get() {
  http get "http://shredguitareric.com/listen"
}

collect() {
  pup a attr{href}
}

filter() {
  awk '$1 ~ "^\/audio\/download"{print "http://shredguitareric.com" $1}'
}

download() {
  xargs aria2c --allow-overwrite=false --auto-file-renaming=false --dry-run -d /downloads/erock -Z
}

prepare && get | collect | filter | download
