---
layout: post
title: Minecraft Server on an Amazon EC2 Micro Instance
---

Over the past couple of weeks, I've been using my free Amazon EC2 Micro instance as a [Minecraft](http://www.minecraft.net) server. It isn't ideal, but it works more than well enough to replace the old dust magnet in the study.

As it is my first Minecraft server, I decided to use the vanilla server from [Mojang](http://www.minecraft.net/download.jsp). It isn't as feature-packed as others like HeyO, but it is relatively simple to get going. My instance (Ubuntu Server 10.04) didn't have the Java Runtime Environment pre-installed, so I installed it using apt-get:

{% highlight console %}
sudo apt-get install openjdk-6-jre-headless
{% endhighlight %}
