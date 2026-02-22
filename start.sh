#!/bin/bash

CONFIG_DIR="$HOME/.nanobot"
CONFIG_FILE="$CONFIG_DIR/config.json"

mkdir -p "$CONFIG_DIR"

echo "🔧 Creating config.json..."

cat <<EOF > "$CONFIG_FILE"
{
    "providers": {
        "${LLM_PROVIDER:-openai}": {
            "api_key": "${API_KEY}"
        }
    },
    "agents": {
        "defaults": {
            "model": "${LLM_MODEL:-gpt-4o-mini}"
        }
    },
    "channels": {
        "telegram": {
            "enabled": true,
            "token": "${TELEGRAM_BOT_TOKEN}",
            "allowFrom": ["${TELEGRAM_ID}"]
        }
    }
}
EOF

echo "✅ Configuration created successfully!"
 
echo "🚀 Starting Nanobot..."
exec nanobot gateway