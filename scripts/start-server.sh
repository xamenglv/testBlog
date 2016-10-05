#!/bin/bash

cd /webapps/app
source /etc/profile.d/rvm.sh
mkdir -p /webapps/shared/pids
mkdir -p /webapps/shared/log
cat /webapps/shared/pids/unicorn.pid
kill -QUIT `cat /webapps/shared/pids/unicorn.pid`
bundle exec unicorn -E production -p 8080
