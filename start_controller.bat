@echo off
rem KART PILOT: start a local web server (Web Bluetooth needs localhost) and open Chrome/Edge
cd /d "%~dp0"
start "kart server" /min python -m http.server 8765 --bind 127.0.0.1
timeout /t 2 /nobreak >nul
start "" "http://localhost:8765/kart_controller.html"
