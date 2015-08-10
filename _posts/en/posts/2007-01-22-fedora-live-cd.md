---
layout: post
title: Fedora Live CD
created: 1169399402
categories:
- !ruby/string:Sequel::SQL::Blob |-
  bGludXg=
---
The Fedora project has recently <a href="https://www.redhat.com/archives/fedora-announce-list/2006-December/msg00006.html">announced</a> the availability of a <a href="http://fedoraproject.org/wiki/FedoraLiveCD">Fedora Live CD</a>.
I have always liked the concept of LiveCD, so I decided to contribute :-)<!--break-->
I made two distinct changes/improvements :
- use the <a href="http://www.kde.org">KDE</a> desktop manager instead of <a href="http://www.gnome.org">Gnome</a>
- port the LiveCD to the <a href="http://en.wikipedia.org/wiki/EM64T">x86_64</a> architecture.

I also installed a <a href="http://fedoraproject.org/wiki/Tools/yum">yum</a> repository <a href="http://gillesgouaillardet.com/lcd6">here</a>.

In order to generate a Fedora LiveCD, with the KDE desktop mananger for the x86_64 architecture, you need to install the livecd-tools package on a system running fedora for x86_64, and then simply run the following command :
<pre>
livecd-creator \ 
    --repo=c6,http://download.fedora.redhat.com/pub/fedora/linux/core/6/x86_64/os/ \
    --repo=c6_upd,http://download.fedora.redhat.com/pub/fedora/linux/core/updates/6/x86_64/ \
    --repo=lcd6,http://gillesgouaillardet.com/lcd6 \
    --repo=e6,http://download.fedora.redhat.com/pub/fedora/linux/extras/6/x86_64/ \
    --package=fedora-livecd-kde \
    --fslabel=Fedora-6-Zod-LiveCD-2-kde 
</pre>

This will create Fedora-6-Zod-LiveCD-2-kde.iso, which is a bootable iso image,
so simply burn it to a CD, reboot and enjoy !

/* Of course, you can use your own ( and local ) yum repositories ! */

I just checked the fedora-livecd mailing list before i submit my contribution ... and i just found out someone posted a similar thing a few minutes ago ...
Anyway, this was interesting homework ;-)
