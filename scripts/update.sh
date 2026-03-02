#!/bin/bash
set -e

echo "🔄 Updating ignis submodule to latest version..."

# Configure git for automated commits
git config --local user.email "github-actions[bot]@users.noreply.github.com"
git config --local user.name "github-actions[bot]"

# Update submodule to latest remote version
git submodule update --remote ignis

# Check if there are changes
if git diff --quiet ignis; then
    echo "✅ ignis is already up to date"
    exit 0
fi

# Stage and commit the changes
git add ignis
git commit -m "chore: update ignis submodule to latest version"

# Push the changes
git push origin HEAD:main

echo "✅ Successfully updated and pushed ignis submodule"