#!/bin/bash
set -e

echo "🔨 Building site..."
cd site
npm run build
cd ..

echo "📦 Deploying to root..."

# Remove old build artifacts (keep .git, site, deploy.sh, README, .gitignore)
for f in $(ls -A | grep -v '^\.git$' | grep -v '^\.gitignore$' | grep -v '^site$' | grep -v '^deploy\.sh$' | grep -v '^README\.md$'); do
  rm -rf "$f"
done

# Copy new build to root
cp -r site/dist/* .

echo "✅ Done! Files are ready in the repo root."
