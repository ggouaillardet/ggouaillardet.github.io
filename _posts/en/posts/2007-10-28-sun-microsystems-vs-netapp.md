---
layout: post
title: Sun Microsystems vs. NetApp
name: sun vs netapp
created: 1193508462
categories:
- !ruby/string:Sequel::SQL::Blob |-
  bmV3cw==
---
<a href="http://www.sun.com">Sun Microsystems</a> and <a href="http://www.netapp.com">NetApp</a> are now suing each other about patent infrigments within their filesystems<!--break-->
Looks like the trial already started on their respective blogs !

Basically, NetApp's core business is about NAS, and this requires :
- robust and redundant hardware
- a feature rich environment around
- a very good filesystem to rely on

Sun previously released ZFS as an opensource filesystem, which is said to be as good as NetApp's WAFL, if not better. In theory, this could be a serious threat to NetApp's lucrative business ...

Here is a small recap :
<a href="http://blogs.netapp.com/dave/2007/09/netapp-sues-sun.html">Round 1</a> : NetApp sues Sun because
a) they claim they do not infringe any patent Sun owns
b) they claim ZFS is infringing NetApp's patents
<a href="http://blogs.sun.com/jonathan/entry/harvesting_from_a_troll">Round 2</a> : Sun sues NetApp because they claim WAFL is infringing Sun's patents
<a href="http://blogs.netapp.com/dave/2007/10/sun-sues-netapp.html">Round 3</a> : NetApp maintains Sun opensourced ZFS, a filesystem they do not own

When I read both blogs, i thought they both made some good points and are all right ...

Now I am even more wondering simply why they are fighting !
It is just wrong to compare a NetApp filer and a Sun X4500 based NFS server :
the first one comes with a feature rich environment, and has full redundancy whereas the second one, way cheaper by the way, is "just" a Solaris box, with a bunch of drives and a great filesystem, running a simple NFS server !

Bottom line, Jonathan and Dave should simply let their customer figure out what they expect and what they are ready to pay for ... and focus on creating value for their customers and shareholders, instead of making their lawyers reacher !

To be continued ...
