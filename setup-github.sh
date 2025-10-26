#!/bin/bash

# Setup script for creating cross-agent-context repository in telex-ai organization

set -e

echo "🚀 Cross-Agent Context System - GitHub Setup"
echo "=============================================="
echo ""

# Check if gh CLI is installed
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) is not installed."
    echo "   Install it from: https://cli.github.com/"
    echo ""
    echo "   Or use the manual setup instructions below."
    exit 1
fi

# Check if authenticated
if ! gh auth status &> /dev/null; then
    echo "❌ Not authenticated with GitHub CLI"
    echo "   Run: gh auth login"
    exit 1
fi

echo "✅ GitHub CLI is installed and authenticated"
echo ""

# Repository details
REPO_NAME="cross-agent-context"
ORG_NAME="telex-ai"
REPO_DESC="Enable distributed teams using different AI agents to share context and collaborate effectively"

echo "📦 Creating repository: $ORG_NAME/$REPO_NAME"
echo ""

# Create the repository
gh repo create "$ORG_NAME/$REPO_NAME" \
    --public \
    --description "$REPO_DESC" \
    --clone=false

echo ""
echo "✅ Repository created!"
echo ""

# Add the remote and push
CURRENT_DIR=$(pwd)
if [ -d ".git" ]; then
    echo "📤 Setting up remote and pushing..."
    git remote add origin "https://github.com/$ORG_NAME/$REPO_NAME.git"
    git push -u origin main
    
    echo ""
    echo "✅ Code pushed to GitHub!"
    echo ""
    echo "🎉 Setup complete!"
    echo ""
    echo "🔗 Repository URL: https://github.com/$ORG_NAME/$REPO_NAME"
    echo ""
    echo "Next steps:"
    echo "1. Visit the repository"
    echo "2. Add topics: ai, ai-agents, collaboration, context, developer-tools"
    echo "3. Enable GitHub Discussions"
    echo "4. Create initial discussion topics"
else
    echo "⚠️  Not in a git repository. Please run this from the repository root."
    echo ""
    echo "Manual setup:"
    echo "1. cd to /home/claude/cross-agent-context"
    echo "2. Run: git remote add origin https://github.com/$ORG_NAME/$REPO_NAME.git"
    echo "3. Run: git push -u origin main"
fi

echo ""
echo "=============================================="
