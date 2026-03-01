#!/bin/bash
# Create GitHub Release for Knowfun Skills

set -e

VERSION="v1.0.0"
REPO="MindStarAI/KnowFun-Skills"
RELEASE_NOTES_FILE=".github/RELEASE_NOTES_v1.0.0.md"

echo "🚀 Creating GitHub Release ${VERSION} for ${REPO}"

# Check if gh CLI is installed
if ! command -v gh &> /dev/null; then
    echo ""
    echo "❌ GitHub CLI (gh) is not installed."
    echo ""
    echo "📦 Install it with:"
    echo "   brew install gh"
    echo ""
    echo "Or create the release manually:"
    echo "   1. Visit: https://github.com/${REPO}/releases/new"
    echo "   2. Tag: ${VERSION}"
    echo "   3. Title: Knowfun Skills ${VERSION} - Initial Release"
    echo "   4. Copy content from: ${RELEASE_NOTES_FILE}"
    echo ""
    exit 1
fi

# Check if authenticated
if ! gh auth status &> /dev/null; then
    echo "🔐 Authenticating with GitHub..."
    gh auth login
fi

# Read release notes
if [ ! -f "$RELEASE_NOTES_FILE" ]; then
    echo "❌ Release notes file not found: ${RELEASE_NOTES_FILE}"
    exit 1
fi

RELEASE_NOTES=$(cat "$RELEASE_NOTES_FILE")

# Create release
echo "📝 Creating release..."
gh release create "${VERSION}" \
    --repo "${REPO}" \
    --title "Knowfun Skills ${VERSION} - Initial Release 🚀" \
    --notes "${RELEASE_NOTES}" \
    --latest

echo ""
echo "✅ Release created successfully!"
echo "🔗 View at: https://github.com/${REPO}/releases/tag/${VERSION}"
