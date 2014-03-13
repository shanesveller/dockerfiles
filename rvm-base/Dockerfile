FROM shanesveller/base:latest

RUN locale-gen  en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN apt-get -y install gawk libreadline6-dev zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake libtool bison pkg-config libffi-dev build-essential git-core
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN echo 'gem: --no-document' > /etc/gemrc

RUN curl -L https://get.rvm.io | bash -s stable

ENV RVM_INSTALL_RB_VERSION 2.1.1
RUN /bin/bash -l -c 'source /etc/profile.d/rvm.sh && rvm install $RVM_INSTALL_RB_VERSION'
RUN rvm all do gem install bundler
