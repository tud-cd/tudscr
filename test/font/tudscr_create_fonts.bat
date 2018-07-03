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
set tempfolder=%familyname%temp
echo  =====================================================================
echo.
echo   Notwendige Dateien und Pakete werden gesucht.
echo   Dies kann einen Moment dauern.
echo.
set missing=false
REM TODO include unzipped source
REM call :checkfile    "Open_Sans.zip"
REM call :checkpackage "mdsymbol.sty" "mdsymbol"
call :checkfile    "grkfinst.zip"
call :checkscript  "tftopl"       "fontware"
call :checkscript  "pltotf"       "fontware"
call :checkscript  "vptovf"       "fontware"
call :checkpackage "fontinst.sty" "fontinst"
if "%missing%"=="true" goto :abort
echo.
echo   Es wurden alle notwendigen Dateien und Pakete gefunden.
echo.
echo  =====================================================================
echo  =====================================================================
echo.
REM rmdir /s /q %tempfolder%> nul
if not exist %tempfolder% mkdir %tempfolder%
call :unzip "Open_Sans.zip" %tempfolder%
call :unzip "grkfinst.zip" %tempfolder%
copy ttf2afm.ff %tempfolder% >nul
copy *.etx %tempfolder% >nul
copy %tempfolder%\grkfinst\inputs\greeketx\*.etx %tempfolder% >nul
copy *.mtx %tempfolder% >nul
copy %tempfolder%\grkfinst\inputs\greekmtx\*.mtx %tempfolder% >nul
cd %tempfolder%
set file=
kpsewhich ly1j.etx> filepath.tmp
set /p file=< filepath.tmp
if "%file%"=="" (
  (
    echo \relax
    echo \encoding
    echo \setcommand\digit#1{#1oldstyle}
    echo \inputetx{ly1}
    echo \endencoding
  ) > ly1j.etx
)
set file=
kpsewhich ly1cj.etx> filepath.tmp
set /p file=< filepath.tmp
if "%file%"=="" (
  (
    echo \relax
    echo \encoding
    echo \setcommand\digit#1{#1oldstyle}
    echo \inputetx{ly1c}
    echo \endencoding
  ) > ly1cj.etx
)
if not exist lgr-ligj.etx (
  (
    echo \relax
    echo \encoding
    echo \setcommand\digit#1{#1oldstyle}
    echo \inputetx{lgr-lig}
    echo \endencoding
  ) > lgr-ligj.etx
)
if not exist lgr-ligcj.etx (
  (
    echo \relax
    echo \encoding
    echo \setcommand\digit#1{#1oldstyle}
    echo \inputetx{lgr-ligc}
    echo \endencoding
  ) > lgr-ligcj.etx
)
echo.
echo  =====================================================================
echo  =====================================================================
echo.
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
goto :install
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
set localfolder=tudscros
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
if not exist "%texmfpath%\fonts\enc\dvips\%localfolder%" (
  mkdir "%texmfpath%\fonts\enc\dvips\%localfolder%"
)
if not exist "%texmfpath%\fonts\map\dvips\%localfolder%" (
  mkdir "%texmfpath%\fonts\map\dvips\%localfolder%"
)

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
del ttf2afm.ff

echo.
echo  =====================================================================
echo   Virtuelle Schriften erzeugen. ^(Dies kann einen Moment dauern^)
echo  =====================================================================
echo.

latex ../newinstallfonts.tex
dir /b *.pl> files.txt
for /f "delims=. " %%i in (files.txt) do pltotf %%i.pl %%i.tfm
dir /b *.vpl> files.txt
for /f "delims=. " %%i in (files.txt) do vptovf %%i.vpl %%i.vf %%i.tfm
del *.pl
del *.vpl
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
copy /y *.pfb "%texmfpath%\fonts\type1\%localfolder%"
copy /y *.afm "%texmfpath%\fonts\afm\%localfolder%"
REM move /y *.pfb "%texmfpath%\fonts\type1\%localfolder%"
REM move /y *.afm "%texmfpath%\fonts\afm\%localfolder%"
move /y *.tfm "%texmfpath%\fonts\tfm\%localfolder%"
move /y *.vf  "%texmfpath%\fonts\vf\%localfolder%"
move /y *.enc "%texmfpath%\fonts\enc\dvips\%localfolder%"
REM move /y *.map "%texmfpath%\fonts\map\dvips\%localfolder%"
REM move /y *.fd  "%texmfpath%\tex\latex\%localfolder%\fonts"
set "texmfpath=%texmfpath:\=/%"
set mapfile=%familyname%.map
if "%miktex%"=="true" goto :MiKTeXHash
:TeXLiveHash
goto :end
texhash
REM if "%admin%"=="false"      goto :TeXLiveSysMap
REM if "%updmapsys%"=="false" goto :TeXLiveUserMap
:TeXLiveSysMap
echo  =====================================================================
echo   Aufruf von 'updmap-sys'
echo  =====================================================================
updmap-sys --enable Map=%mapfile% --force
REM if "%updmapsys%"=="true"
REM :TeXLiveUserMap
REM echo  =====================================================================
REM echo   Aufruf von 'updmap'
REM echo  =====================================================================
REM updmap --enable Map=%mapfile% --force
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
goto :end
:abort
  echo.
  echo  =====================================================================
  echo   Abbruch der Installation, temporaere Dateien werden geloescht.
  echo  =====================================================================
  echo.
  pause
  cd /d %~dp0
  if exist %tempfolder% rmdir /s /q %tempfolder%> nul
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
  rem if exist %tempfolder% rmdir /s /q %tempfolder%> nul
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
:checkfile
  if not exist %~1 (
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
  if exist 7za.exe (
    7za x %~1 -o"%~2" -y
  ) else (
    if not exist %tempfolder%\winunzip.vbs (
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
      ) > %tempfolder%\winunzip.vbs
    )
    setlocal enabledelayedexpansion
      set zipfile=%cd%\%~1
      set "zipfile=!zipfile:\\=\!"
      set unzipfolder=%cd%\%~2
      set "unzipfolder=!unzipfolder:\\=\!"
      if not exist !unzipfolder! set unzipfolder=%~2
      CScript %tempfolder%\winunzip.vbs "!zipfile!" "!unzipfolder!"
    endlocal
  )
  goto :eof