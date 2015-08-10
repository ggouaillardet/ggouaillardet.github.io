---
layout: post
title: Comment publier un site ouaibe
name: web publishing howto
created: 1108244766
categories: []
---
A plusieurs reprises, je me suis retrouv&eacute; face Ã  ce problÃ¨me d'apparence pourtant anodine : mon site ouaibe est hÃ©bergÃ©, et mon seul moyen de pousser du contenu est par ftp.
J'attendais un moyen simple et automatique pour exÃ©cuter cette tÃ¢che : une sorte de rsync Ã  travers ftp.
<!--break-->
J'ai Ã©tÃ© assez surpris de rÃ©aliser qu'il Ã©tait en fait assez difficile de trouver de tels outils. Heureusement, j'ai pu en trouver deux ... malheureusement, leurs codes sources ne sont pas publiÃ©s et ils ne tournent que sous Windows.
Ces outils sont <a href="http://www.cryer.co.uk/downloads/websitepublisher">Web Site Publister</a> et <a href="http://www.sitepublisher.net">Site Publisher</a>.

<a href="http://www.sitepublisher.net">Site Publisher</a> est un produit commercial. Ce n'est pas vraiment cher ( 24.95 US$ pour une utilisation personnelle et 29.95 US$ pour un usage professionnel ) et il est Ã©galement possible d'obtenir gratuitement une license d'Ã©valuation valide pendant 30 jours. J'ai Ã©tÃ© trÃ¨s satisfait par ce logiciel. On peut par exemple indiquer quels fichiers doivent Ãªtre transfÃ©rÃ©s et lesquels doivent Ãªtre ignorÃ©s, il est par ailleurs hautement configurable. La fonctionnalitÃ© clÃ© de Site Publisher est la synchronisation, et pas seulement l'upload : si un fichier est plus rÃ©cent sur le serveur ftp, il est alors tÃ©lÃ©chargÃ© et non pas publiÃ©. En rÃ©alitÃ©, cela s'avÃ¨re extrÃªmement utile : par exemple, des images peuvent Ãªtre publiÃ©es sur mon blog via Drupal, ou bien des fichiers temporaires peuvent Ãªtre crÃ©Ã©s; avec ce logiciel, je peux avoir une copie complÃ¨te sur mon ordinateur, ou mÃªme sur plusieurs machines. Cela me permet de modifier mon site depuis diffÃ©rentes machines, et ensuite d'avoir une copie Ã  jour en un endroit unique, sans avoir Ã  me soucier de ce qui a Ã©tÃ© fait et oÃ¹ ! De plus, on peut avoir un aperÃ§u des fichiers qui seront tÃ©lÃ©chargÃ©s ou publiÃ©s, et il est possible de modifier ce comportement avant de dÃ©marrer le vrai transfert.

<a href="http://www.cryer.co.uk/downloads/websitepublisher">Web Site Publister</a> est quant Ã  lui gratuit, bien que ses sources ne soient pas disponibles. Il offre toutes les fonctionnalitÃ©s nÃ©cessaires Ã  la publication d'un site ouaibe. Contrairement au prÃ©cÃ©dent logiciel, il peut seulement publier du contenu, mais il ne peut pas synchroniser un site. J'ai trouvÃ© quelques bugs trÃ©s mineurs que je devrais reporter. Il n'est pas vraiment configurable, mais encore une fois, il a tout ce qui est indispensable ... et il est gratuit. J'aime le mode "turbo" : uniquement les fichiers modifiÃ©s localement depuis le prÃ©cÃ©dent transfert sont publiÃ©s. Puisque les dates de modification ne sont pas rÃ©cupÃ©rÃ©es depuis le serveur, le gain de temps peut Ãªtre trÃ¨s apprÃ©ciable ! mais attention, cela peut s'avÃ©rer inconsistent et causer des dÃ©gats !

Aujourd'hui, j'utilise <a href="http://www.cryer.co.uk/downloads/websitepublisher">Web Site Publister</a>, principalement parce que je n'en ai pas un usage intensif ... et bien sur parce qu'il est gratuit. Si j'en prÃ©vois un plus grand usage, je vais sÃ©rieusement envisager l'achat de <a href="http://www.sitepublisher.net">Site Publisher</a> pour toutes ses fonctionnalitÃ©s.
Mon seul regret est que ces deux outils tournent uniquement sous Windows ... et comme je l'ai Ã©crit dans un <a href="/blog/?q=en/node/4">prÃ©cÃ©dent article</a>, <a href="http://www.colinux.org">coLinux</a> me permet de travailler le contenu de mon site sous Linux, et de pouvoir ensuite le publier avec des applications Windows ... sans avoir Ã  redÃ©marrer ma machine !
