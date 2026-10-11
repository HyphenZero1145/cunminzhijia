---
title: "你好，世界！"
date: 2026-10-11T12:00:00+08:00
draft: false
---

这是本站的第一篇文章。

## 如何写新文章

在 `content/posts/` 目录下新建一个 `.md` 文件，复制下面的模板：

```markdown
---
title: "文章标题"
date: 2026-10-11T12:00:00+08:00
draft: false
---

正文内容写在这里。
```

## 如何更新 B 站视频列表

编辑 `data/videos.json`，最新视频放在最前面：

```json
{
  "title": "视频标题",
  "bvid": "BVxxxxxxxx",
  "desc": "视频简介",
  "date": "2026-10-11"
}
```

把 `bvid` 换成你视频的 BV 号即可。

## 下一步

1. 修改 `hugo.toml` 里的站点名、QQ 链接、B站空间地址
2. 推送到 GitHub，连接 Cloudflare Pages 即可上线
