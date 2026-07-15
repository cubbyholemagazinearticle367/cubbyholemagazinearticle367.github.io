# Manual Patch Files for spitnik11.github.io

This zip contains the manual patches for your GitHub Pages site.

Target site folder:

C:\Users\losth\Desktop\spitnik11.github.io

## 1. Replace the homepage

Copy `index.md` from this patch folder into:

C:\Users\losth\Desktop\spitnik11.github.io\index.md

This removes the homepage header and makes the main body only show recent project posts from newest to oldest.

## 2. Add the homepage feed CSS

Open:

C:\Users\losth\Desktop\spitnik11.github.io\assets\main.scss

Then paste the contents of:

PROJECT_FEED_CSS_SNIPPET.scss

at the bottom of `main.scss`.

## 3. Fix duplicate page titles

For these files:

C:\Users\losth\Desktop\spitnik11.github.io\about.md
C:\Users\losth\Desktop\spitnik11.github.io\projects.md
C:\Users\losth\Desktop\spitnik11.github.io\prompting.md
C:\Users\losth\Desktop\spitnik11.github.io\blog.md
C:\Users\losth\Desktop\spitnik11.github.io\_posts\2026-07-10-knowledgeops-copilot.md

Remove the first repeated Markdown heading if it matches the title.

Example, change this:

---
layout: default
title: About
---

# About

Text starts here...

To this:

---
layout: default
title: About
---

Text starts here...

## 4. Add the KnowledgeOps description

Open:

C:\Users\losth\Desktop\spitnik11.github.io\_posts\2026-07-10-knowledgeops-copilot.md

Make sure the top front matter includes the `description:` line shown in:

KNOWLEDGEOPS_FRONT_MATTER_EXAMPLE.md

That description is what appears under the project title on the homepage.

## 5. Push the update

Run this in PowerShell:

cd "$env:USERPROFILE\Desktop\spitnik11.github.io"

git add .
git commit -m "Fix duplicate headings and simplify homepage feed"
git pull origin main --rebase
git push

Or use your double-click push script.
