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

Email is my preferred method of Internet-based communication. You can find my PGP public key
(ID: <code>EEEA3A55</code>) on most public key servers ([like this one](http://pgp.mit.edu/)).

**UPDATE 2014-04-08:** My previous PGP key expired, so I have updated the above paragraph to
reflect my new key's ID.

### Social media ###
Facebook: [brandon.silver2](https://www.facebook.com/brandon.silver2)  
Twitter: [@alinuxuser](https://twitter.com/alinuxuser)  
Google+: [Brandon Silver](https://plus.google.com/117497136737421548137/posts)
