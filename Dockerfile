FROM n8nio/n8n:latest

# Switch to root user
USER root

# Install Tesseract OCR for Alpine Linux (Railway uses Alpine)
RUN apk add --no-cache tesseract-ocr tesseract-ocr-data

# Switch back to n8n user
USER node
