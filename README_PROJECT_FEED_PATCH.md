# Project feed homepage patch

This patch simplifies the homepage body so it lists projects from newest to oldest. Each project shows the title, a short description, and a link to the full case study.

## Apply

1. Extract this patch zip.
2. Open PowerShell inside the extracted folder.
3. Run:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\APPLY_PROJECT_FEED_PATCH.ps1
```

The script expects your site at:

```text
C:\Users\losth\Desktop\spitnik11.github.io
```

Then push your site changes.
