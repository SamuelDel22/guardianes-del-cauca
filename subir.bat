@echo off
chcp 65001 >nul
setlocal

REM ============================================
REM  Sube el progreso de Guardianes del Cauca a GitHub
REM  Poner este archivo DENTRO de la carpeta del proyecto
REM  (la que tiene game.rmmzproject) y darle doble clic.
REM  IMPORTANTE: cierra RPG Maker MZ antes de subir.
REM ============================================

set REPO_URL=https://github.com/SamuelDel22/guardianes-del-cauca.git

if not exist "game.rmmzproject" (
  echo No encuentro game.rmmzproject en esta carpeta.
  echo Mueve este archivo a la carpeta del proyecto y vuelve a intentarlo.
  pause
  exit /b 1
)

if not exist ".git" (
  echo Primera vez: iniciando el repositorio...
  git init
  git branch -M main
  git remote add origin %REPO_URL%
)

set FECHA=%date% %time:~0,5%

git add .
git commit -m "Progreso %FECHA%"
git push -u origin main

echo.
echo Listo. Si arriba ves errores, tomale captura y mandamela.
pause
