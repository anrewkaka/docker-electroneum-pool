FROM ubuntu:17.10

WORKDIR /opt/electroneum-pool

EXPOSE 80

ENV NAME electroneum-pool

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get install -y nodejs build-essential libssl-dev libboost-all-dev

# install redis
RUN wget http://download.redis.io/redis-stable.tar.gz
RUN tar xvzf redis-stable.tar.gz
RUN cd redis-stable
RUN make
