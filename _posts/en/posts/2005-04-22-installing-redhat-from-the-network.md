---
layout: post
title: installing RedHat from the network
name: RedHat network install
created: 1114120925
categories:
- !ruby/string:Sequel::SQL::Blob |-
  bGludXg=
---
Here is a mini howto install a RedHat distro on a machine which does not have a cdrom player, but a nic with etherboot.<br />
In this example, I will detail how I installed a dual cpu Opteron with Etherboot on an eepro 100 from my laptop running Fedora core 3.<br />
<!--break-->
<ol>
<li>Get the iso images from RedHat and store them into /home/iso</li>
<li>mount the iso images :
<code>mkdir /mnt/rhel-3-AMD64-disc1 /mnt/rhel-3-AMD64-disc2 /mnt/rhel-3-AMD64-disc3 /mnt/rhel-3-AMD64-disc4
mount -t iso9660 -o loop,ro /home/iso/rhel-3-AMD64-disc1.iso /mnt/rhel-3-AMD64-disc1
mount -t iso9660 -o loop,ro /home/iso/rhel-3-AMD64-disc2.iso /mnt/rhel-3-AMD64-disc2
mount -t iso9660 -o loop,ro /home/iso/rhel-3-AMD64-disc3.iso /mnt/rhel-3-AMD64-disc3
mount -t iso9660 -o loop,ro /home/iso/rhel-3-AMD64-disc4.iso /mnt/rhel-3-AMD64-disc4</code></li>
<li>concatenate the iso images on a ftp server
<code>mkdir /var/ftp/rhel-3-AMD64
mount -t unionfs -o dirs=/mnt/rhel-3-AMD64-disc1=ro:/mnt/rhel-3-AMD64-disc2=ro:/mnt/rhel-3-AMD64-disc3=ro:/mnt/rhel-3-AMD64-disc4=ro none /var/ftp/rhel-3-AMD64</code></li>
<li>Start the ftp server if necessary
<code>service vsftpd start</code><li>
<li>create the boot image
<code>cd /tftpboot
cp /var/ftp/rhel-3-AMD64/images/pxeboot/vmlinuz /var/ftp/rhel-3-AMD64/images/pxeboot/initrd.img .
mknbi-linux --output=kernel.nbi vmlinuz initrd.img</code></li>
<li>update the dhcp server configuration. here is a sample :
<code>ddns-update-style interim;
subnet 192.168.0.0 netmask 255.255.255.0 {
&nbsp;&nbsp;&nbsp;&nbsp;option vendor-encapsulated-options 3c:09:45:74:68:65:72:62:6f:6f:74:ff;
&nbsp;&nbsp;&nbsp;&nbsp;host rhel {
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hardware ethernet xx:xx:xx:xx:xx:xx;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fixed-address 192.168.0.2;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;filename "kernel.nbi";
&nbsp;&nbsp;&nbsp;&nbsp;}
}</code></li>
<li>restart the dhcpd server
<code>service dhcpd restart</code></li>
<li>Boot the target machine, enter the bios and choose to boot on the eepro card</li>
<li>The machine is now booting on the image it got from the network</li>
<li>Choose a ftp install, choose dhcp, enter the ip adress of the ftp server and the directory
</ol>
And now it is just like a normal install !
