#!/bin/sh

# Copyright (c) 2019 SiYu Wu <wu.siyu@hotmail.com>
# simple shadowsocks benchmark script
# Usage: ./s <encrypt_method>

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <encrypt_method>" >&2
  exit 1
fi

ss-server -s 0.0.0.0 -p 5050 -m $1 -k test &
pid=$!
echo "ss-server started, pid=$pid"

iperf3 -s

kill $pid &> /dev/null
