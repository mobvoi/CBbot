# CBbot - AI Coding Assistant 🚀

> **Download DMG → Double-Click Install → Ready to Use - No Configuration Needed**

<div align="center">
  <a href="https://github.com/mobvoi/CBbot/releases/latest">
    <img src="https://img.shields.io/badge/🖥️_Download_CBbot-macOS_Only-blue?style=for-the-badge&logo=apple" alt="Download CBbot" height="40">
  </a>
</div>

<div align="center">
  <p><strong>🍎 Native macOS App · One-Click Setup · Ready Out of the Box</strong></p>
</div>

---

## 💻 What is CBbot?

CBbot is an **AI-powered coding assistant** for macOS that helps you write code more efficiently, process documents, and automate tasks.

**Key Features:**
- ✅ **Easy Installation**: Download DMG, drag to Applications - that's it!
- ✅ **AI Assistant**: Built-in powerful AI coding capabilities
- ✅ **Auto Configuration**: No manual configuration file editing
- ✅ **Smart Tools**: Automatically installs required development tools

## 💻 System Requirements

- **Operating System**: macOS 10.15 (Catalina) or higher
- **Chip**: Apple Silicon (M1/M2/M3/M4) or Intel
- **Memory**: 6GB or more recommended
- **Disk Space**: At least 10GB available
- **Internet**: Required for AI features

## 📦 Download CBbot

<div align="center">
  <table>
    <tr>
      <td align="center">
        <strong>🍎 Apple Silicon (M1/M2/M3/M4)</strong><br>
        <a href="https://github.com/mobvoi/CBbot/releases/latest">⬇️ Download CBbot.dmg</a>
      </td>
      <td align="center">
        <strong>💻 Intel Chip</strong><br>
        <a href="https://github.com/mobvoi/CBbot/releases/latest">⬇️ Download CBbot.dmg</a>
      </td>
    </tr>
  </table>
</div>

## 📦 Installation Steps

### Step 1: Install Docker Desktop

**Docker Desktop** is essential for running CBbot. If you already have it installed, skip to Step 2.

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

### Step 2: Install CBbot

1. Download CBbot from [Releases Page](https://github.com/mobvoi/CBbot/releases/latest)
2. Double-click the `CBbot.dmg` file
3. Drag **CBbot** to **Applications** folder
4. Done!

### Step 3: Launch CBbot

1. Open **Applications** and click **CBbot**
2. First launch: Click "Open" if asked
3. Wait for services to start (30-60 seconds)

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

**Black screen on launch:**
- Docker is starting up
- Quit CBbot (⌘+Q), wait for Docker, relaunch

**CBbot won't start:**
- Check Docker Desktop is running
- Ensure 6GB+ memory available
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

**Permission denied:**
- Enter password when prompted
- Allow required installations

**Docker not detected:**
- Install from [Docker website](https://docs.docker.com/desktop/setup/install/mac-install/)
- Launch and wait for "running" status
- Restart CBbot

---

## 🔧 Uninstall

Drag CBbot from Applications to Trash, then empty Trash.

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<div align="center">
  <p><strong>Happy Coding! 🎉</strong></p>
  <p>Made with ❤️ by the <a href="https://www.codebanana.com">CodeBanana</a> team</p>
</div>