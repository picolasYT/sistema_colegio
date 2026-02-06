@echo off
:: ==========================
:: BLOQUEO DE PAGINAS
:: ==========================
echo Bloqueando paginas...

set HOSTS=C:\Windows\System32\drivers\etc\hosts

find "roblox.com" %HOSTS% >nul
if errorlevel 1 (
    echo 127.0.0.1 roblox.com>>%HOSTS%
    echo 127.0.0.1 www.roblox.com>>%HOSTS%
)

find "discord.com" %HOSTS% >nul
if errorlevel 1 (
    echo 127.0.0.1 discord.com>>%HOSTS%
    echo 127.0.0.1 www.discord.com>>%HOSTS%
)

:: ==========================
:: MOSTRAR LOGO
:: ==========================
echo Mostrando logo del colegio...

start "" "https://files.catbox.moe/c4byzq.png"

:: Esperar 3 segundos
timeout /t 3 /nobreak >nul

:: ==========================
:: CERRAR NAVEGADOR
:: ==========================
taskkill /IM chrome.exe /F >nul 2>&1
taskkill /IM msedge.exe /F >nul 2>&1
taskkill /IM firefox.exe /F >nul 2>&1

exit
