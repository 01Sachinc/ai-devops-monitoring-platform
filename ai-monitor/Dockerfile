# Base image with Python
FROM python:3.9-slim

WORKDIR /app

# Copy requirements if they existed (using a simplified approach here)
# RUN pip install prometheus_client requests

# Copy scripts
COPY ./ai-monitor /app

# Run the analyzer by default
CMD ["python", "log_analyzer.py"]
