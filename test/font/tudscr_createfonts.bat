@echo off
REM ^([^;]*;){2} N 
REM \\setslot\{
REM  ; .*$
REM \}\\endsetslot
::
:: Autor: Falk Hanisch
::
echo.
echo  =====================================================================
echo.
echo   %~dp0
echo.
echo  =====================================================================
echo.
echo   Erstellen der Open Sans Schriften zur Verwendung mit TUD-Script
echo.
cd /d %~dp0
set familyname=fdd
set destinationpath=%~dp0created
set localfolder=tudscros
set externalpath=%~dp0external
set temppath=%~dp0%familyname%temp
if exist %temppath% rmdir /s /q %temppath%> nul
if not exist %temppath% mkdir %temppath%
cd %temppath%
echo  =====================================================================
echo.
echo   Notwendige Dateien und Pakete werden gesucht.
echo   Dies kann einen Moment dauern.
echo.
set missing=false
call :checkfile    "Open_Sans.zip"
call :checkfile    "grkfinst.zip"
call :checkpackage "fontinst.sty" "fontinst"
REM call :checkpackage "mdsymbol.sty" "mdsymbol"
call :checkscript  "tftopl"       "fontware"
call :checkscript  "pltotf"       "fontware"
call :checkscript  "vptovf"       "fontware"
if "%missing%"=="true" goto :abort
echo.
echo   Es wurden alle notwendigen Dateien und Pakete gefunden.
echo.
echo  =====================================================================
echo  =====================================================================
echo.
call :unzip "Open_Sans.zip"
call :unzip "grkfinst.zip"
copy %~dp0createfonts.tex %temppath%
copy %~dp0ttf2afm.ff %temppath%
copy %~dp0etx\*.etx %temppath%
copy %~dp0mtx\*.mtx %temppath%
copy %temppath%\grkfinst\inputs\greeketx\*.etx %temppath%
copy %temppath%\grkfinst\inputs\greekmtx\*.mtx %temppath%
call :provideosfetx ly1
call :provideosfetx ly1c
call :provideosfetx lgr-lig
call :provideosfetx lgr-ligc
echo.
echo  =====================================================================
echo  =====================================================================
echo.
call :gettexpath
if "%texpath%"=="" goto :abort
call :createfontfile %familyname%l8a  OpenSans-Light.ttf           MdSymbol-Light.otf
call :createfontfile %familyname%lo8a OpenSans-LightItalic.ttf     MdSymbol-Light.otf
call :createfontfile %familyname%r8a  OpenSans-Regular.ttf         MdSymbol-Regular.otf
call :createfontfile %familyname%ro8a OpenSans-Italic.ttf          MdSymbol-Regular.otf
call :createfontfile %familyname%s8a  OpenSans-SemiBold.ttf        MdSymbol-Semibold.otf
call :createfontfile %familyname%so8a OpenSans-SemiBoldItalic.ttf  MdSymbol-Semibold.otf
call :createfontfile %familyname%b8a  OpenSans-Bold.ttf            MdSymbol-Bold.otf
call :createfontfile %familyname%bo8a OpenSans-BoldItalic.ttf      MdSymbol-Bold.otf
call :createfontfile %familyname%x8a  OpenSans-ExtraBold.ttf       MdSymbol-Bold.otf
call :createfontfile %familyname%xo8a OpenSans-ExtraBoldItalic.ttf MdSymbol-Bold.otf
echo.
echo  =====================================================================
echo   Virtuelle Schriften erzeugen. ^(Dies kann einen Moment dauern^)
echo  =====================================================================
echo.
latex createfonts.tex
dir /b *.pl> files.txt
for /f "delims=. " %%i in (files.txt) do pltotf %%i.pl %%i.tfm
dir /b *.vpl> files.txt
for /f "delims=. " %%i in (files.txt) do vptovf %%i.vpl %%i.vf %%i.tfm
REM del *.pl
REM del *.vpl
(
  echo \input finstmsc.sty
  echo \resetstr{PSfontsuffix}{.pfb}
  echo \adddriver{dvips}{%familyname%.map}
  echo \input %familyname%-rec.tex
  echo \donedrivers
  echo \bye
) > createmap.tex
latex createmap.tex
echo.
echo  =====================================================================
echo   Konvertierung abgeschlossen.
echo  =====================================================================
echo.
if exist %destinationpath% rmdir /s /q %destinationpath%> nul
mkdir "%destinationpath%\tex\latex\%localfolder%\fonts"
mkdir "%destinationpath%\fonts\tfm\%localfolder%"
mkdir "%destinationpath%\fonts\afm\%localfolder%"
mkdir "%destinationpath%\fonts\vf\%localfolder%"
mkdir "%destinationpath%\fonts\type1\%localfolder%"
mkdir "%destinationpath%\fonts\enc\dvips\%localfolder%"
mkdir "%destinationpath%\fonts\map\dvips\%localfolder%"
move /y *.pfb "%destinationpath%\fonts\type1\%localfolder%"
move /y *.afm "%destinationpath%\fonts\afm\%localfolder%"
move /y *.pfb "%destinationpath%\fonts\type1\%localfolder%"
move /y *.afm "%destinationpath%\fonts\afm\%localfolder%"
move /y *.tfm "%destinationpath%\fonts\tfm\%localfolder%"
move /y *.vf  "%destinationpath%\fonts\vf\%localfolder%"
move /y *.enc "%destinationpath%\fonts\enc\dvips\%localfolder%"
move /y *.map "%destinationpath%\fonts\map\dvips\%localfolder%"
move /y *.fd  "%destinationpath%\tex\latex\%localfolder%\fonts"
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
  rmdir /s /q %temppath%> nul
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
  if exist %temppath% rmdir /s /q %temppath%> nul
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
:checkfile
  if not exist %externalpath%\%~1 (
    set missing=true
    call :missingfile %~1
  ) else (
    echo   Datei %~1 gefunden.
  )
  goto :eof
