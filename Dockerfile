FROM ubuntu:17.10

WORKDIR /opt/electroneum-pool

EXPOSE 80

ENV NAME electroneum-pool

# Install Node.js
RUN apt-get install --yes curl
RUN curl --silent --location https://deb.nodesource.com/setup_8.x | sudo bash -
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential

# Install libssl, boost
RUN apt-get install -yes libssl-dev libboost-all-dev

# install redis
RUN wget http://download.redis.io/redis-stable.tar.gz
RUN tar xvzf redis-stable.tar.gz
RUN cd redis-stable
RUN make install
