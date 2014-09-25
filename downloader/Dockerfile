FROM golang:1.3.1
MAINTAINER Shane Sveller <shanesveller@gmail.com>

RUN apt-get update -qq && apt-get -y upgrade apt bash && apt-get -y install \
    aria2 \
    httpie \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/* \
    && which awk \
    && which xargs

ADD http://stedolan.github.io/jq/download/linux64/jq /usr/local/bin/jq
RUN chmod +x /usr/local/bin/jq
RUN go get github.com/ericchiang/pup

ADD erock.sh /usr/local/bin/
ADD subreddit.sh /usr/local/bin/

VOLUME /downloads
