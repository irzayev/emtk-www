#!/bin/bash

# Exit on any error
set -e

echo "🚀 Starting deployment for eMTK website..."

# 1. Pull latest changes
echo "📥 Pulling latest changes from git..."
git pull origin main

# 2. Build and restart using Docker Compose
echo "📦 Building and starting Docker containers..."
docker compose up -d --build

# 3. Clean up old unused images to save space
echo "🧹 Cleaning up old unused Docker images..."
docker image prune -f

echo "✅ Deployment completed successfully! The website is live."
