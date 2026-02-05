# 🚀 一键安装开发环境（macOS 专用）

> 为 macOS 用户提供的一键式开发环境部署方案，包含 Java、MySQL、Redis、RabbitMQ、Node.js 全栈开发所需的所有服务。

---

## 📋 使用前准备

### 1️⃣ 安装 Docker Desktop

**Docker Desktop** 是运行本开发环境的必备工具。

#### 下载安装：

1. 访问 Docker 官网：[https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)
2. 点击 **Download for Mac**
3. 根据你的 Mac 芯片选择：
   - **Apple Silicon (M1/M2/M3)** → 选择 ARM64 版本
   - **Intel 芯片** → 选择 AMD64 版本
4. 下载完成后，双击 `.dmg` 文件安装
5. 将 Docker 图标拖入 **Applications** 文件夹

#### 启动 Docker：

1. 打开 **Launchpad**，找到 **Docker** 图标
2. 点击启动（首次启动需要输入密码授权）
3. 等待顶部菜单栏出现 Docker 图标（鲸鱼图标）
4. 点击鲸鱼图标，确保显示 **Docker Desktop is running** ✅

#### 验证安装：

打开 **终端（Terminal）**，输入以下命令：

```bash
docker --version
```

如果显示版本号（如 `Docker version 24.0.0`），说明安装成功！

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

## 📝 系统要求

- **操作系统**：macOS 10.15 (Catalina) 或更高版本
- **芯片**：Intel 或 Apple Silicon (M1/M2/M3)
- **内存**：建议 6GB 以上
- **磁盘空间**：至少 10GB 可用空间
- **Docker Desktop**：版本 4.0 或更高

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