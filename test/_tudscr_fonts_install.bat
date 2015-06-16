@echo off
rem
rem Autor: Falk Hanisch
rem
rem getestet auf:
rem Microsoft Windows 7 Professional x64
rem Microsoft Windows 8 Pro x64
rem
rem in Kombination mit:
rem MiKTeX 2.9 32-bit
rem MiKTeX Portable 2.9 32-bit
rem MiKTeX 2.9 64-bit
rem TeX Live 2015
rem TeX Live 2015 Portable
rem
echo.
echo  =====================================================================
echo.
echo   Installation TUD-CD-Schriften unter Windows
echo     2015/06/15 v2.04 BETA TUD-KOMA-Script
echo.
cd /d %~dp0
if exist tudscrtemp rmdir /s /q tudscrtemp> nul
mkdir tudscrtemp\converted
cd tudscrtemp
set texpath=
where tex.exe> nul 2> nul> texpath.tmp
set /p texpath=<texpath.tmp
if "%texpath%"=="" (
 goto :nothing
)
echo  =====================================================================
echo.
echo   Notwendige Dateien und Pakete werden gesucht.
echo   Dies kann einen Moment dauern.
echo.
set missing=false
call:checkfile "7za.exe"
call:checkfile "Univers_PS.zip"
call:checkfile "DIN_Bd_PS.zip"
call:checkfile "tudscr_fonts_install.zip"
call:checkpackage "fontinst.sty"
call:checkpackage "type1ec.sty"
call:checkpackage "lmodern.sty"
call:checkpackage "cmbright.sty"
call:checkpackage "hfbright.map"
call:checkpackage "iwona.sty"
if "%missing%" == "true" goto :abort
echo.
echo   Es wurden alle notwendigen Dateien und Pakete gefunden.
echo.
echo  =====================================================================
echo.
set distrib=
tex --version> distrib.tmp
set /p distrib=< distrib.tmp
set texmfpath=
kpsewhich --var-value=TEXMFHOME> texmfpath.tmp
set /p texmfpath=< texmfpath.tmp
if "%texmfpath%"=="" (
  echo %USERPROFILE%\texmf> texmfpath.tmp
  set /p texmfpath=< texmfpath.tmp
)
set portable=false
for /f "usebackq tokens=1,2" %%a in (
  `wmic logicaldisk get caption^,drivetype`
) do (
  if "%%a"=="%texpath:~,2%" (
    if %%b==2 set portable=true
  )
)
:MiKTeX
  echo %distrib% | find "MiKTeX"> nul
  if errorlevel 1 goto :TeXLive
  set distrib="MiKTeX"
  if "%portable%" == "true" (
    setlocal enabledelayedexpansion
      pushd !cd!
      cd /d !texpath:~,2!
      cd !texpath:~,-10!\..\..\..
      set texmfpath=!cd!\texmf
      popd
      echo !texmfpath!> texmfpath.tmp
    endlocal
    set /p texmfpath=< texmfpath.tmp
    echo   LaTeX-Distribution MiKTeX Portable gefunden
  ) else (
    echo   LaTeX-Distribution MiKTeX gefunden
  )
  goto :resume
:TeXLive
  echo %distrib% | find "TeX Live"> nul
  if errorlevel 1 goto :nothing
  set distrib="TeXLive"
  if "%portable%" == "true" (
    echo   LaTeX-Distribution TeX Live Portable gefunden
  ) else (
    echo   LaTeX-Distribution TeX Live gefunden
  )
  goto :resume
:nothing
  echo.
  echo   TeX Live oder MiKTeX wurden nicht gefunden
  echo.
  echo  =====================================================================
  echo.
  goto :abort
:resume
  echo.
  echo  =====================================================================
  echo.
  echo   Installation der TUD-CD-Schriften
  echo.
  echo   Das Verzeichnis muss sich jenseits der Distributionsordnerstruktur
  if "%portable%" == "true" (
    echo   auf dem USB-Stick befinden.
  ) else (
    echo   in einem lokalen Benutzerpfad befinden.
  )
  echo.
