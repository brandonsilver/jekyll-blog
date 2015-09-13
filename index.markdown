---
layout: default
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
    <ul>
        {% for post in site.posts limit:5 %}
        <li>{{ post.date | date_to_string }} &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
        {% endfor %}
    </ul>
</p>

## About Me ##
Hello there! I'm a senior in Computer Science at Oklahoma State University. My interests these
days are mostly centered around exploring the wide world of IT, with some casual
[photography](http://www.flickr.com/photos/silverimaging/) and video gaming thrown into the mix.


## Contact Info ##

Email: <brandon@brandonsilver.com>

Email is my preferred method of Internet-based communication. I also make use of GnuPG encryption;
you can find my public key (ID: <code>8D5F182D</code>) at
[https://www.brandonsilver.com/gpg-key.asc](https://www.brandonsilver.com/gpg-key.asc) or on public
key servers like [http://pgp.mit.edu/](http://pgp.mit.edu/).

**UPDATE 2015-02-25:** I have again forgotten the passphrase to my private key, so I've uploaded a
new one. See above for the details.

### Social media ###
Facebook: [brandon.silver2](https://www.facebook.com/brandon.silver2)  
Twitter: [@alinuxuser](https://twitter.com/alinuxuser)  
Google+: [Brandon Silver](https://plus.google.com/117497136737421548137/posts)
