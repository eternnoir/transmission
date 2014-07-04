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

# Add Setting file
ADD ./settings.json /etc/transmission-daemon/settings.json
ADD ./run.sh /run.sh
RUN mkdir -p /var/lib/transmission-daemon/incomplete 
RUN chown -R root:root /var/lib/transmission-daemon 
RUN chown -R root:root /etc/transmission-daemon

# port 
EXPOSE 9091
EXPOSE 64321

VOLUME ["/var/lib/transmission-daemon/downloads"]

CMD ["sh","run.sh"]
