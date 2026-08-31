@echo off
chcp 65001 >nul
title JJ Paper - Explorador de datos MixNet
echo.
echo ========================================================
echo    EXPLORADOR DE DATOS MIXNET  (solo lectura)
echo ========================================================
echo.
echo  Buscando Node.js instalado...
echo.

set NODE=node

where node >nul 2>nul
if %errorlevel%==0 goto RUN

REM No esta en el PATH: probar rutas comunes de instalacion
set NODE=
for %%p in (
  "%ProgramFiles%\nodejs\node.exe"
  "%ProgramFiles(x86)%\nodejs\node.exe"
  "%LOCALAPPDATA%\Programs\nodejs\node.exe"
  "%APPDATA%\npm\node.exe"
  "C:\nodejs\node.exe"
  "C:\Program Files\nodejs\node.exe"
) do (
  if exist %%p set "NODE=%%~p"
)

if defined NODE goto RUN

echo  [ERROR] No se encontro Node.js.
echo.
echo  Para ejecutar este script se necesita Node.js (v13 o superior).
echo  Instala Node.js LTS desde:  https://nodejs.org/
echo  (Elige "Windows Installer .msi", instala y acepta las opciones
echo   por defecto; luego cierra y abre la ventana y vuelve a probar).
echo.
pause
exit /b 1

:RUN
echo  Node encontrado.
echo.
where node >nul 2>nul && set "NODE=node"
"%NODE%" "%~dp0explorar-mixnet.cjs" %*
echo.
echo --------------------------------------------------------
echo  Terminado. Los reportes estan junto a este archivo:
echo    reporte_mixnet.txt
echo    reporte_mixnet.json
echo.
pause
