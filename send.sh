#!/bin/bash

if [ -f .env ]; then
    . .env
else
    echo ".env file not found"
    exit 1
fi

data=$(jq -n --arg text "Hello, World!" '{"text": $text}')
curl -X POST -H "Content-Type: application/json" -d "$data" "$WEB_HOOK_URL"