:missingfile
  echo  =====================================================================
  echo.
  echo   Die Datei %~1 wurde nicht gefunden. Diese wird fuer die
  echo   Installation zwingend benoetigt. Bitte kopieren Sie %~1
  echo   in das Verzeichnis des Skriptes und fuehren dieses abermals aus.
  echo   Beachten Sie, dass die Schriftarchive speziell fuer die Verwendung
  echo   von LaTeX bestellt werden muessen, ein alleiniges Umbenennen
  echo   falscher Archive wird zu Fehlern bei der Installation fuehren.
  echo.
  echo  =====================================================================
  goto :eof
:checkpackage
  call :getfilepath %~1
  set package=
  set /p package=< filepath.tmp
  if "%package%"=="" (
    set missing=true
    call :missingpackage %~1 %~2
  ) else (
    echo   Paket %~2 ^(%~1^) gefunden.
  )
  goto :eof
:getfilepath
  setlocal enabledelayedexpansion
    if "%miktex%"=="true" (
      mpm --verify=%~2 >nul 2>nul
      if !errorlevel! neq 0 kpsewhich %~1
      set MIKTEX_KPSEWHICH_MPM_AUTOINSTALL=no
    )
    kpsewhich %~1> filepath.tmp
    set filepath=
    set /p filepath=< filepath.tmp
    if "!filepath!"=="" (
      type nul> filepath.tmp
    ) else (
      set "filepath=%filepath:/=\%"
      echo !filepath!> filepath.tmp
    )
  endlocal
  goto :eof
:missingpackage
  echo  =====================================================================
  echo.
  echo   Das LaTeX-Paket %~2 ^(%~1^) wurde nicht gefunden.
  echo   Dieses wird fuer die Schriftinstallation zwingend benoetigt.
  echo   Bitte das Paket '%~2' ueber die Distribution installieren und
  echo   danach dieses Skript abermals ausfuehren.
  echo.
  echo  =====================================================================
  goto :eof
:checkscript
  set script=
  where %~1> nul 2> nul> script.tmp
  set /p script=<script.tmp
  del script.tmp
  if "%script%"=="" (
    set missing=true
    call :missingscript %~1 %~2
  ) else (
    echo   Skript %~1 aus Paket %~2 gefunden.
  )
  goto :eof
:missingscript
  echo  =====================================================================
  echo.
  echo   Das ausfuehrbare Skript %~1 aus dem Paket %~2 wurde nicht
  echo   gefunden. Dieses wird im Normalfall von der LaTeX-Distribution
  echo   bereitgestellt und zur Schriftinstallation zwingend benoetigt.
  echo   Bitte das Paket '%~2' ueber die Distribution installieren und
  echo   danach dieses Skript abermals ausfuehren.
  echo.
  echo  =====================================================================
  goto :eof
:unzip
  echo  =====================================================================
  echo   Entpacken von %~1
  echo  =====================================================================
  if not exist %temppath%\winunzip.vbs (
    (
      echo With WScript
      echo   ZipFile = .Arguments^(0^)
      echo   Folder = .Arguments^(1^)
      echo End With
      echo With CreateObject^("Scripting.FileSystemObject"^)
      echo   If Not .FolderExists^(Folder^) Then
      echo     .CreateFolder^(Folder^)
      echo   End If
      echo End With
      echo With CreateObject^("Shell.Application"^)
      echo   Set objZipFile = .NameSpace^(ZipFile^).Items^(^)
      echo   For Each zFile In objZipFile
      echo     .NameSpace^(Folder^).CopyHere zFile, 272
      echo     WScript.Echo^(zFile.Name ^& " entpackt"^)
      echo   Next
      echo End With
      echo WScript.Echo^(^)
      echo WScript.Echo^("Alle Dateien entpackt"^)
      echo WScript.Echo^(^)
      echo WScript.Sleep 1000
    ) > %temppath%\winunzip.vbs
  )
  setlocal enabledelayedexpansion
    set zipfile=%externalpath%\%~1
    set "zipfile=!zipfile:\\=\!"
    CScript %temppath%\winunzip.vbs "!zipfile!" "!temppath!\"
  endlocal
  goto :eof
:createfontfile
  echo %~1.pfb %~1.afm
  set fontfileexist=true
  if not exist %~1.pfb set fontfileexist=false
  if not exist %~1.afm set fontfileexist=false
  if "%fontfileexist%"=="true" goto :eof
  set file=
  kpsewhich %3> filepath.tmp
  set /p file=< filepath.tmp
  set "file=%file:/=\%"
  copy "%file%"> nul
  fontforge ttf2afm.ff %2 %3
  move %~n2.pfb %~1.pfb
  move %~n2.afm %~1.afm
  goto :eof
:provideosfetx
  set mtxfile=
  kpsewhich %1j.etx> mtxfile.tmp
  set /p mtxfile=< mtxfile.tmp
  if "%mtxfile%"=="" (
    (
      echo \relax
      echo \encoding
      echo \setcommand\digit#1{#1oldstyle}
      echo \inputetx{%1}
      echo \endencoding
    ) > %1j.etx
  )
  goto :eof