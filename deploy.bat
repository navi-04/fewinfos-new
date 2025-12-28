@echo off
REM FewInfos Deployment Script for Windows
REM This script deploys your React app to GitHub Pages

echo.
echo ================================================
echo   FewInfos - GitHub Pages Deployment
echo ================================================
echo.

REM Check if we're in the right directory
if not exist "package.json" (
    echo [ERROR] package.json not found. Are you in the project root?
    pause
    exit /b 1
)

REM Check if git is initialized
if not exist ".git" (
    echo [ERROR] Not a git repository. Please run 'git init' first.
    pause
    exit /b 1
)

REM Install dependencies if needed
if not exist "node_modules" (
    echo [INFO] Installing dependencies...
    call npm install
)

REM Build the project
echo.
echo [INFO] Building the project...
call npm run build

if errorlevel 1 (
    echo.
    echo [ERROR] Build failed. Please fix errors and try again.
    pause
    exit /b 1
)

REM Deploy to GitHub Pages
echo.
echo [INFO] Deploying to GitHub Pages...
call npm run deploy

if errorlevel 1 (
    echo.
    echo [ERROR] Deployment failed. Please check the errors above.
    pause
    exit /b 1
)

echo.
echo ================================================
echo   Deployment Successful!
echo ================================================
echo.
echo Your site will be live at:
echo https://navi-04.github.io/fewinfos-new
echo.
echo It may take 2-3 minutes for changes to appear.
echo.
echo Next steps:
echo 1. Go to: https://github.com/navi-04/fewinfos-new/settings/pages
echo 2. Ensure Source is set to 'gh-pages' branch
echo 3. Wait a few minutes and visit your site!
echo.
pause
