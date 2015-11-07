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
Hello there! I'm a recently-graduated student of Computer Science currently working in web
development. My interests include amateur security analysis and systems administration.


## Contact Info ##

Email: <brandon@brandonsilver.com>

Email is my preferred method of Internet-based communication. I also make use of GnuPG encryption;
you can find my public key (ID: <code>8D5F182D</code>) at
[https://www.brandonsilver.com/gpg-key.asc](https://www.brandonsilver.com/gpg-key.asc) or on public
key servers like [http://pgp.mit.edu/](http://pgp.mit.edu/).


### Social media ###
Facebook: [brandon.silver2](https://www.facebook.com/brandon.silver2)  
Twitter: [@alinuxuser](https://twitter.com/alinuxuser)  
Google+: [Brandon Silver](https://plus.google.com/117497136737421548137/posts)
