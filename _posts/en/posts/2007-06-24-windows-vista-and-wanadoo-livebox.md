---
layout: post
title: Windows Vista and Wanadoo Livebox
created: 1182683094
categories: []
---
My girlfriend bought a brand new Toshiba laptop running Windows Vista, and connecting it to my wireless network was not straightforward ...<!--break-->
My Wanadoo Livebox has firmware INVENTEL version : v5.08, and i am running WPA or WEP encryption.
After i enter the WPA key on the laptop, windows tries to connect to the wireless network for a while and then fails ... The thing here is it simply cannot register its mac address into the livebox. So here is the trick :
- i changed the encryption mode to "WPA only", and retry to connect. This time, it was successful and the mac address of the laptop was registered
- then i changed the encryption mode back to "WPA or WEP", and the laptop was able to connect the the wireless network !
Fun, isn't it ;-)
