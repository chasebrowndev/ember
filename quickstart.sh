#!/bin/bash
# Quick start script for development

set -e

echo "🔥 Ember — Quick Start"
echo "━━━━━━━━━━━━━━━━━━━━━━━━"

# Check Python
if ! command -v python3 &> /dev/null; then
  echo "❌ Python 3 not found. Install it first."
  exit 1
fi

echo "✓ Python found: $(python3 --version)"

# Check/install dependencies
echo ""
echo "Checking dependencies..."
if ! python3 -c "import webview" 2>/dev/null; then
  echo "Installing pywebview..."
  pip install -r requirements.txt
else
  echo "✓ pywebview already installed"
fi

# Check config
CONFIG_DIR="$HOME/.config/ember"
CONFIG_FILE="$CONFIG_DIR/config.ini"

if [ ! -f "$CONFIG_FILE" ]; then
  echo ""
  echo "Setting up config..."
  mkdir -p "$CONFIG_DIR"
  cp config.ini.example "$CONFIG_FILE"
  echo "✓ Config created at $CONFIG_FILE"
fi

# Run
echo ""
echo "🔥 Starting Ember..."
chmod +x ember
./ember
