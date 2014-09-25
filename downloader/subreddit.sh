#!/bin/sh

subreddit=$1

prepare () {
  mkdir -p /downloads/reddit/$subreddit && cd /downloads/reddit/$subreddit
}

get() {
  http get http://www.reddit.com/r/$subreddit/hot.json limit==100
}

collect() {
  jq '.data.children[].data.url'
}

filter() {
  grep -E '.(jpe?g|gif|png)$'
}

download() {
  xargs aria2c --allow-overwrite=false --auto-file-renaming=false --dry-run -d /downloads/erock -Z
}

prepare && get | collect | filter | download
