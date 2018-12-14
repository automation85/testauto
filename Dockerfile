FROM gradle:4.6-jdk8

USER root

Run apt-get update && apt-get install -y && apt-get -qqy install git debianutils jq python3-pip xvfb zip unzip curl

RUN pip3 --no-cache-dir install httpie==0.9.9