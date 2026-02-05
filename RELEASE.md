# CBBot Release Notes

## 🚀 Version 1.0.0 - Initial Release

**Release Date:** 2026-02-05

### 📦 What's Included

This release provides a complete one-click development environment setup for macOS users.

### ✨ Key Features

- **🐳 Dockerized Environment**: Complete containerized setup
- **⚡ One-Click Installation**: Automated deployment with `install.sh`
- **🛠️ Full Stack Ready**: Java, MySQL, Redis, RabbitMQ, Node.js
- **🤖 Multi-Platform Bots**: Feishu, Telegram, Discord integration
- **📱 macOS Optimized**: Intel & Apple Silicon support
- **🔧 Configurable**: Flexible bot and service configuration

### 📋 System Requirements

- **OS**: macOS 10.15 (Catalina) or higher
- **Chip**: Intel x64 or Apple Silicon (M1/M2/M3)
- **Memory**: 6GB+ RAM recommended
- **Storage**: 10GB+ available space
- **Docker**: Desktop 4.0+ required

### 📦 Download & Installation

#### Option 1: Download Release Package

1. **Download**: Get `CBbot-v1.0.0.tar.gz` from release assets
2. **Extract**: 
   ```bash
   tar -xzf CBbot-v1.0.0.tar.gz
   cd CBbot
   ```
3. **Install**: 
   ```bash
   bash install.sh
   ```

#### Option 2: Clone Repository

```bash
git clone https://github.com/mobvoi/CBbot.git
cd CBbot
bash install.sh
```

### 🔧 Quick Setup

1. **Get CBbot Key**: Login to [CodeBanana](https://www.codebanana.com) → User Avatar → "CBbot Key"

2. **Configure**: Edit `package/config/application.yml`
   ```yaml
   user-key: {{YOUR_CBBOT_KEY}}
   ai-bot:
     fs:
       subscribe: false  # Set to true for Feishu bot
   ```

3. **Setup Proxy** (China users):
   ```bash
   export https_proxy=http://127.0.0.1:7890
   export http_proxy=http://127.0.0.1:7890
   ```

4. **Install & Run**:
   ```bash
   bash install.sh
   ```

5. **Access**: Open http://localhost:3100

### 🎯 What's New in v1.0.0

#### 🆕 Core Features
- Complete development environment containerization
- Automated Docker Compose orchestration
- Multi-service integration (MySQL, Redis, RabbitMQ)
- Real-time bot communication capabilities

#### 🤖 Bot Integrations
- **Feishu Bot**: Enterprise chat integration
- **Telegram Bot**: Public messaging platform
- **Discord Bot**: Gaming and community platform
- **Configurable**: Enable/disable bots as needed

#### 🛠️ Developer Tools
- Java development environment
- Node.js runtime
- Database services (MySQL)
- Caching layer (Redis)
- Message queue (RabbitMQ)

### 📚 Documentation

- **English**: [README.en.md](README.en.md)
- **中文**: [README.cn.md](README.cn.md)
- **Installation**: [INSTALL.md](INSTALL.md)
- **Main**: [README.md](README.md)

### 🐛 Known Issues

#### Port Conflicts
- **Issue**: Services may conflict with existing applications
- **Solution**: Stop conflicting services or modify ports in `docker-compose.yml`

#### China Network
- **Issue**: Slow downloads from overseas registries
- **Solution**: Use VPN and configure proxy settings

#### Docker Desktop
- **Issue**: "Docker daemon not running" error
- **Solution**: Ensure Docker Desktop is launched and running

### 🔄 Upgrade Path

This is the initial release. Future versions will include:
- Automatic update mechanism
- Additional bot platforms
- Enhanced configuration options
- Performance optimizations

### 💰 Billing & Usage

- **Model**: Pay-as-you-go based on API usage
- **Account**: Linked via CBbot Key
- **Monitoring**: Real-time usage tracking
- **Dashboard**: Available at [CodeBanana Account](https://www.codebanana.com)

### 🤝 Support

- **Documentation**: Check README files for detailed guides
- **Issues**: Report bugs via [GitHub Issues](https://github.com/mobvoi/CBbot/issues)
- **Community**: Join discussions in project repository

### 📄 License

MIT License - see [LICENSE](LICENSE) file for details

---

<div align="center">
  <p><strong>🎉 Happy Coding with CBBot!</strong></p>
  <p>Made with ❤️ by the <a href="https://www.codebanana.com">CodeBanana</a> team</p>
</div>