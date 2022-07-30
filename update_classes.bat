@echo off
cd /d %~dp0
net session >nul 2>&1
if not %errorlevel%==0 goto :abort
if exist temp rmdir /s /q temp> nul
mkdir temp\tex\latex\tudscr\logo
xcopy source temp\
xcopy source\logo temp\tex\latex\tudscr\logo
cd temp
echo \BaseDirectory{.}> docstrip.cfg
echo \UseTDS>> docstrip.cfg
tex tudscr.ins
kpsewhich --var-value=TEXMFLOCAL> texmfpath.tmp
set /p texmfpath=< texmfpath.tmp
xcopy tex "%texmfpath%\tex\" /s /y
cd %~dp0
if exist temp rmdir /s /q temp> nul
texhash
exit /b 0
:abort
echo.
echo  =====================================================================
echo.
echo   Installation muss als Admin erfolgen
echo.
echo  =====================================================================
echo.
pause
exit /b 0
