---
layout: default
weight: 0
title: Home
tags:
- brandon silver
- contact
- email
- blog
- gpg key
---


## Recent Blog Posts ##
<p>
  {% for post in site.posts limit:5 %}
    <li>{{ post.date | date_to_string }} &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</p>

## About Me ##
Hello there! I'm a graduate of Computer Science from Oklahoma State University. My interests these
days are mostly centered around exploring the wide world of IT, with some casual
[photography](http://www.flickr.com/photos/silverimaging/) and video gaming thrown into the mix.


## Contact Info ##

Email: <brandon@brandonsilver.com>

Email is my preferred method of Internet-based communication. I also make use of GnuPG encryption;
you can find my public key (ID: <code>8D5F182D</code>) at
[https://www.brandonsilver.com/gpg-key.asc](https://www.brandonsilver.com/gpg-key.asc) or on public
key servers like [http://pgp.mit.edu/](http://pgp.mit.edu/).

