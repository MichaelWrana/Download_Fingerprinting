FROM debian

RUN DEBIAN_FRONTEND="noninteractive" apt-get update && apt-get -y install tzdata

RUN apt-get update \
  && apt-get install -y git vim\
  && apt-get clean

RUN apt-get update \
  && apt-get install -y tar wget \
  && apt-get clean

RUN apt-get update \
  && apt-get install -y tcpdump procps \
  && apt-get clean

RUN mkdir -p /app && cd /app

COPY . /app/Download_Fingerprinting
RUN chmod +x /app/Download_Fingerprinting/collect_data.sh

WORKDIR /app/Download_Fingerprinting
