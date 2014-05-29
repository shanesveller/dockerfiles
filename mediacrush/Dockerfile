FROM base/archlinux:latest
MAINTAINER Shane Sveller <shanesveller@gmail.com>

RUN pacman -Sy --needed --noconfirm reflector && \
    reflector --save /etc/pacman.d/mirrorlist \
    --sort rate \
    --country 'United States' \
    --fastest 5 \
    --latest 50 && \
    pacman -Syyu --needed --noconfirm && \
    pacman -Scc --noconfirm

RUN pacman -S --needed --noconfirm \
 base-devel \
 imagemagick \
 libjpeg-turbo \
 nodejs \
 optipng \
 python-virtualenv \
 python2 \
 redis \
 texlive-bin \
 tidyhtml && \
 pacman -Scc --noconfirm

WORKDIR /tmp
RUN curl https://aur.archlinux.org/packages/pa/package-query/package-query.tar.gz | tar zxf -
RUN curl https://aur.archlinux.org/packages/ya/yaourt/yaourt.tar.gz | tar zxf -
RUN cd package-query && makepkg -si --asroot --needed --noconfirm && cd .. && rm -rf package-query
RUN cd yaourt && makepkg -si --asroot --needed --noconfirm && cd .. && rm -rf yaourt
RUN yaourt -S --needed --noconfirm aur/xcftools
RUN yaourt -S --needed --noconfirm ffmpeg-full

RUN pacman -S --needed --noconfirm git && \
    git clone http://github.com/MediaCrush/MediaCrush /opt/mediacrush
WORKDIR /opt/mediacrush
RUN virtualenv . --no-site-packages --python=python2
RUN source bin/activate && \
    pip install -r requirements.txt
RUN npm install -g coffee-script

RUN pacman -S --needed --noconfirm supervisor
ADD supervisor.conf /opt/mediacrush/
ADD redis.conf /etc/redis.conf
ADD supervisor.redis.conf /opt/mediacrush/config/redis.supervisor.conf
RUN /bin/mkdir -p /var/lib/redis

CMD supervisord -c supervisor.conf
