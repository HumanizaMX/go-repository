#!/bin/bash
set -e

echo "🔄 Updating ignis submodule to latest version..."

# Update submodule to latest remote version
git submodule update --remote ignis

# Check if there are changes
if git diff --quiet --cached ignis; then
    echo "✅ ignis is already up to date"
    exit 0
fi

# Stage and commit the changes
git add ignis
git commit -m "chore: update ignis submodule to latest version"

echo "✅ Successfully updated ignis submodule"