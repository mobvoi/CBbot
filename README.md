# CBbot - One-Click Development Environment 🚀

## 📦 Quick Download

<div align="center">
  <a href="https://github.com/mobvoi/CBbot/releases/latest">
    <img src="https://img.shields.io/badge/📦_Download-Latest_Release-blue?style=for-the-badge&logo=github" alt="Download Latest Release" height="40">
  </a>
</div>

<div align="center">
  <p><strong>🎯 Get the complete CBbot package from our latest release!</strong></p>
  <p>📥 <a href="https://github.com/mobvoi/CBbot/releases">Visit Releases Page</a> • 🚀 One-click installation package available</p>
</div>

---

<div align="center">
  <img src="https://oci-useast-backend-public.dupdub.com/subtitles/image/a409edad-107c-4d6d-bcc3-67fb536829e2.svg" alt="CBbot Logo" width="200" style="margin-bottom: 20px;">
</div>

<div align="center">
  <img src="https://img.shields.io/badge/Platform-macOS-blue?style=for-the-badge&logo=apple" alt="Platform">
  <img src="https://img.shields.io/badge/Docker-Required-2496ED?style=for-the-badge&logo=docker" alt="Docker">
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License">
  <img src="https://img.shields.io/badge/Status-Active-success?style=for-the-badge" alt="Status">
</div>

<div align="center">
  <h3>🎯 A one-click development environment deployment solution for macOS</h3>
  <p>Complete full-stack development setup including Java, MySQL, Redis, RabbitMQ, and Node.js</p>
</div>

---

## 📑 Table of Contents

