---
layout: page
title: Projects
permalink: /
---

A running list of applied AI projects, newest to oldest. Each project links to a full case study with the problem, workflow, technical build, limitations, and next iteration.

<div class="project-feed">
{% assign project_posts = site.posts | sort: "date" | reverse %}
{% for post in project_posts %}
  <article class="project-card">
    <p class="project-meta">{{ post.date | date: "%B %-d, %Y" }}</p>
    <h2><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
    {% if post.description %}
      <p>{{ post.description }}</p>
    {% else %}
      <p>{{ post.excerpt | strip_html | truncatewords: 34 }}</p>
    {% endif %}
    <a class="read-more" href="{{ post.url | relative_url }}">Read the full project case study →</a>
  </article>
{% endfor %}
</div>
