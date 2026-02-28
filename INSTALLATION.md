# Installation Guide - Multi-Platform

English | [简体中文](INSTALLATION_CN.md)

This guide covers installation for Claude Code, Cursor, and Cline.

---

## 🎯 Platform Compatibility

| Platform | Status | Installation Method |
|----------|--------|---------------------|
| **Claude Code** | ✅ Fully Supported | Native skill system |
| **Cursor** | ✅ Supported | Rules + CLI tool |
| **Cline** | ✅ Supported | Extension + CLI tool |

---

## 📦 Claude Code Installation

### Method 1: Personal Installation (All Projects)

```bash
# Copy to personal skills directory
mkdir -p ~/.claude/skills/knowfun
cp -r /Users/jamson/code/knowfun-skills/* ~/.claude/skills/knowfun/
```

### Method 2: Project-Specific (Single Project)

```bash
# Copy to project directory
mkdir -p .claude/skills/knowfun
cp -r /path/to/knowfun-skills/* .claude/skills/knowfun/
```

### Verification

```bash
# In Claude Code, run:
/knowfun credits
```

Expected: Shows your credit balance

### Usage in Claude Code

```bash
# Create content
/knowfun create course "Introduction to Python"

# Check status
/knowfun status <taskId>

# List tasks
/knowfun list
```

---

## 📦 Cursor Installation

Cursor doesn't have a native skill system like Claude Code, but you can use the **CLI tool** and **rules file**.

### Step 1: Install CLI Tool

```bash
# Make the CLI tool accessible globally
sudo ln -s /Users/jamson/code/knowfun-skills/scripts/knowfun-cli.sh /usr/local/bin/knowfun

# Or add to PATH
echo 'export PATH="/Users/jamson/code/knowfun-skills/scripts:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

### Step 2: Configure Environment

```bash
# Set API key
export KNOWFUN_API_KEY="kf_your_api_key_here"

# Or add to ~/.zshrc for persistence
echo 'export KNOWFUN_API_KEY="kf_your_api_key_here"' >> ~/.zshrc
```

### Step 3: Add Cursor Rules (Optional)

Create `.cursorrules` in your project root:

```bash
cp /Users/jamson/code/knowfun-skills/integrations/cursor/.cursorrules .
```

### Verification

```bash
# Test the CLI
knowfun credits
```

### Usage in Cursor

**Method 1: Use CLI in Terminal**
```bash
knowfun create course "Your topic"
knowfun status <taskId>
```

**Method 2: Ask Cursor to Use CLI**
```
Hey, use the knowfun CLI to create a course about "Python basics"
```

Cursor will execute: `knowfun create course "Python basics"`

---

## 📦 Cline Installation

### Step 1: Install CLI Tool

```bash
# Make CLI accessible
sudo ln -s /Users/jamson/code/knowfun-skills/scripts/knowfun-cli.sh /usr/local/bin/knowfun
```

### Step 2: Configure API Key

```bash
export KNOWFUN_API_KEY="kf_your_api_key_here"
```

### Step 3: Add Cline Configuration

Create `.cline/knowfun.json` in your project:

```bash
mkdir -p .cline
cp /Users/jamson/code/knowfun-skills/integrations/cline/knowfun.json .cline/
```

### Verification

```bash
knowfun credits
```

### Usage in Cline

Ask Cline to use the CLI:
```
Create a Knowfun course about "Machine Learning basics"
```

Cline will execute the knowfun CLI commands.

---

## 🔧 Common Setup (All Platforms)

### 1. Get Your API Key

1. Visit https://www.knowfun.io/api-platform
2. Click "Create API Key"
3. Name it (e.g., "Development Key")
4. Copy the key (starts with `kf_`)

### 2. Set Environment Variable

**For all platforms:**
```bash
export KNOWFUN_API_KEY="kf_your_api_key_here"
```

**Permanent setup (add to shell config):**

For zsh (macOS default):
```bash
echo 'export KNOWFUN_API_KEY="kf_your_api_key_here"' >> ~/.zshrc
source ~/.zshrc
```

For bash:
```bash
echo 'export KNOWFUN_API_KEY="kf_your_api_key_here"' >> ~/.bashrc
source ~/.bashrc
```

### 3. Test Installation

```bash
# Test API connectivity
cd /Users/jamson/code/knowfun-skills
./scripts/test-api.sh
```

Expected output:
```
✓ API Key found
✓ Schema endpoint working
✓ Credit balance endpoint working
✓ Pricing endpoint working
✓ Task list endpoint working
```

---

## 📊 Feature Comparison

| Feature | Claude Code | Cursor | Cline |
|---------|-------------|--------|-------|
| **Slash Commands** | ✅ `/knowfun` | ❌ | ❌ |
| **Auto-invocation** | ✅ | ❌ | ❌ |
| **CLI Tool** | ✅ | ✅ | ✅ |
| **Natural Language** | ✅ | ✅ | ✅ |
| **Direct API Calls** | ✅ | ✅ | ✅ |

---

## 🎯 Recommended Platform

**For best experience**: Use **Claude Code**
- Native `/knowfun` commands
- Automatic skill invocation
- Better integration with Claude's capabilities

**For Cursor/Cline users**:
- CLI tool works great
- Can use natural language to invoke CLI
- Same functionality, just different interface

---

## 🚀 Quick Start by Platform

### Claude Code Users

```bash
# Install
mkdir -p ~/.claude/skills/knowfun
cp -r * ~/.claude/skills/knowfun/

# Use
/knowfun create course "Python basics"
```

### Cursor Users

```bash
# Install CLI
sudo ln -s $(pwd)/scripts/knowfun-cli.sh /usr/local/bin/knowfun

# Use in terminal
knowfun create course "Python basics"

# Or ask Cursor
"Use knowfun CLI to create a course about Python"
```

### Cline Users

```bash
# Install CLI
sudo ln -s $(pwd)/scripts/knowfun-cli.sh /usr/local/bin/knowfun

# Ask Cline
"Create a Knowfun course about Python basics"
```

---

## 🆘 Troubleshooting

### Issue: Command not found

**Solution:**
```bash
# Check if CLI is accessible
which knowfun

# If not found, add to PATH
export PATH="/Users/jamson/code/knowfun-skills/scripts:$PATH"
```

### Issue: API Key not found

**Solution:**
```bash
# Check if set
echo $KNOWFUN_API_KEY

# Set it
export KNOWFUN_API_KEY="kf_your_key"
```

### Issue: Permission denied

**Solution:**
```bash
# Make scripts executable
chmod +x /Users/jamson/code/knowfun-skills/scripts/*.sh
```

---

## 📚 Next Steps

After installation:

1. **Read documentation**:
   - English: [README.md](README.md)
   - 中文: [README_CN.md](README_CN.md)

2. **Quick start**:
   - English: [QUICKSTART.md](QUICKSTART.md)
   - 中文: [QUICKSTART_CN.md](QUICKSTART_CN.md)

3. **API Reference**:
   - English: [api-reference.md](api-reference.md)
   - 中文: [api-reference_CN.md](api-reference_CN.md)

4. **Examples**:
   - English: [examples.md](examples.md)
   - 中文: [examples_CN.md](examples_CN.md)

---

## 💡 Tips

- **Claude Code users**: Use `/knowfun` for best experience
- **Cursor/Cline users**: The CLI tool provides full functionality
- **All platforms**: Check [examples.md](examples.md) for usage patterns

---

Made with ❤️ for multi-platform AI tools
