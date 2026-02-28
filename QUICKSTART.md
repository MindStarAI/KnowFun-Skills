# 🚀 Quickstart Guide

English | [简体中文](QUICKSTART_CN.md)

Get started with the Knowfun.io Claude Code Skill in 5 minutes!

## Step 1: Install (30 seconds)

This skill is already installed in your project at `/Users/jamson/code/knowfun-skills/`.

To make it available globally in all your projects:

```bash
# Copy to personal skills directory
mkdir -p ~/.claude/skills/knowfun
cp -r /Users/jamson/code/knowfun-skills/* ~/.claude/skills/knowfun/
```

## Step 2: Get Your API Key (2 minutes)

1. Visit https://knowfun.io/api-platform
2. Click "Create API Key"
3. Give it a name like "My Development Key"
4. Copy the API key (starts with `kf_`)

## Step 3: Configure (30 seconds)

```bash
# Set your API key
export KNOWFUN_API_KEY="kf_your_api_key_here"

# Or add to your shell profile for persistence
echo 'export KNOWFUN_API_KEY="kf_your_api_key_here"' >> ~/.zshrc
source ~/.zshrc
```

## Step 4: Test (1 minute)

Run the test script to verify everything works:

```bash
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

## Step 5: Create Your First Content (2 minutes)

### In Claude Code:

Simply ask Claude to create content using the skill:

```
Hey, can you create a Knowfun course about "Introduction to Python"?
```

Or invoke the skill directly:

```
/knowfun create course "Introduction to Python: Learn variables, loops, and functions"
```

### Using the CLI Tool:

```bash
./scripts/knowfun-cli.sh create course "Introduction to Python"
```

## What You Just Created

Within 2-3 minutes, you'll have:
- ✅ An interactive course with slides
- ✅ Professional narration
- ✅ Visual materials
- ✅ A shareable URL

Check the status:
```bash
./scripts/knowfun-cli.sh status <taskId>
```

Get the results:
```bash
./scripts/knowfun-cli.sh detail <taskId>
```

## Next Steps

### Create Different Content Types

**Poster:**
```
/knowfun create poster "Climate Change: Key facts and statistics"
```

**Game:**
```
/knowfun create game "Learn JavaScript: Variables and Functions"
```

**Film:**
```
/knowfun create film "History of the Internet"
```

### Check Your Credits

```bash
./scripts/knowfun-cli.sh credits
```

### Explore Configuration Options

```bash
./scripts/knowfun-cli.sh schema
```

## Common Tasks

### Monitor a Task

```bash
# Create task and save the ID
TASK_ID=$(./scripts/knowfun-cli.sh create course "Your topic" | grep "taskId" | cut -d'"' -f4)

# Check status every 10 seconds
watch -n 10 ./scripts/knowfun-cli.sh status $TASK_ID
```

### Batch Create Multiple Courses

```bash
for topic in "Python Basics" "JavaScript Intro" "CSS Fundamentals"; do
    echo "Creating: $topic"
    ./scripts/knowfun-cli.sh create course "Learn $topic"
    sleep 2
done
```

### View Recent Tasks

```bash
./scripts/knowfun-cli.sh list 10
```

## Documentation

- **[README.md](README.md)**: Complete overview
- **[SKILL.md](SKILL.md)**: Skill instructions for Claude
- **[api-reference.md](api-reference.md)**: Full API documentation
- **[examples.md](examples.md)**: 20+ usage examples

## Troubleshooting

### Problem: "API Key not found"
**Solution:**
```bash
# Check if set
echo $KNOWFUN_API_KEY

# Set it
export KNOWFUN_API_KEY="kf_your_key"
```

### Problem: "Insufficient credits"
**Solution:** Visit https://www.knowfun.io/credits to top up

### Problem: Task stuck in "processing"
**Solution:** Wait 5-10 minutes. Tasks typically complete in:
- Posters: 1-3 minutes
- Courses: 2-5 minutes
- Games: 3-7 minutes
- Films: 5-10 minutes

### Problem: "Rate limit exceeded"
**Solution:** Wait 60 seconds and try again

## Tips for Success

1. **Use descriptive text**: The more context you provide, the better the results
2. **Check credits first**: Run `./scripts/knowfun-cli.sh credits` before batch operations
3. **Save task IDs**: Keep track of your tasks for future reference
4. **Use callbacks**: For production, set up webhook endpoints to receive completion notifications
5. **Start simple**: Begin with basic text, then explore advanced configurations

## Getting Help

- 📚 **Documentation**: See the docs in this directory
- 🌐 **Web Portal**: https://knowfun.io
- 🔑 **API Platform**: https://knowfun.io/api-platform
- 💡 **Examples**: Check [examples.md](examples.md)

## You're Ready! 🎉

You now have everything you need to:
- ✅ Create courses, posters, games, and films
- ✅ Monitor and manage tasks
- ✅ Track credit usage
- ✅ Integrate with your workflows

Start creating amazing educational content! 🚀

---

**Need more help?** Check out the full [README.md](README.md) or [examples.md](examples.md).
