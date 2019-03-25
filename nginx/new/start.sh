#!/bin/bash
/usr/bin/openresty -g "daemon off;" &
bash /root/auto-reload.sh
