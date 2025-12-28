#!/bin/bash

# FewInfos Deployment Script
# This script deploys your React app to GitHub Pages

echo "🚀 Starting deployment to GitHub Pages..."
echo ""

# Check if we're in the right directory
if [ ! -f "package.json" ]; then
    echo "❌ Error: package.json not found. Are you in the project root?"
    exit 1
fi

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "❌ Error: Not a git repository. Please run 'git init' first."
    exit 1
fi

# Install dependencies if needed
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
fi

# Build the project
echo "🔨 Building the project..."
npm run build

if [ $? -ne 0 ]; then
    echo "❌ Build failed. Please fix errors and try again."
    exit 1
fi

# Deploy to GitHub Pages
echo "📤 Deploying to GitHub Pages..."
npm run deploy

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Deployment successful!"
    echo "🌐 Your site will be live at: https://navi-04.github.io/fewinfos-new"
    echo "⏱️  It may take 2-3 minutes for changes to appear."
    echo ""
    echo "📝 Next steps:"
    echo "1. Go to: https://github.com/navi-04/fewinfos-new/settings/pages"
    echo "2. Ensure Source is set to 'gh-pages' branch"
    echo "3. Wait a few minutes and visit your site!"
else
    echo "❌ Deployment failed. Please check the errors above."
    exit 1
fi
