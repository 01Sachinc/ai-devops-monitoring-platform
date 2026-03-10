#!/bin/bash
echo "🕵️ Starting Real-time AI Log Monitor..."

docker-compose exec ai-monitor python log_analyzer.py
