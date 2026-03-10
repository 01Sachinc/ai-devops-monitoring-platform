#!/bin/bash
echo "🏗️ Building Docker Images for AI DevOps Platform..."

cd docker
docker-compose build

echo "✅ Build complete. Ready for deployment."
