# Pina Applied AI Lab

GitHub Pages portfolio and case-study site for Gabriel Pina. The site uses a dark-mode design by default.

Suggested repository name:

```text
spitnik11.github.io
```

After publishing, the site should be available at:

```text
https://spitnik11.github.io
```

## Included pages

- Home project feed
- About/Bio
- Prompting Practices
- First case study post: KnowledgeOps Copilot

The old `projects.md` and `blog.md` pages were intentionally removed to keep the site simpler. The homepage now acts as the project/post feed.

## Screenshot setup

The site expects your app screenshot here:

```text
assets/images/knowledgeops-demo.png
```

Save your real screenshot with that same filename. The first post already points to that path.

## Push updates

From Desktop:

```powershell
cd "$env:USERPROFILE\Desktop\spitnik11.github.io"
git add -A
git commit -m "Update portfolio site"
git pull origin main --rebase
git push
```

## Editing the site

Main files:

```text
index.md       = homepage project feed
about.md       = bio page
prompting.md   = prompting practices page
_posts/        = case-study posts
assets/main.scss = site styling
_layouts/default.html = header/sidebar/footer layout
```

## Adding a new project post

Create a new file in `_posts/` using this format:

```text
YYYY-MM-DD-project-title.md
```

Example:

```text
2026-07-20-service-triage-copilot.md
```

Every post should include a `description:` field because the homepage uses it as the short teaser under the project title.


## Latest requested changes

- Removed the GitHub button from the top header.
- Added Home as the first link in the sidebar.
- Replaced project-specific GitHub links with a simple GitHub profile link.
- Removed Projects and Blog pages.
- Removed the featured project sidebar.
- Made homepage post cards larger.
- Replaced the KnowledgeOps screenshot with `assets/images/knowledgeops-demo.png`.
