#!/bin/bash

VERSION='0.98.6'

n=0
until [ $n -ge 5 ]
do
  wget --tries=10 -O blobs/clamav/clamav-${VERSION}.tar.gz http://www.clamav.net/downloads/production/clamav-${VERSION}.tar.gz && break
  n=$[$n+1]
  sleep 5
done
