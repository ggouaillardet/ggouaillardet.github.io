---
layout: page
description: "A Clean Blog Theme by Start Bootstrap"
#permalink: /page1
name: home
---

URL is {{ page.url }}
{% if page.url == '/' %}
{% assign pagenumber = 0 %}
{% else %}
{% assign pagenumber = page.url | truncate: 6,"" | remove:'/page' | plus: '0' %}
{% endif %}
This is page {{ pagenumber }}
site.posts_per_page is {{ site.posts_per_page }}
{% assign posts=site.posts | where:"lang", page.lang | where:"type", 'post' %}
{% assign postnumber = 0 %}
{% assign firstpost = pagenumber | times:site.posts_per_page %}
{% assign lastpost = firstpost | plus:site.posts_per_page | minus:'1' %}
Posts starts at {{ firstpost }} and ends at {{ lastpost }}
{% for post in posts %}
{% if postnumber < firstpost %}
{% assign postnumber = postnumber | plus:'1' %}
{% continue %}
{% endif %}
{% if postnumber > lastpost %}
{% unless forloop.last %}
{% assign nextpage = pagenumber | plus:'1' %}
{% endunless %}
{% break %}
{% endif %}
<div class="post-preview">
    <a href="{{ post.url | prepend: site.baseurl }}">
        <h2 class="post-title">{{ postnumber :          post.title }}
        </h2>
        {% if post.subtitle %}
        <h3 class="post-subtitle">
            {{ post.subtitle }}
        </h3>
        {% endif %}
    </a>
    <p class="post-meta">Posted by {% if post.author %}{{ post.author }}{% else %}{{ site.title }}{% endif %} on {{ post.date | date: "%B %-d, %Y" }}</p>
</div>
<hr>
{% assign postnumber = postnumber | plus:'1' %}
{% endfor %}
<!--
{% include list.html %}
-->

<!-- Pager -->
<ul class="pager">
    {% if pagenumber > 0 %}
    <li class="previous">
        <a href="{{ pagenumber | minus:'1' | prepend: '/page' | prepend: site.baseurl }}">&larr; Newer Posts</a>
    </li>
    {% endif %}
    {% if nextpage %}
    <li class="next">
        <a href="{{ nextpage | prepend: '/page' | prepend: site.basurl }}">Older Posts &rarr;</a>
    </li>
    {% endif %}
</ul>
