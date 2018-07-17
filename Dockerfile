#### 
# Kraken - https://ccb.jhu.edu/software/kraken/
# Kraken 1.1 - https://github.com/DerrickWood/kraken
# Forked added Dockerfile - https://github.com/stevetsa/kraken
####

FROM ubuntu:16.04
MAINTAINER Steve Tsang <mylagimail2004@yahoo.com>
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes \
 build-essential \
 gcc-multilib \
 apt-utils \
 git-all \
 perl

WORKDIR /opt/
RUN git clone https://github.com/stevetsa/kraken.git
WORKDIR /opt/kraken
RUN mkdir kraken1
RUN bash install_kraken.sh kraken1
RUN cp kraken1/* /usr/local/bin/.

