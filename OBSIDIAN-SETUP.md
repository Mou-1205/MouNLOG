# Obsidian + Firefly 写作工作流

## 目录结构

```
BLOG/
├── obsidian-vault/          # Obsidian 笔记库
│   ├── .obsidian/           # Obsidian 配置
│   ├── 博客文章/            # 写文章的地方
│   ├── 模板/                # Templater 模板
│   └── 附件/                # 图片等附件
├── src/content/posts/       # Firefly 文章目录
├── sync-posts.sh            # Linux/Mac 同步脚本
└── sync-posts.ps1           # Windows 同步脚本
```

## 使用步骤

### 1. 安装 Obsidian

```bash
winget install Obsidian.Obsidian
```

### 2. 打开 Obsidian 仓库

1. 打开 Obsidian
2. 选择 "Open folder as vault"
3. 选择 `C:\Users\Administrator\Documents\Mou\BLOG\obsidian-vault`

### 3. 安装 Templater 插件

1. 在 Obsidian 中打开设置 (Ctrl+,)
2. 左侧选择 "第三方插件"
3. 关闭安全模式
4. 点击 "浏览" 搜索 "Templater"
5. 安装并启用

### 4. 配置 Templater

1. 在插件设置中，模板文件夹设为：`模板`
2. 启用 "Trigger Templater on new file creation"
3. 文件夹模板：`博客文章` → `模板/博客文章模板.md`

### 5. 写文章

1. 在 `博客文章` 文件夹新建笔记
2. Templater 自动套用模板
3. 填写 FrontMatter（标题、标签、分类等）
4. 写正文内容

### 6. 同步到 Firefly

```bash
# Windows PowerShell
.\sync-posts.ps1

# 或 Git Bash
bash sync-posts.sh
```

### 7. 预览效果

开发服务器运行中：http://localhost:4321

保存后浏览器自动刷新。

## FrontMatter 字段说明

| 字段 | 类型 | 说明 |
|------|------|------|
| title | string | 文章标题 |
| published | date | 发布日期 (YYYY-MM-DD) |
| updated | date | 更新日期 |
| description | string | 文章描述 |
| image | string | 封面图路径 |
| tags | array | 标签列表 |
| category | string | 分类 |
| draft | boolean | 是否为草稿 |
| pinned | boolean | 是否置顶 |

## 注意事项

- 图片放在 `附件` 文件夹，同步时会一起复制
- 草稿 (draft: true) 不会显示在博客中
- 保存后 Astro 开发服务器会自动刷新
