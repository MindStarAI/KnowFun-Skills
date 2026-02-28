# 安装指南 - 多平台

[English](INSTALLATION.md) | 简体中文

本指南涵盖 Claude Code、Cursor 和 Cline 的安装。

---

## 🎯 平台兼容性

| 平台 | 状态 | 安装方式 |
|------|------|----------|
| **Claude Code** | ✅ 完全支持 | 原生技能系统 |
| **Cursor** | ✅ 支持 | 规则 + CLI 工具 |
| **Cline** | ✅ 支持 | 扩展 + CLI 工具 |

---

## 📦 Claude Code 安装

### 方法 1：个人安装（所有项目）

```bash
# 复制到个人技能目录
mkdir -p ~/.claude/skills/knowfun
cp -r $(pwd)/* ~/.claude/skills/knowfun/
```

### 方法 2：项目专用（单个项目）

```bash
# 复制到项目目录
mkdir -p .claude/skills/knowfun
cp -r /path/to/knowfun-skills/* .claude/skills/knowfun/
```

### 验证安装

```bash
# 在 Claude Code 中运行：
/knowfun credits
```

预期结果：显示你的积分余额

### 在 Claude Code 中使用

```bash
# 创建内容
/knowfun create course "Python 编程入门"

# 查看状态
/knowfun status <taskId>

# 列出任务
/knowfun list
```

---

## 📦 Cursor 安装

Cursor 没有像 Claude Code 那样的原生技能系统，但你可以使用 **CLI 工具**和**规则文件**。

### 步骤 1：安装 CLI 工具

```bash
# 使 CLI 工具全局可访问
sudo ln -s $(pwd)/scripts/knowfun-cli.sh /usr/local/bin/knowfun

# 或添加到 PATH
echo 'export PATH="$(pwd)/scripts:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

### 步骤 2：配置环境

```bash
# 设置 API key
export KNOWFUN_API_KEY="kf_your_api_key_here"

# 或添加到 ~/.zshrc 以持久化
echo 'export KNOWFUN_API_KEY="kf_your_api_key_here"' >> ~/.zshrc
```

### 步骤 3：添加 Cursor 规则（可选）

在项目根目录创建 `.cursorrules`：

```bash
cp $(pwd)/integrations/cursor/.cursorrules .
```

### 验证安装

```bash
# 测试 CLI
knowfun credits
```

### 在 Cursor 中使用

**方法 1：在终端中使用 CLI**
```bash
knowfun create course "你的主题"
knowfun status <taskId>
```

**方法 2：让 Cursor 使用 CLI**
```
嗨，使用 knowfun CLI 创建一个关于"Python 基础"的课程
```

Cursor 会执行：`knowfun create course "Python 基础"`

---

## 📦 Cline 安装

### 步骤 1：安装 CLI 工具

```bash
# 使 CLI 可访问
sudo ln -s $(pwd)/scripts/knowfun-cli.sh /usr/local/bin/knowfun
```

### 步骤 2：配置 API Key

```bash
export KNOWFUN_API_KEY="kf_your_api_key_here"
```

### 步骤 3：添加 Cline 配置

在项目中创建 `.cline/knowfun.json`：

```bash
mkdir -p .cline
cp $(pwd)/integrations/cline/knowfun.json .cline/
```

### 验证安装

```bash
knowfun credits
```

### 在 Cline 中使用

让 Cline 使用 CLI：
```
创建一个关于"机器学习基础"的 Knowfun 课程
```

Cline 会执行 knowfun CLI 命令。

---

## 🔧 通用设置（所有平台）

### 1. 获取你的 API Key

1. 访问 https://www.knowfun.io/api-platform
2. 点击"创建 API Key"
3. 命名（例如："开发密钥"）
4. 复制密钥（以 `kf_` 开头）

### 2. 设置环境变量

**所有平台通用：**
```bash
export KNOWFUN_API_KEY="kf_your_api_key_here"
```

**永久设置（添加到 shell 配置）：**

对于 zsh（macOS 默认）：
```bash
echo 'export KNOWFUN_API_KEY="kf_your_api_key_here"' >> ~/.zshrc
source ~/.zshrc
```

对于 bash：
```bash
echo 'export KNOWFUN_API_KEY="kf_your_api_key_here"' >> ~/.bashrc
source ~/.bashrc
```

### 3. 测试安装

```bash
# 测试 API 连接
cd /Users/jamson/code/knowfun-skills
./scripts/test-api.sh
```

预期输出：
```
✓ API Key 找到
✓ Schema 端点正常
✓ 积分余额端点正常
✓ 价格信息端点正常
✓ 任务列表端点正常
```

---

## 📊 功能对比

| 功能 | Claude Code | Cursor | Cline |
|------|-------------|--------|-------|
| **斜杠命令** | ✅ `/knowfun` | ❌ | ❌ |
| **自动调用** | ✅ | ❌ | ❌ |
| **CLI 工具** | ✅ | ✅ | ✅ |
| **自然语言** | ✅ | ✅ | ✅ |
| **直接 API 调用** | ✅ | ✅ | ✅ |

---

## 🎯 推荐平台

**最佳体验**：使用 **Claude Code**
- 原生 `/knowfun` 命令
- 自动技能调用
- 与 Claude 功能更好集成

**Cursor/Cline 用户**：
- CLI 工具运行良好
- 可以使用自然语言调用 CLI
- 功能相同，只是界面不同

---

## 🚀 各平台快速开始

### Claude Code 用户

```bash
# 安装
mkdir -p ~/.claude/skills/knowfun
cp -r * ~/.claude/skills/knowfun/

