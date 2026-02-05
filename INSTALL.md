# CodeBanana Installation Guide

## Prerequisites

Before installing CodeBanana, ensure your system meets the following requirements:

### System Requirements

- **Operating System**: macOS Sequoia 15.3.1 or later
- **Docker**: Docker Desktop for Mac must be installed and running

### Install Docker Desktop

If you haven't installed Docker Desktop yet, please follow these steps:

1. Download Docker Desktop from the official website:
   - Visit: https://docs.docker.com/desktop/setup/install/mac-install/
   - Choose the appropriate version for your Mac (Apple Silicon or Intel)

2. Install Docker Desktop:
   - Open the downloaded `.dmg` file
   - Drag Docker to your Applications folder
   - Launch Docker Desktop from Applications
   - Follow the setup wizard to complete installation

3. Verify Docker is running:
   - Check that the Docker icon appears in your menu bar
   - The icon should indicate "Docker Desktop is running"

## Installation Steps

### Step 1: Extract Installation Package

Extract the CodeBanana installation package to a permanent directory on your system.

**Important**: Choose a location that will serve as the application directory, not a temporary folder. For example:
- `/Applications/CodeBanana`
- `~/Applications/CodeBanana`
- Any other permanent location of your choice

### Step 2: Navigate to Installation Directory

Open Terminal and navigate to the extracted directory:

```bash
cd /path/to/CodeBanana
```

Replace `/path/to/CodeBanana` with the actual path where you extracted the package.

### Step 3: Configure Security Settings

Before running the installation script, you need to authorize the CodeBanana server executable to run on your system.

**Why this is needed**: macOS security policies prevent unsigned applications from running by default. This step allows CodeBanana to run on your local machine.

**Instructions**:

1. Open **System Settings** (or System Preferences on older macOS versions)

2. Navigate to **Privacy & Security**

3. Scroll down to **Developer Tools** section

4. Click the **+** (plus) button to add an application

5. Navigate to your CodeBanana installation directory and select:
   ```
   codebanana-server
   ```
   (The full path should be: `/path/to/CodeBanana/codebanana-server`)

6. Click **Open** to add it to the allowed list

**Alternative method**: If you don't see the Developer Tools section, you may need to:
- Run the installation script first (Step 4)
- When the security warning appears, go to **System Settings** > **Privacy & Security**
- Click **Open Anyway** next to the CodeBanana warning

### Step 4: Run Installation Script

Execute the installation script:

```bash
./install.sh
```

**What to expect**:
- The script will load Docker images
- Start backend and frontend services
- Configure CodeBanana agent server
- Verify all services are running

**Duration**: The installation typically takes 2-5 minutes, depending on your system and network speed.

### Step 5: Handle Security Prompts

During installation, you may encounter a security dialog:

```
Cannot open "codebanana-server"
Apple cannot verify that this app is free from malware
```

**How to proceed**:
1. Click **Cancel** in the dialog
2. Go to **System Settings** > **Privacy & Security**
3. In the Security section, you'll see a message about "codebanana-server"
4. Click **Open Anyway**
5. When the dialog appears again, click **Open**

This is a standard macOS security measure for applications not distributed through the App Store.

### Step 6: Verify Installation

Once the installation script completes successfully, verify that CodeBanana is running:

1. Open your web browser

2. Navigate to:
   ```
   http://127.0.0.1:3100
   ```
   or
   ```
   http://localhost:3100
   ```

3. The CodeBanana web interface should load

4. Complete the registration and login process

**Success criteria**: If you can register and log in successfully, the installation is complete.

## Troubleshooting

### Installation Fails

If the installation script fails, check the following:

**Docker Issues**:
```bash
# Verify Docker is running
docker ps

# Check Docker version
docker --version
```

**Service Logs**:
```bash
# Check Docker container logs
docker compose logs -f

# Check Agent server logs
tail -f ~/.codebanana/logs/agent/unified_agent_server.log
```

**Port Conflicts**:
The installation uses the following ports:
- Backend: 8180
- Frontend: 3100
- Agent Server: 8008

Ensure these ports are not in use by other applications.

### Web Interface Not Loading

If `http://localhost:3100` doesn't load:

1. Check if all services are running:
   ```bash
   docker compose ps
   ./start-codebanana.sh status
   ```

2. Check browser console for errors (F12 or Cmd+Option+I)

3. Try accessing via IP address: `http://127.0.0.1:3100`

4. Restart services:
   ```bash
   docker compose restart
   ./start-codebanana.sh restart
   ```

### Security Warnings Keep Appearing

If you continue to receive security warnings:

1. Ensure you've added the executable to Developer Tools (Step 3)

2. Remove the quarantine attribute manually:
   ```bash
   xattr -dr com.apple.quarantine codebanana-server
   ```

3. Verify the executable permissions:
   ```bash
   chmod +x codebanana-server
   ```

## Service Management

### Check Service Status

```bash
# Check Docker services
docker compose ps

# Check Agent server
./start-codebanana.sh status
```

### Stop Services

```bash
# Stop Docker services
docker compose down

# Stop Agent server
./start-codebanana.sh stop
```

### Restart Services

```bash
# Restart Docker services
docker compose restart

# Restart Agent server
./start-codebanana.sh restart
```

### View Logs

```bash
# View Docker container logs
docker compose logs -f

# View Agent server logs
tail -f ~/.codebanana/logs/agent/unified_agent_server.log
```

## Uninstallation

To uninstall CodeBanana:

```bash
./unstall.sh
```

This will:
- Stop all services
- Remove Docker containers and images
- Clean up the Agent server

**Note**: This does not remove your data in `~/.codebanana`. To completely remove CodeBanana:

```bash
./unstall.sh
rm -rf ~/.codebanana
```

## Getting Help

If you encounter issues not covered in this guide, please contact:

**Email**: codebanana-support@mobvoi.com

**When contacting support, please include**:
- macOS version (`sw_vers`)
- Docker version (`docker --version`)
- Error messages from logs
- Steps you've already tried

## Additional Information

### Installation Directory Structure

After installation, your directory should look like this:

```
CodeBanana/
├── codebanana-server           # Agent server executable (onefile mode)
├── skills/                     # Agent skills library
├── server.yaml                 # Agent server configuration
├── docker-compose.yml          # Docker services configuration
├── ai-native_v1.tar           # Docker image
├── install.sh                  # Installation script
├── unstall.sh                  # Uninstallation script
├── start-codebanana.sh        # Agent server control script
└── INSTALL.md                  # This file
```

### Network Requirements

CodeBanana requires internet access for:
- Initial Docker image loading
- Accessing LLM services such as Claude, GPT, Gemini, and other language models

### Data Storage

CodeBanana stores data in:
- `~/.codebanana/workspace/` - Project files
- `~/.codebanana/logs/` - Application logs
- `~/.codebanana/skills/` - Agent skills

## License and Terms

Please refer to the license agreement included with the installation package.

---

**Version**: 1.0.0
**Last Updated**: February 2026
**Support**: codebanana-support@mobvoi.com
