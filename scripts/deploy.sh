#!/bin/bash
echo "🛰️  Deploying AI DevOps Monitoring Platform..."

# 1. Build and Start Containers
cd docker
docker-compose up -d --build

# 2. Check Service Status
echo "Waiting for services to stabilize..."
sleep 5
docker ps

echo "✅ App running at http://localhost:8080"
echo "📈 Prometheus running at http://localhost:9090"
echo "📊 Grafana running at http://localhost:3000"
