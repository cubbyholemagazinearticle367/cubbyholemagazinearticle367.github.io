# Latest Site Update

This full site zip includes the requested layout changes:

- Removed top GitHub button.
- Added Home at the top of the sidebar.
- Sidebar GitHub link points to `https://github.com/spitnik11`.
- Removed the featured project sidebar.
- Removed `projects.md` and `blog.md`.
- Enlarged homepage project cards.
- Replaced screenshot asset with `assets/images/knowledgeops-demo.png`.

After replacing your local site folder, push with:

```powershell
cd "$env:USERPROFILE\Desktop\spitnik11.github.io"
git add -A
git commit -m "Simplify header sidebar and update screenshot"
git pull origin main --rebase
git push
```