:proof_userinput
  echo  =====================================================================
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
  echo   [j]a (ENTER) / [n]ein:
  echo.
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
  echo.
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
  set localfolder=tudscr
  if not exist "%texmfpath%\tex\latex\%localfolder%\fonts" (
    mkdir "%texmfpath%\tex\latex\%localfolder%\fonts"
  )
  if not exist "%texmfpath%\fonts\tfm\%localfolder%" (
    mkdir "%texmfpath%\fonts\tfm\%localfolder%"
  )
  if not exist "%texmfpath%\fonts\afm\%localfolder%" (
    mkdir "%texmfpath%\fonts\afm\%localfolder%"
  )
  if not exist "%texmfpath%\fonts\vf\%localfolder%" (
    mkdir "%texmfpath%\fonts\vf\%localfolder%"
  )
  if not exist "%texmfpath%\fonts\type1\%localfolder%" (
    mkdir "%texmfpath%\fonts\type1\%localfolder%"
  )
  if not exist "%texmfpath%\fonts\map\dvips\%localfolder%" (
    mkdir "%texmfpath%\fonts\map\dvips\%localfolder%"
  )
  cd /d %~dp0
  7za e Univers_PS.zip -o"tudscrtemp" -y
  7za e DIN_Bd_PS.zip -o"tudscrtemp" -y
  7za e tudscr_fonts_install.zip -o"tudscrtemp\converted" -y
  cd tudscrtemp
  copy uvcel___.pfb converted\lunl8a.pfb> nul
  copy uvcel___.afm converted\lunl8a.afm> nul
  copy uvxlo___.pfb converted\lunlo8a.pfb> nul
  copy uvxlo___.afm converted\lunlo8a.afm> nul
  copy uvce____.pfb converted\lunr8a.pfb> nul
  copy uvce____.afm converted\lunr8a.afm> nul
  copy uvceo___.pfb converted\lunro8a.pfb> nul
  copy uvceo___.afm converted\lunro8a.afm> nul
  copy uvceb___.pfb converted\lunb8a.pfb> nul
  copy uvceb___.afm converted\lunb8a.afm> nul
  copy uvxbo___.pfb converted\lunbo8a.pfb> nul
  copy uvxbo___.afm converted\lunbo8a.afm> nul
  copy uvcz____.pfb converted\lunc8a.pfb> nul
  copy uvcz____.afm converted\lunc8a.afm> nul
  copy uvczo___.pfb converted\lunco8a.pfb> nul
  copy uvczo___.afm converted\lunco8a.afm> nul
  copy DINBd___.pfb converted\0m6b8a.pfb> nul
  copy DINBd___.afm converted\0m6b8a.afm> nul
  echo.
  echo  =====================================================================
  echo   Virtuelle Schriften erzeugen. (Dies kann einen Moment dauern)
  echo  =====================================================================
  echo.
  cd converted
  echo 00/19
  tftopl cmbr10.tfm cmbr10.pl
  echo 01/19
  tftopl cmbrsl10.tfm cmbrsl10.pl
  echo 02/19
  tftopl cmbrbx10.tfm cmbrbx10.pl
  echo 03/19
  tftopl tbmr10.tfm tbmr10.pl
  echo 04/19
  tftopl tbmo10.tfm tbmo10.pl
  echo 05/19
  tftopl tbsr10.tfm tbsr10.pl
  echo 06/19
  tftopl tbso10.tfm tbso10.pl
  echo 07/19
  tftopl tbbx10.tfm tbbx10.pl
  echo 08/19
  tftopl cmbrmi10.tfm cmbrmi10.pl
  echo 09/19
  tftopl cmbrmb10.tfm cmbrmb10.pl
  echo 10/19
  tftopl cmbrsy10.tfm cmbrsy10.pl
  echo 11/19
  tftopl sy-iwonamz.tfm sy-iwonamz.pl
  echo 12/19
  tftopl sy-iwonahz.tfm sy-iwonahz.pl
  echo 13/19
  tftopl rm-iwonach.tfm rm-iwonach.pl
  echo 14/19
  tftopl rm-iwonachi.tfm rm-iwonachi.pl
  echo 15/19
  tftopl ts1-iwonach.tfm ts1-iwonach.pl
  echo 16/19
  tftopl ts1-iwonachi.tfm ts1-iwonachi.pl
  echo 17/19
  tftopl mi-iwonachi.tfm mi-iwonachi.pl
  echo 18/19
  tftopl sy-iwonachz.tfm sy-iwonachz.pl
  echo 19/19
  latex installfonts.tex
  dir /b *.pl> files.txt
  for /f "delims=. " %%i in (files.txt) do pltotf %%i.pl %%i.tfm
  dir /b *.vpl> files.txt
  for /f "delims=. " %%i in (files.txt) do vptovf %%i.vpl %%i.vf %%i.tfm
  latex createmap.tex
  echo.
  echo  =====================================================================
  echo   Konvertierung abgeschlossen.
  echo  =====================================================================
  echo.
  copy /y *.fd  "%texmfpath%\tex\latex\%localfolder%\fonts"
  copy /y *.tfm "%texmfpath%\fonts\tfm\%localfolder%"
  copy /y *.afm "%texmfpath%\fonts\afm\%localfolder%"
  copy /y *.vf  "%texmfpath%\fonts\vf\%localfolder%"
  copy /y *.pfb "%texmfpath%\fonts\type1\%localfolder%"
  copy /y *.map "%texmfpath%\fonts\map\dvips\%localfolder%"
  set "texmfpath=%texmfpath:\=/%"
  if %distrib%=="MiKTeX" goto :MiKTeXHash
