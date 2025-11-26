@echo off
echo === Push Advancement Tracker to GitHub ===
echo.

cd /d "%~dp0"

echo Adding changes...
git add -A

echo.
set /p "msg=Enter commit message (or press Enter for default): "

if "%msg%"=="" (
    for /f "tokens=1-4 delims=/ " %%a in ('date /t') do set mydate=%%b/%%c/%%d
    for /f "tokens=1-2 delims=: " %%a in ('time /t') do set mytime=%%a:%%b
    set "msg=Update advancements %mydate% %mytime%"
)

echo.
echo Committing: %msg%
git commit -m "%msg%"

echo.
echo Pushing to GitHub...
git push

echo.
echo === Done! ===
pause

