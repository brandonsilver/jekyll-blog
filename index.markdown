---
layout: default
title: Home
tags:
- brandon silver
- contact
- email
- blog
---

## Recent Blog Posts ##
<p>
  {% for post in site.posts limit:5 %}
    <li>{{ post.date | date_to_string }} &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</p>

## About Me ##
Hello there! I'm a junior in Computer Science at Oklahoma State University. My interests these
days are mostly centered around exploring the wide world of IT, with some casual
[photography](http://www.flickr.com/photos/silverimaging/) and video gaming thrown into the mix.


## Contact Info ##

Email: <brandon@brandonsilver.com>

Email is my preferred method of Internet-based communication. I use GnuPG/PGP to add a layer
of trust to my email. You can find my public key (ID: <code>D60769BA</code>) on most public
key servers ([like this one](http://pgp.mit.edu/)).

### Social media ###
Facebook: [brandon.silver2](https://www.facebook.com/brandon.silver2)  
Twitter: [@alinuxuser](https://twitter.com/alinuxuser)  
Google+: [Brandon Silver](https://plus.google.com/117497136737421548137/posts)
