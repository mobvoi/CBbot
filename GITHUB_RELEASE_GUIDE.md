# 📦 GitHub Release 创建指南

本指南帮助您快速创建 CBBot 的 GitHub Release。

## 🚀 快速发布流程

### 1. 准备发布包

```bash
# 确保在项目根目录
cd CBbot

# 运行发布脚本（会创建 tar.gz 包）
bash scripts/create-release.sh 1.0.0
```

### 2. 创建 GitHub Release

1. **访问 Release 页面**：https://github.com/mobvoi/CBbot/releases/new

2. **填写 Release 信息**：
   - **Tag version**: `v1.0.0`
   - **Release title**: `CBBot v1.0.0 - One-Click Development Environment`
   - **Target**: `main` branch

3. **上传发布包**：
   - 拖拽 `CBbot-v1.0.0.tar.gz` 到 "Attach binaries" 区域

4. **添加发布说明**：
   - 复制 `.github/RELEASE_TEMPLATE.md` 的内容
   - 粘贴到 "Describe this release" 文本框
   - 更新下载链接指向实际的 release assets

5. **发布**：
   - 选择 "Set as the latest release"
   - 点击 "Publish release"

## 📋 发布说明模板使用

### 模板位置
- 完整模板：`.github/RELEASE_TEMPLATE.md`
- 发布说明：`RELEASE.md`

### 需要更新的内容

在使用模板时，请更新以下内容：

1. **下载链接**：
   ```markdown
   # 更新前
   **📥 [CBbot-v1.0.0.tar.gz](CBbot-v1.0.0.tar.gz)**
   
   # 更新后（实际 GitHub release 链接）
   **📥 [CBbot-v1.0.0.tar.gz](https://github.com/mobvoi/CBbot/releases/download/v1.0.0/CBbot-v1.0.0.tar.gz)**
   ```

2. **版本号**：确保所有版本号都正确

3. **发布日期**：更新为实际发布日期

## 🎯 发布检查清单

### 发布前检查
- [ ] 代码已合并到 main 分支
- [ ] 所有测试通过
- [ ] 文档已更新
- [ ] 版本号正确
- [ ] CHANGELOG 已更新

### 发布包检查
- [ ] 运行 `scripts/create-release.sh`
- [ ] 验证生成的 tar.gz 包
- [ ] 检查包大小合理
- [ ] 测试解压和安装流程

### GitHub Release 检查
- [ ] Tag 名称格式正确 (`v1.0.0`)
- [ ] Release 标题清晰
- [ ] 发布说明完整
- [ ] 下载链接有效
- [ ] 标记为 "latest release"

### 发布后验证
- [ ] 下载链接可用
- [ ] 文档链接正确
- [ ] 安装流程测试通过
- [ ] 通知相关用户/团队

## 🛠️ 常用命令

### 创建发布包
```bash
# 创建 v1.0.0 版本
bash scripts/create-release.sh 1.0.0

# 查看包内容
tar -tzf CBbot-v1.0.0.tar.gz | head -20

# 测试解压
tar -xzf CBbot-v1.0.0.tar.gz
cd CBbot
bash install.sh
```

### Git 标签管理
```bash
# 创建标签
git tag v1.0.0
git push origin v1.0.0

# 删除标签（如需要）
git tag -d v1.0.0
git push origin :refs/tags/v1.0.0
```

## 📝 发布说明模板示例

```markdown
# 🚀 CBBot v1.0.0 - One-Click Development Environment

> 完整的 macOS 开发环境一键部署解决方案

## 📥 下载

**[⬇️ CBbot-v1.0.0.tar.gz](https://github.com/mobvoi/CBbot/releases/download/v1.0.0/CBbot-v1.0.0.tar.gz)**

## ✨ 主要特性

- 🐳 完整的 Docker 化环境
- ⚡ 一键安装脚本
- 🤖 多平台机器人集成
- 📱 macOS 优化支持

## 🚀 快速开始

1. 下载并解压包
2. 配置 CBbot Key
3. 运行 `bash install.sh`
4. 访问 http://localhost:3100

详细说明请查看 [完整文档](https://github.com/mobvoi/CBbot/blob/main/README.md)。
```

## 🔄 版本管理建议

### 版本号规范
- **主版本** (1.0.0): 重大功能更新或不兼容变更
- **次版本** (1.1.0): 新功能添加，保持向后兼容
- **补丁版本** (1.0.1): Bug 修复和小幅改进

### 发布频率
- **主版本**: 每 3-6 个月
- **次版本**: 每 4-8 周
- **补丁版本**: 根据需要随时发布

---

💡 **提示**: 首次发布前，建议先创建一个 "pre-release" 进行测试，确认无误后再标记为正式版本。