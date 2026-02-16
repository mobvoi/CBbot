# 🚀 CBbot - AI 编程助手

> 下载安装包 → 双击安装 → 即可使用 - 无需配置

<div align="center">
  <a href="https://github.com/mobvoi/CBbot/releases/latest">
    <img src="https://img.shields.io/badge/🖥️_下载_CBbot-macOS_&_Windows-blue?style=for-the-badge&logo=desktop" alt="下载 CBbot" height="40">
  </a>
</div>

<div align="center">
  <p><strong>🍎🪟 原生桌面应用 · 一键安装 · 开箱即用</strong></p>
</div>

---

## 💻 CBbot 是什么？

CBbot 是一个 **AI 原生智能体操作系统**，专门用于编程和任务自动化，支持本地和云端无缝集成。

**核心功能：**
- ✅ **SOTA AI 编程智能体**：内置强大的 AI 编程能力，支持全球最优秀的模型
- ✅ **轻松安装**：下载安装包，双击安装 - 就是这么简单！
- ✅ **自动配置**：无需手动编辑配置文件
- ✅ **安全沙盒环境**：基于 Docker 的隔离保护您的敏感文件和主系统免受提示注入等安全风险
- ✅ **可扩展技能系统**：预装技能库，兼容开源领域技能

## 📦 下载 CBbot

<div align="center">
  <table>
    <tr>
      <td align="center">
        <strong>🍎 macOS (Apple Silicon)</strong><br>
        <a href="https://github.com/mobvoi/CBbot/releases/latest">⬇️ 下载 CBbot.dmg</a><br>
        <small>M1/M2/M3/M4 芯片</small>
      </td>
      <td align="center">
        <strong>🍎 macOS (Intel)</strong><br>
        <a href="https://github.com/mobvoi/CBbot/releases/latest">⬇️ 下载 CBbot.dmg</a><br>
        <small>Intel x86_64</small>
      </td>
    </tr>
    <tr>
      <td align="center" colspan="2">
        <strong>🪟 Windows</strong><br>
        <a href="https://github.com/mobvoi/CBbot/releases/latest">⬇️ 下载 CBbot-Setup.exe</a><br>
        <small>Windows 10/11 (x64)</small>
      </td>
    </tr>
  </table>
</div>

---

## 📦 安装步骤

### 第一步：安装 Docker Desktop

**Docker Desktop** 是运行 CBbot 的必备工具。如果您已经安装，请跳到第二步。

#### macOS 用户：

**下载安装：**

1. 访问 Docker 官网：[https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)
2. 点击 **Download for Mac**
3. 根据您的 Mac 芯片选择：
   - **Apple Silicon (M1/M2/M3/M4)** → 选择 ARM64 版本
   - **Intel 芯片** → 选择 AMD64 版本
4. 双击 `.dmg` 文件安装
5. 将 Docker 图标拖到 **Applications** 文件夹

**启动 Docker：**

1. 打开 **Launchpad**，找到 **Docker** 图标
2. 点击启动（首次启动需要输入密码）
3. 等待菜单栏出现 Docker 图标（鲸鱼）
4. 点击鲸鱼图标，确保显示 **Docker Desktop is running**

#### Windows 用户：

**下载安装：**

1. 访问 Docker 官网：[https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)
2. 点击 **Download for Windows**
3. 运行 `Docker Desktop Installer.exe` 文件
4. 按照安装向导操作：
   - 勾选 **"Use WSL 2 instead of Hyper-V"**（推荐）
   - 完成安装，如有提示请重启

**启动 Docker：**

1. 从开始菜单打开 **Docker Desktop**
2. 如有提示，接受服务协议
3. 等待 Docker 启动（系统托盘会显示鲸鱼图标）
4. 确保状态显示 **Docker Desktop is running**

**配置 WSL 集成：**

1. 打开 Docker Desktop 设置（齿轮图标）
2. 导航到 **Resources** → **WSL integration**
3. 启用以下选项：
   - ✅ **"Enable integration with my default WSL distro"**
   - ✅ 开启 **"Ubuntu"**（或您首选的 Linux 发行版）
4. 点击 **"Apply & restart"**
5. 等待 Docker 重启

