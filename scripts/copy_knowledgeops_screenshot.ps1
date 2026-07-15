# Copies your KnowledgeOps Copilot screenshot into the GitHub Pages site.
# Expected screenshot name: knowledgeops-demo.png
# Run this from anywhere after saving your screenshot in the app project or Downloads/Desktop.

$SiteRoot = "$env:USERPROFILE\Desktop\spitnik11.github.io"
$Destination = Join-Path $SiteRoot "assets\images\knowledgeops-demo.png"

$PossibleSources = @(
    "$env:USERPROFILE\Desktop\KnowledgeOps-Copilot\screenshots\knowledgeops-demo.png",
    "$env:USERPROFILE\Desktop\KnowledgeOps-Copilot\screenshots\knowledgeops-demo.jpg",
    "$env:USERPROFILE\Desktop\KnowledgeOps-Copilot\screenshots\knowledgeops-demo.jpeg",
    "$env:USERPROFILE\Desktop\knowledgeops-demo.png",
    "$env:USERPROFILE\Desktop\knowledgeops-demo.jpg",
    "$env:USERPROFILE\Downloads\knowledgeops-demo.png",
    "$env:USERPROFILE\Downloads\knowledgeops-demo.jpg"
)

$Source = $PossibleSources | Where-Object { Test-Path $_ } | Select-Object -First 1

if (-not $Source) {
    Write-Host "Could not find knowledgeops-demo screenshot automatically." -ForegroundColor Yellow
    Write-Host "Save your screenshot as knowledgeops-demo.png in one of these places:" -ForegroundColor Yellow
    $PossibleSources | ForEach-Object { Write-Host "  $_" }
    Write-Host "Then run this script again." -ForegroundColor Yellow
    exit 1
}

New-Item -ItemType Directory -Force -Path (Split-Path $Destination) | Out-Null
Copy-Item $Source $Destination -Force
Write-Host "Screenshot copied to site assets:" -ForegroundColor Green
Write-Host $Destination
