# Duplicate Heading + Homepage Feed Patch

This patch is for:

`C:\Users\losth\Desktop\spitnik11.github.io`

It does four things:

1. Removes duplicated first Markdown headings when they match the page title.
2. Replaces the homepage with only a newest-to-oldest project/post feed.
3. Adds a short description to the KnowledgeOps post so the homepage teaser looks clean.
4. Adds CSS for the simplified project feed.

## How to run

Extract this patch folder, open PowerShell inside it, then run:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\APPLY_FIX_DUPLICATE_HEADINGS_PATCH.ps1
```

Then push your site:

```powershell
cd "$env:USERPROFILE\Desktop\spitnik11.github.io"
git add .
git commit -m "Fix duplicate headings and simplify homepage feed"
git pull origin main --rebase
git push
```

Or use your double-click push script if it is already inside the site folder.
