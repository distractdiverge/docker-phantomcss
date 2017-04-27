FROM node:7.9

RUN apt-get update && \
    apt-get install -y build-essential chrpath libssl-dev libxft-dev && \
    apt-get install -y libfreetype6 libfreetype6-dev && \
    apt-get install -y libfontconfig1 libfontconfig1-dev && \
    apt-get install -y curl fontconfig

RUN mkdir -p /usr/share && \
    cd /usr/share && \
    curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 | tar xvj && \
    ln -s /usr/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/bin/phantomjs && \
    phantomjs --version
