#!/bin/bash

# Check if a URL was provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <url>"
  exit 1
fi

# Send an OPTIONS request using curl and extract the Allow header
curl -sI -X OPTIONS "$1" | grep "Allow:" | cut -d ' ' -f2-
