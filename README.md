<div align="center">
  <img src="nanobot_logo.png" alt="nanobot" width="300">
  <h1 align="center" style="font-weight: bold;">Nanobot Railway Template</h1>
  
  [![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/hXs9Xd?referralCode=ePU7HL&utm_medium=integration&utm_source=template&utm_campaign=generic)

  <p>
    <a href="https://pypi.org/project/nanobot-ai/"><img src="https://img.shields.io/pypi/v/nanobot-ai" alt="PyPI"></a>
    <img src="https://img.shields.io/badge/python-≥3.11-blue" alt="Python">
    <img src="https://img.shields.io/badge/license-MIT-green" alt="License">
  </p>
</div>

<h2 id="info">📝 Info</h2>

**nanobot** is an **ultra-lightweight** personal AI assistant inspired by OpenClaw, delivering core agent functionality in just ~4,000 lines of code — 99% smaller than Clawdbot's 430k+ lines.

This is a **fork** of [HKUDS/nanobot](https://github.com/HKUDS/nanobot) adapted for easy Railway deployment. It provides a full-featured AI assistant that can connect to multiple chat platforms (Telegram, Discord, WhatsApp, Slack, and more) and execute complex tasks through natural language.

**Key Features:**
- 🪶 Ultra-lightweight (~4,000 lines) — fast startup and minimal resource usage
- 🤖 Multi-provider LLM support (OpenAI, Anthropic, DeepSeek, OpenRouter, and more)
- 💬 Connect to Telegram, Discord, WhatsApp, Slack, Feishu, and other platforms
- 🛠️ Built-in tools: shell, filesystem, web search, memory, scheduled tasks
- 🔌 MCP (Model Context Protocol) support for extending capabilities

<h2 id="env">🔐 Variables</h2>

Configure these environment variables in your Railway project:

- `LLM_PROVIDER`: Which LLM provider to use (e.g., `openai`, `anthropic`, `openrouter`, `deepseek`)
- `LLM_MODEL`: Which model to use (e.g., `gpt-5.1`, `moonshotai/kimi-k2.5`, `anthropic/claude-opus-4-5`)
- `API_KEY`: Your API key for the chosen provider
- `TELEGRAM_BOT_TOKEN`: Your bot's token generated in Telegram's BotFather
- `TELEGRAM_ID`: Your Telegram account's ID (found in Telegram settings, without the @ symbol)

<h2>📁 Custom Configuration</h2>

The `config.json` file is now a **template** that you can edit directly. At runtime, environment variables (e.g., `$API_KEY`, `$LLM_MODEL`) are substituted into it via `envsubst` in `start.sh`.

**To add custom configurations:**
- Edit `config.json` before deploying.
- Enable other channels: e.g., set `"discord": {"enabled": true, "token": "$DISCORD_TOKEN", "allowFrom": ["123"]}`.
- Override defaults: Add custom `agents.defaults.model`, `tools`, etc.

Secrets stay in env vars (injected by Railway), config structure is version-controlled and editable.

<h2>🚀 Quick Start</h2>

1. **Deploy on Railway** — Click the button above
2. **Set environment variables** — Configure the required variables listed above
3. **Start chatting** — Send a message to your Telegram bot

That's it! Your AI assistant is ready.

<h2>👨‍💻 Credits</h2>

This is a fork of [nanobot](https://github.com/HKUDS/nanobot) originally created by the **HKUDS** team. All credit goes to the original developers for creating this amazing ultra-lightweight AI assistant.

- **Original Repository**: [HKUDS/nanobot](https://github.com/HKUDS/nanobot)
- **This Fork**: [Lima-e-Silva/nanobot](https://github.com/Lima-e-Silva/nanobot)

<h2>📚 Documentation</h2>

For detailed documentation, including:
- Full provider configuration guide
- Additional channel integrations (Discord, WhatsApp, Slack, etc.)
- Advanced configuration options
- MCP server setup
- Docker deployment

Visit the [original repository](https://github.com/HKUDS/nanobot) for comprehensive documentation.