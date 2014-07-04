#
# Ubuntu 14.04 with quassel-core Dockerfile
#
# Pull base image.
FROM eternnoir/ubuntu-14.04-sshd
MAINTAINER Frank Wang "eternnoir@gmail.com"

#Update
RUN apt-get update && apt-get install -y software-properties-common
# Install Transmission
RUN add-apt-repository -y ppa:transmissionbt/ppa && \
    apt-get update && \
	    apt-get install -y transmission-daemon
