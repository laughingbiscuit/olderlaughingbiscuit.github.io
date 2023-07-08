#!/bin/sh
set -xe

SESSION_ID=$(curl localhost:9515/session -d '{
  "desiredCapabilities": {
    "browserName": "chromium",
    "chromeOptions": {
      "args": ["--no-sandbox", "--headless"]
    }
  }
}'| jq -r '.sessionId')


sleep 2
curl -s localhost:9515/session/$SESSION_ID/url -d '{"url":"https://example.com/"}' >/dev/null
sleep 2
curl localhost:9515/session/$SESSION_ID/screenshot | jq -r '.value' | base64 -d > last-screenshot.png
