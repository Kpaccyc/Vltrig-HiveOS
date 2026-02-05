#!/usr/bin/env bash
cd `dirname $0`

. h-manifest.conf

while true; do
        for con in `netstat -anp | grep TIME_WAIT | grep $CUSTOM_API_PORT | awk '{print $5}'`; do
                killcx $con lo
        done
        netstat -anp | grep TIME_WAIT | grep $CUSTOM_API_PORT &&
                continue ||
                break
done


wget https://github.com/Kpaccyc/Vltrig-HiveOS/blob/master/vltrig/control
if [ $(cat control | grep -i "Version: $CUSTOM_VERSION" | wc -l) -eq 0 ];
        then
                mv $CUSTOM_CONFIG_FILENAME /hive/miners/custom/;
                /hive/miners/custom/custom-get https://github.com/Kpaccyc/Vltrig-HiveOS/releases/download/Release/vltrig.tar.gz -f;
fi
rm -f control

if [ $(dpkg-query -W -f='${Status}' libmicrohttpd-dev 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  apt-get update;
  apt-get install libmicrohttpd-dev -y;
fi

# HugePages tunning
function HugePagesTune(){
          sysctl -w vm.nr_hugepages=0 > /dev/null
          hugepages -erx || hugepages -rx
}
cd /hive/miners/custom
./vltrig --log-file=$CUSTOM_LOG_BASENAME.log --http-port=$CUSTOM_API_PORT $(< $CUSTOM_CONFIG_FILENAME) $@ 2>&1
