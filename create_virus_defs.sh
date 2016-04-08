#!/bin/bash

mkdir virus_defs
      
function download {
   n=0
   until [ $n -ge 5 ]
   do
      wget --tries=10 -O virus_defs/${1} http://database.clamav.net/${1} && break
      n=$[$n+1]
      sleep 5
   done
}

download main.cvd
download daily.cvd
download bytecode.cvd

tar -cf blobs/clamav/virus_defs.tar virus_defs
rm -rf virus_defs
