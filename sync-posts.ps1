# Sync Obsidian blog posts to Firefly blog directory
# Usage: .\sync-posts.ps1

$obsidianVault = "C:\Users\Administrator\Documents\Mou\BLOG\obsidian-vault\博客文章"
$fireflyPosts = "C:\Users\Administrator\Documents\Mou\BLOG\src\content\posts"

Write-Host "Syncing posts from Obsidian to Firefly..." -ForegroundColor Cyan

# Copy all .md files from Obsidian vault to Firefly posts directory
Copy-Item -Path "$obsidianVault\*.md" -Destination $fireflyPosts -Force -ErrorAction SilentlyContinue

Write-Host "Done! Posts synced to $fireflyPosts" -ForegroundColor Green
Write-Host "Files in posts directory:" -ForegroundColor Yellow
(Get-ChildItem -Path $fireflyPosts -Filter "*.md" -ErrorAction SilentlyContinue).Count
