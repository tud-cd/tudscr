@echo off
attrib +h "*.bat" /s
attrib +h "*.dtx" /s
attrib +h "*.ins" /s
attrib +h "tudscrsource.tex"
attrib +h "doc\*.*" /s
attrib +h "logo\*.eps"
attrib +h "logo\*.pdf"
attrib -h "install\*.bat" /s> nul
attrib -h "install\*.tex" /s> nul
del "*.*" /s /q> nul
attrib -h "*.*" /s
for /f %%f in ('dir /b *.dtx *.tex') do (
  git log -1 ^
    --format="\expandafter\gdef\csname %%f-ver\endcsname{%%ad %%h}" ^
    --date=format:"%%Y/%%m/%%d %%H:%%M:%%S" ^
    -- %%f >> git-ver-info.log
)
cd install
for /f %%f in ('dir /b *.dtx') do (
  git log -1 ^
    --format="\expandafter\gdef\csname %%f-ver\endcsname{%%ad %%h}" ^
    --date=format:"%%Y/%%m/%%d %%H:%%M:%%S" ^
    -- %%f >> git-ver-info.log
)
cd ..
