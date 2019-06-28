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
