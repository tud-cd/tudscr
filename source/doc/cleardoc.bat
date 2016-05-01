@echo off
attrib +h "*.bat" /s
attrib +h "*.tex" /s
attrib -h "*-temp*.*" /s
attrib -h "*-example.tex" /s
del "*.*" /s /q> nul
attrib -h "*.*" /s
