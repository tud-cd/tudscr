@echo off
attrib +h "*.bat" /s
attrib +h "*.dtx" /s
attrib +h "*.ins" /s
attrib +h "*.tex" /s
attrib -h "*-temp.*" /s> nul
attrib +h "doc\*.cls"
attrib +h "doc\*.xdy"
attrib +h "doc\tutorials\*.sty"
attrib +h "logo\*.*"
del "*.*" /s /q> nul
attrib -h "*.*" /s
