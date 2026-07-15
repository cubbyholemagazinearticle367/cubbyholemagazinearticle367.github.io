# Copies your KnowledgeOps Copilot screenshot into the GitHub Pages site.
# Run this from the site folder after saving your screenshot in the app project.

$Source = "$env:USERPROFILE\Desktop\KnowledgeOps-Copilot\screenshots\knowledgeops-demo.png"
$Destination = "$env:USERPROFILE\Desktop\spitnik11.github.io\assets\images\knowledgeops-copilot-demo.png"

if (-not (Test-Path $Source)) {
    Write-Host "Could not find screenshot at: $Source" -ForegroundColor Yellow
    Write-Host "Save your screenshot there, or manually copy it to: $Destination"
    exit 1
}

Copy-Item $Source $Destination -Force
Write-Host "Screenshot copied to site assets." -ForegroundColor Green
Write-Host $Destination
