---
title: Lightgallery configuration & features
author: Axel Bock
date: 2022-03-16T08:30:58+01:00
url: /2022/03/16/lightgallery-configuration
draft: false
categories:
  - Lightgallery
tags:
  - docs
  - lightgallery
---

## Features

- Automatically generates thumbnails during page build. Never create any thumbnails again by yourself.
- Multiple galleries per page.
- Select all images (basically "do nothing") or select images by glob expression
- Works with page bundle images _and_ images from the `assets` directory.
  (sorry, does _not_ work with images from `/static`)

## Configuration

Lightgallery can be configured in two ways:

- Globally in `config.toml`
- When using the shortcode

### Global defaults

```toml
# those are the default values which are used if you don't specify them
[params.lightgallery.defaults]
  speed = 500
  thumbformat = "webp"
  thumbquality = "q70"
  thumbsize = "200x200"
  thumbtype = "fit"         # fit | fill, see example post for difference
  transition = "lg-slide"   # PROBABLY BROKEN, DON'T CHANGE
```

If you specify those values also in the shortcode, the latter has precedence.

### Shortcode configuration

You can use all parameters in the shortcode which you can set in `defaults`.

There are three ways to invoke lightgallery:

```
{{</* lightgallery glob="GLOB_EXPRESSION"  */>}}    # images from page bundle
{{</* lightgallery assets="GLOB_EXPRESSION" */>}}   # images from assets/ dir
{{</* lightgallery */>}}                            # ALL images from page bundle
```

And **one additional parameter**:

```
{{</* lightgallery altslice=NUMBER */>}}
```

#### Parameter altslice

Sometimes you want image captions.
You can have them.
Lets's assume you have the following image files in your page bundle:

```
index.md
images/
   image1 a horizon.jpg
   image2 me against the horizon.jpg
   image3 the dark valley behind me.jpg
```

Normally the file name is the image caption.
Now if you have a constant part in front of the file name (in this case: `imageX`) you can remove it with `altslice`.

So `{{</* lightgallery altslice=6 */>}}` uses the file name as caption, but removes the first six chars, which will give you these image captions:

- "a horizon"
- "me against the horizon"
- "the dark valley behind me"
