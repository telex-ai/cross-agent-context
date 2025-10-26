# Cross-Agent Context System

> Enable distributed teams using different AI agents (Claude Code, Copilot, Cursor, etc.) to share context and collaborate effectively.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 🎯 What Is This?

A version-controlled context layer that lets AI coding agents share knowledge across your team, regardless of which tool each developer uses.

**The Problem**: When your team uses different AI agents (Claude Code, Copilot, Cursor), each agent starts fresh with no context. Knowledge gets lost between sessions. Decisions aren't preserved. Developers repeat explanations.

**The Solution**: A simple `.context/` directory in your repo containing:
- Project memory (what & how things work)
- Architecture decisions (why choices were made)
- Known issues (current problems and workarounds)
- Agent instructions (how to work on this project)

When agents read these files, they're instantly "caught up" with your team's collective knowledge.

## ✨ Key Features

- ✅ **Works with ANY agent** - Claude Code, Copilot, Cursor, or future tools
- ✅ **No special infrastructure** - Just markdown files in your repo
- ✅ **Version controlled** - Context travels with your code
- ✅ **15-minute setup** - Start using it today
- ✅ **Scales naturally** - From 2 to 200 developers
- ✅ **Progressive automation** - Start manual, automate as needed

## 🚀 Quick Start

### 1. Copy the starter kit to your project

```bash
# Clone this repo
git clone https://github.com/telex-ai/cross-agent-context.git

# Copy .context/ to your project
cp -r cross-agent-context/context-starter-kit/.context /path/to/your/project/

# Commit it
cd /path/to/your/project
git add .context/
git commit -m "Add cross-agent context system"
git push
```

### 2. Fill in your project details

Edit `.context/memory/project-memory.md`:

```markdown
# Project Memory: Your Project Name

## Quick Context (TL;DR)
We're building [what] for [who] because [why].

## Tech Stack
- Backend: Node.js, Express
- Database: PostgreSQL
- Frontend: React
```

### 3. Use it with your agent

**Claude Code:**
```
"Read all files in .context/ to understand the project"
```

**Copilot:**
```
"@workspace Review .context/ to understand the project"
```

**Cursor:**
```
"Read .context/ directory before we start"
```

That's it! Your agent now has context.

## 📚 Documentation

- **[QUICK-START.md](docs/QUICK-START.md)** - Get running in 15 minutes
- **[INDEX.md](docs/INDEX.md)** - Master guide to all documentation
- **[VISUAL-OVERVIEW.md](docs/VISUAL-OVERVIEW.md)** - Complete visual guide
- **[EXECUTIVE-SUMMARY.md](docs/EXECUTIVE-SUMMARY.md)** - High-level overview

### Deep Dive

- **[solution-architecture.md](docs/solution-architecture.md)** - 5 implementation approaches
- **[implementation-guide.md](docs/implementation-guide.md)** - Templates and patterns
- **[comparison-matrix.md](docs/comparison-matrix.md)** - ROI analysis and decisions

## 🎯 Use Cases

### Perfect For

- ✅ Distributed teams using multiple AI agents
- ✅ Teams that lose knowledge between sessions
- ✅ Projects with frequent "why did we..." questions
- ✅ Onboarding new developers
- ✅ Preserving architectural decisions

### Not Ideal For

- ❌ Teams not using AI agents
- ❌ Solo developers (unless working with future self)
- ❌ Short-term projects (<3 months)
- ❌ Teams that won't maintain documentation

## 💡 How It Works

```
Developer pulls code → Gets latest context
    ↓
Agent reads .context/ → Understands project
    ↓
Developer + Agent work → Learn something
    ↓
Update .context/ files → Document learning
    ↓
Commit and push → Share with team
    ↓
Next developer benefits → No re-explaining needed
```

## 🛠️ What's Included

```
context-starter-kit/
└── .context/                          # Copy this to your project
    ├── README.md                      # Usage guide
    ├── memory/
    │   ├── project-memory.md          # Core project knowledge
    │   └── known-issues.md            # Bug tracking
    ├── architecture-decisions.md      # ADR template
    └── agent-instructions/
        ├── claude-code.md             # Claude-specific
        ├── copilot.md                 # Copilot-specific
        └── cursor.md                  # Cursor-specific
```

