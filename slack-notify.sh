#!/usr/bin/env bash
##
# Send message to slack channel
##

source ./config.sh

text='This is an automatic notifcation from *'$(hostname)'*. The command ```'$@'``` just completed successfully.\n\n'
curl -X POST --data-urlencode 'payload={"mrkdwn": true, "channel": "'$SLACK_CHANNEL'", "username": "'$SLACK_USERNAME'", "text": "'"$text"'", "icon_url": "'$SLACK_IMAGE_URL'"}' $SLACK_REQUEST_URL
