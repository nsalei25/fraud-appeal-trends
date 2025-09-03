#!/bin/bash

# Deploy to Quick and commit changes to GitHub
# Usage: ./deploy.sh "commit message"

set -e

# Get commit message from argument or use default
COMMIT_MSG="${1:-Update dashboard - deployed $(date '+%Y-%m-%d %H:%M:%S')}"

echo "🚀 Deploying to Quick..."
echo "y" | quick deploy . fraud-appeals

echo "📝 Committing changes to GitHub..."
git add .
git commit -m "$COMMIT_MSG

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude <noreply@anthropic.com>"

echo "⬆️ Pushing to GitHub..."
git push origin main

echo "✅ Deploy and commit complete!"
echo "🌐 Live at: https://fraud-appeals.quick.shopify.io"
echo "📁 Code at: https://github.com/nsalei25/fraud-appeal-trends"