:TeXLiveHash
  texhash
  updmap-sys --enable Map=tudscr.map
  goto :end
:MiKTeXHash
  initexmf --register-root="%texmfpath%"
  initexmf --update-fndb="%texmfpath%"
  updmap
  set "texmfpath=%texmfpath:/=\%"
  set mapcfg=%texmfpath%\miktex\config\updmap.cfg
  if not exist "%mapcfg%" (
    if not exist "%texmfpath%\miktex\config" (
      mkdir "%texmfpath%\miktex\config"
    )
    echo Map tudscr.map> "%mapcfg%"
  ) else (
    find "Map tudscr.map" "%mapcfg%"> nul
    if errorlevel 1 echo Map tudscr.map>> "%mapcfg%"
  )
  initexmf --mkmaps
:end
  echo.
  echo  =====================================================================
  echo   Die Installation wird beendet.
  echo   Der Ordner mitsamt aller temporaeren Dateien wird geloescht.
  echo  =====================================================================
  echo   Dokumentation und Beispiele fuer das TUD-KOMA-Script-Bundle sind
  echo   ueber den Konsolenaufruf 'texdoc tudscr' zu finden.
  echo  =====================================================================
  echo.
  pause
  cd /d %~dp0
  if exist tudscrtemp rmdir /s /q tudscrtemp> nul
  echo.
  exit /b 0
:abort
  echo.
  echo  =====================================================================
  echo   Abbruch der Installation, temporaere Dateien werden geloescht.
  echo  =====================================================================
  echo.
  pause
  cd /d %~dp0
  if exist tudscrtemp rmdir /s /q tudscrtemp> nul
  exit /b 0
:checkfile
  if not exist ../%~1 (
    set missing=true
    call:missingfile %~1
  ) else (
    echo   Datei %~1 gefunden
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
  set package=
  @echo on
  kpsewhich %~1
  @echo off
  kpsewhich %~1> package.tmp
  set /p package=< package.tmp
  if "%package%"=="" (
    set missing=true
    call:missingpackage %~1
  ) else (
    echo   Paket %~1 gefunden
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
