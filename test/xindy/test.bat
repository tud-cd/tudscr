@echo off
echo "Welche Datei?"
set /p file=
pdflatex "\def\tudtexindyflag{}\input{tudscr-%file%.dtx}"
rem pause
pdflatex --shell-escape "\def\tudtexindyflag{}\input{tudscr-%file%.dtx}"
rem pause
rem pause
rem texindy -M tudscr-%file%-idx.xdy -L german-din -t tudscr-%file%.ilg -o tudscr-%file%.ind tudscr-%file%-texindy.idx
rem pause
rem texindy -M tudscr-%file%-glo.xdy -L german-din -t tudscr-%file%.glg -o tudscr-%file%.gls tudscr-%file%-texindy.glo
rem pause
pdflatex "\def\tudtexindyflag{}\input{tudscr-%file%.dtx}"
