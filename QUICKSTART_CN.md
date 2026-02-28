# 🚀 快速入门指南

[English](QUICKSTART.md) | 简体中文

5 分钟内开始使用 Knowfun.io Claude Code 技能！

## 第 1 步：安装（30 秒）

此技能已安装在你的项目中：`/Users/jamson/code/knowfun-skills/`。

要使其在所有项目中全局可用：

```bash
# 复制到个人技能目录
mkdir -p ~/.claude/skills/knowfun
cp -r /Users/jamson/code/knowfun-skills/* ~/.claude/skills/knowfun/
```

## 第 2 步：获取你的 API Key（2 分钟）

1. 访问 https://www.knowfun.io/api-platform
2. 点击 "创建 API Key"
3. 给它命名，如 "我的开发密钥"
4. 复制 API key（以 `kf_` 开头）

## 第 3 步：配置（30 秒）

```bash
# 设置你的 API key
export KNOWFUN_API_KEY="kf_your_api_key_here"

# 或添加到你的 shell 配置文件以持久化
echo 'export KNOWFUN_API_KEY="kf_your_api_key_here"' >> ~/.zshrc
source ~/.zshrc
```

## 第 4 步：测试（1 分钟）

运行测试脚本以验证一切正常：

```bash
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

## 第 5 步：创建你的第一个内容（2 分钟）

### 在 Claude Code 中：

只需要求 Claude 使用技能创建内容：

```
嗨，你能创建一个关于"Python 编程入门"的 Knowfun 课程吗？
```

或直接调用技能：

```
/knowfun create course "Python 编程入门：学习变量、循环和函数"
```

### 使用 CLI 工具：

```bash
./scripts/knowfun-cli.sh create course "Python 编程入门"
```

## 你刚刚创建了什么

在 2-3 分钟内，你将拥有：
- ✅ 带幻灯片的互动课程
- ✅ 专业旁白
- ✅ 视觉材料
- ✅ 可分享的 URL

检查状态：
```bash
./scripts/knowfun-cli.sh status <taskId>
```

获取结果：
```bash
./scripts/knowfun-cli.sh detail <taskId>
```

## 下一步

### 创建不同类型的内容

**海报：**
```
/knowfun create poster "气候变化：关键事实和统计数据"
```

**游戏：**
```
/knowfun create game "学习 JavaScript：变量和函数"
```

**视频：**
```
/knowfun create film "互联网的历史"
```

### 查看你的积分

```bash
./scripts/knowfun-cli.sh credits
```

### 探索配置选项

```bash
./scripts/knowfun-cli.sh schema
```

## 常见任务

### 监控任务

```bash
# 创建任务并保存 ID
TASK_ID=$(./scripts/knowfun-cli.sh create course "你的主题" | grep "taskId" | cut -d'"' -f4)

# 每 10 秒检查一次状态
watch -n 10 ./scripts/knowfun-cli.sh status $TASK_ID
```

### 批量创建多个课程

```bash
for topic in "Python 基础" "JavaScript 入门" "CSS 基础"; do
    echo "创建中：$topic"
    ./scripts/knowfun-cli.sh create course "学习 $topic"
    sleep 2
done
```

### 查看最近的任务

```bash
./scripts/knowfun-cli.sh list 10
```

## 文档

- **[README_CN.md](README_CN.md)**: 完整概述
- **[SKILL.md](SKILL.md)**: Claude 的技能说明
- **[api-reference_CN.md](api-reference_CN.md)**: 完整 API 文档
- **[examples_CN.md](examples_CN.md)**: 20+ 使用示例

## 故障排除

### 问题："未找到 API Key"
**解决方案：**
```bash
# 检查是否设置
echo $KNOWFUN_API_KEY

# 设置它
export KNOWFUN_API_KEY="kf_your_key"
```

### 问题："积分不足"
**解决方案：** 访问 https://www.knowfun.io/credits 充值

### 问题：任务卡在 "processing"
**解决方案：** 等待 5-10 分钟。任务通常完成时间：
- 海报：1-3 分钟
- 课程：2-5 分钟
- 游戏：3-7 分钟
- 视频：5-10 分钟

### 问题："超出速率限制"
**解决方案：** 等待 60 秒后重试

## 成功的提示

1. **使用描述性文本**：提供的上下文越多，结果越好
2. **先检查积分**：批量操作前运行 `./scripts/knowfun-cli.sh credits`
3. **保存任务 ID**：记录你的任务以供将来参考
4. **使用回调**：对于生产环境，设置 webhook 端点以接收完成通知
5. **从简单开始**：从基本文本开始，然后探索高级配置

## 获取帮助

- 📚 **文档**：查看此目录中的文档
- 🌐 **网站门户**：https://www.knowfun.io
- 🔑 **API 平台**：https://www.knowfun.io/api-platform
- 💡 **示例**：查看 [examples_CN.md](examples_CN.md)

## 你准备好了！🎉

你现在拥有创建以下内容所需的一切：
- ✅ 课程、海报、游戏和视频
- ✅ 监控和管理任务
- ✅ 跟踪积分使用
- ✅ 与你的工作流程集成

开始创建精彩的教育内容！🚀

---

**需要更多帮助？** 查看完整的 [README_CN.md](README_CN.md) 或 [examples_CN.md](examples_CN.md)。
