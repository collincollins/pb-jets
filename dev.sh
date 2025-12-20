#!/bin/bash

# Load environment variables from .env file if it exists
if [ -f .env ]; then
    export $(cat .env | grep -v '^#' | xargs)
    echo "Loaded environment variables from .env"
else
    echo "Warning: No .env file found. Create one from .env.example"
    echo "Copy .env.example to .env and add your EmailJS credentials"
    exit 1
fi

# Build with env vars
./build.sh

# Start local server from dist
echo "Starting local server at http://localhost:8000"
cd dist && python3 -m http.server 8000