## 📈 Implementation Paths

### Level 1: Manual (Start Today - 15 min)
Just markdown files. Update by hand.
- **Setup**: 15 minutes
- **Maintenance**: 5-10 min/session
- **Best for**: Getting started

### Level 2: Git Hooks (Week 2 - 2-4 hours)
Add reminders to update context.
- **Setup**: 2-4 hours
- **Maintenance**: 5 min/session
- **Best for**: Adding structure

### Level 3: CLI Tool (Month 2 - 1-2 weeks)
Build `context` command for easy updates.
- **Setup**: 40-80 hours dev
- **Maintenance**: 2-5 min/session
- **Best for**: Team efficiency

### Level 4: MCP Server (Month 3 - 2-4 weeks)
Seamless Claude Code integration.
- **Setup**: 80-160 hours dev
- **Maintenance**: 1-2 min/session
- **Best for**: Claude-heavy teams

### Level 5: Service (6+ months)
Centralized real-time context service.
- **Setup**: 320+ hours dev
- **Maintenance**: <1 min/session
- **Best for**: Enterprise (30+ devs)

## 🎓 Examples

### Before (Without Context)
```
Developer A: "Build authentication"
Agent: "How should I do it?"
Developer: *explains JWT, patterns, security*
Agent: *builds it*

[Knowledge lost when session ends]

Developer B: "Add password reset"
Agent: "How should I do it?"
Developer: *explains same things again* 😞
```

### After (With Context)
```
Developer A: "Build authentication"
Agent: *reads .context/* 
Agent: "I see you use JWT, bcrypt..."
*builds consistently*
*updates context with learnings*

[Knowledge preserved]

Developer B: "Add password reset"
Agent: *reads .context/*
Agent: "Following your JWT pattern..."
*no re-explaining needed* 🎉
```

## 🔑 Core Principles

1. **Context should be version-controlled** alongside code
2. **Start simple** - Don't try to document everything
3. **Focus on "why"** not "what" - Code shows what, context explains why
4. **Make it easy** - Low friction = consistent use
5. **Keep it current** - Stale context is worse than no context

## 🌟 Benefits

### For Developers
- Less time explaining to agents
- Better agent suggestions
- Fewer repeated mistakes
- Faster work sessions

### For Teams
- Knowledge preserved across sessions
- Consistent approaches regardless of agent
- Faster onboarding
- Better architectural continuity

### For Organizations
- Works with any agent tool
- No vendor lock-in
- Scales to hundreds of developers
- Knowledge retention despite turnover

## 📊 ROI Example

**Small team (5 developers):**
- Setup: 2 hours
- Per session: 5 min update
- Saves per session: 20 min not explaining
- **Break-even: ~8 sessions**
- **Monthly savings: 40+ hours**

## 🤝 Contributing

We welcome contributions! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

Ideas for contributions:
- Share your team's templates
- Build CLI tools
- Create integrations
- Improve documentation
- Share success stories

## 📝 License

MIT License - see [LICENSE](LICENSE) for details.

## 🙏 Acknowledgments

Built with deep thinking about how distributed teams can collaborate effectively using different AI tools.

## 🔗 Links

- **Documentation**: [docs/](docs/)
- **Starter Kit**: [context-starter-kit/](context-starter-kit/)
- **Issues**: [GitHub Issues](https://github.com/telex-ai/cross-agent-context/issues)
- **Discussions**: [GitHub Discussions](https://github.com/telex-ai/cross-agent-context/discussions)

## 💬 Support

- 📖 Read the [documentation](docs/)
- 💡 Check [GitHub Discussions](https://github.com/telex-ai/cross-agent-context/discussions)
- 🐛 Report bugs via [GitHub Issues](https://github.com/telex-ai/cross-agent-context/issues)

## 🚦 Status

This is a working system being used by teams today. The manual approach (Level 1) is production-ready. Advanced implementations (Levels 3-5) are architectural guides.

---

**Start simple. Iterate. Scale based on value.**

Made with ❤️ for teams building with AI agents
