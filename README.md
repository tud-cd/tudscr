
 TUD-Script -- Corporate Design of Technische Universität Dresden
----------------------------------------------------------------------------

 Copyright (C) Falk Hanisch <hanisch.latex@outlook.com>, 2012-2017

 tudscr 2017/03/29 v2.05l

----------------------------------------------------------------------------

 This material is subject to the LaTeX Project Public License version 1.3c
 or later. See http://www.latex-project.org/lppl.txt for details.
 English text below

----------------------------------------------------------------------------

Zusammenfassung
---------------

Das TUD-Script-Bundle stellt sowohl Klassen als auch Pakete bereit, um
LaTeX-Dokumente im Corporate Design der Technischen Universität Dresden zu
erstellen. Es basiert auf dem KOMA-Script-Bundle, welches zwingend vorhanden
sein muss. Außerdem sollten die beiden PostScript-Schriftfamilien Univers und
DIN-Bold installiert werden. Geschieht dies nicht, können die Dokumentklassen
zwar genutzt werden, die ausgegebenen Dokumente entsprechen in diesem Fall
jedoch nicht dem ursprünglich erhofftem Stil.

Mitarbeiter und Studenten der Technischen Universität Dresden können die
Schriftdateien unter https://tu-dresden.de/service/publizieren/cd/4_latex vom
Universitätsmarketing  mit dem Hinweis auf die Verwendung von LaTeX anfordern.
Für die Installation der PostScript-Schriften sei auf den entsprechenden
Release unter https://github.com/tud-cd/tudscr/releases/tag/fonts und das
LaTeX-Forum der Technischen Universität Dresden verwiesen:
http://latex.wcms-file3.tu-dresden.de/phpBB3/


Klassen und Pakete
------------------

Das Bundle beinhaltet:

+ die drei Dokumentklassen **tudscrartcl**, **tudscrreprt**, **tudscrbook** 
  als Wrapper-Klassen von **scrartcl**, **scrreprt** und **scrbook**,
+ die Klasse **tudscrposter** für das Erstellen von Postern
+ das Paket **tudscrsupervisor**, welches Umgebungen und Befehle für die
  Erstellung von Aufgabenstellungen, Gutachten und Aushängen bereitstellt,
+ das Paket **tudscrfonts**, das die Schriften des Corporate Designs der
  Technischen Universität Dresden für die LaTeX-Standard-Klassen und die
  KOMA-Script-Klassen nutzbar macht,
+ das Paket **fix-tudscrfonts**, das selbige Schriften für weitere 
  TUD-CD-Klassen verfügbar macht, welche nicht zu TUD-Script gehören,
+ das Paket **tudscrcomp**, welches den Umstieg von fremden TUD-CD-Klassen auf
  TUD-Script vereinfacht,
+ das Paket **mathswap** für das Austauschen mathematischer Trennzeichen
  innerhalb von Zahlen (ähnlich zu **ionumbers**),
+ das Paket **twocolfix** zur Fehlerbefehbung der Position von Überschriften im
  zweispaltigen Layout und
+ eine umfassende Anwenderdokumentation sowie mehrere Tutorials.

Versionen
---------

**v2.05l** (2017/03/29)
+ Bugfix für Paket **fontspec** bei Option `cdfont=false`
+ Bugfix für Paket **fontspec** bei Schriftnamen

**v2.05k** (2017/03/27)
+ Bugfix für Gliederungsbefehle `\addpart`, `\addchap` und `\addsec`
+ kleinere Anpassungen für Dokumentationsklassen

**v2.05i** (2017/03/12)
+ Befehl `\Describe<Element>s` für mehrere Elemente in Klasse **tudscrdoc**
+ Umgebung `DescribeParameterParent` in Klasse **tudscrdoc**
+ Bugfix für `\mu` bei Mathematikschriften
+ Bugfix in Klasse **tudscrmanual** für neue Version von **xparse**

**v2.05h** (2017/02/04)
+ Quelltextdokumentationsklasse **tudscrdoc** an neue Version von **dox** 
  angepasst
+ Glyphen (`lessequal` und `greaterequal`) in Schriftfamilien korrigiert

**v2.05g** (2017/01/26)
+ Erweiterung der Quelltextdokumentationsklasse **tudscrdoc**
+ kleinere Fehler im TUD-Script-Bundle behoben

**v2.05f** (2016/10/12)
+ Probleme mit dem Paket **bm** behoben

**v2.05e** (2016/10/10)
+ Bugfix für Verwendung von `\author` nach `\maketitle`

**v2.05d** (2016/09/22)
+ Bezeichnung in TUD-Script-Bundle geändert
+ Probleme mit dem Paket **flexisym** behoben

**v2.05c** (2016/09/15)
+ Bugfix bei Verwendung von KOMA-Script v3.19 und früher

**v2.05b** (2016/09/09)
+ Bugfix für **fix-tudscrfonts**

**v2.05a** (2016/08/24)
+ Bugfix für Überprüfung der installierten Schriften

