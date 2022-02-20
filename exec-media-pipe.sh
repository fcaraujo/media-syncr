#!/bin/bash

# Create your named pipe using `mkfifo pipe-example`
# Register cron to listen the pipe - crontab -e
# @reboot ~/dev/media-syncr/exec-media-pipe.sh

while true; do eval "$(cat /home/pi/inbox/downloads/finished/media-pipe)"; done
