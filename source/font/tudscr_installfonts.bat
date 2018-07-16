@echo off
::
:: Autor: Falk Hanisch
::
:: getestet auf:
:: Microsoft Windows 7 Professional x64
:: Microsoft Windows 8 Pro x64
::
:: in Kombination mit:
:: MiKTeX 2.9 32-bit
:: MiKTeX Portable 2.9 32-bit
:: MiKTeX 2.9 64-bit
:: TeX Live 2016
:: TeX Live 2016 Portable
::
echo.
echo  =====================================================================
echo.
echo   %~dp0
echo.
echo  =====================================================================
echo.
echo   Installation der Open Sans Schriften zur Verwendung mit TUD-Script
echo     2018/06/15 v2.06 TUD-Script
echo.
cd /d %~dp0
set familyname=fdd
set temppath=%~dp0%familyname%temp
set sourcepath=%~dp0%familyname%
set destfolder=tudscros
if exist %temppath% rmdir /s /q %temppath%> nul
if not exist %temppath% mkdir %temppath%
cd %temppath%
call :gettexpath
if "%texpath%"=="" goto :abort
net session >nul 2>&1
if errorlevel 1 (
  set admin=false
) else (
  set admin=true
)
set texmfpath=
if "%admin%"=="true" (
  if "%miktex%"=="true" (
    kpsewhich --var-value=TEXMFSYSVAR> texmfpath.tmp
  ) else (
    kpsewhich --var-value=TEXMFLOCAL> texmfpath.tmp
  )
  echo   Mehrbenutzerinstallation ^(Administrator^).
) else (
  if "%miktex%"=="true" (
    kpsewhich --var-value=TEXMFVAR> texmfpath.tmp
  ) else (
    kpsewhich --var-value=TEXMFHOME> texmfpath.tmp
  )
  echo   Einzelbenutzerinstallation.
)
echo.
echo  =====================================================================
echo  =====================================================================
echo.
if "%miktex%"=="true" (
  if "%portable%"=="true" (
    setlocal enabledelayedexpansion
      pushd !cd!
      cd /d !texpath:~,2!
      cd !texpath:~,-10!\..\..\..
      set texmfpath=!cd!\texmf
      popd
      echo !texmfpath!> texmfpath.tmp
    endlocal
  )
)
set /p texmfpath=< texmfpath.tmp
echo   Bitte geben Sie das gewuenschte Installationsverzeichnis an.
echo   Dieses sollte sich jenseits der Distributionsordnerstruktur
if "%portable%"=="true" (
  echo   auf dem USB-Stick befinden.
) else (
  if "%admin%"=="true" (
    echo   in einem Pfad mit Lese-Zugriff fuer alle Benutzer befinden.
  ) else (
    echo   in einem lokalen Benutzerpfad befinden.
  )
)
echo.
echo  =====================================================================
echo.
echo   Sie sollten nachfolgend den eingestellten Standardpfad verwenden.
echo   Aendern Sie diesen nur, wenn Sie genau wissen, was Sie tun.
:proof_userinput
echo.
set /p texmfpath=< texmfpath.tmp
set "texmfpath=%texmfpath:/=\%"
if "%texmfpath:~-1%"=="\" set texmfpath=%texmfpath:~,-1%
echo %texmfpath%> texmfpath.tmp
echo.
echo   %texmfpath%
echo.
echo   Soll dieser Pfad genutzt werden?
if not exist "%texmfpath%" (
  echo   Der angegebene Ordner existiert nicht, wird jedoch erstellt.
)
echo   [j]a ^(ENTER^) / [n]ein:
echo.
set w=
set /p w=
echo.
if /i "%w%"=="" goto :install
if /i "%w%"=="j" goto :install
if /i "%w%"=="n" goto :set_texmfpath
goto :proof_userinput
:set_texmfpath
set texmfpath=
echo   Geben Sie das Installationsverzeichnis an ^(ohne Anfuerungszeichen^):
echo.
set /p texmfpath=
echo %texmfpath%> texmfpath.tmp
echo.
goto :proof_userinput
:install
echo.
echo  =====================================================================
echo   Installation in folgenden Pfad:
echo   %texmfpath%
echo  =====================================================================
echo.
set updmapsys=true
kpsewhich --var-value=TEXMFVAR> texmfvar.tmp
set /p texmfvar=< texmfvar.tmp
if exist "%texmfvar%\fonts\map" set updmapsys=false
xcopy "%sourcepath%\type1\*.*" "%texmfpath%\fonts\type1\%destfolder%\"     /s /y
xcopy "%sourcepath%\afm\*.*"   "%texmfpath%\fonts\afm\%destfolder%\"       /s /y
xcopy "%sourcepath%\tfm\*.*"   "%texmfpath%\fonts\tfm\%destfolder%\"       /s /y
xcopy "%sourcepath%\vf\*.*"    "%texmfpath%\fonts\vf\%destfolder%\"        /s /y
xcopy "%sourcepath%\enc\*.*"   "%texmfpath%\fonts\enc\dvips\%destfolder%\" /s /y
xcopy "%sourcepath%\map\*.*"   "%texmfpath%\fonts\map\dvips\%destfolder%\" /s /y
xcopy "%sourcepath%\fd\*.*"    "%texmfpath%\tex\latex\%destfolder%\fonts\" /s /y
set "texmfpath=%texmfpath:\=/%"
set mapfile=%familyname%.map
if "%miktex%"=="true" goto :MiKTeXHash
:TeXLiveHash
texhash
if "%admin%"=="false"      goto :TeXLiveSysMap
if "%updmapsys%"=="false"  goto :TeXLiveUserMap
:TeXLiveSysMap
echo  =====================================================================
echo   Aufruf von 'updmap-sys'
echo  =====================================================================
updmap-sys --enable Map=%mapfile% --force
if "%updmapsys%" == "true"  goto :end
:TeXLiveUserMap
echo  =====================================================================
echo   Aufruf von 'updmap'
echo  =====================================================================
updmap --enable Map=%mapfile% --force
goto :end
:MiKTeXHash
set "texmfpath=%texmfpath:/=\%"
set mapcfg=%texmfpath%\miktex\config\updmap.cfg
if not exist "%mapcfg%" (
  if not exist "%texmfpath%\miktex\config" (
    mkdir "%texmfpath%\miktex\config"
  )
  echo Map %mapfile%> "%mapcfg%"
) else (
  find "Map %mapfile%" "%mapcfg%"> nul
  if errorlevel 1 echo Map %mapfile%>> "%mapcfg%"
)
if "%admin%"=="true" (
  if "%portable%"=="true" initexmf --admin --register-root="%texmfpath%"
  initexmf --admin --update-fndb="%texmfpath%"
  initexmf --admin --mkmaps
) else (
  if "%portable%"=="true" initexmf --register-root="%texmfpath%"
  initexmf --update-fndb="%texmfpath%"
  initexmf --mkmaps
)
set "texmfpath=%texmfpath:\=/%"
:abort
  echo.
  echo  =====================================================================
  echo   Abbruch der Installation, temporaere Dateien werden geloescht.
  echo  =====================================================================
  echo.
  pause
  cd /d %~dp0
  if exist %temppath% rmdir /s /q %temppath%> nul
  exit /b 0
