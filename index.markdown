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
