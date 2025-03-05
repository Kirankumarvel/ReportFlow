#!/bin/bash

# Load configuration
source config.env

REPORT_FILE="logs/report_$(date +'%Y-%m-%d').txt"

if [ "$NOTIFICATION_METHOD" == "slack" ]; then
    curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"$(cat $REPORT_FILE)\"}" $SLACK_WEBHOOK_URL
    echo "📨 Report sent via Slack!"
elif [ "$NOTIFICATION_METHOD" == "email" ]; then
    mail -s "Daily Report" "$EMAIL_RECIPIENT" < $REPORT_FILE
    echo "📨 Report sent via Email!"
else
    echo "⚠️ No valid notification method configured!"
fi