:end
  echo.
  echo  =====================================================================
  echo   Die Installation wird beendet.
  echo   Der Ordner mitsamt aller temporaeren Dateien wird geloescht.
  echo  =====================================================================
  echo   Dokumentation und Beispiele fuer das TUD-Script-Bundle sind
  echo   ueber den Konsolenaufruf 'texdoc tudscr' zu finden.
  echo  =====================================================================
  echo.
  pause
  cd /d %~dp0
  if exist %temppath% rmdir /s /q %temppath%> nul
  echo.
  exit /b 0
::
:: Funktionen
::
:gettexpath
  set texpath=
  where tex> nul 2> nul> texpath.tmp
  set /p texpath=<texpath.tmp
  if "%texpath%"=="" (
    echo   LaTeX-Distribution wurde nicht gefunden
    goto :eof
  ) 
  set portable=false
  for /f "usebackq tokens=1,2" %%a in (
    `wmic logicaldisk get caption^,drivetype`
  ) do (
    if "%%a"=="%texpath:~,2%" (
      if %%b==2 set portable=true
    )
  )
  if "%portable%"=="true" (
    echo   portable LaTeX-Distribution gefunden in:
  ) else (
    echo   LaTeX-Distribution gefunden in:
  )
  echo   '%texpath%'
  set texdistrib=
  tex --version> texdistrib.tmp
  set /p texdistrib=< texdistrib.tmp
  echo %texdistrib% | find "MiKTeX"> nul
  if errorlevel 1 (
    set miktex=false  
  ) else (
    set miktex=true
  )
  goto :eof