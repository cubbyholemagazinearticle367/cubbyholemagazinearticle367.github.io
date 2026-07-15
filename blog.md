---
layout: page
title: Blog
permalink: /blog/
---

# Blog

Short case studies, build notes, and lessons learned from applied AI workflow projects.

## Latest posts

{% for post in site.posts %}
<article class="post-list-item">
  <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
  <p class="post-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
  <p>{{ post.excerpt | strip_html | truncate: 220 }}</p>
</article>
{% endfor %}
