param(
    [string]$SitePath = "$env:USERPROFILE\Desktop\spitnik11.github.io"
)

Write-Host "Applying project-feed homepage patch..." -ForegroundColor Cyan
Write-Host "Target site path: $SitePath" -ForegroundColor Cyan

if (!(Test-Path $SitePath)) {
    Write-Host "ERROR: Could not find the site folder at $SitePath" -ForegroundColor Red
    Write-Host "Pass the path manually like this:" -ForegroundColor Yellow
    Write-Host '.\APPLY_PROJECT_FEED_PATCH.ps1 -SitePath "C:\Users\losth\Desktop\spitnik11.github.io"'
    exit 1
}

$PatchRoot = Split-Path -Parent $MyInvocation.MyCommand.Path

$Files = @(
    "index.md",
    "assets\main.scss",
    "_posts\2026-07-10-knowledgeops-copilot.md",
    "PROJECT_FEED_PATCH_NOTES.md"
)

foreach ($File in $Files) {
    $Source = Join-Path $PatchRoot $File
    $Destination = Join-Path $SitePath $File
    $DestinationFolder = Split-Path -Parent $Destination

    if (!(Test-Path $DestinationFolder)) {
        New-Item -ItemType Directory -Force -Path $DestinationFolder | Out-Null
    }

    Copy-Item $Source $Destination -Force
    Write-Host "Patched $File" -ForegroundColor Green
}

Write-Host "Done. Review the homepage, then commit and push." -ForegroundColor Green
