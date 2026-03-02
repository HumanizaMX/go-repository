#!/bin/bash
set -e

echo "📦 Initializing project with submodules..."

# Initialize and update all submodules
git submodule init
git submodule update

echo "✅ Project initialized successfully"
echo "📝 Run './scripts/update.sh' to update submodules to latest version"
