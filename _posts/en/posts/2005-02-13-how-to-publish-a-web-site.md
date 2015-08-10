---
layout: post
title: How to publish a web site
name: web publishing howto
created: 1108244407
categories: []
---
Several times, I had to face this simple looking problem : my web site is hosted and my only way to upload data is ftp.
I expected an easy and automated way to perform this task : a kind of rsync through ftp.
<!--break-->
I was quite surprised it was pretty hard to find some appropriate tools. Fortunatly, I could find two ... and unfortunatly, they are not open source and only run on Windows.
These tools are <a href="http://www.cryer.co.uk/downloads/websitepublisher">Web Site Publister</a> and <a href="http://www.sitepublisher.net">Site Publisher</a>.

<a href="http://www.sitepublisher.net">Site Publisher</a> is a commercial app. It is not really expensive ( 24.95 US$ for Home usage and 29.95 US$ for Business usage ) and it is possible to get a 30 days evaluation license for free. I was very happy with this software. There are many ways to configure which files must be ignored and it is very configurable. But the key feature is that Site Publisher allows to synchronize, not only upload : if a file is newer on the ftp server, then it is downloaded, not uploaded.
This is extremelly useful indeed : for example, some images can be updated on my blog via Drupal, or some temporary files are created; with this software, I could have a
full backup on my machine, or even on several machines. It allows me to update my site from several computers, and have a full backup in one place without hassle ! Moreover the preview feature shows which files will be downloaded or uploaded, and it is possible to modify the behaviour before starting the real transfers.

<a href="http://www.cryer.co.uk/downloads/websitepublisher">Web Site Publister</a> on the other hand is a free software, though it is not open source. It has all the features needed to publish a web site. Unlike the previous one, it can only upload content, and cannot synchronize a site. I found some very minor bugs I should report. It is not really configurable but as I mentionned, it has all what is needed ... and it is free. I like the "turbo" mode : files to be uploaded are the ones locally modified since the last upload, since this does not need retrieving date information from the ftp server, it can be really faster ! but be careful, if can be inconsistent and that can get you in trouble !

Today, I am using <a href="http://www.cryer.co.uk/downloads/websitepublisher">Web Site Publister</a>, mainly because I do not have an intensive use of it ... and of course because it is free. If a strong need is planned, I will seriously consider buying <a href="http://www.sitepublisher.net">Site Publisher</a> for all its powerful features.
My only regret is that these both tools are only running on Windows ... as I wrote earlier in a <a href="/blog/?q=en/node/3">previous story</a>, <a href="http://www.colinux.org">coLinux</a> allows me to maintain my site under Linux, and then I can upload my content under Windows ... without rebooting my machine !
