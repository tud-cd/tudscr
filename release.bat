@echo off
cd %~dp0
echo =========================================================================
echo  Festlegen der Version, welche erstellt werden soll
echo =========================================================================
echo.
for /f "tokens=1,2,3 delims= " %%a in (
  'findstr /r \@TUDVersion{[0-9][0-9][0-9][0-9]/[0-9][0-9]/[0-9][0-9] source\tudscr-version.dtx'
) do set version=%%b
set /p append=%version%
set version=%version%%append%
if exist temp rmdir temp /s /q > nul
if exist release rmdir release /s /q > nul
echo =========================================================================
echo  Erzeugen der Klassen und der inline-Dokumentation fuer %version%
echo =========================================================================
call update_classes.bat
xcopy source temp\ /s
cd temp
call clear.bat
if exist test rmdir test/s /q > nul
mkdir tex\latex\tudscr
mkdir source\latex\tudscr
mkdir doc\latex\tudscr\tutorials
echo \BaseDirectory{.}> docstrip.cfg
echo \UseTDS>> docstrip.cfg
tex tudscr.ins
pdflatex "\def\tudfinalflag{}\input{tudscrsource.tex}"
pdflatex "\def\tudfinalflag{}\input{tudscrsource.tex}"
makeindex -s gglo.ist -o tudscrsource.gls tudscrsource.glo
makeindex -s gind.ist -o tudscrsource.ind tudscrsource.idx
pdflatex "\def\tudfinalflag{}\input{tudscrsource.tex}"
move  *.dtx            source\latex\tudscr\
move  tudscr.ins       source\latex\tudscr\
move  tudscrsource.tex source\latex\tudscr\
xcopy doc              source\latex\tudscr\doc\ /s
del source\latex\tudscr\test.tex /s > nul
for /f %%f in ('dir /b ..\*.md') do copy ..\%%f doc\latex\tudscr\%%~nf
move tudscrsource.pdf doc\latex\tudscr\
move logo             tex\latex\tudscr\
del *.* /q > nul
echo =========================================================================
echo  Erzeugen des Benutzerhandbuchs
echo =========================================================================
cd doc
pdflatex -shell-escape "\def\tudfinalflag{}\input{tudscr.tex}"
pdflatex "\def\tudfinalflag{}\input{tudscr.tex}"
pdflatex "\def\tudfinalflag{}\input{tudscr.tex}"
pdflatex "\def\tudfinalflag{}\input{tudscr.tex}"
pdflatex -shell-escape "\def\tudfinalflag{}\input{tudscr.tex}"
pdflatex "\def\tudfinalflag{}\def\tudprintflag{}\input{tudscr.tex}"
copy tudscr.pdf tudscr_print.pdf
pdflatex "\def\tudfinalflag{}\input{tudscr.tex}"
del tutorials\*autopp*.* /q > nul
attrib +h "tutorials\*-temp.pdf"
attrib +h "tutorials\*-pics.pdf"
move tudscr*.pdf     latex\tudscr
move tutorials\*.pdf latex\tudscr\tutorials\
setlocal enabledelayedexpansion
set "pattern=-temp"
set "replace="
for /f %%f in ('dir /b tutorials\*-example-temp.tex') do (
  set "file=%%~f"
  echo "!file!"
  copy "tutorials\!file!" "..\source\latex\tudscr\doc\examples\!file:%pattern%=%replace%!"
)
endlocal
del *.* /q > nul
rmdir examples /s /q > nul
rmdir tutorials /s /q > nul
echo =========================================================================
echo  Erzeugen der Installationdateien
echo =========================================================================
cd ..\install
tex tudscr-install.ins
rename *.bxt *.bat
setlocal enabledelayedexpansion
set "pattern=_VER_"
set "replace=_%version%_"
for %%a in (*.*) do (
  set "file=%%~a"
  rename "%%a" "!file:%pattern%=%replace%!"
)
endlocal
echo =========================================================================
echo  Release fuer GitHub
echo =========================================================================
cd %~dp0
mkdir release\temp
mkdir release\GitHub
copy *.md                                   release\temp\
xcopy addon release\temp\ /s
copy development\fonts\*.*                  release\temp\
copy development\tools\*.*                  release\temp\
copy temp\doc\latex\tudscr\tudscr.pdf       release\temp\
copy temp\doc\latex\tudscr\tudscr_print.pdf release\temp\
move temp\install\*.*                       release\temp\
rmdir temp\install /s /q > nul
cd release\temp
for /f %%f in ('dir /b *.bat') do unix2dos %%f
7za a -tzip tudscr_%version%_full.zip   .\..\..\temp\*
7za a -tzip tudscr_%version%_update.zip .\..\..\temp\* -xr!logo
7za a -tzip tudscrfonts.zip             @7za_files_metrics.txt
for /f %%f in ('dir /b *.md') do unix2dos -n %%f %%~nf.txt
7za a -tzip .\..\TUD-KOMA-Script_%version%_Windows_all.zip    -x!*.sh             @7za_files_full.txt @7za_files_postscript.txt
7za a -tzip .\..\TUD-KOMA-Script_%version%_Windows_full.zip   -x!*.sh             @7za_files_full.txt
rem 7za a -tzip .\..\TUD-KOMA-Script_%version%_Windows_update.zip -x!*.sh             @7za_files_update.txt
7za a -tzip .\..\TUD-KOMA-Script_fonts_Windows.zip            -x!*.sh             @7za_files_fonts.txt
for /f %%f in ('dir /b *.md') do copy %%f %%~nf.txt
7za a -tzip .\..\TUD-KOMA-Script_%version%_Unix_all.zip       -x!*.bat -x!7za.exe @7za_files_full.txt @7za_files_postscript.txt
7za a -tzip .\..\TUD-KOMA-Script_%version%_Unix_full.zip      -x!*.bat -x!7za.exe @7za_files_full.txt
rem 7za a -tzip .\..\TUD-KOMA-Script_%version%_Unix_update.zip    -x!*.bat -x!7za.exe @7za_files_update.txt
7za a -tzip .\..\TUD-KOMA-Script_fonts_Unix.zip               -x!*.bat -x!7za.exe @7za_files_fonts.txt
7za a -tzip .\..\tudscr4lyx.zip       .\tudscr4lyx\*
7za a -tzip .\..\tudscr4texstudio.zip .\tudscr4texstudio\*
cd..
attrib +h *_all.zip
move *.zip GitHub\
attrib -h *_all.zip
move temp\tudscr_%version%_full.zip  GitHub\tudscr_%version%.zip
move temp\tudscr_uninstall.*         GitHub\
echo =========================================================================
echo  Release fuer CTAN
echo =========================================================================
mkdir CTAN\tudscr\doc
mkdir CTAN\tudscr\source
mkdir CTAN\tudscr\logo
xcopy ..\temp\doc\latex\tudscr\*.*      CTAN\tudscr\doc\    /s
xcopy ..\temp\source\latex\tudscr\*.*   CTAN\tudscr\source\ /s
xcopy ..\temp\tex\latex\tudscr\logo\*.* CTAN\tudscr\logo\   /s
move  CTAN\tudscr\doc\README            CTAN\tudscr\README
echo %cd%
echo Set objArgs = WScript.Arguments > winzip.vbs
echo InputFolder = objArgs(0) >> winzip.vbs
echo ZipFile = objArgs(1) >> winzip.vbs
echo CreateObject("Scripting.FileSystemObject").CreateTextFile(ZipFile, True).Write "PK" ^& Chr(5) ^& Chr(6) ^& String(18, vbNullChar) >> winzip.vbs
echo Set objShell = CreateObject("Shell.Application") >> winzip.vbs
echo Set source = objShell.NameSpace(InputFolder).Items >> winzip.vbs
echo objShell.NameSpace(ZipFile).CopyHere(source) >> winzip.vbs
echo wScript.Sleep 2000 >> winzip.vbs
CScript  winzip.vbs  %cd%\CTAN  %cd%\tudscr.zip
echo =========================================================================
echo  Loeschen aller temporaeren Dateien
echo =========================================================================
pause.
del winzip.vbs /q > nul
if exist CTAN rmdir CTAN /s /q > nul
cd %~dp0
if exist temp rmdir temp /s /q > nul
if exist release\temp rmdir release\temp /s /q > nul
