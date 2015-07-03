@echo off
attrib +h "*.bat" /s
attrib +h "*.tex" /s
del "*.*" /s /q> nul
attrib -h "*.*" /s
