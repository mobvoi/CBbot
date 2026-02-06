# 🚀 One-Click Development Environment Setup (macOS Only)

> A one-click development environment deployment solution for macOS users, including all services needed for full-stack development: Java, MySQL, Redis, RabbitMQ, and Node.js.

---

## 📋 Prerequisites

### 1️⃣ Install Docker Desktop

**Docker Desktop** is essential for running this development environment.

#### Download and Installation:

1. Visit Docker official website: [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)
2. Click **Download for Mac**
3. Choose based on your Mac chip:
   - **Apple Silicon (M1/M2/M3)** → Select ARM64 version
   - **Intel Chip** → Select AMD64 version
4. After download, double-click the `.dmg` file to install
5. Drag the Docker icon into the **Applications** folder

#### Start Docker:

1. Open **Launchpad** and find the **Docker** icon
2. Click to launch (first-time launch requires password authorization)
3. Wait for the Docker icon (whale icon) to appear in the top menu bar
4. Click the whale icon and ensure it shows **Docker Desktop is running** ✅

#### Verify Installation:

Open **Terminal** and enter the following command:

```bash
docker --version
```

If it displays a version number (e.g., `Docker version 24.0.0`), the installation is successful!

---

## ⚡ One-Click Installation

### Bind CBbot Key

Before installation, you need to bind your CBbot Key first.

#### 1. Get CBbot Key

