# CBbot - AI Coding Assistant 🚀

> **Download → Double-Click Install → Ready to Use - No Configuration Needed**

<div align="center">
  <a href="https://github.com/mobvoi/CBbot/releases/latest">
    <img src="https://img.shields.io/badge/🖥️_Download_CBbot-macOS_&_Windows-blue?style=for-the-badge&logo=desktop" alt="Download CBbot" height="40">
  </a>
</div>

<div align="center">
  <p><strong>🍎🪟 Native Desktop App · One-Click Setup · Ready Out of the Box</strong></p>
</div>

---

## 💻 What is CBbot?

CBbot is an **AI-native agent OS** that specializes in coding and task automation with seamless integration both locally and in the cloud.

**Key Features:**
- ✅ **SOTA AI Coding Agent**: Built-in powerful AI coding capabilities supporting the best global models
- ✅ **Easy Installation**: Download DMG, drag to Applications - that's it!
- ✅ **Auto Configuration**: No manual configuration file editing required
- ✅ **Safe Sandbox Environment**: Docker-based isolation protects your sensitive files and main system from prompt injection and other security risks
- ✅ **Extensible Skill System**: Pre-loaded skills library with compatibility for open-source domain skills

## 💻 System Requirements

### macOS
- **Operating System**: macOS 10.15 (Catalina) or higher
- **Chip**: Apple Silicon (M1/M2/M3/M4) or Intel
- **Memory**: 6GB or more recommended
- **Disk Space**: At least 10GB available
- **Internet**: Required for AI features

### Windows
- **Operating System**: Windows 10 (64-bit) or Windows 11
- **Architecture**: x64 (Intel/AMD)
- **Memory**: 8GB or more recommended
- **Disk Space**: At least 10GB available
- **Internet**: Required for AI features

## 📦 Download CBbot

<div align="center">
  <table>
    <tr>
      <td align="center">
        <strong>🍎 macOS (Apple Silicon)</strong><br>
        <a href="https://github.com/mobvoi/CBbot/releases/latest">⬇️ Download CBbot.dmg</a><br>
        <small>M1/M2/M3/M4 chips</small>
      </td>
      <td align="center">
        <strong>🍎 macOS (Intel)</strong><br>
        <a href="https://github.com/mobvoi/CBbot/releases/latest">⬇️ Download CBbot.dmg</a><br>
        <small>Intel x86_64</small>
      </td>
    </tr>
    <tr>
      <td align="center" colspan="2">
        <strong>🪟 Windows</strong><br>
        <a href="https://github.com/mobvoi/CBbot/releases/latest">⬇️ Download CBbot-Setup.exe</a><br>
        <small>Windows 10/11 (x64)</small>
      </td>
    </tr>
  </table>
</div>

## 📦 Installation Steps

### Step 1: Install Docker Desktop

**Docker Desktop** is essential for running CBbot. If you already have it installed, skip to Step 2.

#### For macOS Users:

**Download and Install:**

1. Visit Docker website: [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)
2. Click **Download for Mac**
3. Choose based on your Mac chip:
   - **Apple Silicon (M1/M2/M3/M4)** → Select ARM64 version
   - **Intel Chip** → Select AMD64 version
4. Double-click the `.dmg` file to install
5. Drag Docker icon to **Applications** folder

**Start Docker:**

1. Open **Launchpad**, find **Docker** icon
2. Click to launch (first launch requires password)
3. Wait for Docker icon (whale) in menu bar
4. Click whale icon, ensure it shows **Docker Desktop is running**

#### For Windows Users:

**Download and Install:**

1. Visit Docker website: [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)
2. Click **Download for Windows**
3. Run the `Docker Desktop Installer.exe` file
4. Follow the installation wizard:
   - Check **"Use WSL 2 instead of Hyper-V"** (recommended)
   - Complete the installation and restart if prompted

**Start Docker:**

