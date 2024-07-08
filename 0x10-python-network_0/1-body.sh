#!/bin/bash

# Check if a URL was provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <url>"
  exit 1
fi

# Send a request using curl and display the size of the body of the response in bytes
curl -s -o /dev/null -w "%{size_download}\n" "$1"
