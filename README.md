# Pina Applied AI Lab

GitHub Pages portfolio and case-study site for Gabriel Pina.

Suggested repository name:

```text
spitnik11.github.io
```

After publishing, the site should be available at:

```text
https://spitnik11.github.io
```

## Included pages

- Home
- About/Bio
- Projects
- Blog
- Prompting Practices
- First case study post: KnowledgeOps Copilot

## Screenshot setup

The site currently includes a placeholder app screenshot:

```text
assets/images/knowledgeops-copilot-demo.png
```

Replace that file with your real screenshot using the same filename. The home page, projects page, and first post already point to that path.

## PowerShell setup

From Desktop:

```powershell
cd "$env:USERPROFILE\Desktop\spitnik11.github.io"
git init
git add .
git commit -m "Initial GitHub Pages portfolio site"
git branch -M main
git remote add origin https://github.com/spitnik11/spitnik11.github.io.git
git push -u origin main
```

## Editing the site

Pages are Markdown files:

```text
index.md
about.md
projects.md
prompting.md
blog.md
```

Blog posts live in:

```text
_posts/
```

Jekyll blog post filenames must follow this pattern:

```text
YYYY-MM-DD-post-title.md
```

Example:

```text
2026-07-10-knowledgeops-copilot.md
```

## Adding a new post

1. Copy the template in `_posts/2026-07-10-knowledgeops-copilot.md`.
2. Rename it with a new date and title.
3. Edit the front matter at the top.
4. Add the post link to `blog.md` if you want it featured manually.
5. Commit and push.

## Updating links

Most important links are in:

- `_config.yml`
- `about.md`
- `projects.md`
- each post in `_posts/`
