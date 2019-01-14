FROM gradle:4.6-jdk8

USER root

Run apt-get update && apt-get install -y && apt-get -qqy install git debianutils jq python3-pip xvfb zip unzip curl docker-compose

RUN pip3 --no-cache-dir install httpie==0.9.9


#=========
# Firefox
#=========
#ARG FIREFOX_VERSION=55.0.3
#RUN apt-get update -qqy \
#&& echo "deb http://ftp.us.debian.org/debian/ sid main" > /etc/apt/sources.list.d/firefox.list \
##&& deb-src http://ftp.us.debian.org/debian/ sid main
#&& apt-get install -y \
#&& apt-get install firefox \
#&& rm -rf /var/lib/apt/lists/* \
#&& wget --no-verbose -O /tmp/firefox.tar.bz2 https://download-installer.cdn.mozilla.net/pub/firefox/releases/$FIREFOX_VERSION/linux-x86_64/en-US/firefox-$FIREFOX_VERSION.tar.bz2 \
#&& apt-get -y purge firefox \
#&& rm -rf /opt/firefox \
#&& tar -C /opt -xjf /tmp/firefox.tar.bz2 \
#&& rm /tmp/firefox.tar.bz2 \
#&& mv /opt/firefox /opt/firefox-$FIREFOX_VERSION \
#&& ln -fs /opt/firefox-$FIREFOX_VERSION/firefox /usr/bin/firefox

#=================
#temp
#=================
#RUN apt-get remove -y firefox* && \
#wget -O firefox_latest_linux64.tar.bz2 'https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-GB' && \
#tar -xjvf /tmp/firefox_latest_linux64.tar.bz2 -C /opt/ && \
#ln -sf /opt/firefox/firefox /usr/bin/firefox

#Setup Grid
RUN pwd && \
mkdir -p /opt/seleniumgrid && \
cd /opt/seleniumgrid && \
wget http://selenium-release.storage.googleapis.com/3.13/selenium-server-standalone-3.13.0.jar
 #pwd && \
 #ls /home/gradle/ && \
 #cp /home/gradle/selenium-server-standalone-3.13.0.jar -d /opt/seleniumgrid && \
 #ls /opt/seleniumgrid/


WORKDIR /var/lib/jenkins/workspace