**v2.05** (2016/07/26)
+ Klasse **tudscrposter**
+ Schnittmarken mit Paketen **crop** und **geometry** möglich
+ neue Einstellungsmöglichkeiten für den Satzspiegel
+ schriftgrößenabhängige Abstände mit Option `relspacing`
+ `\course` und `\discipline` für Titel nutzbar
+ Paket **tudscrcomp**: Unterstützung der Klassen **tudmathposter** und
  **tudposter**
+ Paket **fix-tudscrfonts**

**v2.04e** (2016/06/17)
+ Bugfix für Teile mit KOMA-Script v3.21

**v2.04d** (2016/03/26)
+ Bugfix für Titelseite bei **tudscrartcl**

**v2.04c** (2015/11/29)
+ Bugfix für fehlenden Schriften bei Verwendung von Paket **fontspec**

**v2.04b** (2015/10/06)
+ Bugfix für KOMA-Script v3.19

**v2.04a** (2015/07/24)
+ Bugfix für Option `ddc`

**v2.04** (2015/07/02)
+ Anpassungen an KOMA-Script v3.18
+ Einfachere Verwendung von Paket **fontspec**
+ verbesserte Installationsroutine der Schriften für portable Distributionen
+ alleinstehender farbiger Querbalken im Kopfbereich
+ freier Inhalt im Fußbereich möglich

**v2.03a** (2015/06/11)
+ Anpassungen an KOMA-Script v3.17
+ Fehlerkorrektur für Auswahl der Mathematikschriften

**v2.03** (2015/02/15)
+ Anpassungen an KOMA-Script v3.15
+ Verbesserung des Satzspiegels für das Corporate Design
+ Kopf und Fuß können farbig dargestellt werden
+ Logos in der Fußzeile für Titel und dergleichen möglich
+ kleinere Fehlerkorrekturen

**v2.02** (2014/12/17)
+ Paket **tudscrfonts**
+ Probleme mit der Klasse **standalone** behoben
+ Laden der Schriften des Corporate Designs im OpenType-Format mit Paket 
  **fontspec** ermöglicht
+ verbesserte Installationsroutine der PostScript-Schriften
+ Seiten im Stil des Corporate Designs werden mithilfe des Paketes
  **scrlayer-scrpage** erzeugt
+ verschiedene Optionen und Befehle zur individuellen Gestaltung dieser Seiten
+ Unterstützung der KOMA-Script-Schriftelemente für Titel und Umschlagseite
+ Befehle und Umgebungen für Zusammenfassung, Selbstständigkeitserklärung und
  Sperrvermerk wurden verbessert
+ Fussnoten in Überschriften als Symbole  per Option `footnotes`
+ einige Befehle wurden für Kompatibilität zu anderen Paketen umbenannt
+ Funktionalität des Paketes **mathswap** im Dokument umschaltbar

**v2.01b** (2014/06/04)
+ Bug bei Aufgabenstellung behoben (tudscrsupervisor)

**v2.01a** (2014/06/03)
+ Bug bei der Verwendung des Untertitels behoben

**v2.01** (2014/04/24)
+ Fehlerkorrekturen beim Kerning der Ziffern und bei der Schriftstärke auf der
  Titelseite

**v2.00** (2014/04/22)
+ Das TUD-Script-Bundle wurde von Grund auf überarbeitet und mittels Paket
  **docstrip** erzeugt. Viele Fehler wurden entfernt und die Robustheit der
  Befehle und Optionen wurde erhöht. Die Verwendung der Schriften, insbesondere
  für den mathematischen Satz, wurde entscheidend verbessert. Weiterhin erfuhr
  das Handbuch des Bundles eine komplette Überarbeitung, wurde erweitert und um
  mehrere Indexe ergänzt.

**v1.0** (2012/10/31)
+ erste Version des TUD-Script-Bundles

-------------------------------------------------------------------------------

Summary
-------

The TUD-Script bundle provides both classes and packages in order to
create LaTeX documents in the corporate design of the Technische Universität
Dresden. It bases on the KOMA-Script bundle, which must necessarily be present.
In addition, the PostScript font families Univers and DIN-Bold should be
installed. Otherwise, the document classes can admittedly be used, but in this
case, the created documents do not correspond to the originally thought style.

Employees and students of the Technische Universität Dresden can request these
fonts via  https://tu-dresden.de/service/publizieren/cd/4_latex from the
university marketing university marketing with regard to the use of LaTeX. To
install the PostScript fonts, please refer to the corresponding release under
https://github.com/tud-cd/tudscr/releases/tag/fonts and the LaTeX forum of the
Technische Universität Dresden:
http://latex.wcms-file3.tu-dresden.de/phpBB3/

Classes and Packages
--------------------

The bundle offers:

+ the three document classes **tudscrartcl**, **tudscrreprt**, **tudscrbook** 
  as wrapper classes for **scrartcl**, **scrreprt** and **scrbook**,
