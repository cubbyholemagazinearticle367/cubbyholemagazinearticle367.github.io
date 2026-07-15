@echo off
setlocal

REM All-in-one double-click Git push script for:
REM C:\Users\losth\Desktop\spitnik11.github.io

cd /d "%~dp0"

echo.
echo ============================================================
echo  Pushing updates for spitnik11.github.io
echo ============================================================
echo.
echo Current folder:
echo %cd%
echo.

if not exist ".git" (
    echo ERROR: This folder does not contain a .git folder.
    echo Make sure this file is inside:
    echo C:\Users\losth\Desktop\spitnik11.github.io
    echo.
    pause
    exit /b 1
)

set /p COMMIT_MSG=Enter commit message or press Enter for default: 

if "%COMMIT_MSG%"=="" (
    set COMMIT_MSG=Update portfolio site
)

echo.
echo Adding changed files...
git add -A

echo.
echo Checking for changes...
git diff --cached --quiet
if %errorlevel%==0 (
    echo No local file changes to commit.
) else (
    echo Committing changes...
    git commit -m "%COMMIT_MSG%"
    if errorlevel 1 (
        echo.
        echo ERROR: Commit failed.
        pause
        exit /b 1
    )
)

echo.
echo Pulling latest changes from GitHub...
git pull origin main --rebase
if errorlevel 1 (
    echo.
    echo ERROR: Pull/rebase failed.
    echo Run git status in PowerShell to check for conflicts.
    pause
    exit /b 1
)

echo.
echo Pushing to GitHub...
git push
if errorlevel 1 (
    echo.
    echo ERROR: Push failed.
    pause
    exit /b 1
)

echo.
echo ============================================================
echo  Done. Site updates pushed successfully.
echo ============================================================
echo.
pause
