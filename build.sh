#!/bin/bash

# Create dist directory
mkdir -p dist

# Copy all files to dist
cp -r images dist/
cp index.html dist/

# Replace environment variable placeholders with actual values
# Works on both macOS and Linux
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i '' "s/VITE_EMAILJS_PUBLIC_KEY/${VITE_EMAILJS_PUBLIC_KEY}/g" dist/index.html
    sed -i '' "s/VITE_EMAILJS_SERVICE_ID/${VITE_EMAILJS_SERVICE_ID}/g" dist/index.html
    sed -i '' "s/VITE_EMAILJS_TEMPLATE_ID/${VITE_EMAILJS_TEMPLATE_ID}/g" dist/index.html
else
    # Linux (Netlify)
    sed -i "s/VITE_EMAILJS_PUBLIC_KEY/${VITE_EMAILJS_PUBLIC_KEY}/g" dist/index.html
    sed -i "s/VITE_EMAILJS_SERVICE_ID/${VITE_EMAILJS_SERVICE_ID}/g" dist/index.html
    sed -i "s/VITE_EMAILJS_TEMPLATE_ID/${VITE_EMAILJS_TEMPLATE_ID}/g" dist/index.html
fi

echo "Build complete! Environment variables injected."