1. Visit [CodeBanana](https://www.codebanana.com)
2. Log in to your account
3. Click the **user avatar** in the top right corner, select **"CBbot Key"** from the dropdown menu
4. Copy your Key

![Get CBbot Key](https://oci-useast-backend-public.dupdub.com/subtitles/image/3c0f8dd9-7f91-484e-a383-6a00185d288f.png)

*As shown in the image above, find the "CBbot Key" option in the user dropdown menu*

#### 2. Configuration File

Edit the configuration file:

```bash
vim package/config/application.yml
```

Add the following content:

```yaml
user-key: {{CBbot key}}
ai-bot:
  fs:
    #app-id: {{appId}}
    #app-secret: {{appSecret}}
    subscribe: false
    #chat-id: {{chatId}}
    #sender-id: {{senderId}}
    #agent-id: {{agentId}}
```

**Configuration Notes:**
- `user-key`: Enter your CBbot Key obtained from CodeBanana
- `ai-bot.fs.subscribe`: Set to `false` (refer to "Advanced Features" section to enable Feishu bot)
- Other configuration items with `#` are optional, enable as needed

### ⚠️ Important Notice (China Mainland Users)

If you are a **China mainland user** and need to use **overseas models**, please ensure your VPN is enabled and export the VPN proxy port to environment variables.

#### Configure Proxy Environment Variables:

Execute the following commands in terminal (adjust according to your VPN port):

```bash
export https_proxy=http://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7890
```

**Notes:**
- `7890` is a common VPN proxy port, please modify according to your actual VPN port
- Common ports: `7890`, `1080`, `8080`, etc.
- After setting, services in Docker containers can access overseas APIs through the proxy

#### Verify Proxy Settings:

```bash
echo $https_proxy
# Should display: http://127.0.0.1:7890
```

### Execute Installation

After ensuring Docker Desktop is running, execute in terminal:

```bash
bash install.sh
```

### Installation Process:

The script will automatically complete the following steps:

1. ✅ Check if Docker is running
2. 📦 Build Docker images
3. 🚀 Start containers and initialize all services
4. ⏳ Estimated time: 1-5 minutes (depending on network speed)

---

## 🎯 Service Access

After installation is complete, access services via:
Open browser and visit: http://localhost:3100

---

## 🧠 Intelligent Skill System

CBbot features a powerful intelligent skill system that provides professional capabilities across multiple domains.

### 📚 Document Processing Skills

#### **docx** - Word Document Processing
- **Features**: Create, edit, and analyze Word documents
- **Highlights**: Supports revision tracking, comment management, format preservation
- **Use Cases**: Report generation, document collaboration, content analysis
- **Examples**: "Create a project report" / "Analyze contract document content"

#### **pptx** - Presentation Processing
- **Features**: Create, edit, and analyze presentations
- **Highlights**: Supports layout design, slide management, speaker notes
- **Use Cases**: Business presentations, educational materials, report slides
- **Examples**: "Create a product launch PPT" / "Optimize presentation design"

#### **xlsx** - Spreadsheet Processing
- **Features**: Create, edit, and analyze spreadsheets
- **Highlights**: Supports complex formulas, data visualization, formatting
- **Use Cases**: Data analysis, financial reports, project management
- **Examples**: "Generate sales data charts" / "Calculate financial metrics"

#### **pdf** - PDF Document Operations
- **Features**: Create, edit, and extract content from PDF documents
- **Highlights**: Text extraction, table processing, document merging/splitting, form filling
- **Use Cases**: Document archiving, information extraction, form processing
- **Examples**: "Extract table data from PDF" / "Merge multiple PDF files"

### 🔧 System Automation Skills

#### **macos-automation** - macOS System Automation
- **Features**: Automated operations and control of macOS systems
- **Highlights**: Uses AppleScript for system-level operations
- **Use Cases**: Email sending, file management, application control, system settings
- **Examples**: "Send email to team" / "Batch organize desktop files" / "Control music playback"

### 🛠️ Development Management Skills

#### **codebanana-skill-guide** - Skill Development Management
- **Features**: Development and management of the skill system
- **Highlights**: Complete skill specifications, supports CRUD operations for skills
- **Use Cases**: Custom skill development, skill management, feature extension
- **Examples**: "Create new data processing skill" / "Update existing skill configuration"

### 💡 How to Use Skills

When chatting with CBbot, simply describe your needs, and the system will automatically identify and invoke the appropriate skills:

```
User: "Help me create a project progress presentation"
CBbot: Automatically invokes pptx skill to generate professional presentations

User: "Analyze the sales data in this Excel file"
CBbot: Automatically invokes xlsx skill for data analysis and visualization

User: "Send email notification about project delay"
CBbot: Automatically invokes macos-automation skill to send system email
```

### 🚀 Skill Extension

CBbot's skill system supports extension, allowing you to:
- **Use existing skills**: directly invoke built-in professional skills
- **Customize skill configurations**: adjust skill parameters according to business needs
- **Develop new skills**: use codebanana-skill-guide to create custom skills

> **Tip**: The skill system automatically matches the most suitable processing method based on your input, without needing to manually specify skill names.

## ❓ FAQ

### 1. Error "Docker daemon is not running"

**Solution:**
- Open Docker Desktop application
- Wait for the Docker icon in the top menu bar to show normal status
- Re-run `bash install.sh`

### 2. Port Already in Use (e.g., 3306, 6379)

**Solution:**
```bash
# Check port usage
lsof -i :3306

# Stop the service occupying the port
sudo kill -9 <PID>

# Or modify port mapping in docker-compose.yml
```

## 📝 System Requirements

- **Operating System**: macOS 10.15 (Catalina) or higher
- **Chip**: Intel or Apple Silicon (M1/M2/M3)
- **Memory**: 6GB or more recommended
- **Disk Space**: At least 10GB available
- **Docker Desktop**: Version 4.0 or higher

---

## 🔧 Advanced Features

### Configure Feishu Bot

#### 1. Create Feishu Bot

1. Visit [Feishu Open Platform](https://open.feishu.cn/app?lang=zh-CN) to create an application
2. Add application capability: **Bot**

#### 2. Configure Bot

**Get Credentials:**

Copy `App ID` and `App Secret` from the **Credentials & Basic Info** page

**Modify Configuration File:**

Edit the configuration file:

```bash
vim package/config/application.yml
```

Add the following content:

```yaml
user-key: {{CBbot key}}
ai-bot:
  fs:
    app-id: {{appId}}
    app-secret: {{appSecret}}
    subscribe: true
    #chat-id: {{chatId}}
    #sender-id: {{senderId}}
    #agent-id: {{agentId}}
```

**Configuration Notes:**
- `user-key`: Required, enter your CBbot Key
- `app-id`: Required, Feishu app's App ID
- `app-secret`: Required, Feishu app's App Secret
- `subscribe`: Required, set to `true` to enable Feishu bot
- `chat-id`: Optional, specify chat group ID
- `sender-id`: Optional, sender ID
- `agent-id`: Optional, agent ID

**Get Optional Configuration Items (chat-id, sender-id, agent-id):**

If you need to configure these optional items, you can obtain them as follows:

1. **Get chat-id**:
   - Visit http://localhost:3100 in browser
   - Check the `chatId` parameter value on the project page

   ![Get chat-id](https://oci-useast-backend-public.dupdub.com/subtitles/image/f650fc41-b3e2-401f-bcfd-d8cf48b0663a.png)

   *As shown above, chatId is displayed in the URL parameters of the browser address bar*

2. **Get sender-id and agent-id**:
   - In CodeBanana platform, click **"CBbot Key"** in the user menu
   - In the popup configuration window, you can see `Sender-ID` and `Agent-ID`
   - Click the corresponding **copy button** to copy

   ![Get sender-id and agent-id](https://oci-useast-backend-public.dupdub.com/subtitles/image/508465ae-8838-4b53-ba56-ff27e7d9af3b.png)

   *As shown above, you can find Sender-ID and Agent-ID in the CBbot Key configuration window*

**Restart Service:**

```bash
docker compose restart
```

#### 3. Set Permissions

1. **Events & Callbacks**: Configure subscription method as **Long Connection**
2. **Subscribe to Messages**: Subscribe to required message types
3. **Permission Management**: Add **Send Message** permission
4. **Create Version**: Publish application version

### Configure Telegram Bot

#### 1. Create Telegram Bot

1. Search for [@BotFather](https://t.me/botfather) in Telegram
2. Send `/newbot` command to create a new bot
3. Follow the prompts to set bot name and username
4. After successful creation, BotFather will return your bot Token

#### 2. Configure Bot

**Get Credentials:**

- **Token**: Bot access token obtained from BotFather
- **Username**: Your bot username (e.g., `amy_cmww_bot`)

**Edit Configuration File:**

Edit the configuration file:

```bash
vim package/config/application.yml
```

Add the following content:

```yaml
user-key: {{CBbot key}}
ai-bot:
  telegram:
    subscribe: true
    username: {{your_bot_username}}
    token: {{your_bot_token}}
    #chat-id: {{chatId}}
    #sender-id: {{senderId}}
    #agent-id: {{agentId}}
```

**Configuration Notes:**
- `user-key`: Required, enter your CBbot Key
- `username`: Required, Telegram bot username (e.g., `amy_cmww_bot`)
- `token`: Required, bot Token obtained from BotFather
- `subscribe`: Required, set to `true` to enable Telegram bot
- `chat-id`: Optional, specify chat session ID
- `sender-id`: Optional, sender ID
- `agent-id`: Optional, agent ID

**Get Optional Configuration Items (chat-id, sender-id, agent-id):**

If you need to configure these optional items, you can obtain them as follows:

1. **Get chat-id**:
   - Visit http://localhost:3100 in browser
   - Check the `chatId` parameter value on the project page

2. **Get sender-id and agent-id**:
   - In CodeBanana platform, click **"CBbot Key"** in the user menu
   - In the popup configuration window, you can see `Sender-ID` and `Agent-ID`
   - Click the corresponding **copy button** to copy

**Restart Service:**

```bash
docker compose restart
```

### Configure Discord Bot

#### 1. Create Discord Bot

1. Visit [Discord Developer Portal](https://discord.com/developers/applications)
2. Click **"New Application"** to create a new application
3. Select **"Bot"** in the left menu, click **"Add Bot"**
4. In the **"TOKEN"** section, click **"Reset Token"** or **"Copy"** to get the bot Token
5. Enable necessary permissions: **MESSAGE CONTENT INTENT**
6. Generate an invite link in **"OAuth2 > URL Generator"** to add the bot to your server

#### 2. Configure Bot

**Get Credentials:**

- **Token**: Bot access token obtained from Discord Developer Portal

**Edit Configuration File:**

Edit the configuration file:

```bash
vim package/config/application.yml
```

Add the following content:

```yaml
user-key: {{CBbot key}}
ai-bot:
  discord:
    subscribe: true
    token: {{your_bot_token}}
    #chat-id: {{chatId}}
    #sender-id: {{senderId}}
    #agent-id: {{agentId}}
```

**Configuration Notes:**
- `user-key`: Required, enter your CBbot Key
- `token`: Required, bot Token obtained from Discord Developer Portal
- `subscribe`: Required, set to `true` to enable Discord bot
- `chat-id`: Optional, specify chat channel ID
- `sender-id`: Optional, sender ID
- `agent-id`: Optional, agent ID

**Get Optional Configuration Items (chat-id, sender-id, agent-id):**

If you need to configure these optional items, you can obtain them as follows:

1. **Get chat-id**:
   - Visit http://localhost:3100 in browser
   - Check the `chatId` parameter value on the project page

2. **Get sender-id and agent-id**:
   - In CodeBanana platform, click **"CBbot Key"** in the user menu
   - In the popup configuration window, you can see `Sender-ID` and `Agent-ID`
   - Click the corresponding **copy button** to copy

**Restart Service:**

```bash
docker compose restart
```

---

## 💰 Billing Information

CBbot requires binding to a **CodeBanana** account to use. Fees are deducted from your CodeBanana account.

### Account Binding

1. Visit [CodeBanana](https://www.codebanana.com) to register and log in
2. Get your **userKey** (in account settings)
3. Bind userKey in CBbot

### Billing Details

- **Billing Method**: Pay-as-you-go based on actual usage
- **Deduction Source**: Deducted from the account associated with userKey
- **Billing Items**:
  - **Request Quota**: Each API call consumes corresponding request count
  - **Amount Quota**: Charges based on model usage and resource consumption

### View Bills

Log in to your [CodeBanana](https://www.codebanana.com) account to view in real-time:
- Remaining request quota
- Remaining amount quota
- Detailed usage records

---

**Happy Coding!** 🎉