- [✨ Features](#-features)
- [📋 Prerequisites](#-prerequisites)
- [⚡ Quick Start](#-quick-start)
- [🎯 Access Services](#-access-services)
- [🔧 Advanced Configuration](#-advanced-configuration)
- [❓ FAQ](#-faq)
- [💰 Billing Information](#-billing-information)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)

## ✨ Features

🐳 **Docker-Based**: Containerized services for consistent environments  
⚡ **One-Click Setup**: Automated installation and configuration  
🛠️ **Full Stack**: Java, MySQL, Redis, RabbitMQ, Node.js included  
🤖 **Multi-Platform Bots**: Feishu, Telegram, Discord integration  
🔧 **Configurable**: Flexible configuration options  
📱 **macOS Optimized**: Specifically designed for macOS users  

## 📋 Prerequisites

### System Requirements

- **OS**: macOS 10.15 (Catalina) or higher
- **Chip**: Intel or Apple Silicon (M1/M2/M3)
- **Memory**: 6GB+ recommended
- **Storage**: 10GB+ available space
- **Docker**: Desktop 4.0+

### Install Docker Desktop

1. **Download**: Visit [Docker Desktop](https://www.docker.com/products/docker-desktop)
2. **Choose Version**: 
   - Apple Silicon (M1/M2/M3) → ARM64
   - Intel Chip → AMD64
3. **Install**: Drag to Applications folder
4. **Start**: Launch Docker Desktop
5. **Verify**: Run `docker --version`

## ⚡ Quick Start

### 🎯 Installation Method

**📦 Release Package Installation (Only Method)**

> **Important**: CBbot is only available through Release packages. Source code installation is not supported.

1. **Download**: Go to [CBbot Releases](https://github.com/mobvoi/CBbot/releases/latest)
2. **Get Package**: Download `CBbot-v{version}.zip` (complete installation package)
3. **Install**: Extract and follow the installation guide included in the package

**🤖 AI One-Click Installation Support**

Let AI handle the entire installation process for you:

1. **Use Local AI**: Open your AI coding assistant (CodeBanana, Cursor, GitHub Copilot Chat, etc.)
2. **One-Click Command**: Simply say "**Install CBbot for me step by step**" or "**Set up CBbot automatically**"
3. **AI Will Handle**: Download, extract, configure, and run CBbot automatically
4. **Smart Support**: Upload error logs or screenshots for instant problem solving
5. **Benefits**: 
   - 🚀 **One-click automated installation**
   - ✅ Real-time troubleshooting
   - ✅ Step-by-step guidance
   - ✅ Environment-specific solutions
   - ✅ Error diagnosis and fixes

### 1. Get Your CBbot Key

1. Visit [CodeBanana](https://www.codebanana.com)
2. Login → User Avatar → "CBbot Key"
3. Copy your key

<details>
<summary>🖼️ View Screenshot</summary>

![CBbot Key](https://oci-useast-backend-public.dupdub.com/subtitles/image/3c0f8dd9-7f91-484e-a383-6a00185d288f.png)

</details>

### 2. Installation Steps

**📦 Release Package Installation**

1. **Extract Package**: 
   ```bash
   unzip CBbot-v*.zip
   cd CBbot
   ```

2. **Configure**: Edit `package/config/application.yml`
   ```yaml
   user-key: {{YOUR_CBBOT_KEY}}
   ai-bot:
     fs:
       subscribe: false
   ```

3. **Install & Run**: 
   ```bash
   # Ensure Docker Desktop is running
   bash install.sh
   ```

**🤖 AI Coding IDE Support**

Get installation help using your local AI coding environment:

**Supported AI Tools**: CodeBanana, Cursor, GitHub Copilot Chat, etc.

**Common AI Prompts**:
- "Help me install CBbot from release package on macOS"
- "Troubleshoot CBbot Docker installation errors"
- "Configure CBbot application.yml file"
- "Fix CBbot port conflicts during installation"

**AI Can Help With**:
   - ✅ Docker Desktop setup and issues
   - ✅ Configuration file editing
   - ✅ Environment troubleshooting
   - ✅ Error log analysis
   - ✅ Custom setup requirements

### 3. Setup Proxy (China Users)

> **Note**: Required for China mainland users accessing overseas models

```bash
# Configure proxy (adjust port as needed)
export https_proxy=http://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7890
```

**Installation Process:**
- ✅ Docker daemon check
- 📦 Build images
- 🚀 Start containers
- ⏱️ Time: 1-5 minutes

## 🎯 Access Services

Once installation completes:

```
🌐 Main Interface: http://localhost:3100
```

## 🔧 Advanced Configuration

<details>
<summary>🔗 <strong>Feishu Bot Integration</strong></summary>

### Setup Feishu Bot

1. **Create App**: Visit [Feishu Open Platform](https://open.feishu.cn/app)
2. **Add Bot Capability**
3. **Get Credentials**: App ID & Secret
4. **Update Config**:

```yaml
user-key: {{YOUR_KEY}}
ai-bot:
  fs:
    app-id: {{APP_ID}}
    app-secret: {{APP_SECRET}}
    subscribe: true
```

5. **Restart**: `docker compose restart`

</details>

<details>
<summary>📱 <strong>Telegram Bot Integration</strong></summary>

### Setup Telegram Bot

1. **Create Bot**: Chat with [@BotFather](https://t.me/botfather)
2. **Send**: `/newbot`
3. **Get Token**: Save the bot token
4. **Configure**:

```yaml
user-key: {{YOUR_KEY}}
ai-bot:
  telegram:
    subscribe: true
    username: {{BOT_USERNAME}}
    token: {{BOT_TOKEN}}
```

5. **Restart**: `docker compose restart`

</details>

<details>
<summary>🎮 <strong>Discord Bot Integration</strong></summary>

### Setup Discord Bot

1. **Create App**: [Discord Developer Portal](https://discord.com/developers/applications)
2. **Add Bot**: Bot → Add Bot
3. **Get Token**: Copy bot token
4. **Configure**:

```yaml
user-key: {{YOUR_KEY}}
ai-bot:
  discord:
    subscribe: true
    token: {{BOT_TOKEN}}
```

5. **Restart**: `docker compose restart`

</details>

## ❓ FAQ

### Common Issues

<details>
<summary><strong>❌ "Docker daemon is not running"</strong></summary>

**Solution:**
1. Open Docker Desktop
2. Wait for whale icon in menu bar
3. Retry installation

</details>

<details>
<summary><strong>🔴 Port conflicts (3306, 6379, etc.)</strong></summary>

**Check & Fix:**
```bash
# Find process using port
lsof -i :3306

# Kill process
sudo kill -9 <PID>

# Or modify docker-compose.yml ports
```

</details>

<details>
<summary><strong>🌐 Network issues in China</strong></summary>

**Enable VPN & Set Proxy:**
```bash
export https_proxy=http://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
```

</details>

## 💰 Billing Information

> **Important**: CBbot requires a CodeBanana account for usage

### How it Works

- **💳 Billing**: Pay-as-you-go based on usage
- **🔗 Account**: Linked via your CBbot Key
- **📊 Tracking**: Real-time usage monitoring
- **💰 Costs**: API calls + model usage

### Monitor Usage

1. Login to [CodeBanana](https://www.codebanana.com)
2. View account dashboard
3. Check quotas & billing history

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

### Development Setup

> **Note**: CBbot development requires working with Release packages as the primary distribution method.

**Setup Process**:
```bash
# Download latest release for testing
# Report issues and submit improvement suggestions
# Contribute to documentation and user guides
```

**🤖 AI One-Click Installation & Development Support**:
- **Local AI IDE**: Use Cursor, CodeBanana, or similar AI coding tools
- **One-Click Setup**: Ask AI "Install CBbot for me step by step" for automated guidance
- **AI Can Handle**:
  - 🚀 **One-click installation**: Complete setup automation
  - 📋 Feature analysis and suggestions
  - 🐛 Bug reproduction and reporting  
  - 📚 Documentation improvements
  - 🔧 Configuration optimization
  - 🛠️ Troubleshooting and error fixes

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<div align="center">
  <p><strong>Happy Coding! 🎉</strong></p>
  <p>Made with ❤️ by the <a href="https://www.codebanana.com">CodeBanana</a> team</p>
</div>