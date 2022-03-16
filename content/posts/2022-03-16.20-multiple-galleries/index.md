---
title: Multiple lightgalleries using globs
author: Axel Bock
date: 2022-03-16T09:45:10+01:00
url: /2022/03/16/multiple-galleries
draft: false
categories:
  - Lightgallery
tags:
  - lightgallery
  - page bundle
  - multiple galleries
---


Some architecture images.
Note how all thumbnails are squared - you achieve this by using `thumbtype="fill"`.

```
{{</* lightgallery glob="images/arch-*.webp" thumbtype="fill" */>}}
```

{{< lightgallery  glob="images/arch-*.webp" thumbtype="fill" >}}

Now some abstract images.
Note how you can configure the thumbnail sizes using the `thumbsize` parameter.

```
{{</* lightgallery glob="images/abs-**.webp" thumbsize="100x100" */>}}
```

{{< lightgallery glob="images/abs-**.webp" thumbsize="100x100" >}}
