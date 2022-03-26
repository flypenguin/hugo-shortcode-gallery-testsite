---
title: "Example: Lightgallery from assets directory"
author: Axel Bock
date: 2022-03-16T09:48:39+01:00
url: /2022/03/16/gallery-from-assets-directory
draft: false
categories:
  - Lightgallery
tags:
  - lightgallery
  - assets
---

And this is a gallery from the assets directory.

**Note** that the images files **must be in the /assets directory**, and **not** in /static.

Why? Because I am using Hugo Pipes to automatically generate the thumbnails, and this is not possible with images which are placed in or under `/static`.

{{< lightgallery assets="img-set-1/**.webp" >}}
