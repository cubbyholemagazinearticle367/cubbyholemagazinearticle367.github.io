# Screenshot Guide

Use this path for the KnowledgeOps Copilot screenshot:

```text
assets/images/knowledgeops-demo.png
```

On Windows, file extensions may be hidden. If the file appears as `knowledgeops-demo`, right-click it, choose Properties, and confirm it is a PNG image.

After replacing the screenshot, push the site:

```powershell
cd "$env:USERPROFILE\Desktop\spitnik11.github.io"
git add -A
git commit -m "Update KnowledgeOps screenshot"
git pull origin main --rebase
git push
```
