#!/bin/bash
#
# Autor: Falk Hanisch, Jons-Tobias Wamhoff
#
# getestet auf:
# Ubuntu 14.04
# Ubuntu 15.04
#
# in Kombination mit:
# TeX Live 2015
#
# Vorausgesetzte Tools:
# unzip        (Ubuntu package unzip)
#
# Voraussetzte LaTeX Pakete:
# fontinst (Ubuntu package texlive-font-utils)
# lmodern  (Ubuntu package lmodern)
# cm-super (Ubuntu package cm-super)
# cmbright (Ubuntu package texlive-fonts-extra)
# hfbright (Ubuntu package texlive-fonts-extra)
# iwona    (Ubuntu package texlive-fonts-extra)
#
# Benoetigte Archive (im Verzeichnis des Installationsskriptes):
# DIN_Bd_PS.zip
# Univers_PS.zip
#
# Die Installation erfolgt in das lokale Benutzerverzeichnis $TEXMFHOME. Dies
# ist unter Linux in ~/.texmf und unter Mac OS in ~/Library/texmf. Der Nutzer
# kann dabei im Installationsprozess auswaehlen, ob die Schriften mit dem
# Befehl 'updmap' lokal fuer den aktuellen Benutzer oder mit 'updmap-sys'
# systemweit registriert werden sollen. Die zweite Variante benoetigt hierfuer
# Administratorenrechte. Wird die erste Variante gewaehlt, muss der Anwender
# zukuenftig nach Aenderungen an den globalen oder lokalen LaTeX-Schriften
# (z.B. Updates) den Befehl 'updmap' manuell aufrufen, damit die lokalen
# Schriften gefunden werden. Mit Mac OS geht dies mit "TeX Live Utility.app":
# "Preferences..." -> "Automatically enable fonts in my home directory."
#
checkfile()
{
  if [ ! -f "$1" ]; then
    missing=true
    missingfile "$1"
  else
    echo   Datei $1 gefunden
  fi
}
missingfile()
{
  echo  =====================================================================
  echo
  echo   Die Datei $1 wurde nicht gefunden. Diese wird fuer die
  echo   Installation zwingend benoetigt. Bitte kopieren Sie $1
  echo   in das Verzeichnis des Skriptes und fuehren dieses abermals aus.
  echo
  echo  =====================================================================
}
checkpackage()
{
  package=$(kpsewhich $1)
  if [ -z "$package" ]; then
    missing=true
    missingpackage "$1"
  else
    echo   Paket $1 gefunden
  fi
}
missingpackage()
{
  echo  =====================================================================
  echo
  echo   Das LaTeX-Paket $1 wurde nicht gefunden. Dieses wird fuer
  echo   die Schriftinstallation zwingend benoetigt. Bitte $1
  echo   installieren und danach dieses Skript abermals ausfuehren.
  echo
  echo  =====================================================================
}
proof_userinput()
{
  echo
  echo  =====================================================================
  echo
  echo   $texmfpath
  echo
  echo   Soll dieser Pfad genutzt werden?
  if [ ! -d $texmfpath ]; then
    echo "Der angegebene Ordner existiert nicht, wird jedoch erstellt."
  fi
  select yn in "Yes" "No"; do
    case $yn in
      "Yes") break;;
      "No")
        set_texmfpath
        break;;
      *) echo invalid option;;
    esac
  done
}
set_texmfpath()
{
  echo
  echo   Geben Sie das Installationsverzeichnis an:
  read texmfpath
  proof_userinput
}
abort()
{
  echo
  echo  =====================================================================
  echo   Abbruch der Installation, temporaere Dateien werden geloescht.
  echo  =====================================================================
  echo
  read -n1 -r -p "Druecken Sie eine beliebige Taste . . . "
  echo
  rm -rf tudscrtemp
  exit 0
}
mkvaldir()
{
  mkdir -p $1
  if [ $? -ne 0 ] ; then
    echo Keine Schreibberechtigung fuer den Pfad
    echo $1
    echo "Versuchen Sie das Ausfuehren mit 'sudo bash <Skriptname>'"
    abort
  fi
}
#
#
#
echo
echo  =====================================================================
echo
echo   Installation TUD-CD-Schriften unter Unix
echo     2015/06/15 v2.04 BETA TUD-KOMA-Script
echo
rm -rf tudscrtemp
mkvaldir tudscrtemp/converted
texpath=$(which tex)
if [ -z "$texpath" ]; then
  echo Es wurde keine LaTeX-Distribution gefunden.
  echo Moeglicherweise hilft der Aufruf des Skriptes mit:
  echo "'sudo env \"PATH=\$PATH\" bash <Skriptname>'"
  abort
fi
echo  =====================================================================
echo
echo   Notwendige Dateien und Pakete werden gesucht.
echo
missing=false
checkfile "Univers_PS.zip"
checkfile "DIN_Bd_PS.zip"
checkfile "tudscr_fonts_install.zip"
checkpackage "fontinst.sty"
checkpackage "type1ec.sty"
checkpackage "lmodern.sty"
checkpackage "cmbright.sty"
checkpackage "hfbright.map"
checkpackage "iwona.sty"
if $missing ; then
  abort
