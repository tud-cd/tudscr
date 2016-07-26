#!/bin/sh
topdir=`dirname $0`
cd "$topdir"
if [ -d temp ]
then
    rm -rf temp 
fi
cp -r source temp
mkdir -p temp/tex/latex/tudscr
cp -r source/logo temp/tex/latex/tudscr
cd temp
cat > docstrip.cfg <<EOF
\BaseDirectory{.}
\UseTDS
EOF
tex tudscr.ins
texmfpath=`kpsewhich --var-value=TEXMFLOCAL|sed 's,^!*,,'`
cp -r tex "$texmfpath" 
cd "$topdir"
if [ -d temp ]
then
    rm -rf temp 
fi
# Wenn keine ls-R-Datei existiert möchte der 
# Nutzer eventuell auch keine haben, um neue 
# oder gelöschte Dateien schnell und fehlerfrei
# zur Verfügung zu haben.
test -f "$texmfpath/ls-R" && mktexlsr "$texmfpath"
