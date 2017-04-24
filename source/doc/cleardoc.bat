@echo off
attrib +h "*.bat" /s
attrib +h "*.tex" /s
attrib -h "*-temp*.*" /s> nul
attrib -h "*-example.tex" /s> nul
del "*.*" /s /q> nul
attrib -h "*.*" /s
