@echo off
cd %~dp0
if exist temp rmdir /s /q temp> nul
mkdir temp\tex\latex\tudscr\logo
xcopy source temp /s
cd temp
echo \BaseDirectory{.}> docstrip.cfg
echo \UseTDS>> docstrip.cfg
tex tudscr.ins
copy logo tex\latex\tudscr\logo\
kpsewhich --var-value=TEXMFHOME> texmfpath.tmp
set /p texmfpath=< texmfpath.tmp	
xcopy tex "%texmfpath%\tex" /s /y
move doc\tudscrman.sty ..\source\doc\tutorials\
move doc\tudscrman.*   ..\source\doc\
cd %~dp0
if exist temp rmdir /s /q temp> nul