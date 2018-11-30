#!/bin/bash
sudo apt-get update
sudo apt-get install -y python3 python3-setuptools python3-dev
sudo python3 /vagrant/setup.py install
# running zattd
zattd -c zatt.conf -s zatt.0.persist -p 5254 >/dev/null 2>&1 < /dev/null &
zattd -c zatt.conf -s zatt.1.persist -p 5255 >/dev/null 2>&1 < /dev/null &
zattd -c zatt.conf -s zatt.2.persist -p 5256 >/dev/null 2>&1 < /dev/null &
