#!/usr/bin/env bash
cd `dirname $0`

./vltrig | tee /var/log/miner/vltrig/vltrig.log
