@echo off
cd %~dp0
echo =========================================================================
echo  Festlegen der Version, welche erstellt werden soll
echo =========================================================================
set version=
setlocal enabledelayedexpansion
for /f "tokens=1,2,3* delims= " %%a in (
  'findstr /r \TUD@Version@Check{[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] source\tudscr-version.dtx'
) do (
  set version=%%c
  if "!version:~0,10!"=="TUD-Script" (
    set version=%%b
  ) else (
    set version=%%b-%%c
  )
)
endlocal & set version=%version%
if exist temp rmdir temp /s /q > nul
if exist release-%version% rmdir release-%version% /s /q > nul
echo.
echo TUD-Script %version%
echo.
echo =========================================================================
echo  Erzeugen der Klassen und der inline-Dokumentation fuer %version%
echo =========================================================================
echo.
set sourceinput="\def\tudfinalflag{}\input{tudscrsource.tex}"
set docinput="\def\tudfinalflag{}\input{tudscr.tex}"
set docprintinput="\def\tudfinalflag{}\def\tudprintflag{}\input{tudscr.tex}"
xcopy source temp\ /s
cd temp
call clearsource.bat
del clearsource.bat
cd doc
call cleardoc.bat
del  cleardoc.bat
del  sub-tudscr.tex
del  test.tex
cd ..
if exist test rmdir test/s /q > nul
echo.
echo =========================================================================
echo  Kopieren der Quelldateien
echo =========================================================================
echo.
mkdir tex\latex\tudscr
echo \BaseDirectory{.}> docstrip.cfg
echo \UseTDS>> docstrip.cfg
pdftex tudscr.ins
xcopy /s logo                 tex\latex\tudscr\logo\
xcopy /s doc                  .
copy     tex\latex\tudscr\*.* .
copy     tex\latex\tudscr\*.* examples
copy     tex\latex\tudscr\*.* tutorials
mkdir source\latex\tudscr
move     doc                  source\latex\tudscr\doc
copy     *.dtx                source\latex\tudscr\
copy     tudscr.ins           source\latex\tudscr\
copy     tudscrsource.tex     source\latex\tudscr\
mkdir doc\latex\tudscr\tutorials
copy     ..\*.md              doc\latex\tudscr\
echo.
echo =========================================================================
echo  Erzeugen der Quelltextdokumentation
echo =========================================================================
echo.
pdflatex --shell-escape %sourceinput%
pdflatex %sourceinput%
pdflatex %sourceinput%
pdflatex --shell-escape %sourceinput%
pdflatex %sourceinput%
move tudscrsource.pdf doc\latex\tudscr\
echo.
echo =========================================================================
echo  Erzeugen des Benutzerhandbuchs
echo =========================================================================
echo.
pdflatex %docinput%
pdflatex --shell-escape %docinput%
pdflatex %docinput%
pdflatex --shell-escape %docinput%
pdflatex %docinput%
pdflatex %docprintinput%
copy tudscr.pdf tudscr_print.pdf
pdflatex %docinput%
del tutorials\*autopp*.* /q > nul
attrib +h "tutorials\*-standalone-*.pdf"
attrib +h "tutorials\*-pics.pdf"
move tudscr*.pdf             doc\latex\tudscr\
move tutorials\*.pdf         doc\latex\tudscr\tutorials\
move tutorials\*-example.tex source\latex\tudscr\doc\examples\
echo.
echo =========================================================================
echo  Erzeugen der Installationdateien
echo =========================================================================
echo.
cd install
pdftex tudscr-metrics.dtx
pdftex tudscr-scripts.dtx
rename *.bxt *.bat
setlocal enabledelayedexpansion
set "pattern=_V_"
set "replace=_%version%_"
for %%a in (*.*) do (
  set "file=%%~a"
  rename "%%a" "!file:%pattern%=%replace%!"
)
endlocal
echo.
echo =========================================================================
echo  Release fuer GitHub
echo =========================================================================
echo.
cd %~dp0
mkdir release-%version%\temp
mkdir release-%version%\GitHub\fonts
mkdir release-%version%\GitHub\oldfonts
mkdir release-%version%\GitHub\uninstall
mkdir release-%version%\GitHub\addon
copy *.md                                   release-%version%\temp\
xcopy addon                                 release-%version%\temp\ /s
copy development\fonts\*.*                  release-%version%\temp\
copy development\tools\*.*                  release-%version%\temp\
copy temp\doc\latex\tudscr\tudscr.pdf       release-%version%\temp\
copy temp\doc\latex\tudscr\tudscr_print.pdf release-%version%\temp\
move temp\install\*.*                       release-%version%\temp\
cd release-%version%\temp
7za a -tzip tudscr_%version%.zip  .\..\..\temp\doc\ .\..\..\temp\source\ .\..\..\temp\tex\
for /f %%f in ('dir /b *.bat') do unix2dos -k %%f
7za a -tzip tudscr_fonts_install.zip                                                @7za_files_metrics.txt
REM call tudscr_fonts_convert.bat
REM 7za a -tzip tudscr_fonts_converted.zip                                              @7za_files_fonts.txt
for /f %%f in ('dir /b *.md') do unix2dos -n -k %%f %%~nf.txt
7za a -tzip .\..\GitHub\TUD-Script_%version%_Windows.zip        -x!*.sh             @7za_files_bundle.txt
7za a -tzip .\..\GitHub\fonts\TUD-Script_fonts_Windows.zip      -x!*.sh             @7za_files_fonts_install.txt
REM 7za a -tzip .\..\GitHub\TUD-Script_%version%_Windows_full.zip   -x!*.sh             @7za_files_bundle.txt @7za_files_fonts_install.txt
REM 7za a -tzip .\..\TUD-Script_%version%_Windows_all.zip           -x!*.sh             @7za_files_bundle.txt @7za_files_fonts_install.txt @7za_files_postscript.txt
REM 7za a -tzip .\..\TUD-Script_fonts_converted_Windows.zip         -x!*.sh             @7za_files_fonts_converted.txt
for /f %%f in ('dir /b *.md') do copy %%f %%~nf.txt
7za a -tzip .\..\GitHub\TUD-Script_%version%_Unix.zip           -x!*.bat -x!7za.exe @7za_files_bundle.txt
7za a -tzip .\..\GitHub\fonts\TUD-Script_fonts_Unix.zip         -x!*.bat -x!7za.exe @7za_files_fonts_install.txt
REM 7za a -tzip .\..\GitHub\TUD-Script_%version%_Unix_full.zip      -x!*.bat -x!7za.exe @7za_files_bundle.txt @7za_files_fonts_install.txt
REM 7za a -tzip .\..\TUD-Script_%version%_Unix_all.zip              -x!*.bat -x!7za.exe @7za_files_bundle.txt @7za_files_fonts_install.txt @7za_files_postscript.txt
REM 7za a -tzip .\..\TUD-Script_fonts_converted_Unix.zip            -x!*.bat -x!7za.exe @7za_files_fonts_converted.txt
7za a -tzip .\..\GitHub\addon\tudscr4lyx.zip        .\tudscr4lyx\*
7za a -tzip .\..\GitHub\addon\tudscr4texstudio.zip  .\tudscr4texstudio\*
cd..
move  temp\tudscr_%version%.zip GitHub\tudscr_%version%.zip
move  temp\tud_fonts_install.*  GitHub\oldfonts\
move  temp\tudscr_uninstall.*   GitHub\uninstall\
echo.
echo =========================================================================
echo  Release fuer CTAN
echo =========================================================================
echo.
mkdir CTAN\tudscr\doc
mkdir CTAN\tudscr\source
mkdir CTAN\tudscr\logo
xcopy ..\temp\doc\latex\tudscr\*.*      CTAN\tudscr\doc\    /s
xcopy ..\temp\source\latex\tudscr\*.*   CTAN\tudscr\source\ /s
xcopy ..\temp\tex\latex\tudscr\logo\*.* CTAN\tudscr\logo\   /s
move  CTAN\tudscr\doc\README.md         CTAN\tudscr\README.md
cd temp
(
  echo With WScript
  echo   ZipFile = .Arguments^(0^) 
  echo   Folder = .Arguments^(1^) 
  echo End With
  echo CreateObject^("Scripting.FileSystemObject"^).CreateTextFile^(ZipFile, True^).Write "PK" ^& Chr^(5^) ^& Chr^(6^) ^& String^(18, vbNullChar^) 
  echo With CreateObject^("Shell.Application"^) 
  echo   .NameSpace^(ZipFile^).CopyHere .NameSpace^(Folder^).Items
  echo End With
  echo wScript.Sleep 2000 
) > winzip.vbs
cd ..
CScript  temp\winzip.vbs %cd%\tudscr.zip %cd%\CTAN
move %cd%\tudscr.zip %cd%\CTAN\
echo.
echo =========================================================================
echo  Loeschen aller temporaeren Dateien
echo =========================================================================
echo.
pause.
cd %~dp0
if exist release-%version%\temp        rmdir release-%version%\temp /s /q > nul
if exist release-%version%\CTAN\tudscr rmdir release-%version%\CTAN\tudscr /s /q > nul
if exist temp                          rmdir temp /s /q > nul
exit /b 0