1. Open **Docker Desktop** from Start Menu
2. Accept the service agreement if prompted
3. Wait for Docker to start (you'll see a whale icon in system tray)
4. Ensure the status shows **Docker Desktop is running**

**Configure WSL Integration:**

1. Open Docker Desktop settings (gear icon)
2. Navigate to **Resources** → **WSL integration**
3. Enable the following options:
   - ✅ **"Enable integration with my default WSL distro"**
   - ✅ Toggle **"Ubuntu"** (or your preferred Linux distribution)
4. Click **"Apply & restart"**
5. Wait for Docker to restart

![Docker WSL Integration Settings](https://oci-useast-backend-public.dupdub.com/subtitles/image/2c9d72b3-2dbf-49ac-b274-d53aa74c4ee2.jpeg)

*Configure WSL integration as shown in the settings panel above*

**Configure WSL Network Proxy (Optional but Recommended):**

**Step 1: Create .wslconfig file**
1. Open **File Explorer**
2. Navigate to your user directory: `C:\Users\<your_username>`
3. Create a new text file and name it `.wslconfig` (note: no file extension)

**Step 2: Edit .wslconfig file**
1. Right-click the `.wslconfig` file
2. Select **"Open with Notepad"**
3. Enter the following content:

```ini
[wsl2]
memory=3GB
autoMemoryReclaim=gradual
networkingMode=mirrored
dnsTunneling=true
firewall=true
autoProxy=true
```

4. Save the file (**Ctrl+S**)
5. Restart WSL by running in PowerShell: `wsl --shutdown`
6. Restart Docker Desktop

> **💡 Note:** This configuration enables automatic proxy detection and improves network compatibility for CBbot in WSL environments.

**Enable WSL 2 (if not already installed):**

1. Open PowerShell as Administrator
2. Run: `wsl --install`
3. Restart your computer
4. Launch Docker Desktop again and configure WSL integration as above

### Step 2: Install CBbot

#### For macOS Users:

1. Download CBbot from [Releases Page](https://github.com/mobvoi/CBbot/releases/latest)
2. Double-click the `CBbot.dmg` file
3. Drag **CBbot** to **Applications** folder
4. Done!

#### For Windows Users:

1. Download CBbot from [Releases Page](https://github.com/mobvoi/CBbot/releases/latest)
2. Run the `CBbot-Setup.exe` file
3. Follow the installation wizard:
   - Choose installation directory (default recommended)
   - Accept the license agreement
   - Complete the installation
4. Done!

### Step 3: Launch CBbot

#### For macOS Users:

1. Open **Applications** and click **CBbot**
2. First launch: Click "Open" if asked
3. Wait for services to start (30-60 seconds)

#### For Windows Users:

1. Find **CBbot** in Start Menu or Desktop shortcut
2. Right-click and **"Run as administrator"** (first launch only)
3. Wait for services to start (30-60 seconds)
4. CBbot will open in your default browser

### Step 4: Bind Your Key

**Get Your Key:**
1. Visit [CodeBanana](https://www.codebanana.com)
2. Log in → Click avatar → **"CBbot Key"**
3. Copy your Key

**Bind Key:**
1. Paste your Key in CBbot startup screen
2. Click **"Bind"**
3. Done! CBbot is ready to use

---

## 📑 Contents

- [💬 Community](#-community)
- [💰 Billing](#-billing)
- [🧠 Skills](#-skills)
- [🛠️ Troubleshooting](#️-troubleshooting)
- [📄 License](#-license)  

## 💬 Community

Join our community for support, discussions, and updates!

### 🌐 International Community

<div align="center">
  <a href="https://discord.com/invite/yUcCxACgh9">
    <img src="https://img.shields.io/badge/Discord-Join_Community-5865F2?style=for-the-badge&logo=discord&logoColor=white" alt="Join Discord" height="40">
  </a>
</div>

### 🇨🇳 中文社区

<div align="center">
  <table>
    <tr>
      <td align="center">
        <img src="https://oci-useast-backend-public.dupdub.com/subtitles/image/35f1e711-f7c1-4894-a1a4-e0ca133aa4cc.png" alt="飞书群" width="150">
        <br>
        <strong>🚀 飞书群</strong>
        <br>
        <small>CBbot交流群</small>
      </td>
      <td align="center">
        <img src="https://oci-useast-backend-public.dupdub.com/subtitles/image/df588231-d149-4a29-92bc-e4c6dbf5f51f.jpg" alt="微信群" width="150">
        <br>
        <strong>💬 微信群</strong>
        <br>
        <small>CBbot 交流群</small>
      </td>
    </tr>
  </table>
</div>

<div align="center">
  <p>🚀 <strong>Get help, share ideas, and connect with other developers!</strong></p>
  <p>💡 <strong>获得帮助、分享想法、与其他开发者交流！</strong></p>
</div>

---

## 💰 Billing

- **Pay-as-you-go** based on usage
- Linked via CBbot Key
- Costs: API calls + model usage

Monitor usage at [CodeBanana](https://www.codebanana.com) dashboard

---

## 🌐 Network Tips

**Using Overseas AI Models:**

If you're using international AI models (OpenAI, Anthropic, etc.), we recommend enabling **VPN global proxy** for stable connections.

**Setup:**
1. Enable VPN with global proxy mode
2. Restart CBbot after VPN is connected
3. Verify connection is stable

> **💡 Tip:** Local models and domestic services work without VPN.

---

## ⚙️ Advanced Configuration (Optional)

### Configure Feishu Bot

To enable Feishu bot functionality:

1. Open CBbot application
2. Go to **"Settings" → "Bot Configuration" → "Feishu"**
3. Enter your **App ID** and **App Secret**
4. Click **"Save"** and restart service

### Configure Telegram Bot

To enable Telegram bot functionality:

1. Open CBbot application
2. Go to **"Settings" → "Bot Configuration" → "Telegram"**
3. Enter your **Bot Token** and **Username**
4. Click **"Save"** and restart service

### Configure Discord Bot

To enable Discord bot functionality:

1. Open CBbot application
2. Go to **"Settings" → "Bot Configuration" → "Discord"**
3. Enter your **Bot Token**
4. Click **"Save"** and restart service

> **💡 Tip:** All configurations are done through CBbot's graphical interface - no manual configuration file editing required!

---

## 🧠 Skills

CBbot automatically uses the right skill for your task:

**Documents:** docx, pptx, xlsx, pdf  
**Automation:** macos-automation, custom skills

**Usage Example:**
- "Create presentation" → Uses pptx skill
- "Analyze Excel data" → Uses xlsx skill
- "Send email" → Uses macos-automation

No need to specify skills - CBbot picks the right one!

**Add Your Own:**
Contribute to `skills/` directory. See `codebanana-skill-guide` for details.

---

## 🛠️ Troubleshooting

### Common Issues (All Platforms)

**CBbot won't start:**
- Check Docker Desktop is running
- Ensure 8GB+ memory available (Windows) / 6GB+ (macOS)
- Restart Docker and CBbot

**Can't access interface:**
- Wait 1-2 minutes for startup
- Check CBbot shows "Running"
- Restart CBbot if needed

**Key binding failed:**
- Check Key has no extra spaces
- Verify network connection
- Get new Key from CodeBanana

**Git install fails:**
- Check network connection
- Restart CBbot to retry installation

### macOS Specific Issues

**Black screen on launch:**
- Docker is starting up
- Quit CBbot (⌘+Q), wait for Docker, relaunch

**Permission denied:**
- Enter password when prompted
- Allow required installations

**Docker not detected:**
- Install from [Docker website](https://docs.docker.com/desktop/setup/install/mac-install/)
- Launch and wait for "running" status
- Restart CBbot

### Windows Specific Issues

**"Access denied" or permission errors:**
- Run CBbot as Administrator (right-click → "Run as administrator")
- Ensure Windows Defender isn't blocking CBbot
- Check antivirus software exceptions

**WSL 2 installation issues:**
- Open PowerShell as Administrator
- Run: `wsl --install --distribution Ubuntu`
- Restart computer and try again

**Docker Desktop won't start:**
- Enable Hyper-V in Windows Features
- Update Windows to latest version
- Restart Docker Desktop service

**Firewall blocking connections:**
- Add CBbot to Windows Firewall exceptions
- Allow Docker Desktop through firewall
- Check corporate firewall settings

**Installation fails:**
- Disable antivirus temporarily during install
- Run installer as Administrator
- Install to default directory (avoid paths with spaces)

---

## 🔧 Uninstall

### macOS
Drag CBbot from Applications to Trash, then empty Trash.

### Windows
1. Open **Settings** → **Apps** → **Apps & features**
2. Search for **CBbot**
3. Click **CBbot** → **Uninstall**
4. Follow the uninstall wizard

Alternatively:
1. Open **Control Panel** → **Programs and Features**
2. Find **CBbot** in the list
3. Right-click → **Uninstall**

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<div align="center">
  <p><strong>Happy Coding! 🎉</strong></p>
  <p>Made with ❤️ by the <a href="https://www.codebanana.com">CodeBanana</a> team</p>
</div>