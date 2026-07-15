---
layout: default
title: ""
permalink: /
---

<div class="project-feed">
{% assign project_posts = site.posts | sort: "date" | reverse %}
{% for post in project_posts %}
  <article class="project-card project-card-large">
    <p class="project-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
    <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
    {% if post.description %}
      <p>{{ post.description }}</p>
    {% else %}
      <p>{{ post.excerpt | strip_html | normalize_whitespace | truncate: 190 }}</p>
    {% endif %}
    <a class="read-more" href="{{ post.url | relative_url }}">Read the full project case study →</a>
  </article>
{% endfor %}
</div>
