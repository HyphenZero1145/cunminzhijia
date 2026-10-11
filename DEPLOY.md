# 部署到 Cloudflare Pages（免费）

## 第一步：改配置（必做）

编辑 `hugo.toml`，修改这几项：

```toml
baseURL = 'https://你的域名/'   # 没有域名就先随便填，后面改
title = '你的站点名'

[params]
  author = '你的名字'
  qqLink = 'https://qm.qq.com/q/你的群号'
  qqText = '加入QQ群'
  bilibiliSpace = 'https://space.bilibili.com/你的UID'
```

编辑 `data/videos.json`，把示例视频换成你的 B 站视频（`bvid` 在视频页面地址里，如 `bilibili.com/video/BV1xxx` 中的 BV1xxx）。

## 第二步：上传到 GitHub

1. 注册 GitHub：https://github.com （免费）
2. 新建仓库（Repository），名字随意如 `myblog`，选 **Public**
3. 在 `myblog` 目录执行（PowerShell）：

```powershell
cd D:\Opencode工作区\myblog
git init
git add .
git commit -m "init"
git remote add origin https://github.com/你的用户名/myblog.git
git branch -M main
git push -u origin main
```

> 如果提示登录，按提示装 Git Credential Manager 或用 GitHub CLI。

## 第三步：连接 Cloudflare Pages

1. 注册 Cloudflare：https://dash.cloudflare.com （免费，无需信用卡）
2. 左侧 **Workers 和 Pages** → **创建** → **Pages** → **连接到 Git**
3. 授权 GitHub，选择你的仓库
4. 构建配置：
   - **框架预设**：Hugo
   - **构建命令**：`hugo --minify`
   - **输出目录**：`public`
   - **环境变量**（可选，加速构建）：`HUGO_VERSION` = `0.167.0`
5. 点 **保存并部署**，1 分钟后得到 `https://xxx.pages.dev` 地址

## 第四步：日常更新

- **更新视频**：改 `data/videos.json` → `git add . && git commit -m "update videos" && git push`
- **写新文章**：`hugo new content posts/新文章.md` → 编辑 → 去掉 `draft: true` → push
- Cloudflare 会自动重新部署，约 30 秒生效

## 绑定自己的域名（可选）

1. 买个域名（阿里云/腾讯云/Cloudflare Registrar，约 50-80 元/年）
2. Cloudflare Pages 项目 → **自定义域** → 填域名
3. 按提示去域名服务商处改 DNS（Cloudflare 会告诉你怎么改）
4. 自动 HTTPS，无需额外操作