+ the class **tudscrposter** for creating posters,
+ the package **tudscrsupervisor** providing environments and macros to create
  tasks, evaluations and notices for scientific theses,
+ the package **tudscrfonts**, which makes the corporate design fonts of the
  Technische Universität Dresden available for LaTeX standard classes and
  KOMA-Script classes,
+ the package **fix-tudscrfonts**, which provides the same fonts to additional
  corporate design classes not related to TUD-Script
+ the package **tudscrcomp**, which simplifies the switch to TUD-Script
  from external corporate design classes,
+ the package **mathswap** for swapping math delimiters within numbers 
  (similiar to **ionumbers**),
+ the package **twocolfix** for fixing the positioning bug of headings in
  twocolumn layout and
+ an comprehensive user documentation as well as several tutorials.

Versions
--------

**v2.05l** (2017/03/29)
+ bug fix for package **fontspec** with option `cdfont=false`
+ bug fix for package **fontspec** with font names

**v2.05k** (2017/03/27)
+ bug fix for sectioning commands `\addpart`, `\addchap` und `\addsec`
+ small adaptions for documentation classes

**v2.05i** (2017/03/12)
+ command `\Describe<Element>s` for mutliple elements in class **tudscrdoc**
+ environment `DescribeParameterParent` in class **tudscrdoc**
+ bug fix for `\mu` with math font
+ bug fix in class **tudscrmanual** for new version of **xparse**

**v2.05h** (2017/02/04)
+ adaption to source code documentation class **tudscrdoc** for updated **dox**
+ glyphs (`lessequal` und `greaterequal`) in font families corrected

**v2.05g** (2017/01/26)
+ enhancement of the source code documentation class **tudscrdoc**
+ minor errors fixed within the TUD-Script bundle

**v2.05f** (2016/10/12)
+ solved problems with package **bm**

**v2.05e** (2016/10/10)
+ bug fix for usage of `\author` after `\maketitle`

**v2.05d** (2016/09/22)
+ notation changed to TUD-Script bundle
+ solved problems with package **flexisym**

**v2.05c** (2016/09/15)
+ bug fix for usage of KOMA-Script v3.19 and earlier

**v2.05b** (2016/09/09)
+ bug fix for **fix-tudscrfonts**

**v2.05a** (2016/08/24)
+ bug fix for verification of installed fonts

**v2.05** (2016/07/26)
+ class **tudscrposter**
+ crop marks  with packages **crop** and **geometry** possible
+ new possible settings for type area
+ font size related skips with option `relspacing`
+ `\course` and `\discipline` available on title
+ package **tudscrcomp**: support for classes **tudmathposter** and 
  **tudposter**
+ package **fix-tudscrfonts**

**v2.04e** (2016/06/17)
+ bug fix for parts with KOMA-Script v3.21

**v2.04d** (2016/03/26)
+ bug fix for titlepage with **tudscrartcl**

**v2.04c** (2015/11/29)
+ bug fix for missing fonts when using package **fontspec**

**v2.04b** (2015/10/06)
+ bug fix for KOMA-Script v3.19

**v2.04a** (2015/07/24)
+ bug fix for option `ddc`

**v2.04** (2015/07/02)
+ adjustments to KOMA-Script v3.18
+ simpler usage of package **fontspec**
+ improved installation routine for portable distributions
+ solitary colored head bar
+ customisable content in the foot possible

**v2.03a** (2015/06/11)
+ adjustments to KOMA-Script v3.17
+ bug fix for math font selecting

**v2.03** (2015/02/15)
+ adjustments to KOMA-Script v3.15
+ improvement of the corporate design type area
+ colored head and foot possible
+ including logos in the foot for the title etc.
+ a few little bug fixes

**v2.02** (2014/12/17)
+ package **tudscrfonts**
+ fixed bug with class **standalone**
+ loading the corporate design fonts in OpenType format with package 
  **fontspec** is possible
+ improved installation routine of PostScript fonts
+ pages in the style of the corporate design are generated using the package
  **scrlayer-scrpage**
+ various options and commands to customize these pages
+ support of the KOMA-Script font elements for title and cover
+ commands and environments for abstract, statement of authorship and
  restriction note have been improved
+ footnotes in headings can be set as symbols per option `footnotes`
+ some commands have been renamed for compatibility with other packages
+ functionality of the package **mathswap** can be switched within the document

**v2.01b** (2014/06/04)
+ fixed bug when using task (tudscrsupervisor)

**v2.01a** (2014/06/03)
+ fixed bug when using the subtitle

**v2.01** (2014/04/24)
+ fixes the kerning of the digits and the font weight at the title page

**v2.00** (2014/04/22)
+ The TUD-Script bundle has been redesigned from the ground up and is
  generated by using **docstrip**. Many bugs have been removed and the 
  robustness of the commands and options has been increased. The use of the 
  fonts, especially for the mathematical set, was significantly improved. The 
  manual of the bundle underwent a complete overhaul, has been extended and
  supplemented by several indexes.

**v1.0** (2012/10/31)
+ first version of the TUD-Script bundle
