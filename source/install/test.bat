@echo off
rem
rem Installation TUD-CD-Schriften unter Windows
rem
rem Autor: Falk Hanisch
rem
rem getestet auf:
rem Microsoft Windows Vista Business
rem Microsoft Windows 7 Professional x64
rem Microsoft Windows 8 Pro x64
rem
rem in Kombination mit:
rem MiKTeX 2.9 32-bit
rem Tex Live 2013
rem Tex Live 2014
rem
echo.
echo  =====================================================================
echo   Installation TUD-CD-Schriften unter Windows
echo.
cd /d %~dp0
set missing=false
if exist tudscrtemp rmdir /s /q tudscrtemp> nul
mkdir tudscrtemp\converted
cd tudscrtemp
call:checkfile "7za.exe"
call:checkfile "Univers_PS.zip"
call:checkfile "DIN_Bd_PS.zip"
call:checkfile "tudscrfonts.zip"
call:checkpackage "fontinst.sty"
call:checkpackage "cmbright.sty"
call:checkpackage "iwona.sty"
if "%missing%" == "true" goto :abort
tex --version> distrib.tmp
set /p distrib=< distrib.tmp
kpsewhich --var-value=TEXMFHOME> texmfpath.tmp
set /p texmfpath=< texmfpath.tmp
if "%texmfpath%"=="" (
  set texmfpath=%USERPROFILE%\texmf
  setlocal enabledelayedexpansion
  echo !texmfpath!> texmfpath.tmp
  endlocal
)
:MiKTeX
  echo %distrib% | find "MiKTeX"> nul
  if errorlevel 1 goto :TeXLive
  set distrib="MiKTeX"
  echo   MiKTeX-Distribution aktiv
  echo  =====================================================================
  echo.
  goto :resume
:TeXLive
  echo %distrib% | find "TeX Live"> nul
  if errorlevel 1 goto :nothing
  set distrib="TeXLive"
  echo   TeX Live-Distribution aktiv
  echo  =====================================================================
  echo.
  goto :resume
:nothing
  echo   weder TeX Live noch MiKTeX gefunden, Abbruch der Installation
  echo  =====================================================================
  echo.
  goto :end
:resume
  echo.
  echo  =====================================================================
  echo   Installation der TUD-CD-Schriften in lokales Verzeichnis.
  echo.
  echo   Es wird empfohlen, die TUD-CD-Schriften in ein separates
  echo   Verzeichnis im lokalen Benutzerpfad zu installieren:
  echo.
  echo   %texmfpath%
  echo.
:proof_userinput
  echo  =====================================================================
  echo.
  echo   Soll das Verzeichnis %texmfpath% genutzt werden?
  if not exist "%texmfpath%" (
    echo   Das angegebene Verzeichnis existiert nicht, wird aber erstellt.
  )
  echo   [j]a (ENTER) / [n]ein:
  echo.
  set /p texmfpath=< texmfpath.tmp
  set w=
  set /p w=
  echo.
  if /i "%w%"=="" goto install
  if /i "%w%"=="j" goto install
  if /i "%w%"=="n" goto set_texmfpath
  goto proof_userinput
:set_texmfpath
  set texmfpath=
  echo   Geben Sie das Installationsverzeichnis an (ohne Anfuerungszeichen):
  echo.
  set /p texmfpath=
  echo %texmfpath%> texmfpath.tmp
  goto proof_userinput
:install
  echo.
  echo  =====================================================================
  echo   Installation der TUD-CD-Schriften in:
  echo   %texmfpath%
  echo  =====================================================================
  echo.
  set /p texmfpath=< texmfpath.tmp
  if not exist "%texmfpath%" mkdir "%texmfpath%"
  cd /d %~dp0
  if %distrib%=="MiKTeX" goto :MiKTeXHash
  goto :TeXLiveHash
:MiKTeXHash
  echo %texmfpath%
  initexmf --register-root="%texmfpath%"
  initexmf --update-fndb="%texmfpath%"
  updmap	
  set mapcfg="%texmfpath%/miktex/config/updmap.cfg"
  if exist %mapcfg% goto :updatemap
  :newmap
    if not exist "%texmfpath%/miktex/config" (
      mkdir "%texmfpath%/miktex/config"
    )
echo %mapcfg%
    echo Map tudscr.map> %mapcfg%
    goto :endmap
  :updatemap
    set /p var=< %mapcfg%
    echo %var% | find "Map tudscr.map"> nul
    if errorlevel 1 echo Map tudscr.map>> %mapcfg%
  :endmap
  initexmf --mkmaps
  goto :end
:TeXLiveHash
  texhash
  updmap-sys --enable Map=tudscr.map
  goto :end
:end
  echo.
  echo  =====================================================================
  echo   Die Installation wird beendet, temporaere Dateien werden geloescht.
  echo  =====================================================================
  echo   Dokumentation und Beispiele fuer das TUD-KOMA-Script-Bundle sind
  echo   ueber den Konsolenaufruf 'texdoc tudscr' zu finden.
  echo  =====================================================================
  echo.
  pause
  cd /d %~dp0
  rmdir /s/q tudscrtemp
  echo.
  exit 0
:abort
  echo.
  echo  =====================================================================
  echo   Abbruch der Installation, temporaere Dateien werden geloescht.
  echo  =====================================================================
  echo.
  pause
  cd /d %~dp0
  rmdir /s/q tudscrtemp
  exit 0
:checkfile
  if not exist ../%~1 (
    set missing=true
    call:missingfile %~1
  )
  goto:eof
:missingfile
  echo  =====================================================================
  echo.
  echo   Die Datei %~1 wurde nicht gefunden. Diese wird fuer die
  echo   Installation zwingend benoetigt. Bitte kopieren Sie %~1
  echo   in das Verzeichnis des Skriptes und fuehren dieses abermals aus.
  echo.
  echo  =====================================================================
  goto:eof
:checkpackage
  kpsewhich %~1> package.tmp
  set /p package=< package.tmp
  if "%package%"=="" (
    set missing=true
    call:missingpackage %~1
  )
  goto:eof
:missingpackage
  echo  =====================================================================
  echo.
  echo   Das LaTeX-Paket %~1 wurde nicht gefunden. Dieses wird fuer
  echo   die Schriftinstallation zwingend benoetigt. Bitte %~1
  echo   installieren und danach dieses Skript abermals ausfuehren.
  echo.
  echo  =====================================================================
  goto:eof
