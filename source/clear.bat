@echo off
attrib +h "*.bat" /s
attrib +h "*.dtx" /s
attrib +h "*.ins" /s
attrib +h "*.tex" /s
attrib -h "*-temp.*" /s> nul
attrib +h "tudscrman.*" /s
attrib +h "logo\*.*"
attrib +h "test\*.cls"
attrib +h "test\*.sty"
del "*.*" /s /q> nul
attrib -h "*.*" /s
