
 TUD-Script &ndash; Corporate Design of Technische Universität Dresden
----------------------------------------------------------------------------

 Copyright (C) Falk Hanisch <hanisch.latex@outlook.com>, 2012-2021

 tudscr 2021/07/15 v2.06n

 This material is subject to the LaTeX Project Public License version 1.3c
 or later.<br>
 See http://www.latex-project.org/lppl.txt for details.

----------------------------------------------------------------------------

The current release is shiped via CTAN: https://www.ctan.org/pkg/tudscr

**English text below**

----------------------------------------------------------------------------


Zusammenfassung
---------------

Das TUD-Script-Bundle stellt sowohl Klassen als auch Pakete bereit, um
LaTeX-Dokumente im Corporate Design der Technischen Universität Dresden zu
erstellen. Es basiert auf dem KOMA-Script-Bundle, welches zwingend vorhanden
sein muss. Bei Fragen, Problemen und Anmerkungen sei entweder auf das 
[LaTeX-Forum der Technischen Universität Dresden](https://latex.wcms-file3.tu-dresden.de/phpBB3/)
oder das 
[GitHub-Repository *tudscr*](https://github.com/tud-cd/tudscr/issues)
verwiesen:


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
+ das Paket **twocolfix** zur Fehlerbefehbung der Position von Überschriften
  im zweispaltigen Layout und
+ eine umfassende Anwenderdokumentation sowie mehrere Tutorials.


Versionen
---------

**v2.06n** (2021/07/15)
+ Fix für **siunitx**

**v2.06m** (2021/07/06)
+ Fix eines internen Fehlers mit LuaLaTeX

**v2.06l** (2021/03/30)
+ Fix für Festlegung des Seitenstils in der Präambel
+ Fix für das Durchreichen von Optionen mit LaTeX 2021/05/01

**v2.06k** (2020/11/10)
+ Fix für doppelte Leerzeichen in `\confirmation` etc.

**v2.06j** (2020/09/29)
+ Anpassungen an neue Version von **scrlfile** v3.32 für LaTeX-Kernel 2020/10/01

**v2.06i** (2020/07/27)
+ Bugfix für duplizierte Outline-Einträg in Umgebung `abstract`

**v2.06h** (2020/06/25)
+ Bugfix für Paket **polyglossia** #52

**v2.06g** (2020/06/18)
+ Bugfix für Änderung des Satzspiegels im Dokument

**v2.06f** (2020/01/14)
+ Anpassungen für Paket **scrbase** v3.28

**v2.06e** (2019/10/23)
+ Bugfix für Paket **scrlfile** v3.27

**v2.06d** (2019/08/27)
+ Bugfix für griechische Glyphen im Mathematikmodus beim Einsatz von LuaLaTeX
  (Ligaturen für angrenzende Glyphen sind entgegen der Definition aktiviert)

**v2.06c** (2019/08/20)
+ Bugfix für Paket **fix-tudscrfonts**
+ Bugfix für `\textrightarrow`
+ vertikales Layout der Ausgaben von Paket **tudscrsupervisor** verbessert
+ Verwendung von Paket **mathastext** angepasst

**v2.06b** (2019/07/17)
+ Bugfix für nicht ordnungsgemäßes NFSS (New Font Selection Scheme)

**v2.06a** (2019/07/09)
+ Bugfix für Paket **mathastext** bezüglich der Eingabekodierung

**v2.06** (2019/06/28)
+ Open Sans als neue Schrift des Corporate Designs
+ Minuskelziffern als Standard auswählbar
+ Unterstützung von Roboto Mono als Schreibmaschinenschrift
+ Unterschriftenfeld auf Titel mit Option `titlesignature` bereitgestellt
+ E-Mail-Adresse auf Titel mit `\emailaddress` nutzbar
+ Befehl `\frontispiece` aus KOMA-Script unterstützt
+ individuelle Untertitel für Teile und Kapitel mit `\setpartsubtitle` und 
  `\setchaptersubtitle` möglich

**v2.05m** (2017/05/30)
+ Bugfix für Unicode-Engines für die Glyphe `ß`
+ Bugfix für Paket **siunitx** bei Erkennung der Schriftfamilie

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
+ verbesserte Installationsroutine der Type1-Schriften
+ Seiten im Stil des Corporate Designs werden mithilfe des Paketes
  **scrlayer-scrpage** erzeugt
+ verschiedene Optionen und Befehle zur individuellen Gestaltung dieser Seiten
+ Unterstützung der KOMA-Script-Schriftelemente für Titel und Umschlagseite
+ Befehle und Umgebungen für Zusammenfassung, Selbstständigkeitserklärung und
  Sperrvermerk wurden verbessert
+ Fußnoten in Überschriften als Symbole per Option `footnotes`
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

The TUD-Script bundle provides both classes and packages in order to create 
LaTeX documents in the corporate design of the Technische Universität Dresden.
It bases on the KOMA-Script bundle, which must necessarily be present.
For questions, problems and comments, please refer to eihter the 
[LaTeX forum of the Technische Universität Dresden](https://latex.wcms-file3.tu-dresden.de/phpBB3/)
or the
[GitHub repository *tudscr*](https://github.com/tud-cd/tudscr/issues):


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

**v2.06n** (2021/07/15)
+ bug fix for **siunitx**

**v2.06m** (2021/07/06)
+ bug fix for an internal error with LuaLaTeX

**v2.06l** (2021/03/30)
+ bug fix for defining the page style in the preamble
+ bug fix for passing options with LaTeX 2021/05/01
  
**v2.06k** (2020/11/10)
+ bug fix for multiple spaces in `\confirmation` etc.

**v2.06j** (2020/09/29)
+ adjustments to new version of **scrlfile** v3.32 for LaTeX kernel 2020/10/01

**v2.06i** (2020/07/27)
+ bug fix for duplicated outline entries in environment `abstract`

**v2.06h** (2020/06/25)
+ bug fix for package **polyglossia** #52

**v2.06g** (2020/06/18)
+ bug fix when changing type area within document

**v2.06f** (2020/01/14)
+ adaptions for package **scrbase** v3.28

**v2.06e** (2019/10/23)
+ bug fix for package **scrlfile** v3.27

**v2.06d** (2019/08/27)
+ bug fix for greek glyphs in math mode when using LuaLaTeX
 (boundary ligatures are activated contrary to definition)

**v2.06c** (2019/08/20)
+ bug fix for package **fix-tudscrfonts**
+ bug fix for `\textrightarrow`
+ improved vertical layout of output generated by package **tudscrsupervisor**
+ revised usage of package **mathastext**

**v2.06b** (2019/07/17)
+ bug fix for improper NFSS (New Font Selection Scheme)

**v2.06a** (2019/07/09)
+ bug fix for package **mathastext** regarding input encoding

**v2.06** (2019/06/28)
+ Open Sans as new corporate design font
+ text figures selectable as default
+ support of Roboto Mono as typewriter font
+ signature field on title page with option `titlesignature` provided
+ e-mail address on title page with `\emailaddress` available
+ macro `\frontispiece` from KOMA-Script supported
+ customized subtitles for parts and chapters with `\setpartsubtitle` and 
  `\setchaptersubtitle` possible

**v2.05m** (2017/05/30)
+ bug fix for Unicode engines for glyph`ß`
+ bug fix for package **siunitx** when recognizing the font family

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
+ crop marks with packages **crop** and **geometry** possible
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
+ improved installation routine of Type1 fonts
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
