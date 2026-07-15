---
layout: default
title: ""
---

{% assign project_posts = site.posts | sort: "date" | reverse %}

{% for post in project_posts %}
<article class="project-feed-item">
  <a class="project-feed-title" href="{{ post.url | relative_url }}">{{ post.title }}</a>

  {% if post.description %}
  <p>{{ post.description }}</p>
  {% else %}
  <p>{{ post.excerpt | strip_html | normalize_whitespace | truncate: 190 }}</p>
  {% endif %}

  <a class="project-feed-link" href="{{ post.url | relative_url }}">Read the full project case study →</a>
</article>
{% endfor %}
