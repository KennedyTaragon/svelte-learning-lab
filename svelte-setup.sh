#!/bin/bash
# ----------------------------------------------------------
# Svelte Project Clean Install Script
# ----------------------------------------------------------
# Usage:
#   ./svelte-setup.sh          -> clean install and start dev server
#   ./svelte-setup.sh --no-start -> clean install only
# ----------------------------------------------------------

set -e  # exit on any error

echo "🧹 Cleaning project..."
rm -rf node_modules package-lock.json public/build

echo "📦 Installing fresh dependencies..."
npm install

echo "✅ Dependencies installed successfully!"

# Check if user wants to skip server start
if [ "$1" = "--no-start" ]; then
  echo "✨ Setup complete. Run 'npm run dev' to start the server."
  exit 0
fi

echo "🚀 Starting development server..."
npm run dev