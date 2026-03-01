# Knowfun Skills v1.0.0 - Initial Release 🚀

Multi-platform AI coding assistant integration for Knowfun.io API. Generate educational content, posters, games, and films using Claude Code, Cursor, Cline, or OpenClaw.

## 🎯 Platform Support

- **Claude Code** - Native `/knowfun` skill commands
- **Cursor** - CLI tool + rules integration
- **Cline** - CLI tool + JSON config
- **OpenClaw** - CLI tool + skill definition

## ✨ Features

### Task Types
- 📚 **Courses**: Interactive presentations with narration
- 🎨 **Posters**: Visual infographics and marketing materials
- 🎮 **Games**: Interactive learning experiences (11+ game types)
- 🎬 **Films**: Educational videos and documentaries (9+ film styles)

### API Operations
- ✅ Create and manage content generation tasks
- ✅ Monitor task status and progress
- ✅ Retrieve generated content with URLs
- ✅ Check credit balance and pricing
- ✅ View usage statistics
- ✅ Get configuration schemas

### Developer Tools
- 🛠️ Standalone CLI tool (`knowfun-cli.sh`)
- 📖 Comprehensive documentation
- 🌍 Multi-language support (English + 简体中文)
- 💡 20+ usage examples
- 🔧 Environment variable configuration

## 📦 Installation

### Quick Start

```bash
# For Claude Code
cd ~/.claude/skills/
git clone https://github.com/MindStarAI/KnowFun-Skills.git knowfun
export KNOWFUN_API_KEY="kf_your_api_key_here"
```

### Platform-Specific Guides
- [Claude Code Installation](https://github.com/MindStarAI/KnowFun-Skills/blob/master/INSTALLATION.md#claude-code-installation)
- [Cursor Installation](https://github.com/MindStarAI/KnowFun-Skills/blob/master/INSTALLATION.md#cursor-installation)
- [Cline Installation](https://github.com/MindStarAI/KnowFun-Skills/blob/master/INSTALLATION.md#cline-installation)
- [OpenClaw Installation](https://github.com/MindStarAI/KnowFun-Skills/tree/master/integrations/openclaw)

## 🚀 Usage Examples

### Claude Code
```bash
/knowfun create course "Introduction to Python"
/knowfun create poster "Climate Change Facts"
/knowfun status <taskId>
/knowfun credits
```

### Other Platforms (CLI)
```bash
knowfun create course "Introduction to Python"
knowfun create poster "Climate Change Facts"
knowfun status <taskId>
knowfun credits
```

## 📚 Documentation

- [README](https://github.com/MindStarAI/KnowFun-Skills/blob/master/README.md) - Quick start guide
- [API Reference](https://github.com/MindStarAI/KnowFun-Skills/blob/master/api-reference.md) - Complete API documentation
- [Examples](https://github.com/MindStarAI/KnowFun-Skills/blob/master/examples.md) - 20+ usage examples
- [Quickstart Guide](https://github.com/MindStarAI/KnowFun-Skills/blob/master/QUICKSTART.md) - 5-minute setup
- [Platform Comparison](https://github.com/MindStarAI/KnowFun-Skills/blob/master/PLATFORM_COMPARISON.md) - Feature comparison

## 🔑 Getting an API Key

1. Visit https://www.knowfun.io/api-platform
2. Click "Create API Key"
3. Copy your API key (starts with `kf_`)

## 💰 Pricing

Each task type costs 100 credits:
- Course: 100 credits
- Poster: 100 credits
- Game: 100 credits
- Film: 100 credits

## 🤝 Contributing

Contributions are welcome! Please read our [Contributing Guide](https://github.com/MindStarAI/KnowFun-Skills/blob/master/CONTRIBUTING.md) and [Code of Conduct](https://github.com/MindStarAI/KnowFun-Skills/blob/master/CODE_OF_CONDUCT.md).

## 📄 License

MIT License - See [LICENSE](https://github.com/MindStarAI/KnowFun-Skills/blob/master/LICENSE) for details.

## 🔗 Links

- **Website**: https://knowfun.io
- **API Platform**: https://knowfun.io/api-platform
- **GitHub**: https://github.com/MindStarAI/KnowFun-Skills
- **Documentation**: https://github.com/MindStarAI/KnowFun-Skills/tree/master#documentation

---

**Full Changelog**: https://github.com/MindStarAI/KnowFun-Skills/blob/master/CHANGELOG.md
