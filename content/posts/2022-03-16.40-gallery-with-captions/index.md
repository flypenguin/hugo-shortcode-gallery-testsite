---
title: "Example: Lightgallery with captions"
author: Axel Bock
date: 2022-03-16T10:34:03+01:00
url: /2022/03/16/lightgallery-with-captions
draft: false
categories:
  - Lightgallery
tags:
  - lightgallery
  - captions
  - assets
---

And this is a gallery from the assets directory.
This time please note the image captions.
`altslice=5` removes the first 5 charachters from the image filename.
So if you use a "talking" file name with a prefix you get a nice caption automatically.

```
{{</* lightgallery assets="img-set-2/**.webp" altslice=5 */>}}
```


{{< lightgallery assets="img-set-2/**.webp" altslice=5 >}}
