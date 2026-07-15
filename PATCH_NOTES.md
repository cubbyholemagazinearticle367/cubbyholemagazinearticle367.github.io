# Dark Mode + Screenshot Patch

This patch makes the GitHub Pages site dark mode by default and changes the app screenshot path to:

```text
assets/images/knowledgeops-demo.png
```

## Apply the patch

1. Make sure your site folder is here:

```text
C:\Users\losth\Desktop\spitnik11.github.io
```

2. Copy the contents of this patch folder into that site folder and allow files to be replaced.

3. Save your real screenshot here:

```text
C:\Users\losth\Desktop\spitnik11.github.io\assets\images\knowledgeops-demo.png
```

4. Commit and push:

```powershell
cd "$env:USERPROFILE\Desktop\spitnik11.github.io"
git add .
git commit -m "Add dark mode and KnowledgeOps screenshot"
git push
```

## Files changed

- `assets/main.scss`
- `assets/css/style.css`
- `index.md`
- `projects.md`
- `_posts/2026-07-10-knowledgeops-copilot.md`
- `README.md`
- `SCREENSHOT_GUIDE.md`
- `scripts/copy_knowledgeops_screenshot.ps1`
- `assets/images/knowledgeops-demo.png`
