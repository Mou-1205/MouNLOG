#!/bin/bash
# Sync Obsidian blog posts to Firefly blog directory
# Usage: bash sync-posts.sh

OBSIDIAN_VAULT="C:/Users/Administrator/Documents/Mou/BLOG/obsidian-vault/博客文章"
FIREFLY_POSTS="C:/Users/Administrator/Documents/Mou/BLOG/src/content/posts"

echo "Syncing posts from Obsidian to Firefly..."

# Copy all .md files from Obsidian vault to Firefly posts directory
cp -r "$OBSIDIAN_VAULT"/*.md "$FIREFLY_POSTS/" 2>/dev/null

echo "Done! Posts synced to $FIREFLY_POSTS"
echo "Files in posts directory:"
ls -la "$FIREFLY_POSTS"/*.md 2>/dev/null | wc -l
