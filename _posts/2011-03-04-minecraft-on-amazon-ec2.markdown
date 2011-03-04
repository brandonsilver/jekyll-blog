---
layout: post
title: Minecraft Server on an Amazon EC2 Micro Instance
---

Over the past couple of weeks, I've been using my free Amazon EC2 Micro instance as a [Minecraft](http://www.minecraft.net) server. It isn't ideal, but it works well enough to replace the aging PC I was using before. Plus, I can feel safe allowing people onto the server, as before I would have to expose my home network to the Internet for the same experience. 

### Setup ###

_(This post assumes that you already have a running instance. If you are interested in setting up your own EC2 Instance from scratch, have a look at <http://www.stratumsecurity.com/blog/2010/12/03/shearing-firesheep-with-the-cloud/>. It also shows you how to setup an OpenVPN server.)_

As it is my first Minecraft server, I decided to use the vanilla server from [Mojang Specifications](http://www.minecraft.net/download.jsp). It isn't as feature-packed as others like HeyO, but it is relatively simple to get going. My instance (Ubuntu Server 10.04, ami-4a0df923 on EC2) didn't have the Java Runtime Environment pre-installed, so I installed it using apt-get:

{% highlight console %}
sudo apt-get install openjdk-6-jre-headless
{% endhighlight %}

I then proceeded to download the latest version of the server:

{% highlight console %}
wget http://www.minecraft.net/download/minecraft_server.jar?v=1299034714859 minecraft-server.jar
{% endhighlight %}

At this point, I also made sure that [GNU screen](http://www.gnu.org/software/screen/) was installed so I could run minecraft-server in the background between SSH sessions.

{% highlight console %}
sudo apt-get install screen
{% endhighlight %}

Since I am running the server in a low-memory environment, I adjusted the instructions given on the [download page](http://www.minecraft.net/download.jsp) to suit and put it all in a small startup script, start.sh, which I placed in the same directory as minecraft-server.jar:

{% highlight bash %}
#!/bin/bash
# Minecraft Server startup script
java -Xmx500M -Xms500M -jar minecraft-server.jar nogui
{% endhighlight %}

This should allow the server to startup without error. Make sure that start.sh has executable permissions via <code>chmod +x start.sh</code> .

Now it's time to start the server with the following commands, replacing <code>/path/to/minecraft-server</code> with whatever path you downloaded minecraft-server.jar to:

{% highlight console %}
screen -DR
cd /path/to/minecraft-server
./start.sh
{% endhighlight %}

You should now be at the minecraft server console. For the final step, you need to adjust your Amazon EC2 Security Policy to allow TCP connections to port 25565. After that, you can finally fire up Minecraft, go to Multiplayer, and punch in your server's public IP address. 

### Practicality ###

The free tier that Amazon provides is just enough bandwidth, CPU power, and memory for small groups of no more than four players. That means it's only any good as a personal creative server that you can show off to friends every now and then. But hey, free is free, and if you follow the [guide](http://www.stratumsecurity.com/blog/2010/12/03/shearing-firesheep-with-the-cloud) at Stratum Security, you'll have a nice little OpenVPN server too. 