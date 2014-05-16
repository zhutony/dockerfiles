#!/bin/bash
set -e
source /build/buildconfig
set -x

# timezone
cp /build/config/ntp.conf /etc/ntp.conf
cp /build/config/timezone.conf /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata

## Install ntp runit service.
mkdir /etc/service/ntpd
cp /build/runit/ntp /etc/service/ntpd/run
touch /etc/service/ntpd/down