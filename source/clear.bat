@echo off
attrib +h "*.bat" /s
attrib +h "*.dtx" /s
attrib +h "*.ins" /s
attrib +h "*.tex" /s
attrib -h "*-temp.*" /s> nul
attrib -h "install\*.bat" /s> nul
attrib -h "install\*.tex" /s> nul
attrib +h "logo\*.*"
attrib +h "test\*.cls"> nul
attrib +h "test\*.sty"> nul
del "*.*" /s /q> nul
attrib -h "*.*" /s
