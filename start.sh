#!/bin/bash

CONFIG_DIR="$HOME/.nanobot"
CONFIG_FILE="$CONFIG_DIR/config.json"

mkdir -p "$CONFIG_DIR"

echo "🔧 Creating config.json..."

LLM_PROVIDER="${LLM_PROVIDER:-openrouter}"
LLM_MODEL="${LLM_MODEL:-moonshotai/kimi-k2.5}"
API_KEY="${API_KEY}"
TELEGRAM_BOT_TOKEN="${TELEGRAM_BOT_TOKEN}"
TELEGRAM_ID="${TELEGRAM_ID}"
export LLM_PROVIDER LLM_MODEL API_KEY TELEGRAM_BOT_TOKEN TELEGRAM_ID

envsubst < /app/config.json > "$CONFIG_FILE"

echo "✅ Configuration created successfully!"
 
echo "🚀 Starting Nanobot..."
exec nanobot gateway