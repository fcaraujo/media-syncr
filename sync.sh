#!/bin/sh
USER_HOME=/home/pi
LOG=$USER_HOME/sync/test.log

# Redirect result
exec > $LOG
exec 2>&1

SOURCE=$USER_HOME/inbox/downloads/finished/
DESTINATION=$USER_HOME/media/

rsync -ahzv --progress $SOURCE $DESTINATION

# Copy result as input to be synchronized
DATE=$(date '+%Y-%m-%d-%H%M%S')
cp $LOG $USER_HOME/dev/media-syncr/input/from-$DATE.log
