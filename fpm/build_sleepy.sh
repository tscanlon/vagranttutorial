#!/bin/bash

mkdir -p package/var/log/
touch package/var/log/sleepy.log
mkdir -p package/usr/local/bin/
cp /vagrant/sleepy/sleepy.sh package/usr/local/bin/
chmod +x package/usr/local/bin/sleepy.sh

fpm -s dir \
-t deb \
--description "A program specifically designed to slowly
fill up your disk" \
--name sleepy \
--maintainer tscanlon.iv@gmail.com \
--deb-upstart /vagrant/fpm/sleepy.upstart \
--url "https://github.com/tscanlon/vagranttutorial" \
--version $(date +%s) \
--deb-user vagrant \
--deb-group vagrant \
--after-install /vagrant/fpm/deb_run_after_install.sh \
-C package/. \
.
