---
layout: post
title: Orange Business Everywhere on Fujitsu LifeBook S760
name: be on lifebook
created: 1304028153
categories:
- !ruby/string:Sequel::SQL::Blob |-
  bWU=
---
I just got my brand new laptop : a Fujitsu LifeBook S760, with built-in 3G and running seven 64 bits.
I was impatient to try 3G, but unfortunatly, Orange Business Everywhere does not support this platform :-(
Fortunatly, i was able to play by using an opensource and free IPSec client :-D
here are the details :
<!--break-->
First, i need to establish a 3G connexion. This is a slam dunk thanks to the OneClick Internet tool that comes with the laptop. Configuration is trivial :
- APN : transpac.net
- USER : useX@my.company
- PASSWORD : whatever ...

Just click on Connect, and here we are : connected to the internet via the 3G card :
</code>
$ ipconfig
Configuration IP de Windows


Carte PPP OneClick Internet :

   Suffixe DNS propre à la connexion. . . : 
   Adresse IPv4. . . . . . . . . . . . . .: a.b.c.d
   Masque de sous-réseau. . . . . . . . . : 255.255.255.255
   Passerelle par défaut. . . . . . . . . : 0.0.0.0
</code>

We are given an IP address but so far, we are just able to establish an IPSec VPN to the company.

I downloaded the <a href="http://www.shrew.net/download/vpn">ShrewSoft VPN Client</a>

A few triks are needed to get some parameters for the connection, they are documented <a href="http://blog.jknet.org/post/2010/08/23/Gnou-Orange">here</a>.
You need to get :
- the IP address for WIFI
- the IP address for VPNIPSec
- the IP address for GPRS /* we use this one to connect from the 3G card */
- the private shared key (PSK)

Here is a shrew config file i use : save it as a .vpn text file, change what has to be changed, and import it :

<code>
n:version:2
n:network-ike-port:500
n:network-mtu-size:1380
n:client-addr-auto:0
n:network-natt-port:4500
n:network-natt-rate:15
n:network-frag-size:540
n:network-dpd-enable:1
n:client-banner-enable:0
n:network-notify-enable:1
n:client-wins-used:0
n:client-wins-auto:1
n:client-dns-used:0
n:client-dns-auto:0
n:client-splitdns-used:0
n:client-splitdns-auto:0
n:phase1-dhgroup:1
n:phase1-life-secs:86400
n:phase1-life-kbytes:0
n:vendor-chkpt-enable:1
n:phase2-life-secs:3600
n:phase2-life-kbytes:0
n:policy-nailed:1
n:policy-list-auto:1
s:network-host:<IP address for WIFI>
s:client-auto-mode:pull
s:client-iface:virtual
s:client-ip-addr:<private IP address given by Orange>
s:client-ip-mask:<private netmask given by Orange>
s:network-natt-mode:enable
s:network-frag-mode:enable
s:auth-method:mutual-psk-xauth
s:ident-client-type:address
s:ident-server-type:address
b:auth-mutual-psk:<obfuscated PSK>
s:phase1-exchange:main
s:phase1-cipher:3des
s:phase1-hash:md5
s:phase2-transform:esp-3des
s:phase2-hmac:md5
s:ipcomp-transform:disabled
n:phase2-pfsgroup:2
s:policy-level:auto
</code>

The PSK is stored obfuscated, it is necessary to edit the VPN config inside ShrewSoft Access Manager to change it. I was not able to retrieve automatically the private IP address/netmask, so i had to put this
information in the configuration.

Then click on Connect, enter your user/password as provided by orange : userX@my.company/yourpassword

and now, enjoy 3G ... but do not forget to disconnect from OneClick Internet to stop billing !
