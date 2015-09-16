%%
%% This is file `tudscrman.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tudscr-version.dtx  (with options: `class,manual')
%% tudscr-manual.dtx  (with options: `class')
%% tudscr-base.dtx  (with options: `class,load')
%% tudscr-manual.dtx  (with options: `class,option')
%% tudscr-misc.dtx  (with options: `class,inherit,execute')
%% tudscr-manual.dtx  (with options: `class,body')
%% tudscr-fields.dtx  (with options: `class,manual,body')
%% tudscr-locale.dtx  (with options: `class,manual,body')
%% 
%% ============================================================================
%% 
%%  TUD-KOMA-Script
%%  Copyright (c) Falk Hanisch <tudscr@gmail.com>, 2012-2015
%% 
%% ============================================================================
%% 
%%  This work may be distributed and/or modified under the conditions of the
%%  LaTeX Project Public License, version 1.3c of the license. The latest
%%  version of this license is in http://www.latex-project.org/lppl.txt and
%%  version 1.3c or later is part of all distributions of LaTeX 2005/12/01
%%  or later and of this work. This work has the LPPL maintenance status
%%  "author-maintained". The current maintainer and author of this work
%%  is Falk Hanisch.
%% 
%% ----------------------------------------------------------------------------
%% 
%%  Dieses Werk darf nach den Bedingungen der LaTeX Project Public Lizenz
%%  in der Version 1.3c, verteilt und/oder veraendert werden. Die aktuelle
%%  Version dieser Lizenz ist http://www.latex-project.org/lppl.txt und
%%  Version 1.3c oder spaeter ist Teil aller Verteilungen von LaTeX 2005/12/01
%%  oder spaeter und dieses Werks. Dieses Werk hat den LPPL-Verwaltungs-Status
%%  "author-maintained", wird somit allein durch den Autor verwaltet. Der
%%  aktuelle Verwalter und Autor dieses Werkes ist Falk Hanisch.
%% 
%% ============================================================================
%% 
%%% From File: tudscr-version.dtx
\begingroup%
  \catcode`\@11\relax%
  \ifx\TUDVersion\undefined%
    \newcommand*\@TUDVersion[1]{\gdef\TUDVersion{#1}}%
  \else%
    \newcommand*\@TUDVersion[1]{%
      \def\@tempa{#1}%
      \ifx\TUDVersion\@tempa\else%
        \@latex@warning@no@line{%
          \noexpand\TUDVersion\space is `\TUDVersion',\MessageBreak%
          but `#1' was expected!\MessageBreak%
          You should not use classes, packages or files from\MessageBreak%
          different TUD-KOMA-Script-Bundle versions%
        }%
      \fi%
    }%
  \fi%
  \@TUDVersion{2015/08/26 v2.05 BETA TUD-KOMA-Script}%
\endgroup%
\providecommand*\tudscrmail{tudscr@gmail.com}
\newcommand*\TUD@ProvidesWrapperClass[3]{%
  \ProvidesClass{#1}[%
  2015/07/17 v2.05 BETA TUD-KOMA-Script
    ^^J#3 (#2)%
  ]%
  \newcommand*\TUDClassName@Parent{#2}%
  \newcommand*\TUDClassName{#1}%
  \TUD@ClassInfo%
}
\providecommand*\TUD@ClassInfo{%
  \typeout{+---------------------------------------------------------------}%
  \typeout{| The Corporate Design of Technische Universitaet Dresden}%
  \typeout{| Class: \TUDClassName}%
  \typeout{| Version: \TUDVersion}%
  \typeout{| Author: Falk Hanisch (\tudscrmail)}%
  \typeout{| Forum: http://latex.wcms-file3.tu-dresden.de/phpBB3/index.php}%
  \typeout{+---------------------------------------------------------------}%
}
\NeedsTeXFormat{LaTeX2e}
\TUD@ProvidesWrapperClass{tudscrman}{tudscrreprt}{manual class}
\@ifundefined{TUDScript}{%
  \DeclareRobustCommand{\TUDScript}{%
    \ifdin{TUD-KOMA-SCRIPT}{%
      \textsf{T\kern.05em U\kern.05em D\kern.1em-\kern.1em}\KOMAScript%
    }\csname xspace\endcsname%
  }%
}{}
%%% From File: tudscr-manual.dtx
\newcommand*\@TUDScript{TUD-KOMA-Script}
%%% From File: tudscr-base.dtx
\RequirePackage{tudscrbase}[\TUDVersion]
\ifx\TUD@noworlater\TUD@noworlater@simple
  \renewcommand*{\TUD@noworlater}[2]{#1\AtEndOfClass{#1#2}}%
  \AtEndOfClass{\renewcommand*\TUD@noworlater[2]{#1#2}}%
\fi
\renewcommand*\TUD@KOMAoptions[1]{%
  \if@atdocument%
    \KOMAoptions{#1}%
  \else%
    \@ifclassloaded{\TUDClassName@KOMA}{%
      \KOMAoptions{#1}%
    }{%
      \PassOptionsToClass{#1}{\TUDClassName@KOMA}%
    }%
  \fi%
}
%%% From File: tudscr-manual.dtx
\newif\if@tud@todo
\@tud@todotrue
\newcommand*\tud@todo@type{}
\TUD@key{ToDo}[true]{%
  \TUD@set@ifkey{ToDo}{@tud@todo}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \let\tud@todo@type\relax%
  \else%
    \def\tud@todo@type{#1}%
    \@tud@todotrue%
    \FamilyKeyStateProcessed%
  \fi%
}
\PassOptionsToClass{%
  cdfoot=true,%
  chapterpage=true,%
  chapterprefix=true,%
  headings=optiontoheadandtoc,%
  captions=tableheading,%
  numbers=noenddot,%
  cd=color,%
}{\TUDClassName@Parent}
\PassOptionsToPackage{automark}{scrlayer-scrpage}
\DeclareOption{final}{\let\tudfinalflag\relax}
\DeclareOption{print}{\let\tudprintflag\relax}
\AtBeginDocument{%
  \ifdef{\tudfinalflag}{\TUDoptions{ToDo=false}}{}%
  \ifdef{\tudprintflag}{%
    \TUDoptions{color=no}%
    \PassOptionsToPackage{hidelinks}{hyperref}%
  }{}%
}
%%% From File: tudscr-misc.dtx
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\TUDClassName@Parent}}
\TUDProcessOptions\relax
\LoadClass{\TUDClassName@Parent}
%%% From File: tudscr-manual.dtx
\PassOptionsToPackage{log-declarations=false}{xparse}
\RequirePackage{xparse}[2013/12/31]
\RequirePackage{textcomp}[2005/09/27]
\RequirePackage{setspace}[2011/12/19]
\setstretch{1.1}
\RequirePackage{babel}[2014/03/24]
\AfterPackage*{inputenc}{\RequirePackage{csquotes}[2011/10/22]}
\AtBeginDocument{%
  \@ifpackageloaded{csquotes}{}{%
  \ClassWarning%
  {tudscrman}{Package `csquotes' not loaded}%
    \providecommand\enquote[1]{\glqg#1\grqq{}}%
  }%
}
\AfterPackage*{hyperref}{%
  \RequirePackage[babel]{microtype}[2013/05/23]%
  \patchcmd{\pdfstringdef}{\csname HyPsd@babel@}{%
    \let\bbl@info\@gobble\csname HyPsd@babel@%
  }{}{\tud@patch@wrn{pdfstringdef}}%
}
\newlength\baselineskipglue
\AtBeginDocument{%
  \setlength\baselineskipglue{%
    .4\baselineskip plus .4\baselineskip minus .2\baselineskip%
  }%
}
\PassOptionsToPackage{vskip=.5\baselineskipglue}{quoting}
\RequirePackage{quoting}[2014/01/28]
\RequirePackage{isodate}[2010/01/03]
\RequirePackage{hologo}[2012/04/26]
\PassOptionsToPackage{quiet}{marginnote}
\RequirePackage{marginnote}[2012/03/29]
\RequirePackage{listings}[2014/03/04]
\lstdefinestyle{tudscr}{%
  basicstyle=\ttfamily\setstretch{1},%
  keywordstyle=,%
  columns=fullflexible,keepspaces,%
  aboveskip=.5\baselineskipglue,%
  belowskip=.5\baselineskipglue,%
  language=[LaTeX]TeX,%
  texcl,%
}
\RequirePackage{silence}[2012/07/02]
\RequirePackage{filemod}[2011/09/19]
\RequirePackage{ifpdf}[2011/01/30]
\ifpdf
  \PassOptionsToPackage{colorinlistoftodos,obeyFinal,color=HKS92!10}{todonotes}
  \RequirePackage{todonotes}[2012/07/25]
\else
  \TUDoptions{ToDo=false}
\fi
\WarningFilter*{ifplatform}{^^J \space\space\space shell escape is disabled}
\RequirePackage{ifplatform}[2010/10/22]
\PassOptionsToPackage{hyperindex=false,colorlinks,linkcolor=blue}{hyperref}
\PassOptionsToPackage{open,openlevel=0}{bookmark}
\AtBeginDocument{%
  \RequirePackage{hyperref}[2012/11/06]
  \RequirePackage{bookmark}[2011/12/02]
  \newcommand*\Email[1]{\href{mailto:#1}{\nolinkurl{#1}}}
  \renewcaptionname{ngerman}{\sectionautorefname}{Unterkapitel}
  \renewcaptionname{ngerman}{\subsectionautorefname}{Abschnitt}
  \renewcaptionname{ngerman}{\subsubsectionautorefname}{Unterabschnitt}
  \newcommand*\autorefname[1][current]{%
    \ifstr{#1}{current}{%
      \expandafter\HyPsd@@autorefname\@currentHref\@nil%
    }{%
      \@autorefname\HyPsd@@autorefname{#1}%
    }%
    \unskip\xspace%
  }
  \newcommand*\@autorefname[2]{%
    \expandafter\ifx\csname r@#2\endcsname\relax%
      ??%
    \else%
      \expandafter\expandafter\expandafter\@@autorefname%
          \csname r@#2\endcsname{}{}{}{}\@nil#1\@nil%
    \fi%
  }
  \newcommand*\@@autorefname{}
  \def\@@autorefname#1#2#3#4#5\@nil#6\@nil{#6#4.\@nil}
  % $$$ Stern raus?
  \NewDocumentCommand\manualhyperdef{st'm}{%
    \IfBooleanTF{#2}{%
      \raisebox{4\baselineskip}[0pt][0pt]{\hyperdef{\jobname}{#3}{}}%
      \par\nobreak\vskip\dimexpr-\parskip-\baselineskip\relax%
      \@afterindentfalse\@afterheading%
    }{%
      \Hy@raisedlink{\hyperdef{\jobname}{#3}{}}%
      \ignorespaces%
    }%
    \IfBooleanF{#1}{\label{#3}}%
  }
  \newcommand*\manualhyperref[2]{\hyperref{}{\jobname}{#1}{#2}}
  \newrobustcmd*\hyperidx[2][]{\manualhyperref{#1}{#2}}
}
\PassOptionsToPackage{xindy,splitindex}{imakeidx}
\RequirePackage{imakeidx}[2013/07/11]%
\indexsetup{%
  level=\addsec,%
  noclearpage,firstpagestyle=headings,headers={\indexname}{\indexname},%
  othercode={\renewcommand*\subitem{\@idxitem\hspace*{15\p@}}}%
}
\@ifpackagelater{imakeidx}{2013/07/12}{%
  \ClassWarning%
  {tudscrman}{%
    Package `imakeidx' was updated so the patch for the\MessageBreak%
    environment `theindex' is maybe outdated.%
  }%
}{%
  \ifimki@original\else%
    \renewenvironment{theindex}{%
      \imki@maybeaddtotoc%
       \imki@indexheaders%
       \thispagestyle{\imki@firstpagestyle}%
       \ifnum\imki@columns>\@ne%
         \columnsep \imki@columnsep%
         \ifx\imki@idxprologue\relax%
           \begin{multicols}{\imki@columns}[\imki@indexlevel{\indexname}]%
         \else%
           \begin{multicols}{\imki@columns}[%
             \imki@indexlevel{\indexname}%
             \imki@idxprologue%
           ]%
         \fi%
       \else%
         \imki@indexlevel{\indexname}\imki@idxprologue%
       \fi%
       \global\let\imki@idxprologue\relax%
       \parindent\z@%
       \parskip\z@ \@plus .3\p@\relax%
       \columnseprule \ifKV@imki@columnseprule.4\p@\else\z@\fi%
       \raggedright%
       \let\item\@idxitem%
       \imki@othercode%
     }{\ifnum\imki@columns>\@ne\end{multicols}\fi}%
  \fi%
}
\newcommand*\tud@write@i{}
\newwrite\tud@write@i
\openout\tud@write@i=\jobname-temp.xdy
\write\tud@write@i{(require "texindy.xdy")}
\write\tud@write@i{%
(define-location-class^^J%
\space\space "arabic-page-numbers" ("arabic-numbers") :min-range-length 1^^J%
)%
}
\write\tud@write@i{(markup-range :sep "--")}
\write\tud@write@i{%
(merge-rule "\@backslashchar[(.*)\@backslashchar]" "" :eregexp)%
}
\write\tud@write@i{%
(define-attributes (("declare" "!" "important" "?" "deprecated" "default")))%
}
\write\tud@write@i{%
(markup-locref^^J%
\space\space :attr "declare"^^J%
\space\space :open "\string\textbf{\string\hyperpage{"^^J%
\space\space :close "}}"^^J%
)%
}
\write\tud@write@i{%
(markup-locref^^J%
\space\space :attr "!"^^J%
\space\space :open "\string\textbf{\string\hyperpage{"^^J%
\space\space :close "}}"^^J%
)%
}
\write\tud@write@i{%
(markup-locref^^J%
\space\space :attr "important"^^J%
\space\space :open "\string\textsl{\string\hyperpage{"^^J%
\space\space :close "}}"^^J%
)%
}
\write\tud@write@i{%
(markup-locref^^J%
\space\space :attr "?"^^J%
\space\space :open "\string\textsl{\string\hyperpage{"^^J%
\space\space :close "}}"^^J%
)%
}
\write\tud@write@i{%
(markup-locref^^J%
\space\space :attr "default"^^J%
\space\space :open "\string\hyperpage{"^^J%
\space\space :close "}"^^J%
)%
}
% $$$ raus
\write\tud@write@i{%
(markup-locref^^J%
\space\space :attr "deprecated"^^J%
\space\space :open "\string\hyperpagedeprecated{"^^J%
\space\space :close "}"^^J%
)%
}
\write\tud@write@i{%
  (markup-locclass-list :open "\string\,\string\dotfill\string\,")%
}
\write\tud@write@i{(define-crossref-class "seeidx")}
\write\tud@write@i{%
(markup-crossref-list^^J%
\space\space :class "seeidx" :open "\string\seeidx{" :sep "; " :close "}{}"^^J%
)%
}
\closeout\tud@write@i
\NewDocumentCommand\makexindyindex{omo}{%
  \protected@edef\@tempa{%
    title={#2},%
    \IfValueTF{#3}{%
      options={-M \jobname-temp.xdy -L german-din -t \jobname-#3.xlg},%
      name={#3},%
    }{%
      options={-M \jobname-temp.xdy -L german-din -t \jobname.xlg},%
    }%
    \IfValueT{#1}{#1}%
  }%
  \expandafter\makeindex\expandafter[\@tempa]%
}
\makexindyindex{Allgemeiner Index}
\makexindyindex{Klassen- und Paketoptionen}[options]
%\makexindyindex{Befehle und Umgebungen}[macros]% $$$ rein
\makexindyindex{Umgebungen, Befehle und Seitenstile}[macros]% $$$ raus
\makexindyindex{Umgebungs- und Befehlsparameter}[keys]% $$$ raus
\makexindyindex{Sprachabh\"angige Bezeichner}[terms]%
%\makexindyindex{Seitenstile}[pagestyles]%
%\makexindyindex{L\"angen}[lengths]%
%\makexindyindex{Z\"ahler}[counters]%
\makexindyindex{Schriftelemente}[fonts]%
\makexindyindex{Farben}[colors]%
\makexindyindex{Klassen, Pakete und Dateien}[files]%
\makexindyindex[columns=1]{\"Anderungsliste}[changelog]%
\undef\makexindyindex
\RequirePackage{enumitem}[2011/09/28]
\setlist{noitemsep}
\AtBeginDocument{%
  \RequirePackage{ellipsis}[2004/9/28]
  \let\ellipsispunctuation\relax
}
\RequirePackage{tabularx}[1999/01/07]
\RequirePackage{ragged2e}[2009/05/21]
\RequirePackage{chngcntr}[2009/09/02]
\counterwithout{footnote}{chapter}
\RequirePackage{booktabs}[2005/04/14]
\RequirePackage{varioref}[2011/10/02]
\renewcommand*\fullref[1]{\hyperref[#1]{\autoref*{#1} \vpageref{#1}}}
\RequirePackage{tikz}[2013/12/13]
\RequirePackage{pdfpages}[2013/08/25]
\RequirePackage{units}[1998/08/04]
\newcommand*\tud@shellescape@wrn{%
  \ClassWarning%
  {tudscrman}{%
    You have to recompile this document with\MessageBreak%
    activated shell escape option%
  }%
  \global\let\tud@shellescape@wrn\relax%
}
\newrobustcmd*\textOR{\,\textbardbl\,}
\newrobustcmd*\PValue[1]{\mbox{\texttt{#1}}}
\newrobustcmd*\PName[1]{\PValue{\textsl{<#1>}}}
\newrobustcmd*\PSet{\PName{Einstellung}}
\newrobustcmd*\PBoolean{\PName{Ein-Aus-Wert}}
\newrobustcmd*\PBName[1]{\PBoolean\PValue{\textOR}\PName{#1}}
\newrobustcmd*\Parameter[1]{\mbox{\texttt{\{}\PName{#1}\texttt{\}}}}
\newrobustcmd*\OParameter[1]{\mbox{\texttt{[}\PName{#1}\texttt{]}}}
\newrobustcmd*\LParameter{\mbox{\texttt{[}\PName{Parameterliste}\texttt{]}}}
\newrobustcmd*\OLParameter[1]{%
  \mbox{\texttt{[}\PName{#1}\PValue{\textOR}\PName{Parameterliste}\texttt{]}}%
}
\newrobustcmd*\PParameter[1]{\mbox{\texttt{\{#1\}}}}
\newrobustcmd*\POParameter[1]{\mbox{\texttt{[#1]}}}
\newrobustcmd*\Path[1]{\mbox{\texttt{#1}}}
\newcommand*\@gobbleparameters{%
  \let\PValue\@gobble%
  \let\PName\@gobble%
  \let\PSet\@empty%
  \let\PBoolean\@empty%
  \let\PBName\@gobble%
  \let\Parameter\@gobble%
  \let\OParameter\@gobble%
  \let\LParameter\@empty%
  \let\OLParameter\@gobble%
  \let\PParameter\@gobble%
  \let\POParameter\@gobble%
}
\newif\if@declare
\newif\if@openindex
\newif\if@stareddeclare
\newif\if@changedat
% §§§ evtl auch nciht nötig, wenn die indexsache anders geht
\newcounter{cntdeprecated}
\newcommand*\list@Declaration{}
\let\list@Declaration\relax
\newcommand*\list@Preset{}
\let\list@Preset\relax
\newif\if@preset@list
\newcommand*\list@Additional{}
\let\list@Additional\relax
\newif\if@additional@list
\NewDocumentEnvironment{Declaration}{omoog}{%
  \listadd\list@Declaration{#2}%
  \@ChangedAt@CreateList[#2]{#1}%
  \IfValueTF{#3}{%
    \@preset@listtrue%
    \IfValueTF{#4}{%
      \def\@tempa[##1:##2]{##1:\,##2}%
      \listeadd\list@Preset{preset:\,#3\,|\,\expandonce{\@tempa[#4]}}%
    }{%
      \listadd\list@Preset{preset:\,#3}%
    }%
  }{%
    \listadd\list@Preset{\relax}%
  }%
  \IfValueTF{#5}{%
    \@additional@listtrue%
    \listadd\list@Additional{\hspace*{\tabcolsep}\small(#5)}%
    \in@{\Environment}{#2}%
    \ifin@\listadd\list@Additional{\tabularnewline}\fi%
  }{%
    \listadd\list@Additional{\relax}%
    \in@{\Environment}{#2}%
    \ifin@\listadd\list@Additional{\relax}\listadd\list@Additional{\relax}\fi%
  }%
}{%
  \ifx\list@Declaration\relax\else%
    \ClassError{tudscrman}{\string\printdeclarationlist\space is missing}{%
      \string\list@Declaration\space is not empty. Did you forget\MessageBreak%
      to print this list with \string\printdeclarationlist?%
    }%
  \fi%
  \@gobbleparameters%
  \vskip-\lastskip%
  \@declaretrue\@openindexfalse#2\@declarefalse%
  \ifnum\value{cntdeprecated}>\z@%
    \addtocounter{cntdeprecated}{\m@ne}%
  \fi%
  \pagebreak[0]%
}
\NewDocumentCommand\printdeclarationlist{sod()}{%
  \ifx\list@Declaration\relax\else%
    \ifvmode\else\par\fi%
    \addpenalty{\@beginparpenalty}%
    \addvspace{1.5\baselineskipglue}%
    \IfBooleanT{#1}{%
      \def\@tempa##1{\addtocounter{cntdeprecated}{\@ne}}%
      \forlistloop\@tempa{\list@Declaration}%
    }%
    \IfValueT{#2}{%
      \if@additional@list%
        \ClassWarning{tudscrman}{%
          It is not possible to use the optional argument\MessageBreak%
          of \string\printdeclarationlist due to the given\MessageBreak%
          additional information as argument of the\MessageBreak%
          environment `Declaration'%
        }%
      \else%
        \@additional@listtrue%
        \let\list@Additional\relax%
        \protected@edef\@tempa{#2}%
        \protected@edef\@tempb{\hspace*{\tabcolsep}\protect\small}%
        \def\@tempc##1{%
          \listeadd\list@Additional{\expandonce\@tempb(\expandonce\@tempa)}%
        }%
        \forlistloop\@tempc{\list@Declaration}%
      \fi%
    }%
    \@declaretrue\@openindextrue%
    \@afterindentfalse\@afterheading% §§§ welches? s. u.
    \def\@tempa##1{\ignorespaces##1\tabularnewline}%
    \edef\HyperRaiseLinkDefault{\the\baselineskip}%
    \setbox\z@\hbox{%
      \begin{tabular}{|l|}%
        \hline%
        \forlistloop\@tempa{\list@Declaration}%
        \hline%
      \end{tabular}%
    }\usebox\z@%
    \@declarefalse%
    \ifboolexpr{bool {@preset@list} or bool {@additional@list}}{%
      \if@preset@list%
        \qquad%
        \texttt{%
          \begin{tabular}{l@{}}%
            \forlistloop\@tempa{\list@Preset}%
          \end{tabular}%
        }%
      \fi%
      \if@additional@list%
        \begin{tabular}{@{}l@{}}%
          \forlistloop\@tempa{\list@Additional}%
        \end{tabular}%
      \fi%
    }{}%
    \global\let\list@Declaration\relax%
    \global\let\list@Preset\relax%
    \global\let\list@Additional\relax%
    \global\@preset@listfalse%
    \global\@additional@listfalse%
    \@ChangedAt@ProcessList{#1}{%
      \dimexpr.5\ht\strutbox+.5\dp\strutbox-.5\ht0-.5\dp0\relax
    }%
    \IfValueT{#3}{#3}%
    \par\nobreak%
    \vskip 1.5\baselineskipglue%
    \@afterindentfalse\@afterheading% §§§ welches? s. o.
  \fi%
}
% §§§ 
% - Declaration*[!] und SuDeclaration in einer Umgebung zusammenfassen?!
% - optionales Argument für Änderungsliste überarbeiten, Eintrag sollte in
%   Allgemein (s. tudscrfonts)
\newcommand*\@subdeclare{}
\newcommand*\@subdeclaredefault{tudscr}
\let\@subdeclare\@subdeclaredefault
\NewDocumentEnvironment{Declaration*}{omt!}{%
  \@ChangedAt@CreateList[#2]{#1}%
  \@stareddeclaretrue%
  \@declaretrue\@openindextrue#2\@declarefalse%
  \@stareddeclarefalse%
  \IfBooleanT{#3}{\SubDeclaration{#2}}%
}{%
  \IfBooleanT{#3}{\endSubDeclaration}%
  \ifx\list@ChangedAt\relax\else%
    \ClassError{tudscrman}{\string\printchangedatlist\space is missing}{%
      \string\list@ChangedAt\space is not empty. Did you\MessageBreak%
      forget to print this list with \string\printchangedatlist?%
    }%
  \fi%
  \@gobbleparameters%
  \@declaretrue\@openindexfalse#2\@declarefalse%
}
\newenvironment{SubDeclaration}[1]{%
  \tud@ifsubdeclare{%
    \ClassError{tudscrman}{Nested environment `SubDeclaration'}{%
      It is not possible to nest this environment, when\MessageBreak%
      a cross-label was given before.%
    }%
  }{%
    \gdef\@subdeclare{#1}%
  }%
  \ignorespaces%
}{\global\let\@subdeclare\@subdeclaredefault\aftergroup\ignorespaces}
\newcommand*\tud@ifsubdeclare{%
  \ifx\@subdeclare\@subdeclaredefault%
    \expandafter\@secondoftwo%
  \else%
    \expandafter\@firstoftwo%
  \fi%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newrobustcmd*\bsc{\@backslashchar}
% §§§ allen Befehlen optionale Argumente zur Verwendung im Fließtext geben, wie 
%     mit der Formatierung umgehen?
% §§§ zusätzliche Angaben zur Deklaration mit d!!
\NewDocumentCommand\Application{smd||}{%
  \ifdin{#2}{%
    \@SetMarkupFormat{\sbsfont}%
    \@Process@toks{#1}{\jobname}{#2}%
    \@ProcessMarkup@toks%
    \@ProcessIndex@new{#1}{\Application{#2}}[Anwendungssoftware]|#3|%
    \@ClearMarkupFormat%
  }%
}
\DeclareExpandableDocumentCommand\@Application{sm}{#2}
\NewDocumentCommand\Distribution{smod||}{%
  \ifdin{#2\IfValueT{#3}{~#3}}{%
    \@SetMarkupFormat{\sbnfont}%
    \@Process@toks{#1}{\jobname}{#2}%
    \@ProcessMarkup@toks[#3](~)% §§§ optionales Argument über \toks@?
    \@ProcessIndex@new{#1}{\Distribution{#2}}[Distribution]|#4|%
    \@ClearMarkupFormat%
  }%
}
\DeclareExpandableDocumentCommand\@Distribution{sm}{#2}
\NewDocumentCommand\File{smd||}{%
  \ifdin{#2}{%
    \@SetMarkupFormat{\sbnfont}%
    \@Process@toks{#1}{files}{#2}%
    \@ProcessMarkup@toks%
    \@ProcessIndex@new{#1}{\File{#2}}[Datei]|#3|%
    \@ClearMarkupFormat%
  }%
}
\DeclareExpandableDocumentCommand\@File{sm}{#2}
\NewDocumentCommand\Class{smd''d||}{%
  \ifdin{#2}{%
    \@SetMarkupFormat{\sbnfont}%
    \@Process@toks{#1}{files}{#2}%
    \if@changedat%
      \@ProcessChangedAt@toks[Klasse]%
    \else%
      \@ProcessMarkup@toks'#3'%
      \@ProcessIndex@new{#1}{\Class{#2}}[Klasse]|#4|%
    \fi%
    \@ClearMarkupFormat%
  }%
}
\DeclareExpandableDocumentCommand\@Class{sm}{#2}
\NewDocumentCommand\Package{smd''d<>d||}{%
  \ifdin{#2}{%
    \@SetMarkupFormat{\sbnfont}%
    \@Process@toks{#1}{files}{#2}%
    \if@changedat%
      \@ProcessChangedAt@toks[Paket]%
    \else%
      \let\@tempa\relax%
      \IfValueTF{#4}{%
        \ifblank{#4}{}{\def\@tempa{http://www.ctan.org/pkg/#4}}%
      }{%
        \def\@tempa{http://www.ctan.org/pkg/#2}%
      }%
      \ifx\@tempa\relax%
        \@ProcessMarkup@toks'#3'
      \else%
        \@ProcessMarkup@toks'#3'<\@tempa>%
      \fi%
      \@ProcessIndex@new{#1}{\Package{#2}}[Paket]|#5|%
    \fi%
    \@ClearMarkupFormat%
  }%
}
\DeclareExpandableDocumentCommand\@Package{sm}{#2}
% !!! suchen nach \\Option\*?\{.*\}\[.*\]
% !!! \Option(*){option}[value] in \Option(*){option=value}
% §§§ Implementierung? optionaler Wert durch '=' im Hauptargument getrennt
\NewDocumentCommand\Option{smod()d''d||}{%
% !!! Debug
%  \IfValueT{#3}{%
%    \ClassWarning{tudscrman}{please change the optional argument}%
%  }%
% !!! Debug Ende
  \@SetMarkupFormat{\ttfamily}%
  \@Process@toks{#1}(#4){options}{#2}%
  \if@changedat%
    \@ProcessChangedAt@toks[Option]%
  \else%
    \@ProcessMarkup@toks[#3](=)'#5'%
    \@ProcessIndex@new{#1}{\Option{#2}}(#4)|#6|%
  \fi%
  \@ClearMarkupFormat%
}
\DeclareExpandableDocumentCommand\@Option{sm}{#2}
% §§§ Implementierung? optionaler Wert im Hauptargument anders getrennt
\NewDocumentCommand\Environment{smod()d''d||}{%
% !!! Debug
%  \IfValueT{#3}{%
%    \ClassWarning{tudscrman}{please change the optional argument}%
%  }%
% !!! Debug Ende
  \@SetMarkupFormat{\ttfamily}(%
    \ttfamily \bsc{}begin\{##1\}\IfValueT{#3}{#3}\tabularnewline%
    \ttfamily \dots\tabularnewline%
    \ttfamily\bsc{}end\{##1\}%
  )%
  \@Process@toks{#1}(#4){macros}{#2}%
  \if@changedat%
    \@ProcessChangedAt@toks[Umgebung]%
  \else%
    \@ProcessMarkup@toks'#5'%
%    % $$$ Rein
%    \@ProcessIndex@new{#1}{\Environment{#2}}(#4)[Umgebung]|#6|%
    % $$$ Raus
    \@ProcessIndex@new{#1}{\Environment{#2}}(#4)|#6|%
  \fi%
  \@ClearMarkupFormat%
}
\DeclareExpandableDocumentCommand\@Environment{sm}{#2}
\NewDocumentCommand\Macro{smd()d''d||}{%
  \@SetMarkupFormat{\ttfamily\bsc}%
  \@Process@toks{#1}(#3){macros}{#2}%
  \if@changedat%
    % $$$ raus
    \@ProcessChangedAt@toks[Befehl]%
    % $$$ rein
%    \@ProcessChangedAt@toks%
  \else%
    \@ProcessMarkup@toks'#4'%
    \@ProcessIndex@new{#1}{\Macro{#2}}(#3)|#5|%
  \fi%
  \@ClearMarkupFormat%
}
\DeclareExpandableDocumentCommand\@Macro{sm}{#2}
% !!! suchen nach \\Key\*?\{.*\}\{.*\}\[.*\]
% !!! \Key(*){cmd}{key}[value] in \Key(*){cmd}{key=value}
% §§§ Implementierung? nur ein Hauptargument
% §§§ Implementierung? optionaler Wert durch '=' im Hauptargument getrennt
\NewDocumentCommand\Key{smmod()d''d||}{%
% !!! Debug
%  \IfValueT{#3}{% #3 als g
%    \ClassWarning{tudscrman}{please change markup}%
%  }%
%  \IfValueT{#4}{%
%    \ClassWarning{tudscrman}{please change the optional argument}%
%  }%
% !!! Debug Ende
  \@SetMarkupFormat{\ttfamily}[Parameter]%
%  \@Process@toks{#1}(#5){macros}!#2!{#3}%
  \@Process@toks{#1}(#5){macros}{#2!#3}%
  \if@changedat%
    \@ProcessChangedAt@toks[Parameter]%
  \else%
    \@ProcessMarkup@toks[#4](=)'#6'%
    \@ProcessIndex@new{#1}{\Key{#2}{#3}}(#5)[Parameter]|#7|%
  \fi%
  \@ClearMarkupFormat%
}
\DeclareExpandableDocumentCommand\@Key{smm}{#2!#3}
\NewDocumentCommand\Term{smd()d''d||}{%
  \@SetMarkupFormat{\ttfamily\bsc}[Bezeichner]%
  \@Process@toks{#1}(#3){terms}{#2}%
  \if@changedat%
    \@ProcessChangedAt@toks[Bezeichner]%
  \else%
    \@ProcessMarkup@toks'#4'%
    \@ProcessIndex@new{#1}{\Term{#2}}(#3)|#5|%
  \fi%
  \@ClearMarkupFormat%
}
\DeclareExpandableDocumentCommand\@Term{sm}{#2}
\NewDocumentCommand\Font{smd()d''d||}{%
  \@SetMarkupFormat{\ttfamily}[Schriftelement]%
  \@Process@toks{#1}(#3){fonts}{#2}%
  \if@changedat%
    \@ProcessChangedAt@toks[Schriftelement]%
  \else%
    \@ProcessMarkup@toks'#4'%
    \@ProcessIndex@new{#1}{\Font{#2}}(#3)|#5|%
  \fi%
  \@ClearMarkupFormat%
}
\DeclareExpandableDocumentCommand\@Font{sm}{#2}
% §§§ Implementierung? optionaler Wert im Hauptargument anders getrennt
\NewDocumentCommand\Color{smoD(){\Package{tudscrcolor}}d''d||}{%
  \@SetMarkupFormat{\ttfamily}(%
    \begingroup\ttfamily##1\IfValueT{#3}{\,(#3)}\endgroup\suffix{Farbe}%
  )%
  \@Process@toks{#1}(#4){colors}{#2}%
  \if@changedat%
    \@ProcessChangedAt@toks[Farbe]%
  \else%
    \@ProcessMarkup@toks'#5'%
    \@ProcessIndex@new{#1}{\Color{#2}}(#4)|#6|%
  \fi%
  \@ClearMarkupFormat%
}
\DeclareExpandableDocumentCommand\@Color{sm}{#2}
% $$$ Index pagestyles
\NewDocumentCommand\PageStyle{smd()d''d||}{%
  \@SetMarkupFormat{\ttfamily}[Seitenstil]%
  \@Process@toks{#1}(#3){macros}{#2}%
  \if@changedat%
    \@ProcessChangedAt@toks[Seitenstil]%
  \else%
    \@ProcessMarkup@toks'#4'%
%    % $$$ Rein
%    \@ProcessIndex@new{#1}{\PageStyle{#2}}(#3)|#5|%
    % $$$ Raus
    \@ProcessIndex@new{#1}{\PageStyle{#2}}(#3)[Seitenstil]|#5|%
  \fi%
  \@ClearMarkupFormat%
}
\DeclareExpandableDocumentCommand\@PageStyle{sm}{#2}
% $$$ Index lenghts
\NewDocumentCommand\Length{smd()d''d||}{%
  \@SetMarkupFormat{\ttfamily\bsc}[L\"ange]%
  \@Process@toks{#1}(#3){macros}{#2}%
  \if@changedat%
    \@ProcessChangedAt@toks[L\"ange]%
  \else%
    \@ProcessMarkup@toks'#4'%
%    % $$$ Rein
%    \@ProcessIndex@new{#1}{\Length{#2}}(#3)|#5|%
    % $$$ Raus
    \@ProcessIndex@new{#1}{\Length{#2}}(#3)[L\"ange]|#5|%
  \fi%
  \@ClearMarkupFormat%
}
\DeclareExpandableDocumentCommand\@Length{sm}{#2}
% $$$ Index counter
\NewDocumentCommand\Counter{smd()d''d||}{%
  \@SetMarkupFormat{\ttfamily}[Z\"ahler]%
  \@Process@toks{#1}(#3){macros}{#2}%
  \if@changedat%
    \@ProcessChangedAt@toks[Z\"ahler]%
  \else%
    \@ProcessMarkup@toks'#4'%
%    % $$$ Rein
%    \@ProcessIndex@new{#1}{\Counter{#2}}(#3)|#5|%
    % $$$ Raus
    \@ProcessIndex@new{#1}{\Counter{#2}}(#3)[Z\"ahler]|#5|%
  \fi%
  \@ClearMarkupFormat%
}
\DeclareExpandableDocumentCommand\@Counter{sm}{#2}
% §§§ \DeclareExpandableDocumentCommand und \@gobblemarkup automatisiert über 
%     eine Liste erzeugen, sobald \Key nur noch ein Argument annimmt
% §§§ \@getsubsabel und \@Key dementsrpechend anpassen
\newcommand*\@gobblemarkup{%
  \let\Application\@Application%
  \let\Distribution\@Distribution%
  \let\File\@File%
  \let\Class\@Class%
  \let\Package\@Package%
  \let\Option\@Option%
  \let\Environment\@Environment%
  \let\Macro\@Macro%
  \let\Key\@Key%
  \let\Term\@Term%
  \let\Font\@Font%
  \let\Color\@Color%
  \let\PageStyle\@PageStyle%
  \let\Length\@Length%
  \let\Counter\@Counter%
  \let\hologoRobust\@firstofone%
  \let\TUDScript\@TUDScript%
  \def\_{-}%
  \def~{ }%
}
\AfterPackage*{hyperref}{%
  \expandafter\pdfstringdefDisableCommands\expandafter{\@gobblemarkup}%
}
\newcommand*\@templist{}
\let\@templist\relax%
% §§§ \@temp in \tud@?
\newcommand*\@tempsubdeclare{}
\newcommand*\@templabel{}
\newcommand*\@tempentry{}
\newcommand*\@tempformat{}
\newcommand*\suffix[1]{\begingroup~\footnotesize(#1)\endgroup}
\newcommand*\@getsublabel[2]{%
  \begingroup%
    \def\Application##1{\edef\@tempa{\jobname}}%
    \def\Distribution##1{\edef\@tempa{\jobname}}%
    \def\File##1{\edef\@tempa{files}}%
    \def\Class##1{\edef\@tempa{files}}%
    \def\Package##1{\edef\@tempa{files}}%
    \def\Option##1{\edef\@tempa{options}}%
    \def\Environment##1{\edef\@tempa{macros}}%
    \def\Macro##1{\edef\@tempa{macros}}%
    % §§§ nur noch ein Argument!
    \def\Key##1##2{\edef\@tempa{macros}}%
    \def\Term##1{\edef\@tempa{terms}}%
    \def\Font##1{\edef\@tempa{fonts}}%
    \def\Color##1{\edef\@tempa{colors}}%
    % §§§ neue Indexe
    \def\PageStyle##1{\edef\@tempa{macros}}%
    \def\Length##1{\edef\@tempa{macros}}%
    \def\Counter##1{\edef\@tempa{macros}}%
    #2%
    \edef\@tempb{%
      \noexpand\endgroup%
      \def\noexpand#1{\@tempa}%
    }%
  \@tempb%
}
\newtoks\tud@toks@
\newtoks\tud@toks@changedat
\newcommand*\eaddto@hook[2]{%
  \expandafter\addto@hook\expandafter#1\expandafter{#2}%
}
% {#1}: Stern?
% (#2): Subdeclaration
% {#3}: Ziellabel/Zielindex
% !#4!: Untereintrag für Key in Index und Label
% {#5}: Hauptargument
\NewDocumentCommand\@Process@toks{md()mm}{%
  \tud@toks@{{#1}}%
  \IfValueTF{#2}{%
    \addto@hook\tud@toks@{(#2)}%
    \tud@trace@subdeclare{#2}%
  }{%
    \eaddto@hook\tud@toks@{\expandafter(\@subdeclare)}%
    \expandafter\tud@trace@subdeclare\expandafter{\@subdeclare}%
  }%
  \addto@hook\tud@toks@{{#3}}%
  \addto@hook\tud@toks@{{#4}}%
  % §§§ global sinnvoll?
  \global\tud@toks@=\tud@toks@%
}
% §§§ Argumente #1 und #2 sauber dokumentieren bzw. überprüfen, ob notwendig
\NewDocumentCommand\@ProcessMarkup@toks{od()d''d<>}{%
  \if@declare%
    \toks@{\@ProcessMarkup@Declare}%
  \else%
    \toks@{\@ProcessMarkup@Output}%
  \fi%
  \eaddto@hook\toks@{\the\tud@toks@}%
  \IfValueT{#1}{%
    \IfValueTF{#2}{%
      \addto@hook\toks@{[#2#1]}%
    }{%
      \addto@hook\toks@{[#1]}%
    }%
  }%
  \if@declare%
    \if@openindex%
      \IfValueT{#3}{%
        \ClassWarning{tudscrman}{%
          It is not possible to use any cross-reference\MessageBreak%
          shorthand like '#3' within the arguments of\MessageBreak%
          the environment `Declaration'%
        }%
      }%
      \tud@trace@markup[declare]{\the\toks@}%
    \fi%
  \else%
    \if@tud@index\else%
      \IfValueT{#3}{\addto@hook\toks@{'#3'}}%
      \IfValueT{#4}{\eaddto@hook\toks@{\expandafter<#4>}}%
    \fi%
    \tud@trace@markup[output]{\the\toks@}%
  \fi%
}
% {#1}: Stern?
% (#2): Subdeclaration
% {#3}: Ziellabel/Zielindex
% !#4!: Untereintrag für Key in Index und Label
% {#5}: Hauptargument
% [#6]: optionaler Suffix Ausgabe
\NewDocumentCommand\@ProcessMarkup@Declare{mr()mmo}{%
  \@CheckMarkupFormat%
  \typeout{+++++}%
  \def\tud@label{}%
  \@getlabel*\tud@label{#2:#4}%
  \typeout{\meaning\tud@label}%
  \@Process@label*\tud@label{#1}(#2){#3}{#4}%
  \typeout{\meaning\tud@label}%
  \if@stareddeclare%
    \manualhyperdef'{\tud@label}%
  \else%
    \manualhyperdef{\tud@label}%
    \@MarkupOutput{#4}[#5]%
  \fi%
}%
% {#1}: Stern?
% (#2): Subdeclaration
% {#3}: Ziellabel/Zielindex
% !#4!: Untereintrag für Key in Index und Label
% {#5}: Hauptargument
% [#6]: optionaler Suffix Ausgabe
% '#7': Querverweis
% <#8>: URL
\NewDocumentCommand\@ProcessMarkup@Output{mr()mmod''d<>}{%
  \@CheckMarkupFormat%
  \@Process@label\tud@label{#1}(#2){#3}{#4}%
  \def\@tempc{\@MarkupOutput{#4}[#5]}%
  % §§§ optionaler suffix weg, alles über einziges Argument
%  \IfValueT{#5}{\typeout{!!!!! #4:#5}}%
  % §§§ \tud@iflabelexists
  \ifcsdef{r@\tud@label}{%
    \def\@tempa{\hyperref{}{\jobname}{\tud@label}{\@tempc}}%
    \let\@tempb\relax%
    \IfValueT{#6}{%
      \def\@tempb{%
        \ClassWarning{tudscrman}{%
          You've used the unknown cross-reference\MessageBreak%
          shorthand '#6'. Only 'auto', 'page'\MessageBreak%
          and 'full' as well as 'none' are valid%
        }%
      }%
      \ifstr{#6}{auto}{\def\@tempb{ in \autoref{\tud@label}}}{%
      \ifstr{#6}{page}{\def\@tempb{ \vpageref{\tud@label}}}{%
      \ifstr{#6}{ppage}{\def\@tempb{ \reftextfaraway{\tud@label}}}{%
      \ifstr{#6}{full}{\def\@tempb{ in \fullref{\tud@label}}}{%
      \ifstr{#6}{none}{\let\@tempa\@tempc\let\@tempb\relax}{}}}}}%
    }%
  }{%
    \let\@tempb\relax%
    \IfValueT{#6}{%
      \def\@tempb{%
        \ClassWarning{tudscrman}{%
          The label \tud@label\MessageBreak%
          is missing, no cross-reference created.%
        }%
      }%
    }%
    \let\@tempa\@tempc%
    \IfValueT{#7}{\def\@tempa{\href{#7}{\@tempc}}}%
  }%
  \@tempa\@tempb%
}
% {#1}: Stern?
% {#2}: Markup für Index
% (#3): optionale Subdeclaration
% [#4]: optionaler Suffix in der Index-Ausgabe
% |#5|: optionale Indexformatierung
% §§§ optionales Argument für Optionen (key=value) als subentry
\NewDocumentCommand\@ProcessIndex@new{mmd()od||}{%
  \if@tud@index\else%
    \IfBooleanTF{#1}{%
      \IfValueT{#5}{%
        \toks@{#2}%
        \ClassWarning{tudscrman}{%
          You've used the starred version. No index entry\MessageBreak%
          for \the\toks@ is created. The optional argument\MessageBreak%
          |#5| will be ignored%
        }%
      }%
    }{%
      \ifboolexpr{%
        bool {@declare} and test {\ifnumcomp{\value{cntdeprecated}}{>}{\z@}}%
      }{}{%
        % §§§ getsublabel in GetIndex@Entry
        \@GetIndex@entry(#3){#2}[#4]|#5|%
        \@getsublabel\@templabel{#2}%
        \index[\@templabel]{\@tempentry @\@tempformat}%
      }%
    }%
  \fi%
}
% {#1}: Stern?
% {#2}: Markup für Index
% (#3): optionale Subdeclaration
% [#4]: optionaler Suffix in der Index-Ausgabe
% |#5|: optionale Indexformatierung
\NewDocumentCommand\@GetIndex@entry{r()mr[]r||}{%
  % §§§ IfValueTF mit \@tempsubdeclare?!
  \def\@tempsubdeclare{}%
  \IfValueTF{#1}{%
    \def\@tempsubdeclare{#1}%
  }{%
    \tud@ifsubdeclare{%
      \tud@iflabelexists{\@subdeclare:#2}{%
        \edef\@tempsubdeclare{\expandonce\@subdeclare}%
      }{}%
    }{}%
  }%
  \def\@tempformat{#2}%
  \ifx\@tempsubdeclare\@empty\else%
    % $$$ raus
    \appto\@tempformat{(\@tempsubdeclare)}%
%    % $$$ rein
%    \appto\@tempformat{(\@tempsubdeclare)\protect\suffix{\@tempsubdeclare}}%
  \fi%
  \IfValueT{#3}{\appto\@tempformat{\protect\suffix{#3}}}%
  \if@declare%
    \if@openindex%
      \IfValueT{#4}{%
        \ClassWarning{tudscrman}{%
          It is not possible to use any indexing format\MessageBreak%
          like |#4| within the arguments of the\MessageBreak%
          environments `Declaration' or `Declaration*'%
        }%
      }%
      \appto\@tempformat{|(declare}%
    \else%
      \appto\@tempformat{|declare)}%
    \fi%
  \else%
    \IfValueT{#4}{\appto\@tempformat{|#4}}%
  \fi%
  \begingroup%
    \@gobblemarkup%
    \edef\@tempa{%
      \noexpand\endgroup%
      % §§§ rein
%      \ifx\@tempsubdeclare\@empty%
        \def\noexpand\@tempentry{#2}%
%      \else%
%        \def\noexpand\@tempentry{#2 \@tempsubdeclare}%
%      \fi%
    }%
  \@tempa%
  \tud@replace\@tempentry{@}{"@}%
  \protected@edef\@tempformat{\@tempformat}%
}
\NewDocumentCommand\@ProcessChangedAt@toks{o}{%
%  \toks@{\@ProcessChangedAt}%
%  \eaddto@hook\toks@{\the\tud@toks@}%
%  \IfValueT{#1}{\addto@hook\toks@{[#1]}}%
%  \tud@trace@markup[changelog]{\the\toks@}%
}%
%% {#1}: Stern?
%% (#2): Subdeclaration
%% {#3}: Ziellabel/Zielindex
%% !#4!: Untereintrag für Key in Index und Label
%% {#5}: Hauptargument
%% [#6]: optionaler Suffix Ausgabe
%\NewDocumentCommand\@ProcessChangedAt{mr()mr!!mo}{%
%  \IfValueTF{#4}{%
%%    \typeout{///// #4}%
%    % §§§ raus, sobald \Key umgestellt
%    \@Process@label\tud@label{#1}(#2){#3}{#4!#5}[@tempswa]%
%  }{%
%    \@Process@label\tud@label{#1}(#2){#3}{#5}[@tempswa]%
%  }%
%  \tud@toks@changedat{}%
%  \def\@tempentry{}%
%  \def\@tempformat{}%
%  \IfValueT{#4}{%
%    \begingroup%
%      #4%
%      % §§§ global sinnvoll?
%      \gappto\@tempentry{:"|}%
%      \gappto\@tempformat{: }%
%    \endgroup%
%  }%
%  \IfValueTF{#4}{%
%    % §§§ raus, sobald \Key umgestellt
%    \@Process@label\tud@label{#1}(#2){#3}{#4!#5}[@tempswa]%
%  }{%
%    \@Process@label\tud@label{#1}(#2){#3}{#5}[@tempswa]%
%  }%
%  \protected@edef\@tempa{#5}%
%  \protected@edef\@tempb{%
%    \mbox{%
%%      \expandonce\@MarkupOutput
%      #5%
%    }%
%  }%
%  \IfValueT{#6}{%
%    \appto\@tempa{ \suffix{#6}}%
%    \appto\@tempb{\suffix{#6}}%
%  }%
%  % §§§ \tud@iflabelexists
%  \ifcsdef{r@\tud@label}{%
%    \protected@edef\@tempb{%
%      \hyperidx[\tud@label]{\expandonce\@tempb}%
%    }%
%  }{}%
%  \protected@eappto\@tempentry{\expandonce\@tempa}%
%  \protected@eappto\@tempformat{\expandonce\@tempb}%
%  % $$$ Rein
%%    \if@tempswa%
%%      \tud@ifsubdeclare@old{#2}{%
%%        \appto\@tempformat{\suffix{#2}}%
%%      }{}%
%%    \fi%
%  \tud@replace\@tempentry{@}{"@}%
%  \tud@replace\@tempformat{@}{"@}%
%  \edef\@tempa{\expandonce\@tempentry!\expandonce\@tempformat}%
%  % §§§ global sinnvoll?
%  \expandafter\global\expandafter\tud@toks@changedat\expandafter{\@tempa}%
%}
% Doku: Sternversion zum Erzeugen des Labels, ohne Stern zur Nutzung
\newcommand*\tud@label{}
\NewDocumentCommand\@Process@label{smmr()mmo}{%
  \IfBooleanTF{#1}{%
    \@@Process@label*#2(#4){#5}{#6}%
    \tud@trace@lbl@created{#2}%
  }{%
    \@@Process@label#2(#4){#5}{#6}%
    % §§§ \tud@iflabelexists
    \ifcsdef{r@#2}{%
      \IfValueT{#7}{\booltrue{#7}}%
    }{%
      \IfValueT{#7}{\boolfalse{#7}}%
      \@@Process@label#2(\@subdeclaredefault){#5}{#6}%
      % §§§ \tud@iflabelexists
      \ifcsdef{r@#2}{}{\tud@trace@lbl@missing{#2}{#3}}%
    }%
  }%
}
\NewDocumentCommand\@@Process@label{smr()mm}{%
  \begingroup%
    \@gobblemarkup%
    \edef\@tempa{#3:#4:#5}%
    \IfBooleanTF{#1}{%
      \ifnum\value{cntdeprecated}>\z@%
        \preto\@tempa{deprecated:}%
      \fi%
    }{%
      \ifcsdef{r@\@tempa}{}{%
        \edef\@tempb{deprecated:\@tempa}%
        \ifcsdef{r@\@tempb}{\let\@tempa\@tempb}{}%
      }%
    }%
    \edef\@tempc{%
      \noexpand\endgroup%
      \noexpand\edef\noexpand#2{\@tempa}%
    }%
  \@tempc%
  \tud@replace#2{@}{<at>}%
}
\NewDocumentCommand\@getlabel{smm}{%
% \IfBooleanTF{#1}{%
%    \@@getlabel*#2{#3}%
%    \tud@trace@lbl@created{#2}%
%  }{%
%  }%
}
%\NewDocumentCommand\@@getlabel{smm}{%
%  \begingroup%
%    \@gobblemarkup%
%    \edef\@tempa{#3:#4:#5}%
%    \IfBooleanTF{#1}{%
%      \ifnum\value{cntdeprecated}>\z@%
%        \preto\@tempa{deprecated:}%
%      \fi%
%    }{%
%      \ifcsdef{r@\@tempa}{}{%
%        \edef\@tempb{deprecated:\@tempa}%
%        \ifcsdef{r@\@tempb}{\let\@tempa\@tempb}{}%
%      }%
%    }%
%    \edef\@tempc{%
%      \noexpand\endgroup%
%      \noexpand\edef\noexpand#2{\@tempa}%
%    }%
%  \@tempc%
%  \tud@replace#2{@}{<at>}%
%}
%\newcommand\ProcessorLabel[1]{%
%%  \edef\ProcessedArgument{\the\toks@}%
%}
\NewDocumentCommand\tud@iflabelexists{>{\SplitArgument{2}{:}}m}{%
  \tud@@iflabelexists#1%
}
\newcommand*\tud@@iflabelexists[3]{%
  \typeout{*****}%
  \typeout{1: #1}%
  \typeout{2: #2}%
  \typeout{3: #3}%
  \begingroup%
    \@gobblemarkup%
    \IfValueTF{#3}{%
      \edef\@tempa{#1:#2:#3}%
    }{%
      \@getsublabel\@tempb{#2}%
      \edef\@tempa{#1:\@tempb:#2}%
    }%
    \typeout{\meaning\@tempa}%
  \ifcsdef{r@\@tempa}{%
    \endgroup\expandafter\@firstoftwo%
  }{%
    \endgroup\expandafter\@secondoftwo%
  }%
}
\newcommand*\tud@replace[3]{%
  \begingroup%
    % Ergebnis: \def\@tempa##1@##2\relax{\@tempb{##1}{##2}}%
    \toks@{\def\@tempa##1}%
    \eaddto@hook\toks@{\detokenize{#2}}%
    \addto@hook\toks@{##2\relax{\@tempb{##1}{##2}}}%
    \the\toks@%
    \def\@tempb##1##2{%
      \ifx\relax##2\relax%
        \appto#1{##1}%
        \let\@tempc\relax%
      \else%
        \appto#1{##1#3}%
        \def\@tempc{\@tempa##2\relax}%
      \fi%
      \@tempc%
    }%
    % Ergebnis: \@tempa #1@relax%
    \toks@{\@tempa}%
    \edef\@tempc{\expandafter\detokenize\expandafter{#1}}%
    \eaddto@hook\toks@{\@tempc}%
    \eaddto@hook\toks@{\detokenize{#2}\relax}%
    \def#1{}%
    \the\toks@%
    \edef\@tempa{%
      \noexpand\endgroup%
      \def\noexpand#1{#1}%
    }%
  \@tempa%
}
%
%
%
% §§§ implementieren in \@MarkupOutput
%\newcommand\ProcessorValue[1]{%
%  \in@{=}{#1}%
%  \ifin@%
%    \def\@tempa##1=##2\@nil{\toks@{{##1}[=##2]}}%
%  \else%
%    \def\@tempa##1\@nil{\toks@{{##1}}}%
%  \fi%
%  \@tempa#1\@nil%
%  \edef\ProcessedArgument{\the\toks@}%
%}
% §§§ optionales Argument notwendig?
\NewDocumentCommand\@MarkupOutput{>{\SplitArgument{1}{!}}mo}{%
  \if@declare%
    \@MarkupDeclare#1[#2]%
  \else%
    \@MarkupInline#1[#2]%
  \fi%
}
\NewDocumentCommand\@MarkupInline{mmr[]}{%
  \mbox{\@MarkupFormat\IfValueTF{#2}{#2}{#1}\IfValueT{#3}{#3}}%
}
\NewDocumentCommand\@MarkupDeclare@Default{mmr[]}{%
  \begingroup%
    \@MarkupFormat%
    \IfValueTF{#2}{#2}{#1}%
    \IfValueT{#3}{#3}%
  \endgroup%
  \@MarkupSuffix%
}
\newcommand*\@MarkupFormat{}
\newcommand*\@MarkupDeclare{}
\newcommand*\@MarkupSuffix{}
% §§§ optionales Argument direkt bei \Environment etc.?
\NewDocumentCommand\@SetMarkupFormat{mod()}{%
  \def\@MarkupFormat{#1}%
  \IfValueT{#2}{\def\@MarkupSuffix{\suffix{#2}}}%
  \IfValueT{#3}{\RenewDocumentCommand\@MarkupDeclare{mmr[]}{#3}}%
%  \apptocmd{\@MarkupDeclare}{\def\@MarkupFormat{#1}}{}{}%
}
\newcommand*\@CheckMarkupFormat{%
  \ifx\@MarkupFormat\relax%
    \ClassError{tudscrman}{\string\@SetMarkupFormat\space unused}{%
      It seems you have forgotten to use \string\@SetMarkupFormat.%
    }%
  \fi%
}
% §§§ in \@ProcessMarkup
\newcommand*\@ClearMarkupFormat{%
  \let\@MarkupFormat\relax%
  \let\@MarkupDeclare\@MarkupDeclare@Default%
  \let\@MarkupSuffix\relax%
}
\@ClearMarkupFormat
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% §§§ Änderungsliste: Markup komplett überarbeiten
% §§§ \emph{entfällt} irgendwie ersetzen obsolete
%
%
% §§§ nach oben zu alter Liste
\newcommand*\list@ChangedAt{}
\let\list@ChangedAt\relax%
\DeclareListParser*{\forssvlist}{,}%
% §§§ Listentrennzeichen zu ';' ändern, dafür Debug einfügen
%\NewDocumentCommand\@Debug@Split{>{\SplitArgument{2}{!}}m}{%
%  \Debug@@Split#1%
%}
%\newcommand*\Debug@@Split[3]{%
%  \IfValueT{#2}{\typeout{***** #1 #2 #3}}%
%}
%
\NewDocumentCommand\@ChangedAt@CreateList{om}{%
  \IfValueT{#2}{\forssvlist{\@ChangedAt@@CreateList[#1]}{#2}}%
}
% §§§ durch ':' ersetzen, dafür Debug einfügen
% §§§ generell das Markup in der Liste verbessern, Indexzusatz mit '|' etc.
\NewDocumentCommand\@ChangedAt@@CreateList{r[]>{\SplitArgument{2}{!}}m}{%
  \@ChangedAt@@@CreateList[#1]#2%
}
\NewDocumentCommand\@ChangedAt@@@CreateList{r[]mmm}{%
%  \typeout{!!!!!!!!!!!}%
%  \typeout{1: #1}%
%  \typeout{2: #2}%
%  \typeout{3: #3}%
%  \typeout{4: #4}%
  \IfValueTF{#1}{%
    \toks@{#2!Implementierung!}%
    \begingroup%
      \@gobbleparameters%
      \@changedattrue%
      #1%
    \endgroup%
    \eaddto@hook\toks@{\the\tud@toks@changedat!#3}%
    \IfValueT{#4}{\addto@hook\toks@{!#4}}%
    % !!! Debug
%    \IfValueT{#4}{\typeout{**************************** create ^^J #4}}%
  }{%
    \toks@{#2!Allgemein!#3}%
  }%
  \listeadd{\list@ChangedAt}{\the\toks@}%
}
\newcommand*\changedat@new{\emph{neu}}%
\newcommand*\changedat@deprecated{\emph{entf\"allt}}%
\NewDocumentCommand\@ChangedAt@ProcessList{mm}{%
  \ifx\list@ChangedAt\relax\else%
    \let\@templist\relax%
    \forlistloop\@ChangedAt@CreateEntry{\list@ChangedAt}%
    \global\let\list@ChangedAt\relax%
    \IfBooleanF{#1}{%
      \sortlist\@templist%
      \strut%
      \marginnote{%
        \def\@tempa####1{%
          \ignorespaces\manualhyperref{####1}{####1}\tabularnewline%
        }%
        \begin{tabular}{|l|}%
          \hline%
          \forlistloop\@tempa{\@templist}%
          \hline%
        \end{tabular}%
      }[#2]%
      \ignorespaces%
    }%
  \fi%
}
\NewDocumentCommand\@ChangedAt@CreateEntry{>{\SplitArgument{5}{!}}m}{%
  \@ChangedAt@@CreateEntry#1%
}
\newcommand*\@ChangedAt@@CreateEntry[6]{%
%  \IfValueT{#3}{%
%    \IfValueTF{#4}{%
%      \toks@{#1!#2!}%
%      \def\@tempentry{#3: }%
%      \def\@tempformat{#4: }%
%      \def\@tempa{}%
%      \def\@tempc{}%
%      \IfValueTF{#5}{%
%        \def\@tempa{#5}%
%      }{%
%        % evtl nicht notwendig §§§
%        \ifnum\value{cntdeprecated}>\z@%
%        % §§§ wie mit |deprecated umgehen? kann raus, besser über Replace!
%          \def\@tempa{\changedat@deprecated}%
%          \def\@tempc{|deprecated}%
%        \else%
%          \def\@tempa{\changedat@new}%
%        \fi%
%      }%
%      \eappto\@tempentry{\expandonce\@tempa}%
%      \eappto\@tempformat{\expandonce\@tempa\expandonce\@tempc}%
%      \eaddto@hook\toks@{\@tempentry @}%
%      \eaddto@hook\toks@{\@tempformat}%
%      \IfValueT{#6}{\addto@hook\toks@{|#6}}%
%        % !!! Debug
%%      \IfValueT{#6}{\typeout{**************************** process ^^J #6}%
%      \index[changelog]{\the\toks@}%
%    }{%
%      \index[changelog]{#1!#2!#3}%
%    }%
%  }%
  \ifinlist{#1}{\@templist}{}{\listadd\@templist{#1}}%
}
% !!! Debug
\NewDocumentCommand\@ChangedAt@CreateList@Debug{m}{%
  \forssvlist{\@ChangedAt@CreateList@@Debug}{#1}%
}
\NewDocumentCommand\@ChangedAt@CreateList@@Debug{>{\SplitArgument{2}{!}}m}{%
  \@ChangedAt@CreateList@@@Debug#1%
}
\NewDocumentCommand\@ChangedAt@CreateList@@@Debug{mmm}{%
  \IfValueTF{#3}{%
    \typeout{+***************************************** ^^J#3: #1!#2}%
    \@ChangedAt@CreateList[#3]{#1!#2}%
  }{%
    \@ChangedAt@CreateList{#1!#2}%
  }%
}
%  !!! Debug Ende
% §§§ Soll 
% - v2.xx -> kein Eintrag
% - v2.xx!Bla -> Eintrag in Allgemein
% - v2.xx!\Macro{Blubb}!Bla -> Eintrag in Implementierung
\newlength\changedatskip
\NewDocumentCommand\ChangedAt{sO{\changedatskip}mO{Allgemein}}{%
%  !!! Debug: optionales Argument kann raus
%  \IfValueT{#4}{\typeout{*********************** #4}}%
  \@ChangedAt@CreateList@Debug{#3}%
%  !!! Debug Ende
%  \ifhmode\unskip\fi% $$$ notwendig?
% $$$ rein
%  \@ChangedAt@CreateList{#3}%
  \@ChangedAt@ProcessList{#1}{#2}%
}
\NewDocumentCommand\printchangedatlist{sO{\z@}}{%
  \@ChangedAt@ProcessList{#1}{#2}%
}
% §§§ ToDo: überarbeiten, SubDeclaration beachten, richtige labels verwenden
% §§§ Zusammenspiel mit \see und \printdeclarationlist* verbessern
\NewDocumentCommand\Replace{ommm}{\forcsvlist{\@Replace[#1]{#2}{#3}}{#4}}
\NewDocumentCommand\@Replace{r[]mmm}{%
  % §§§ Seiteneintrag in Änderungsliste nicht unterdrücken, neue Option/Befehl
  % etc. im beschriebenden Text
  \@ChangedAt@CreateList[#4]{#2!\changedat@deprecated!see{#3}}%
  % Ursache für \vskip-\lastskip, evtl hier zurücksetzen
  \IfValueT{#1}{\index[#1]{#4|see{#3}}}%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@sorted@list
\newcommand*\sortlist[1]{%
  \ifdefvoid{#1}{%
    \ClassWarning{tudscrman}{%
      The given list \string#1\space\MessageBreak%
      is empty, nothing to sort here%
    }%
  }{%
    \let\@tempc#1%
    \let\@templist\relax%
    \forlistloop\@sortlist{\@tempc}%
    \let\@tempc\relax%
    \@for\@tempa:=\@templist\do{\listeadd\@tempc{\@tempa}}%
    \let#1\@tempc%
  }%
}
\newcommand*\@sortlist[1]{%
  \ifx\@templist\relax%
    \def\@templist{#1}%
  \else%
    \@sorted@listfalse%
    \let\@tempb\@empty%
    \@for\@tempa:=\@templist\do{%
      \if@sorted@list%
        \expandafter\edef\expandafter\@tempb\expandafter{\@tempb,\@tempa}%
      \else%
        \expandafter\ifnum\pdfstrcmp{#1}{\@tempa}<\z@\relax%
          \ifx\@tempb\@empty%
            \expandafter\edef\expandafter\@tempb\expandafter{%
              #1,\@tempa%
            }%
          \else%
            \expandafter\edef\expandafter\@tempb\expandafter{%
              \@tempb,#1,\@tempa%
            }%
          \fi%
          \@sorted@listtrue%
        \else%
          \ifx\@tempb\@empty%
            \expandafter\edef\expandafter\@tempb\expandafter{\@tempa}%
          \else%
            \expandafter\edef\expandafter\@tempb\expandafter{\@tempb,\@tempa}%
          \fi%
        \fi%
      \fi%
    }%
    \if@sorted@list\else%
      \expandafter\edef\expandafter\@tempb\expandafter{\@tempb,#1}%
    \fi%
    \let\@templist\@tempb%
  \fi%
}
%
%
\NewDocumentCommand\TermTable{smg}{%
  \let\@templist\relax%
  \forcsvlist{\listadd\@templist}{#2}%
  \ifvmode\else\par\fi%
  \vskip\baselineskipglue%
  \@afterindentfalse\@afterheading%
  \IfBooleanTF{#1}{%
    \IfValueTF{#3}{\setlength\@tempdima{#3}}{\setlength\@tempdima{\linewidth}}%
    \setlength\@tempdimc{-.7\baselineskip}%
    \begin{tabularx}{\@tempdima}{lXX}\@TermTable\end{tabularx}%
  }{%
    \setlength\@tempdimc{\z@}%
    \begin{tabular}{lll}\@TermTable\end{tabular}%
  }%
  \par\addvspace{\baselineskipglue}%
}
\newcommand*\@TermTable{%
  \toprule%
  \textbf{Bezeichner} & \textbf{Deutsch} & \textbf{Englisch}\tabularnewline%
  \midrule%
  \forlistloop\@@TermTable{\@templist}%
  \bottomrule%
}
\newcommand*\@@TermTable[1]{%
  \Term{#1} & %
  \ifstr{\@nameuse{#1}}{}{\PName{leer}}{\@nameuse{#1}} & %
  \selectlanguage{english}\vspace*{\@tempdimc}%
  \ifstr{\@nameuse{#1}}{}{\PName{empty}}{\@nameuse{#1}}\tabularnewline%
}
\newsavebox\tabularm@box
\newlength\tabularm@wd
\newcommand*\tabularm@num{1}
\NewEnviron{tabularm}[1]{%
  \begin{lrbox}{\tabularm@box}%
    \let\allcolumnpar\@gobble%
    \begin{tabular}{*{#1}l}\BODY\end{tabular}%
  \end{lrbox}%
  \setlength\tabularm@wd{\wd\tabularm@box}%
  \def\tabularm@num{#1}%
  \let\allcolumnpar\@allcolumnpar%
  \begin{tabular}{*{#1}l}\BODY\end{tabular}%
}
\newcommand*\@allcolumnpar[1]{%
  \multicolumn{\tabularm@num}{@{}p{\tabularm@wd}@{}}{#1}%
}
\newlist{values}{description}{1}
\setlist[values]{%
  topsep=.5\baselineskipglue,labelwidth=\columnwidth,labelsep=0pt,%
  font=\normalfont\ttfamily,before*=\before@values%
}
\newcommand*\itemvalues{}
\newcommand*\before@values{%
  \ifdefvoid{\itemvalues}{%
    \let\itemvalues\item%
    \let\item\tud@item%
    \setlength\changedatskip{-\baselineskip}%
  }{}%
}
\newcommand*\itemfalse{\def\tud@item@val{false/off/no}\item}
\newcommand*\itemtrue{\def\tud@item@val{true/on/yes}\item}
\newcommand*\tud@item@val{}
\newcommand*\tud@item@add{}
\newcommand*\tud@item@format{}
\newcommand*\tud@item{%
  \@ifstar{%
    \def\tud@item@add{(S\"aumniswert)}%
    \let\tud@item@format\emph%
    \tud@@item%
  }{%
    \let\tud@item@add\relax%
    \let\tud@item@format\relax%
    \tud@@item%
  }%
}
\newcommand*\tud@@item[1][]{%
  \ifblank{#1}%
    {\edef\@tempa{\tud@item@val}}%
    {\ifstr{\tud@item@val}{}%
      {\edef\@tempa{#1}}%
      {\edef\@tempa{\tud@item@val/#1}}%
    }%
  \def\tud@item@val{}%
  \ifstr{\@tempa}{}{\itemvalues}{\tud@@@item}%
}
\newcommand*\tud@@@item[1][]{%
  \ifblank{#1}{}{%
    \ifx\tud@item@add\relax%
      \def\tud@item@add{#1}%
    \else%
      \appto\tud@item@add{~#1}%
    \fi%
  }%
  \itemvalues[%
    \tud@item@format{\@tempa:}%
    \ifx\tud@item@add\relax\else%
      {\normalfont\space\footnotesize\tud@item@add}%
    \fi%
  ]%
}
\newenvironment{Example}{\@nameuse{Example*}}{%
  \@nameuse{endExample*}%
  \addvspace{-\topsep}%
}
\newenvironment{Example*}{%
  \labeling{{\usekomafont{disposition}Beispiel:\ }}%
  \item[{\usekomafont{disposition}Beispiel:\ }]%
}{%
  \endlabeling%
}
\lstnewenvironment{Code}[1][]{\lstset{style=tudscr,#1}}{}
% §§§ wozu?
\newcommand*\tud@currentHref{}
\BeforeBeginEnvironment{Code}{\global\let\tud@currentHref\@currentHref}
\AfterEndEnvironment{Code}{\global\let\@currentHref\tud@currentHref}
\newlist{packages}{description}{2}
\setlist[packages]{%
  topsep=\medskipamount,labelwidth=\linewidth,labelsep=0pt,font=\normalfont,%
  parsep=\parskip,listparindent=\parindent,before=\before@packages%
}
\newcommand*\itempackages{}
\newcommand*\before@packages{%
  \ifdefvoid{\itempackages}{%
    \let\itempackages\item%
    \let\item\tud@item@pkg%
    \setlength\changedatskip{-\baselineskip}%
  }{}%
}
\NewDocumentCommand\tud@item@pkg{od<>d()}{%
% §§§ \Package<>|!| aufrufen, \manualhyperdef mit richtigem Argument nutzen
% evtl. letztes \tud@label verwenden
  \itempackages[{%
    \IfValueT{#1}{%
      \let\@tempb\relax%
      % §§§ \cs{@for} durch \cs{forcsvlist} ersetzen
      \@for\@tempa:=#1\do{%
        \ifx\@tempa\@empty\else\ifx\@tempa\space\else%
          \@tempb%
          \manualhyperdef{tudscr:files:\@tempa}%
          \IfValueTF{#2}{%
            \edef\@tempc{http://www.ctan.org/pkg/#2}%
          }{%
            \edef\@tempc{http://www.ctan.org/pkg/\@tempa}%
          }%
          \href{\@tempc}{\expandafter\Package\expandafter{\@tempa}'none'|!|}%
          \def\@tempb{, }%
        \fi\fi%
      }%
      \IfValueT{#3}{%
        \quad(%
        \let\@tempb\relax%
        \@for\@tempa:=#3\do{%
          \@tempb%
          \manualhyperdef{tudscr:files:\@tempa}%
          \expandafter\Package\expandafter{\@tempa}'none'|!|%
          \def\@tempb{, }%
        }%
        )%
      }%
    }%
  }]%
}
%
%
\newrobustcmd*\hypertut[2]{%
  \hyperref{tutorials/#1.pdf}{\jobname}{tutorials:#1}{\File*{#1.pdf}#2}%
}
\NewDocumentCommand\Tutorial{smd||}{%
  \ifnum\pdfshellescape=\@ne\relax%
    \filemodCmp{tutorials/#2.pdf}{tutorials/#2.tex}{}{%
      \immediate\openout\tud@write@i=tutorials.sh%
      \immediate\write\tud@write@i{%
        cd tutorials^^J%
        pdflatex -shell-escape #2^^J%
        pdflatex #2^^J%
        biber #2^^J%
        pdflatex -shell-escape #2^^J%
        makeglossaries #2^^J%
        pdflatex #2%
      }%
      \immediate\closeout\tud@write@i%
      \ifwindows%
        \immediate\write18{rename tutorials.sh tutorials.bat}%
        \immediate\write18{tutorials.bat}%
        \immediate\write18{del tutorials.bat}%
      \else%
        \immediate\write18{bash tutorials.sh}%
        \immediate\write18{rm tutorials.sh}%
      \fi%
    }%
  \fi%
  \IfFileExists{tutorials/#2.pdf}{%
    \hypertut{#2}{}%
  }{%
    \File*{#2.pdf}%
    \tud@shellescape@wrn%
  }%
  \IfBooleanF{#1}{%
    \index[files]{\hypertut{#2}{\protect\suffix{Tutorial}}\IfValueT{#3}{|#3}}%
  }%
}
\newcommand*\IncludeExample[1]{%
  \lstinputlisting[style=tudscr]{examples/#1}%
  \ifnum\pdfshellescape=\@ne\relax%
    \filemodCmp{examples/#1.pdf}{examples/#1.tex}{}{%
      \immediate\write18{%
        pdflatex -output-directory examples examples/#1.tex%
        pdflatex -output-directory examples examples/#1.tex%
      }%
    }%
  \fi%
  \IfFileExists{examples/#1.pdf}{%
    \includepdf[%
      pages=-,noautoscale,frame,keepaspectratio,pagecommand={},%
      height=\textheight,width=\textwidth, offset=5mm 0mm%
    ]{examples/#1.pdf}%
  }{%
    \tud@shellescape@wrn%
  }%
}
\newcommand*\@ToDo{}
\NewDocumentCommand\ToDo{somo}{%
  \ifbool{@tud@todo}{%
    \begingroup%
      \define@boolkey{todonotes}{doc}[true]{%
        \ifbool{KV@todonotes@doc}{\setkeys{todonotes}{color=HKS41!10}}{}%
      }%
      \define@boolkey{todonotes}{rls}[true]{%
        \ifbool{KV@todonotes@rls}{\setkeys{todonotes}{color=HKS44!50}}{}%
      }%
      \define@boolkey{todonotes}{imp}[true]{%
        \ifbool{KV@todonotes@imp}{\setkeys{todonotes}{color=HKS07!50}}{}%
      }%
      \define@boolkey{todonotes}{nxt}[true]{%
        \ifbool{KV@todonotes@nxt}{\setkeys{todonotes}{color=HKS57!50}}{}%
      }%
      \def\@ToDo{}%
      \IfValueTF{#2}{%
        \IfBooleanTF{#1}{\edef\@ToDo{#2,nolist}}{\edef\@ToDo{#2}}%
      }{%
        \IfBooleanT{#1}{\edef\@ToDo{nolist}}%
      }%
      \renewcommand*\marginpar[2][]{%
        \marginnote[##1]{##2}[\dimexpr-1.6ex+1pt\relax]%
      }%
     \@tempswafalse%
     \ifdefvoid{\tud@todo@type}{\@tempswatrue}{}%
     \IfValueT{#2}{%
       \@for\@tempa:=#2\do{\ifstr{\@tempa}{\tud@todo@type}{\@tempswatrue}{}}%
     }%
      \if@tempswa%
        \vskip.8ex%
        \IfValueT{#4}{%
          \settowidth\marginparwidth{#4}%
          \addtolength\marginparwidth{\dimexpr1.6ex+1pt\relax}%
          \let\par\relax\noindent%
          \edef\@tempa{\noexpand\todo[\@ToDo,noline,nolist]}%
          \@tempa{#4}%
        }%
        \edef\@tempa{\noexpand\todo[\@ToDo,inline]}%
        \@tempa{#3}%
      \fi%
    \endgroup%
    \par\noindent%
  }{}%
  \ignorespaces%
}
\newcommand*\ListOfToDo{\if@tud@todo\listoftodos\fi}
\reversemarginpar
\newcommand*\seeidx[2]{\pageref{idx:#1}}
\NewDocumentCommand\Index{mom}{%
  \def\@tempa##1##2##3{%
    \index{%
      ##3!\textrightarrow{}\space%
      \manualhyperref{idx:##1}{Index der \IfValueTF{##2}{##2}{##3}}|seeidx{##1}%
    }%
  }%
  \forcsvlist{\@tempa{#1}{#2}}{#3}%
}
\NewDocumentCommand\Changelog{m}{%
  \def\@tempa##1{%
    \index{%
      ##1!\textrightarrow{}\space%
      \manualhyperref{idx:changelog}{\"Anderungsliste}|seeidx{changelog}%
    }%
  }%
  \forcsvlist\@tempa{#1}%
}
\newcommand*\PrintIndex{%
  \begingroup%
    \@printindex%
    \clearpage%
    \@printindex[options]%
    \clearpage%
    \@printindex[macros]%
    \clearpage%
%    \@printindex[keys]% $$$ raus
    \@printindex[terms]%
    \clearpage%
    % $$$ rein
%    \@printindex[pagestyles]%
%    \@printindex[lengths]%
%    \@printindex[counters]%
    \@printindex[fonts]%
    \clearpage%
    \begingroup%
      \let\lettergroup\@gobble%
      \let\indexspace\par%
      \@printindex[colors]%
      \clearpage%
    \endgroup%
    \@printindex[files]%
    \clearpage%
  \endgroup%
}
\newcommand*\@printindexprologue{}
\newcommand*\PrintIndexPrologue[1]{\renewcommand\@printindexprologue{#1}}
\newcommand*\@printindexskip{%
  \ifnum\imki@columns>\@ne\relax\vspace{-\multicolsep}\fi%
}
\newif\if@tud@index
\newcommand*\@printindex[1][]{%
  \pagebreak[3]%
  \@tud@indextrue%
  \ifblank{#1}{%
    \ifx\@printindexprologue\@empty%
      \indexprologue[\@printindexskip]{\manualhyperdef'{idx:main}}%
    \else%
      \indexprologue{%
        \manualhyperdef'{idx:main}%
        \@printindexprologue%
      }%
    \fi%
    \printindex\@printindexskip%
    \let\@printindexprologue\@empty%
  }{%
    \indexprologue[\@printindexskip]{\manualhyperdef'{idx:#1}}%
    \printindex[#1]\@printindexskip%
  }%
}
\newcommand*\PrintChangelog{%
  \begingroup%
    \def\lettergroup##1{%
      \let\item@orig\item
      \renewcommand*\item{%
        \begingroup%
          \escapechar=`\\%
          \catcode\endlinechar=\active%
          \csname\string\item\endcsname%
      }%
      \begingroup%
      \escapechar=`\\%
      \lccode`\~=\endlinechar%
      \lowercase{%
        \expandafter\endgroup
        \expandafter\def\csname\string\item\endcsname####1~%
      }{%
        \endgroup%
        \item@orig####1%
        \phantomsection\addxcontentsline{toc}{subsection}{####1}%
        \manualhyperdef{####1}%
      }%
    }%
    % $$$ raus
    \@deprecatedtrue%
    \let\hyperpagedeprecated\hyperpage%
    \preto\item{\let\hyperpagedeprecated\hyperpage}%
    \preto\subitem{\let\hyperpagedeprecated\hyperpage}%
    \preto\subsubitem{\let\hyperpagedeprecated\hyperpage}%
    % $$$ raus ende
    \@printindex[changelog]%
  \endgroup%
}
\newif\if@deprecated% $$$ raus
\newcommand*\hyperpagedeprecated{}% $$$ raus
% §§§ evtl. \seelink um fehlende cross-ref-class zu vermeiden
% §§§ notwendige Argument prüfen
\renewrobustcmd*\see[2]{%
  \ifstr{#1}{*}%
    {\emph{\seename}\nobreakspace#2}%
    {\emph{\seename}\nobreakspace#1}%
  \if@deprecated\let\hyperpagedeprecated\@gobble\fi%
}
\renewrobustcmd*\seealso[2]{%
  \ifstr{#1}{*}%
    {\emph{\alsoname}\nobreakspace#2}%
    {\emph{\alsoname}\nobreakspace#1}%
}
\RequirePackage{xspace}[2009/10/20]
\xspaceaddexceptions{"=}
\newcommand*\vTUDScript{}
\AtBeginDocument{%
  \def\@tempb#1 #2 #3\relax#4\relax{\def\vTUDScript{#2}}%
  \edef\@tempa{\TUDVersion}%
  \expandafter\@tempb\@tempa\relax? ? \relax\relax%
}
\newcommand*\vKOMAScript{v3.17\xspace}
\RequirePackage{scrhack}[2014/02/27]
\newcommand*\CD{Corporate Design\xspace}
\newcommand*\CDs{Corporate Designs\xspace}
\newcommand*\TUD{Technische Universit\"at Dresden\xspace}
\newcommand*\TnUD{Technischen Universit\"at Dresden\xspace}
\newcommand*\DDC{%
  \mbox{%
    D\kern.05em R\kern.05em E\kern.05em S\kern.05em D\kern.05em E\kern.05em
    N\kern.1em-\kern.1em concept%
  }\xspace%
}
\AfterPackage*{babel}{%
  \@expandtwoargs\in@{,english,}{,\bbl@loaded,}%
  \ifin@%
    \renewcommand*\CD{\foreignlanguage{english}{Corporate Design}\xspace}%
    \renewcommand*\CDs{\foreignlanguage{english}{Corporate Designs}\xspace}%
  \fi%
}
\newcommand*\Univers{\textubn{Univers}\xspace}
\newcommand*\DIN{\textdbn{DIN~BOLD}\xspace}
\newcommand*\textsbn{}
\newrobustcmd*\sbnfont{\sffamily\bfseries\upshape}
\DeclareTextFontCommand\textsbn{\sbnfont}
\newcommand*\textsbs{}
\newrobustcmd*\sbsfont{\sffamily\bfseries\slshape}
\DeclareTextFontCommand\textsbs{\sbsfont}
\newcommand*\Attention[1]{\marginnote{\fbox{Achtung!}}\emph{#1}}
\NewDocumentCommand\Forum{s}{%
  \IfBooleanTF{#1}{%
    \url{http://latex.wcms-file3.tu-dresden.de/phpBB3/}%
  }{%
    \hrfn{http://latex.wcms-file3.tu-dresden.de/phpBB3/}{TUD-\LaTeX-Forum}%
  }%
  \xspace%
}
\NewDocumentCommand\GitHubRepo{s}{%
  \def\@tempc{%
    https://github.com/tud-cd/tudscr/releases%
  }%
  \IfBooleanTF{#1}{%
    \href{\@tempc}{GitHub-Repository~\Distribution*{tudscr}}%
  }{%
    \hrfn{\@tempc}{GitHub-Repository~\Distribution*{tudscr}}%
  }%
  \xspace%
}
\newcommand*\notudscrartcl{%
  F\"ur die Klasse \Class{tudscrartcl} ist diese Einstellung nicht verf\"ugbar.
}
\newlength\tempdim
\newcommand*\hrfn[2]{\href{#1}{#2}\footnote{\scalebox{0.97}{\url{#1}}}}
\NewDocumentCommand\scrguide{sO{\KOMAScript-Handbuch}}{%
  \def\@tempc{%
    http://mirrors.ctan.org/macros/latex/contrib/koma-script/doc/scrguide.pdf%
  }%
  \IfBooleanTF{#1}{%
    \href{\@tempc}{#2}%
  }{%
    \hrfn{\@tempc}{#2}%
  }%
  \xspace%
}
\newcommand*\tud@trace@lbl@created[1]{}
\newcommand*\tud@trace@lbl@missing[2]{}
\NewDocumentCommand\tracinglabels{sO{missing}}{%
  \RequirePackage{currfile}%
  \newcommand*\list@lbl@created{}%
  \newcommand*\list@lbl@missing{}%
  \newcommand*\list@lbl@noindex{}%
  \newcommand*\lbl@typeout[1]{\typeout{##1}}%
  \@tempswafalse%
  \ifstr{#2}{created}{\@tempswatrue}{}%
  \ifstr{#2}{all}{\@tempswatrue}{}%
  \if@tempswa%
    \renewcommand*\tud@trace@lbl@created[1]{%
      \typeout{%
        +++++ label created: ##1^^J%
        +++++ in \currfilename\space on line \the\inputlineno%
      }%
      \xifinlist{##1}{\list@lbl@created}{}{\listxadd\list@lbl@created{##1}}%
    }%
    \IfBooleanF{#1}{%
      \AfterEndDocument{%
        \typeout{+++++ labels created (sorted) +++++}%
        \sortlist\list@lbl@created%
        \forlistloop\lbl@typeout{\list@lbl@created}%
      }%
    }%
  \fi%
  \@tempswafalse%
  \ifstr{#2}{missing}{\@tempswatrue}{}%
  \ifstr{#2}{all}{\@tempswatrue}{}%
  \if@tempswa%
    \renewcommand*\tud@trace@lbl@missing[2]{%
      \IfBooleanTF{##2}{%
        \typeout{%
          +++++ label noindex: ##1^^J%
          +++++ in \currfilename\space on line \the\inputlineno%
        }%
        \xifinlist{##1}{\list@lbl@noindex}{}{\listxadd\list@lbl@noindex{##1}}%
      }{%
        \typeout{%
          +++++ label missing: ##1^^J%
          +++++ in \currfilename\space on line \the\inputlineno%
        }%
        \xifinlist{##1}{\list@lbl@missing}{}{\listxadd\list@lbl@missing{##1}}%
      }%
    }%
    \IfBooleanF{#1}{%
      \AfterEndDocument{%
        \typeout{+++++ labels missing (sorted) +++++}%
        \sortlist\list@lbl@missing%
        \forlistloop\lbl@typeout{\list@lbl@missing}%
        \typeout{+++++ labels noindex (sorted) +++++}%
        \sortlist\list@lbl@noindex%
        \forlistloop\lbl@typeout{\list@lbl@noindex}%
      }%
    }%
  \fi%
}\@onlypreamble\tracinglabels
\newcommand*\tud@trace@markup[2][]{#2}
\newcommand*\tracingmarkup{%
  \renewcommand*\tud@trace@markup[2][]{%
    \typeout{+++++ markup ##1 on page \thepage^^J##2}##2%
  }%
}
\@onlypreamble\tracingmarkup
\newcommand*\tud@trace@subdeclare[1]{}
\newcommand*\@subdeclarelist{}
\newcommand*\tracingsubdeclare{%
  \renewcommand*\tud@trace@subdeclare[1]{%
    \begingroup%
      \def\Class####1{class:####1}%
      \def\Package####1{package:####1}%
      \xifinlist{##1}{\@subdeclarelist}{}{\listxadd\@subdeclarelist{##1}}%
    \endgroup%
  }%
  \AfterEndDocument{%
    \typeout{+++++ subdeclarelist +++++}%
    \def\@tempa##1{\typeout{##1}}%
    \forlistloop\@tempa{\@subdeclarelist}%
  }%
}
\@onlypreamble\tracingsubdeclare
%%% From File: tudscr-fields.dtx
\newcommand*\@course{}
\newrobustcmd*\course[1]{\gdef\@course{#1}}
\newcommand*\@discipline{}
\newrobustcmd*\discipline[1]{\gdef\@discipline{#1}}
\newcommand*\@chairman{}
\newcommand*\chairman[1]{\gdef\@chairman{#1}}
\newcommand*\@grade{}
\newcommand*\grade[1]{\gdef\@grade{#1}}
\newcommand*\@headline{}
\newcommand*\@issuedate{}
\newcommand*\issuedate[1]{\tud@printdate{\@issuedate}{#1}}
\newcommand*\@duedate{}
\newcommand*\duedate[1]{\tud@printdate{\@duedate}{#1}}
\newcommand*\finaldate{}
\newcommand*\maturitydate{}
\newcommand*\@contactperson{}
\newcommand*\contactperson[1]{\gdef\@contactperson{#1}}
\newcommand*\@office{}
\newrobustcmd*\office[1]{\gdef\@office{#1}}
\newcommand*\@telephone{}
\newrobustcmd*\telephone[1]{\gdef\@telephone{#1}}
\newcommand*\@emailaddress{}
\newrobustcmd*\emailaddress[2][]{\gdef\@emailaddress{#2}}
\AfterPackage*{hyperref}{%
  \renewrobustcmd*\emailaddress[2][hidelinks]{%
    \gdef\@emailaddress{%
      \begingroup%
        \hypersetup{#1}%
        \urlstyle{same}%
        \href{mailto:#2}{\nolinkurl{#2}}%
      \endgroup%
    }%
  }%
}
%%% From File: tudscr-locale.dtx
\tud@locale@define{\authorname}
\tud@locale@define{\contactname}
\tud@locale@define{\contactpersonname}
\tud@locale@define{\taskname}
\tud@locale@define{\tasktext}
\tud@locale@define{\namesname}
\tud@locale@define{\titlename}
\tud@locale@define{\coursename}
\tud@locale@define{\disciplinename}
\tud@locale@define{\issuedatetext}
\tud@locale@define{\duedatetext}
\tud@locale@define{\chairmanname}
\tud@locale@define{\focusname}
\tud@locale@define{\objectivesname}
\tud@locale@define{\evaluationname}
\tud@locale@define{\evaluationtext}
\tud@locale@define{\contentname}
\tud@locale@define{\assessmentname}
\tud@locale@define{\gradetext}
\tud@locale@define{\noticename}
\tud@locale@define{\contactpersonname}
\tud@locale@german{\authorname}{Autor}%
\tud@locale@german{\contactname}{Kontakt}%
\tud@locale@german{\contactpersonname}{Ansprechpartner}%
\tud@locale@german{\taskname}{Aufgabenstellung}%
\tud@locale@german{\tasktext}{f\"ur die Anfertigung einer}%
\tud@locale@german{\namesname}{Name}%
\tud@locale@german{\titlename}{Titel}%
\tud@locale@german{\coursename}{Studiengang}%
\tud@locale@german{\disciplinename}{Studienrichtung}%
\tud@locale@german{\issuedatetext}{Ausgeh\"andigt am}%
\tud@locale@german{\duedatetext}{Einzureichen am}%
\tud@locale@german{\chairmanname}{Pr\"ufungsausschussvorsitzender}%
\tud@locale@german{\focusname}{Schwerpunkte der Arbeit}%
\tud@locale@german{\objectivesname}{Ziele der Arbeit}%
\tud@locale@german{\evaluationname}{Gutachten}%
\tud@locale@german{\evaluationtext}{f\"ur die}%
\tud@locale@german{\contentname}{Inhalt}%
\tud@locale@german{\assessmentname}{Bewertung}%
\tud@locale@german{\gradetext}{%
  Die Arbeit wird mit der Note \textbf{\@grade} bewertet.%
}
\tud@locale@german{\noticename}{Aushang}%
\tud@locale@german{\contactpersonname}{Ansprechpartner}%
\tud@locale@english{\authorname}{Author}%
\tud@locale@english{\contactname}{Contact}%
\tud@locale@english{\contactpersonname}{Contact}%
\tud@locale@english{\taskname}{Task}%
\tud@locale@english{\tasktext}{for the preparation of a}%
\tud@locale@english{\namesname}{Name}%
\tud@locale@english{\titlename}{Title}%
\tud@locale@english{\coursename}{Course}%
\tud@locale@english{\disciplinename}{Discipline}%
\tud@locale@english{\issuedatetext}{Issued on}%
\tud@locale@english{\duedatetext}{Due date for submission}%
\tud@locale@english{\chairmanname}{Chairman of the Audit Committee}%
\tud@locale@english{\focusname}{Focus of work}%
\tud@locale@english{\objectivesname}{Objectives of work}%
\tud@locale@english{\evaluationname}{Evaluation}%
\tud@locale@english{\evaluationtext}{for the}%
\tud@locale@english{\contentname}{Content}%
\tud@locale@english{\assessmentname}{Assessment}%
\tud@locale@english{\gradetext}{%
  The thesis is evaluated with a grade of \textbf{\@grade}.%
}
\tud@locale@english{\noticename}{Notice}%
\tud@locale@english{\contactpersonname}{Contact}%
\endinput
%%
%% End of file `tudscrman.cls'.
