# 🚀 CBBot v1.0.0 - One-Click Development Environment

> **A complete dockerized development setup for macOS with multi-platform bot integration**

## 📦 Download Options

### Quick Download (Recommended)
**📥 [CBbot-v1.0.0.tar.gz](CBbot-v1.0.0.tar.gz)** - Complete package with all components

### Alternative
- Clone repository: `git clone https://github.com/mobvoi/CBbot.git`

---

## ✨ What's New in v1.0.0

### 🎯 Core Features
- **🐳 Complete Docker Environment**: Java, MySQL, Redis, RabbitMQ, Node.js
- **⚡ One-Click Setup**: Run `bash install.sh` and you're ready
- **🤖 Multi-Platform Bots**: Feishu, Telegram, Discord integration
- **📱 macOS Optimized**: Intel & Apple Silicon (M1/M2/M3) support
- **🔧 Flexible Configuration**: Easy bot and service customization

### 🛠️ Included Services
- **Backend**: Java Spring Boot application
- **Database**: MySQL 8.0 with persistent storage
- **Cache**: Redis for session and data caching
- **Queue**: RabbitMQ for async messaging
- **Runtime**: Node.js for additional tooling
- **Web Interface**: Management dashboard on port 3100

---

## 🚀 Quick Start (3 Minutes Setup)

### 1️⃣ Prerequisites
- **macOS**: 10.15+ (Intel or Apple Silicon)
- **Docker Desktop**: [Download here](https://www.docker.com/products/docker-desktop)
- **Memory**: 6GB+ RAM available
- **Storage**: 10GB+ free space

### 2️⃣ Get Your Key
1. Visit [CodeBanana.com](https://www.codebanana.com)
2. Login → User Avatar → "CBbot Key"
3. Copy your personal key

### 3️⃣ Install & Run
```bash
# Download and extract
tar -xzf CBbot-v1.0.0.tar.gz
cd CBbot

# Configure (add your key)
vim package/config/application.yml

# For China users - setup proxy
export https_proxy=http://127.0.0.1:7890

# One-click install
bash install.sh

# Access dashboard
open http://localhost:3100
```

---

## 🤖 Bot Integration Guides

<details>
<summary><strong>🔗 Feishu Bot Setup</strong></summary>

1. Create app at [Feishu Open Platform](https://open.feishu.cn/app)
2. Add bot capability and get App ID + Secret
3. Update `application.yml`:
   ```yaml
   ai-bot:
     fs:
       app-id: cli_xxx
       app-secret: xxx
       subscribe: true
   ```
4. Restart: `docker compose restart`

</details>

<details>
<summary><strong>📱 Telegram Bot Setup</strong></summary>

1. Chat with [@BotFather](https://t.me/botfather)
2. Send `/newbot` and follow instructions
3. Get bot token and update config:
   ```yaml
   ai-bot:
     telegram:
       subscribe: true
       username: your_bot
       token: 123456:ABC-DEF
   ```
4. Restart: `docker compose restart`

</details>

<details>
<summary><strong>🎮 Discord Bot Setup</strong></summary>

1. Create application at [Discord Developer Portal](https://discord.com/developers/applications)
2. Add bot and copy token
3. Update configuration:
   ```yaml
   ai-bot:
     discord:
       subscribe: true
       token: your_bot_token
   ```
4. Restart: `docker compose restart`

</details>

---

## 📋 System Requirements

| Component | Requirement |
|-----------|-------------|
| **OS** | macOS 10.15+ (Catalina or higher) |
| **Chip** | Intel x64 or Apple Silicon (M1/M2/M3) |
| **RAM** | 6GB+ (8GB+ recommended) |
| **Storage** | 10GB+ available space |
| **Docker** | Desktop 4.0+ |
| **Network** | Internet (for initial setup) |

---

## 🛠️ Troubleshooting

### Common Issues & Solutions

**❌ "Docker daemon not running"**
- Launch Docker Desktop and wait for whale icon in menu bar

**🔴 Port conflicts (3306, 6379, etc.)**
```bash
# Find and kill conflicting processes
lsof -i :3306
sudo kill -9 <PID>
```

**🌐 Slow downloads in China**
```bash
# Setup proxy before installation
export https_proxy=http://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
```

**🔧 Configuration issues**
- Verify your CBbot key is correct
- Check `package/config/application.yml` syntax
- Ensure Docker has enough resources allocated

---

## 💰 Billing Information

- **💳 Model**: Pay-as-you-go based on API usage
- **🔗 Billing**: Linked to your CBbot key
- **📊 Monitoring**: Real-time usage dashboard
- **💰 Cost**: Varies by model and usage volume

**Monitor Usage**: [CodeBanana Account Dashboard](https://www.codebanana.com)

---

## 📚 Documentation

- **📖 Main Guide**: [README.md](https://github.com/mobvoi/CBbot/blob/main/README.md)
- **🇺🇸 English**: [README.en.md](https://github.com/mobvoi/CBbot/blob/main/README.en.md)
- **🇨🇳 中文**: [README.cn.md](https://github.com/mobvoi/CBbot/blob/main/README.cn.md)
- **⚡ Installation**: [INSTALL.md](https://github.com/mobvoi/CBbot/blob/main/INSTALL.md)

---

## 🔄 What's Next?

### Upcoming Features (v1.1.0)
- 🔄 Auto-update mechanism
- 🌐 Additional bot platforms (Slack, WeChat Work)
- ⚡ Performance optimizations
- 🎨 Enhanced web interface
- 📊 Advanced monitoring dashboard

---

## 🤝 Support & Community

- **🐛 Report Issues**: [GitHub Issues](https://github.com/mobvoi/CBbot/issues)
- **💬 Discussions**: [GitHub Discussions](https://github.com/mobvoi/CBbot/discussions)
- **📧 Contact**: [CodeBanana Support](https://www.codebanana.com)

---

<div align="center">

### 🎉 Ready to Start?

**[⬇️ Download CBbot-v1.0.0.tar.gz](#) and get your development environment running in 3 minutes!**

---

**Made with ❤️ by the [CodeBanana](https://www.codebanana.com) Team**  
📄 **License**: MIT | 🌟 **Star us on GitHub** | 🤝 **Contribute**

</div>