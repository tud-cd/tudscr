@echo off
cd %~dp0
if exist temp rmdir /s /q temp> nul
mkdir temp\tex\latex\tudscr\logo
xcopy source temp\
xcopy source\logo temp\tex\latex\tudscr\logo
cd temp
echo \BaseDirectory{.}> docstrip.cfg
echo \UseTDS>> docstrip.cfg
tex tudscr.ins
kpsewhich --var-value=TEXMFHOME> texmfpath.tmp
set /p texmfpath=< texmfpath.tmp	
xcopy tex "%texmfpath%\tex\" /s /y
cd %~dp0
if exist temp rmdir /s /q temp> nul
texhash
