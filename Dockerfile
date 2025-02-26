# Use Debian-based Node.js image instead of Alpine (better for Tesseract)
FROM node:18-bullseye

# Set working directory
WORKDIR /app

# Install required system dependencies
RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    libtesseract-dev \
    imagemagick \
    ghostscript \
    && rm -rf /var/lib/apt/lists/*

# Install n8n
RUN npm install -g n8n

# Set correct permissions
USER node

# Start n8n
CMD ["n8n"]
