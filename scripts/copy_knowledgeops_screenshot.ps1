param(
    [string]$SourcePath,
    [string]$SitePath = "$env:USERPROFILE\Desktop\spitnik11.github.io"
)

if ([string]::IsNullOrWhiteSpace($SourcePath)) {
    Write-Host "Usage: .\copy_knowledgeops_screenshot.ps1 -SourcePath 'C:\path\to\screenshot.png'"
    exit 1
}

$Destination = Join-Path $SitePath "assets\images\knowledgeops-demo.png"
Copy-Item $SourcePath $Destination -Force
Write-Host "Copied screenshot to $Destination"
