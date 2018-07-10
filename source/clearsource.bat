@echo off
attrib +h "*.bat" /s
attrib +h "*.dtx" /s
attrib +h "*.ins" /s
attrib +h "tudscrsource.tex"
attrib +h "doc\*.*" /s
attrib +h "logo\*.eps"
attrib +h "logo\*.pdf"
attrib +h "font\createfonts.tex"
attrib +h "font\ttf2afm.ff"
attrib +h "font\etx\*.etx"
attrib +h "font\mtx\*.mtx"
attrib +h "font\external\*.*"
attrib -h "install\*.bat" /s> nul
attrib -h "install\*.tex" /s> nul
del "*.*" /s /q> nul
attrib -h "*.*" /s
