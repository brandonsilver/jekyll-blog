---
layout: default
title: Brandon Silver
---

## Recent Blog Posts ##
<p>
  {% for post in site.posts limit:5 %}
    <li>{{ post.date | date_to_string }} &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</p>

## About Me ##
Hello there! My main interests these days are in web development
and UNIX server administration. I also enjoy photography, so check 
me out on <a href="http://www.flickr.com/photos/silverimaging/">flickr!</a></p>


## Contact Info ##

Email: <brandon@brandonsilver.com>

I use GnuPG/PGP to add a layer of trust to my email. You can find my public
key (ID: <code>D60769BA</code>) on most public key servers ([like this one](http://pgp.mit.edu/)).

### Social media ###
Facebook: [brandon.silver2](https://www.facebook.com/brandon.silver2)  
Twitter: [@alinuxuser](https://twitter.com/alinuxuser)  
Google+: [Brandon Silver](https://plus.google.com/117497136737421548137/posts)
