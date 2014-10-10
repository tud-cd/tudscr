@echo off
attrib +h "*.bat" /s
attrib +h "*.dtx" /s
attrib +h "*.ins" /s
attrib +h "*.tex" /s
attrib +h "doc\*.cls"
attrib +h "doc\*.xdy"
attrib +h "doc\tutorials\*.sty"
attrib -h "doc\tutorials\*-temp.*"
attrib -h "install\*.tex"
attrib +h "logo\*.*"
del "*.*" /s /q> nul
attrib -h "*.*" /s