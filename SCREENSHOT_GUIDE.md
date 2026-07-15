# Screenshot Guide

Use the dark-mode version of KnowledgeOps Copilot for the first screenshot.

## Recommended screenshot steps

1. Open the app EXE:

```powershell
cd "$env:USERPROFILE\Desktop\KnowledgeOps-Copilot"
& ".\dist\KnowledgeOpsCopilot.exe"
```

2. Load the sample docs folder.

3. Ask this demo question:

```text
What is the password reset process?
```

4. Make sure the answer panel and source list are visible.

5. Press `Win + Shift + S`.

6. Drag over the app window.

7. Save the image as:

```text
$env:USERPROFILE\Desktop\spitnik11.github.io\assets\images\knowledgeops-demo.png
```

Important: the site now points to `assets/images/knowledgeops-demo.png`. Windows may hide `.png`, so a file that appears as `knowledgeops-demo` may already be correct.

## Optional copy script

If you save the screenshot in the app project under `screenshots`, you can run:

```powershell
cd "$env:USERPROFILE\Desktop\spitnik11.github.io"
.\scripts\copy_knowledgeops_screenshot.ps1
```