![Docker WSL 集成设置](https://oci-useast-backend-public.dupdub.com/subtitles/image/2c9d72b3-2dbf-49ac-b274-d53aa74c4ee2.jpeg)

*按照上图所示的设置面板配置 WSL 集成*

**配置 WSL 网络代理（可选但推荐）：**

**步骤 1：创建 .wslconfig 文件**
1. 打开 **文件资源管理器**
2. 导航到您的用户目录：`C:\Users\<your_username>`
3. 创建一个新的文本文件，并将其命名为 `.wslconfig`（注意没有文件扩展名）

**步骤 2：编辑 .wslconfig 文件**
1. 右键点击 `.wslconfig` 文件
2. 选择 **"用记事本打开"**
3. 在打开的文本编辑器中输入以下内容：

```ini
[wsl2]
memory=3GB
autoMemoryReclaim=gradual
networkingMode=mirrored
dnsTunneling=true
firewall=true
autoProxy=true
```

4. 保存文件 (**Ctrl+S**)
5. 在 PowerShell 中运行以下命令重启 WSL：`wsl --shutdown`
6. 重启 Docker Desktop

> **💡 提示：** 此配置启用自动代理检测，改善 CBbot 在 WSL 环境中的网络兼容性。

**启用 WSL 2（如未安装）：**

1. 以管理员身份打开 PowerShell
2. 运行：`wsl --install`
3. 重启计算机
4. 重新启动 Docker Desktop 并按上述步骤配置 WSL 集成

### 第二步：安装 CBbot

#### macOS 用户：

1. 从 [Releases 页面](https://github.com/mobvoi/CBbot/releases/latest) 下载 CBbot
2. 双击 `CBbot.dmg` 文件
3. 将 **CBbot** 拖到 **Applications** 文件夹
4. 完成！

#### Windows 用户：

1. 从 [Releases 页面](https://github.com/mobvoi/CBbot/releases/latest) 下载 CBbot
2. 运行 `CBbot-Setup.exe` 文件
3. 按照安装向导操作：
   - 选择安装目录（推荐默认）
   - 接受许可协议
   - 完成安装
4. 完成！

### 第三步：启动 CBbot

#### macOS 用户：

1. 打开 **Applications**，点击 **CBbot**
2. 首次启动：如有询问请点击 "Open"
3. 等待服务启动（30-60 秒）

#### Windows 用户：

1. 在开始菜单或桌面快捷方式中找到 **CBbot**
2. 右键选择 **"以管理员身份运行"**（仅首次启动）
3. 等待服务启动（30-60 秒）
4. CBbot 将在默认浏览器中打开

### 第四步：绑定您的密钥

**获取您的密钥：**
1. 访问 [CodeBanana](https://www.codebanana.com)
2. 登录 → 点击头像 → **"CBbot Key"**
3. 复制您的密钥

**绑定密钥：**
1. 在 CBbot 启动界面粘贴您的密钥
2. 点击 **"绑定"**
3. 完成！CBbot 已准备就绪

---

## 📋 使用前准备（旧版说明 - 仅供参考）

### 1️⃣ 安装 Docker Desktop

**Docker Desktop** 是运行本开发环境的必备工具。

#### 下载安装：

如果您还未安装 Docker Desktop，请按照以下步骤操作：

1. **下载 Docker Desktop** 从官方网站：
   - 访问：https://docs.docker.com/desktop/setup/install/mac-install/
   - 根据您的 Mac 选择合适的版本（Apple Silicon 或 Intel）

2. **安装 Docker Desktop**：
   - 打开下载的 `.dmg` 文件
   - 将 Docker 拖拽到 Applications 文件夹
   - 从 Applications 启动 Docker Desktop
   - 按照安装向导完成安装

3. **验证 Docker 运行状态**：
   - 检查菜单栏中是否出现 Docker 图标
   - 图标应显示 "Docker Desktop is running"

---

## ⚡ 一键安装

### 绑定 CBbot Key

在安装前，需要先绑定您的 CBbot Key。

#### 1. 获取 CBbot Key

1. 访问 [CodeBanana](https://www.codebanana.com)
2. 登录您的账号
3. 点击右上角的**用户头像**，在下拉菜单中选择 **"CBbot Key"**
4. 复制您的 Key

![获取 CBbot Key](https://oci-useast-backend-public.dupdub.com/subtitles/image/3c0f8dd9-7f91-484e-a383-6a00185d288f.png)

*如上图所示，在用户下拉菜单中找到 "CBbot Key" 选项*

#### 2. 配置文件

编辑配置文件：

```bash
vim package/config/application.yml
```

添加以下内容：

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

**配置说明：**
- `user-key`: 填入您从 CodeBanana 获取的 CBbot Key
- `ai-bot.fs.subscribe`: 设置为 `false`（如需启用飞书机器人，请参考"高级功能"章节）
- 其他带 `#` 的配置项为可选配置，根据需要启用

### ⚠️ 重要提示（中国大陆用户）

如果您是**中国大陆用户**并需要使用**海外模型**，请确保已开启 VPN，并将 VPN 代理端口号导入环境变量。

#### 配置代理环境变量：

在终端执行以下命令（根据您的 VPN 端口号自行调整）：

```bash
export https_proxy=http://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7890
```

**说明：**
- `7890` 是常见的 VPN 代理端口，请根据您的 VPN 实际端口号修改
- 常见端口号：`7890`、`1080`、`8080` 等
- 设置后，Docker 容器内的服务可以通过代理访问海外 API

#### 验证代理设置：

```bash
echo $https_proxy
# 应显示: http://127.0.0.1:7890
```

### 执行安装

确保 Docker Desktop 正在运行后，在终端执行：

```bash
bash install.sh
```

### 安装过程说明：

脚本会自动完成以下步骤：

1. ✅ 检查 Docker 是否运行
2. 📦 构建 Docker 镜像：
3. 🚀 启动容器并初始化所有服务
4. ⏳ 预计耗时：1-5 分钟（取决于网络速度）

---

## 🎯 服务访问

安装完成后，可以通过以下方式访问各服务：
打开浏览器访问：http://localhost:3100

---

## 🧠 智能技能系统

CBbot 内置了强大的智能技能系统，为您提供多领域的专业能力支持。

### 📚 文档处理技能

#### **docx** - Word 文档处理
- **功能**：创建、编辑和分析 Word 文档
- **特色**：支持修订跟踪、评论管理、格式保留
- **使用场景**：报告生成、文档协作、内容分析
- **示例**："创建一份项目报告" / "分析合同文档内容"

#### **pptx** - 演示文稿处理  
- **功能**：演示文稿的创建、编辑和分析
- **特色**：支持布局设计、幻灯片管理、备注添加
- **使用场景**：商业演示、教学课件、汇报材料
- **示例**："制作产品发布会PPT" / "优化演示文稿设计"

#### **xlsx** - 电子表格处理
- **功能**：电子表格的创建、编辑和数据分析
- **特色**：支持复杂公式、数据可视化、格式化处理
- **使用场景**：数据分析、财务报表、项目管理
- **示例**："生成销售数据图表" / "计算财务指标"

#### **pdf** - PDF 文档操作
- **功能**：PDF 文档的创建、编辑和内容提取
- **特色**：文本提取、表格处理、文档合并分割、表单填写
- **使用场景**：文档归档、信息提取、表单处理
- **示例**："提取PDF中的表格数据" / "合并多个PDF文件"

### 🔧 系统自动化技能

#### **macos-automation** - macOS 系统自动化
- **功能**：macOS 系统的自动化操作和控制
- **特色**：使用 AppleScript 进行系统级操作
- **使用场景**：邮件发送、文件管理、应用控制、系统设置
- **示例**："发送邮件给团队" / "批量整理桌面文件" / "控制音乐播放"

### 🛠️ 开发管理技能

#### **codebanana-skill-guide** - 技能开发管理
- **功能**：技能系统的开发和管理
- **特色**：完整的技能规范，支持技能的增删改查操作
- **使用场景**：自定义技能开发、技能管理、功能扩展
- **示例**："创建新的数据处理技能" / "更新现有技能配置"

### 💡 如何使用技能

在与 CBbot 对话时，只需要描述您的需求，系统会自动识别并调用相应的技能：

```
用户："帮我创建一个项目进度汇报的PPT"
CBbot：自动调用 pptx 技能，生成专业的演示文稿

用户："分析这个Excel文件中的销售数据"
CBbot：自动调用 xlsx 技能，进行数据分析和可视化

用户："发送邮件通知项目延期"
CBbot：自动调用 macos-automation 技能，发送系统邮件
```

### 🚀 技能扩展

CBbot 的技能系统支持扩展，您可以：
- **使用现有技能**：直接调用内置的专业技能
- **定制技能配置**：根据业务需求调整技能参数
- **开发新技能**：使用 codebanana-skill-guide 创建自定义技能

> **提示**：技能系统会根据您的输入自动匹配最合适的处理方式，无需手动指定技能名称。

## ❓ 常见问题

### 1. 提示 "Docker daemon is not running"

**解决方案**：
- 打开 Docker Desktop 应用
- 等待顶部菜单栏的 Docker 图标变为正常状态
- 重新运行 `bash install.sh`

### 2. 端口被占用（如 3306、6379）

**解决方案**：
```bash
# 查看端口占用情况
lsof -i :3306

# 停止占用端口的服务
sudo kill -9 <PID>

# 或修改 docker-compose.yml 中的端口映射
```

## 💻 系统要求

### macOS
- **操作系统**：macOS 10.15 (Catalina) 或更高版本
- **芯片**：Apple Silicon (M1/M2/M3/M4) 或 Intel
- **内存**：建议 6GB 或以上
- **磁盘空间**：至少 10GB 可用空间
- **网络**：AI 功能需要网络连接

### Windows
- **操作系统**：Windows 10 (64位) 或 Windows 11
- **架构**：x64 (Intel/AMD)
- **内存**：建议 8GB 或以上
- **磁盘空间**：至少 10GB 可用空间
- **网络**：AI 功能需要网络连接

---

## 🔧 高级功能

### 配置飞书机器人

#### 1. 创建飞书机器人

1. 访问 [飞书开放平台](https://open.feishu.cn/app?lang=zh-CN) 创建应用
2. 添加应用能力：**机器人**

#### 2. 配置机器人

**获取凭证信息：**

在 **凭证与基础信息** 页面复制 `App ID` 和 `App Secret`

**修改配置文件：**

编辑配置文件：

```bash
vim package/config/application.yml
```

添加以下内容：

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

**配置说明：**
- `user-key`: 必填，填入您的 CBbot Key
- `app-id`: 必填，飞书应用的 App ID
- `app-secret`: 必填，飞书应用的 App Secret
- `subscribe`: 必填，设置为 `true` 启用飞书机器人
- `chat-id`: 可选，指定聊天群组 ID
- `sender-id`: 可选，发送者 ID
- `agent-id`: 可选，智能体 ID

**获取可选配置项（chat-id, sender-id, agent-id）：**

如需配置这些可选项，可通过以下方式获取：

1. **获取 chat-id**：
   - 在浏览器中访问 http://localhost:3100
   - 在项目页面中查看 `chatId` 参数值

   ![获取 chat-id](https://oci-useast-backend-public.dupdub.com/subtitles/image/f650fc41-b3e2-401f-bcfd-d8cf48b0663a.png)

   *如上图所示，chatId 显示在浏览器地址栏的 URL 参数中*

2. **获取 sender-id 和 agent-id**：
   - 在 CodeBanana 平台中，点击用户菜单中的 **"CBbot Key"**
   - 在弹出的配置窗口中可以看到 `Sender-ID` 和 `Agent-ID`
   - 点击对应的**复制按钮**即可复制

   ![获取 sender-id 和 agent-id](https://oci-useast-backend-public.dupdub.com/subtitles/image/508465ae-8838-4b53-ba56-ff27e7d9af3b.png)

   *如上图所示，在 CBbot Key 配置窗口中可以找到 Sender-ID 和 Agent-ID*

**重启服务：**

```bash
docker compose restart
```

#### 3. 设置权限

1. **事件与回调**：订阅方式配置成 **长连接**
2. **订阅消息**：订阅需要的消息类型
3. **权限管理**：添加 **发送消息** 的权限
4. **创建版本**：发布应用版本

### 配置 Telegram 机器人

#### 1. 创建 Telegram 机器人

1. 在 Telegram 中搜索 [@BotFather](https://t.me/botfather)
2. 发送 `/newbot` 命令创建新机器人
3. 按提示设置机器人名称和用户名
4. 创建成功后，BotFather 会返回您的机器人 Token

#### 2. 配置机器人

**获取凭证信息：**

- **Token**: 从 BotFather 获取的机器人访问令牌
- **Username**: 您设置的机器人用户名（例如：`amy_cmww_bot`）

**修改配置文件：**

编辑配置文件：

```bash
vim package/config/application.yml
```

添加以下内容：

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

**配置说明：**
- `user-key`: 必填，填入您的 CBbot Key
- `username`: 必填，Telegram 机器人的用户名（例如：`amy_cmww_bot`）
- `token`: 必填，从 BotFather 获取的机器人 Token
- `subscribe`: 必填，设置为 `true` 启用 Telegram 机器人
- `chat-id`: 可选，指定聊天会话 ID
- `sender-id`: 可选，发送者 ID
- `agent-id`: 可选，智能体 ID

**获取可选配置项（chat-id, sender-id, agent-id）：**

如需配置这些可选项，可通过以下方式获取：

1. **获取 chat-id**：
   - 在浏览器中访问 http://localhost:3100
   - 在项目页面中查看 `chatId` 参数值

2. **获取 sender-id 和 agent-id**：
   - 在 CodeBanana 平台中，点击用户菜单中的 **"CBbot Key"**
   - 在弹出的配置窗口中可以看到 `Sender-ID` 和 `Agent-ID`
   - 点击对应的**复制按钮**即可复制

**重启服务：**

```bash
docker compose restart
```

### 配置 Discord 机器人

#### 1. 创建 Discord 机器人

1. 访问 [Discord Developer Portal](https://discord.com/developers/applications)
2. 点击 **"New Application"** 创建新应用
3. 在左侧菜单选择 **"Bot"**，点击 **"Add Bot"**
4. 在 **"TOKEN"** 部分点击 **"Reset Token"** 或 **"Copy"** 获取机器人 Token
5. 开启必要的权限：**MESSAGE CONTENT INTENT**
6. 在 **"OAuth2 > URL Generator"** 中生成邀请链接，将机器人添加到您的服务器

#### 2. 配置机器人

**获取凭证信息：**

- **Token**: 从 Discord Developer Portal 获取的机器人访问令牌

**修改配置文件：**

编辑配置文件：

```bash
vim package/config/application.yml
```

添加以下内容：

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

**配置说明：**
- `user-key`: 必填，填入您的 CBbot Key
- `token`: 必填，从 Discord Developer Portal 获取的机器人 Token
- `subscribe`: 必填，设置为 `true` 启用 Discord 机器人
- `chat-id`: 可选，指定聊天频道 ID
- `sender-id`: 可选，发送者 ID
- `agent-id`: 可选，智能体 ID

**获取可选配置项（chat-id, sender-id, agent-id）：**

如需配置这些可选项，可通过以下方式获取：

1. **获取 chat-id**：
   - 在浏览器中访问 http://localhost:3100
   - 在项目页面中查看 `chatId` 参数值

2. **获取 sender-id 和 agent-id**：
   - 在 CodeBanana 平台中，点击用户菜单中的 **"CBbot Key"**
   - 在弹出的配置窗口中可以看到 `Sender-ID` 和 `Agent-ID`
   - 点击对应的**复制按钮**即可复制

**重启服务：**

```bash
docker compose restart
```

---

## 💰 如何计费

CBbot 需要绑定 **CodeBanana** 账号才能使用，费用从您的 CodeBanana 账号中扣除。

### 账号绑定

1. 访问 [CodeBanana 官网](https://www.codebanana.com) 注册并登录
2. 获取您的 **userKey**（在账号设置中）
3. 在 CBbot 中绑定 userKey

### 计费说明

- **计费方式**：按实际使用量计费
- **扣费来源**：从 userKey 对应用户的账号中扣除
- **扣费项目**：
  - **请求额度**：每次 API 调用消耗相应的请求次数
  - **金额额度**：根据使用的模型和资源消耗对应金额

### 查看账单

登录 [CodeBanana](https://www.codebanana.com) 账号，可实时查看：
- 剩余请求额度
- 剩余金额额度
- 详细使用记录

---

**祝开发愉快！** 🎉