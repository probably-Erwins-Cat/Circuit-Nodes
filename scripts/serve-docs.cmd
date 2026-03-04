@echo off
setlocal

REM Run the local GitHub Pages/Jekyll preview for the docs.
cd /d "%~dp0\.."

echo Starting local docs server with live reload...
echo URL: http://127.0.0.1:4000/Circuit-Nodes/
echo Press Ctrl+C to stop.
echo.

jekyll serve --source docs --destination _site --host 127.0.0.1 --port 4000 --livereload --force_polling

