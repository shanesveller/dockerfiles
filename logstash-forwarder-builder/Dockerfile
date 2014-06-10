FROM google/golang

RUN apt-get update -qq && apt-get -y install ruby1.9.3 ruby-dev
RUN gem install fpm

RUN git clone https://github.com/elasticsearch/logstash-forwarder.git /opt/logstash-forwarder

WORKDIR /opt/logstash-forwarder

VOLUME /output
CMD make deb && cp -v logstash*.deb /output/
