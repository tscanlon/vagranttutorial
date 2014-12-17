#!/bin/bash
while [ -e '/tmp/bang' ]; do
  echo zzzZZZzzz >> /var/log/sleepy.log
  sleep 1
done
