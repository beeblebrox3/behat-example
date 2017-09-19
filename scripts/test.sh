#!/usr/bin/env bash
$(dirname "$0")/selenium.sh > /dev/null 2>&1 &
$(dirname "$(dirname "$0")")/vendor/bin/behat
kill $(lsof -t -i:4444)