fi
echo
echo   Es wurden alle notwendigen Dateien und Pakete gefunden.
echo
echo  =====================================================================
echo
echo   LaTeX-Distribution gefunden unter:
echo   "$texpath"
echo
texmfpath=$(kpsewhich --var-value=TEXMFHOME)
if [ -z "$texmfpath" ]; then
  texmfpath=$(kpsewhich --var-value=TEXMFLOCAL)
fi
echo  =====================================================================
echo
echo   Installation der TUD-CD-Schriften
proof_userinput
echo
echo  =====================================================================
echo   Installation der TUD-CD-Schriften in:
echo   $texmfpath
echo  =====================================================================
echo
localfolder=tudscr
mkvaldir $texmfpath/tex/latex/$localfolder/fonts
mkvaldir $texmfpath/fonts/tfm/$localfolder
mkvaldir $texmfpath/fonts/afm/$localfolder
mkvaldir $texmfpath/fonts/vf/$localfolder
mkvaldir $texmfpath/fonts/type1/$localfolder
mkvaldir $texmfpath/fonts/map/dvips/$localfolder
unzip Univers_PS.zip -d tudscrtemp
unzip DIN_Bd_PS.zip -d tudscrtemp
unzip tudscr_fonts_install.zip -d tudscrtemp/converted
cd tudscrtemp
cp uvcel___.pfb converted/lunl8a.pfb
cp uvcel___.afm converted/lunl8a.afm
cp uvxlo___.pfb converted/lunlo8a.pfb
cp uvxlo___.afm converted/lunlo8a.afm
cp uvce____.pfb converted/lunr8a.pfb
cp uvce____.afm converted/lunr8a.afm
cp uvceo___.pfb converted/lunro8a.pfb
cp uvceo___.afm converted/lunro8a.afm
cp uvceb___.pfb converted/lunb8a.pfb
cp uvceb___.afm converted/lunb8a.afm
cp uvxbo___.pfb converted/lunbo8a.pfb
cp uvxbo___.afm converted/lunbo8a.afm
cp uvcz____.pfb converted/lunc8a.pfb
cp uvcz____.afm converted/lunc8a.afm
cp uvczo___.pfb converted/lunco8a.pfb
cp uvczo___.afm converted/lunco8a.afm
cp DINBd___.pfb converted/0m6b8a.pfb
cp DINBd___.afm converted/0m6b8a.afm
echo
echo  =====================================================================
echo   Virtuelle Schriften erzeugen. \(Dies kann einen Moment dauern\)
echo  =====================================================================
echo
cd converted
echo 00/19
tftopl cmbr10.tfm cmbr10.pl
echo 01/19
tftopl cmbrsl10.tfm cmbrsl10.pl
echo 02/19
tftopl cmbrbx10.tfm cmbrbx10.pl
echo 03/19
tftopl tbmr10.tfm tbmr10.pl
echo 04/19
tftopl tbmo10.tfm tbmo10.pl
echo 05/19
tftopl tbsr10.tfm tbsr10.pl
echo 06/19
tftopl tbso10.tfm tbso10.pl
echo 07/19
tftopl tbbx10.tfm tbbx10.pl
echo 08/19
tftopl cmbrmi10.tfm cmbrmi10.pl
echo 09/19
tftopl cmbrmb10.tfm cmbrmb10.pl
echo 10/19
tftopl cmbrsy10.tfm cmbrsy10.pl
echo 11/19
tftopl sy-iwonamz.tfm sy-iwonamz.pl
echo 12/19
tftopl sy-iwonahz.tfm sy-iwonahz.pl
echo 13/19
tftopl rm-iwonach.tfm rm-iwonach.pl
echo 14/19
tftopl rm-iwonachi.tfm rm-iwonachi.pl
echo 15/19
tftopl ts1-iwonach.tfm ts1-iwonach.pl
echo 16/19
tftopl ts1-iwonachi.tfm ts1-iwonachi.pl
echo 17/19
tftopl mi-iwonachi.tfm mi-iwonachi.pl
echo 18/19
tftopl sy-iwonachz.tfm sy-iwonachz.pl
echo 19/19
latex installfonts.tex
for f in $(ls *.pl) ; do
  pltotf $f
done
for f in $(ls *.vpl) ; do
  vptovf $f
done
latex createmap.tex
echo
echo  =====================================================================
echo   Konvertierung abgeschlossen.
echo  =====================================================================
echo
cp -f *.fd  $texmfpath/tex/latex/$localfolder/fonts
cp -f *.tfm $texmfpath/fonts/tfm/$localfolder
cp -f *.afm $texmfpath/fonts/afm/$localfolder
cp -f *.vf  $texmfpath/fonts/vf/$localfolder
cp -f *.pfb $texmfpath/fonts/type1/$localfolder
cp -f *.map $texmfpath/fonts/map/dvips/$localfolder
texhash
updmap-sys --enable Map=tudscr.map
echo
echo  =====================================================================
echo   Die Installation wird beendet.
echo   Der Ordner mitsamt aller temporaeren Dateien wird geloescht.
echo  =====================================================================
echo   Dokumentation und Beispiele fuer das TUD-KOMA-Script-Bundle sind
echo   ueber den Konsolenaufruf texdoc tudscr zu finden.
echo  =====================================================================
read -n1 -r -p "Druecken Sie eine beliebige Taste . . . "
echo
cd ../..
rm -rf tudscrtemp
exit 0