# 使用
/knowfun create course "Python 基础"
```

### Cursor 用户

```bash
# 安装 CLI
sudo ln -s $(pwd)/scripts/knowfun-cli.sh /usr/local/bin/knowfun

# 在终端使用
knowfun create course "Python 基础"

# 或询问 Cursor
"使用 knowfun CLI 创建一个关于 Python 的课程"
```

### Cline 用户

```bash
# 安装 CLI
sudo ln -s $(pwd)/scripts/knowfun-cli.sh /usr/local/bin/knowfun

# 询问 Cline
"创建一个关于 Python 基础的 Knowfun 课程"
```

---

## 🆘 故障排除

### 问题：找不到命令

**解决方案：**
```bash
# 检查 CLI 是否可访问
which knowfun

# 如果未找到，添加到 PATH
export PATH="$(pwd)/scripts:$PATH"
```

### 问题：未找到 API Key

**解决方案：**
```bash
# 检查是否设置
echo $KNOWFUN_API_KEY

# 设置它
export KNOWFUN_API_KEY="kf_your_key"
```

### 问题：权限被拒绝

**解决方案：**
```bash
# 使脚本可执行
chmod +x $(pwd)/scripts/*.sh
```

---

## 📚 下一步

安装后：

1. **阅读文档**：
   - English: [README.md](README.md)
   - 中文: [README_CN.md](README_CN.md)

2. **快速开始**：
   - English: [QUICKSTART.md](QUICKSTART.md)
   - 中文: [QUICKSTART_CN.md](QUICKSTART_CN.md)

3. **API 参考**：
   - English: [api-reference.md](api-reference.md)
   - 中文: [api-reference_CN.md](api-reference_CN.md)

4. **示例**：
   - English: [examples.md](examples.md)
   - 中文: [examples_CN.md](examples_CN.md)

---

## 💡 提示

- **Claude Code 用户**：使用 `/knowfun` 获得最佳体验
- **Cursor/Cline 用户**：CLI 工具提供完整功能
- **所有平台**：查看 [examples_CN.md](examples_CN.md) 了解使用模式

---

用 ❤️ 为多平台 AI 工具制作
