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
\@ifundefined{@TUDScript}{%
  \newcommand*\@TUDScript{TUD-KOMA-Script}%
}{}
\@ifundefined{TUDScript}{%
  \DeclareRobustCommand{\TUDScript}{%
    \ifdin{TUD-KOMA-SCRIPT}{%
      \textsf{T\kern.05em U\kern.05em D\kern.1em-\kern.1em}\KOMAScript%
    }\csname xspace\endcsname%
  }%
}{}
% $$$ erzeugte Befehle nach code conventions durchsuchen
%     ommand\*?\\(@)*[a-z] def\*?\\(@)*[a-z]
%     ommand\*?\\(@)*[A-Z] def\*?\\(@)*[A-Z]
% $$$ Verwendung von \@temp[abc] zu \tud@reserved@[abc], wo notwendig
%%% From File: tudscr-manual.dtx
%%% From File: tudscr-base.dtx
\RequirePackage{tudscrbase}[\TUDVersion]
\providecommand*\tud@reserved{}
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
  \NewDocumentCommand\manualhyperdef{sm}{%
    \IfBooleanTF{#1}{%
      \raisebox{4\baselineskip}[0pt][0pt]{\hyperdef{\jobname}{#2}{}}%
      \par\nobreak\vskip\dimexpr-\parskip-\baselineskip\relax%
      \@afterindentfalse\@afterheading%
    }{%
      \Hy@raisedlink{\hyperdef{\jobname}{#2}{}}%
      \ignorespaces%
    }%
    \label{#2}%
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
% $$$ deprecated kann wahrscheinlich raus
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
\newcommand*\suffix[1]{\begingroup~\footnotesize(#1)\endgroup}
\newif\if@declare
\newif\if@openindex
\newcounter{deprecated}
% 0: normales Verhalten (label und Ausgabe)
% 1: kein label, nur Ausgabe
% 2: normales label, keine Ausgabe
% 3: verschobenes label, keine Ausgabe
\newcommand*\tud@declare{0}
\newcommand*\list@Declaration{}
\let\list@Declaration\relax
\newcommand*\list@Preset{}
\let\list@Preset\relax
\newif\if@preset@list
\newcommand*\list@Additional{}
\let\list@Additional\relax
\newif\if@additional@list
\NewDocumentEnvironment{Declaration}{omoogt'}{%
  \IfBooleanTF{#6}{%
    \listadd\list@Declaration{\def\tud@declare{1}#2\def\tud@declare{0}}%
  }{%
    \listadd\list@Declaration{#2}%
  }%
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
  \ifnum\value{deprecated}>\z@%
    \addtocounter{deprecated}{\m@ne}%
  \fi%
  \pagebreak[0]%
}
\NewDocumentCommand\printdeclarationlist{sod()}{%
  \ifx\list@Declaration\relax\else%
    \IfBooleanT{#1}{%
      \def\@tempa##1{\addtocounter{deprecated}{\@ne}}%
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
    \ifvmode\else\par\fi%
    \addpenalty{\@beginparpenalty}%
    \addvspace{1.5\baselineskipglue}%
    \@afterindentfalse\@afterheading%
    \@declaretrue\@openindextrue%
    \def\@tempa##1{\ignorespaces##1\tabularnewline}%
    \edef\HyperRaiseLinkDefault{\the\baselineskip}%
    \sbox\z@{%
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
    \@afterindentfalse\@afterheading%
  \fi%
}
\newcommand*\@subdeclare{}
\newcommand*\@subdeclaredefault{tudscr}
\let\@subdeclare\@subdeclaredefault
\newcommand*\tud@ifsubdeclare[2]{%
  \ifstr{\@subdeclare}{\@subdeclaredefault}{#2}{#1}%
}
% $$$ obligatorisches Argument in runden Klammern
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
\NewDocumentEnvironment{Declaration*}{om}{%
  \tud@declare@special@start{#1}{#2}{2}%
}{%
  \tud@declare@special@end{#2}%
}
% $$$ optionales Argument für Änderungsliste überarbeiten, Eintrag sollte in
% Allgemein (s. tudscrfonts)
\NewDocumentEnvironment{Declaration!}{om}{%
  \tud@declare@special@start{#1}{#2}{3}%
  \SubDeclaration{#2}%
}{%
  \endSubDeclaration%
  \tud@declare@special@end{#2}%
}
\newcommand*\tud@declare@special@start[3]{%
  \@ChangedAt@CreateList[#2]{#1}%
  \def\tud@declare{#3}%
  \@declaretrue\@openindextrue#2\@declarefalse%
  \def\tud@declare{0}%
}
\newcommand\tud@declare@special@end[1]{%
  \ifx\list@ChangedAt\relax\else%
    \ClassError{tudscrman}{\string\printchangedatlist\space is missing}{%
      \string\list@ChangedAt\space is not empty. Did you\MessageBreak%
      forget to print this list with \string\printchangedatlist?%
    }%
  \fi%
  \@gobbleparameters%
  \@declaretrue\@openindexfalse#1\@declarefalse%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@changedat
\newrobustcmd*\bsc{\@backslashchar}
% $$$ allen Befehlen optionale Argumente zur Verwendung im Fließtext geben, wie 
%     mit der Formatierung umgehen?
\DeclareExpandableDocumentCommand\@Application{sm}{#2}
\NewDocumentCommand\Application{smd||}{%
  \ifdin{#2}{%
    \@SetMarkupFormat{\sbsfont}%
    \@ProcessMarkup{\Application{#2}}%
    \@ProcessIndex{\Application{#2}}[Anwendungssoftware]|#3|{#1}%
  }%
}
\DeclareExpandableDocumentCommand\@Distribution{sm}{#2}
\NewDocumentCommand\Distribution{smod||}{%
  \ifdin{#2\IfValueT{#3}{~#3}}{%
    \@SetMarkupFormat{\sbnfont}%
    \@ProcessMarkup{\Distribution{#2}}[#3]%
    \@ProcessIndex{\Distribution{#2}}[Distribution]|#4|{#1}%
  }%
}
\DeclareExpandableDocumentCommand\@File{sm}{#2}
\NewDocumentCommand\File{smd||}{%
  \ifdin{#2}{%
    \@SetMarkupFormat{\sbnfont}%
    \@ProcessMarkup{\File{#2}}%
    \@ProcessIndex{\File{#2}}[Datei]|#3|{#1}%
  }%
}
\DeclareExpandableDocumentCommand\@Class{sm}{#2}
\NewDocumentCommand\Class{smd''d||}{%
  \ifdin{#2}{%
    \@SetMarkupFormat{\sbnfont}%
    \if@changedat%
      \@ProcessChangedAt{\Class{#2}}[Klasse]%
    \else%
      \@ProcessMarkup{\Class{#2}}'#3'%
      \@ProcessIndex{\Class{#2}}[Klasse]|#4|{#1}%
    \fi%
  }%
}
\DeclareExpandableDocumentCommand\@Package{sm}{#2}
\NewDocumentCommand\Package{smd<>d''d||}{%
  \ifdin{#2}{%
    \@SetMarkupFormat{\sbnfont}%
    \if@changedat%
      \@ProcessChangedAt{\Package{#2}}[Paket]%
    \else%
      \IfValueTF{#3}{%
        \@ProcessMarkup{\Package{#2}}<#3>'#4'%
      }{%
        \@ProcessMarkup{\Package{#2}}<#2>'#4'%
      }%
      \@ProcessIndex{\Package{#2}}[Paket]|#5|{#1}%
    \fi%
  }%
}
\DeclareExpandableDocumentCommand\@Option{sm}{#2}
% !!! suchen nach \\Option\*?\{.*\}\[.*\]
% !!! \Option(*){option}[value] in \Option(*){option=value}
% $$$ Implementierung? optionaler Wert durch '=' im Hauptargument getrennt
\NewDocumentCommand\Option{smod()d''d||}{%
% !!! Debug
%  \IfValueT{#3}{%
%    \ClassWarning{tudscrman}{please change the optional argument}%
%  }%
% !!! Debug Ende
  \@SetMarkupFormat{\ttfamily}%
  \if@changedat%
    \@ProcessChangedAt{\Option{#2}}(#4)[Option]%
  \else%
    \@ProcessMarkup{\Option{#2}}(#4)[#3](=)'#5'%
    \@ProcessIndex{\Option{#2}}(#4)|#6|{#1}%
  \fi%
}
\DeclareExpandableDocumentCommand\@Environment{sm}{#2}
% $$$ Implementierung? optionaler Wert im Hauptargument anders getrennt
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
  \if@changedat%
    \@ProcessChangedAt{\Environment{#2}}(#4)[Umgebung]%
  \else%
    \@ProcessMarkup{\Environment{#2}}(#4)'#5'%
%    % $$$ Rein
%    \@ProcessIndex{\Environment{#2}}(#4)[Umgebung]|#6|{#1}%
    % $$$ Raus
    \@ProcessIndex{\Environment{#2}}(#4)|#6|{#1}%
  \fi%
}
\DeclareExpandableDocumentCommand\@Macro{sm}{#2}
\NewDocumentCommand\Macro{smd()d''d||}{%
  \@SetMarkupFormat{\ttfamily\bsc}%
  \if@changedat%
%    % $$$ raus
%    \@ProcessChangedAt{\Macro{#2}}(#3)%
%    % $$$ rein
    \@ProcessChangedAt{\Macro{#2}}(#3)[Befehl]%
  \else%
    \@ProcessMarkup{\Macro{#2}}(#3)'#4'%
    \@ProcessIndex{\Macro{#2}}(#3)|#5|{#1}%
  \fi%
}
% !!! suchen nach \\Key\*?\{.*\}\{.*\}\[.*\]
% !!! \Key(*){cmd}{key}[value] in \Key(*){cmd}{key=value}
% $$$ Implementierung? nur ein Hauptargument
% $$$ Implementierung? optionaler Wert durch '=' im Hauptargument getrennt
\DeclareExpandableDocumentCommand\@Key{smm}{#2!#3}
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
  \if@changedat%
    \@ProcessChangedAt{\Key{#2}{#3}}(#5)[Parameter]%
  \else%
    \@ProcessMarkup{\Key{#2}{#3}}(#5)[#4](=)'#6'%
    \@ProcessIndex{\Key{#2}{#3}}(#5)[Parameter]|#7|{#1}%
  \fi%
}
\DeclareExpandableDocumentCommand\@Term{sm}{#2}
\NewDocumentCommand\Term{smd()d''d||}{%
  \@SetMarkupFormat{\ttfamily\bsc}[Bezeichner]%
  \if@changedat%
    \@ProcessChangedAt{\Term{#2}}(#3)[Bezeichner]%
  \else%
    \@ProcessMarkup{\Term{#2}}(#3)'#4'%
    \@ProcessIndex{\Term{#2}}(#3)|#5|{#1}%
  \fi%
}
\DeclareExpandableDocumentCommand\@Font{sm}{#2}
\NewDocumentCommand\Font{smd()d''d||}{%
  \@SetMarkupFormat{\ttfamily}[Schriftelement]%
  \if@changedat%
    \@ProcessChangedAt{\Font{#2}}(#3)[Schriftelement]%
  \else%
    \@ProcessMarkup{\Font{#2}}(#3)'#4'%
    \@ProcessIndex{\Font{#2}}(#3)|#5|{#1}%
  \fi%
}
\DeclareExpandableDocumentCommand\@Color{sm}{#2}
% $$$ Implementierung? optionaler Wert im Hauptargument anders getrennt
\NewDocumentCommand\Color{smoD(){\Package{tudscrcolor}}d''d||}{%
  \@SetMarkupFormat{\ttfamily}(%
    \begingroup\ttfamily##1\IfValueT{#3}{\,(#3)}\endgroup\suffix{Farbe}%
  )%
  \if@changedat%
    \@ProcessChangedAt{\Color{#2}}(#4)[Farbe]%
  \else%
    \@ProcessMarkup{\Color{#2}}(#4)'#5'%
    \@ProcessIndex{\Color{#2}}(#4)|#6|{#1}%
  \fi%
}
\DeclareExpandableDocumentCommand\@PageStyle{sm}{#2}
% $$$ Index pagestyles
\NewDocumentCommand\PageStyle{smd()d''d||}{%
  \@SetMarkupFormat{\ttfamily}[Seitenstil]%
  \if@changedat%
    \@ProcessChangedAt{\PageStyle{#2}}(#3)[Seitenstil]%
  \else%
    \@ProcessMarkup{\PageStyle{#2}}(#3)'#4'%
%    % $$$ Rein
%    \@ProcessIndex{\PageStyle{#2}}(#3)|#5|{#1}%
    % $$$ Raus
    \@ProcessIndex{\PageStyle{#2}}(#3)[Seitenstil]|#5|{#1}%
  \fi%
}
\DeclareExpandableDocumentCommand\@Length{sm}{#2}
% $$$ Index lenghts
\NewDocumentCommand\Length{smd()d''d||}{%
  \@SetMarkupFormat{\ttfamily\bsc}[L\"ange]%
  \if@changedat%
    \@ProcessChangedAt{\Length{#2}}(#3)[L\"ange]%
  \else%
    \@ProcessMarkup{\Length{#2}}(#3)'#4'%
%    % $$$ Rein
%    \@ProcessIndex{\Length{#2}}(#3)|#5|{#1}%
    % $$$ Raus
    \@ProcessIndex{\Length{#2}}(#3)[L\"ange]|#5|{#1}%
  \fi%
}
\DeclareExpandableDocumentCommand\@Counter{sm}{#2}
% $$$ Index counter
\NewDocumentCommand\Counter{smd()d''d||}{%
  \@SetMarkupFormat{\ttfamily}[Z\"ahler]%
  \if@changedat%
    \@ProcessChangedAt{\Counter{#2}}(#3)[Z\"ahler]%
  \else%
    \@ProcessMarkup{\Counter{#2}}(#3)'#4'%
%    % $$$ Rein
%    \@ProcessIndex{\Counter{#2}}(#3)|#5|{#1}%
    % $$$ Raus
    \@ProcessIndex{\Counter{#2}}(#3)[Z\"ahler]|#5|{#1}%
  \fi%
}
\newcommand*\@templabel{}
\newcommand*\@tempentry{}
\newcommand*\@tempformat{}
\newcommand*\@tempsubdeclare{}
\newcommand*\@templist{}
\let\@templist\relax%
\newtoks\tud@toks@
\newcommand*\eaddto@hook[2]{%
  \expandafter\addto@hook\expandafter#1\expandafter{#2}%
}
% $$$ \DeclareExpandableDocumentCommand und \@gobblemarkup automatisiert über 
%     eine Liste erzeugen, sobald \Key nur noch ein Argument annimmt
% $$$ \@getsubsabel und \@Key dementsprechend anpassen
\NewDocumentCommand\@gobblemarkup{s}{%
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
  \IfBooleanF{#1}{%
    \let\hologoRobust\@firstofone%
    \let\TUDScript\@TUDScript%
    \def\_{-}%
    \protected\def~{~}%
  }%
}
\AfterPackage*{hyperref}{%
  \expandafter\pdfstringdefDisableCommands\expandafter{\@gobblemarkup}%
}
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
    % $$$ nur noch ein Argument!
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
% {#1}: Markup für Ausgabe
% (#2): optionale Subdeclaration
% [#3]: optionaler Suffix für Ausgabe
% (#4): optionaler Formatierung der Suffix-Ausgabe
% <#5>: URL
% '#6': Querverweis
% $$$ Argumente #2 und #3 tauschen, sobald #4 nicht mehr notwendig
\NewDocumentCommand\@ProcessMarkup{md()od()d<>d''}{%
  \typeout{***** markup}%
  \typeout{1: #1}%
  \IfValueT{#2}{\typeout{2: #2}}%
  \IfValueT{#3}{\typeout{3: #3}}%
  \IfValueT{#4}{\typeout{4: #4}}%
  \IfValueT{#5}{\typeout{5: #5}}%
  \IfValueT{#6}{\typeout{6: #6}}%
  \if@declare%
    \@getlabel*\@templabel{\@subdeclare:#1}%
    \tud@toks@{\ProcessMarkup@Declare}%
  \else%
    \@getlabel\@templabel{#2:#1}%
    \tud@toks@{\ProcessMarkup@Output}%
  \fi%
  \begingroup%
    \@gobblemarkup*%
    \edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand\@tempentry{#1}%
    }%
  \tud@reserved%
  \eaddto@hook\tud@toks@{\expandafter{\@templabel}}%
  \eaddto@hook\tud@toks@{\expandafter{\@tempentry}}%
% Argument #3 sauber dokumentieren bzw. überprüfen, ob notwendig
% $$$ #4 kann raus, sobald Optionen mit '=' im ersten Argument funktionieren
  \IfValueT{#3}{%
    \IfValueTF{#4}{%
      \addto@hook\tud@toks@{[#4#3]}%
    }{%
      \addto@hook\tud@toks@{[~#3]}%
    }%
  }%
  \if@declare%
    \if@openindex%
      \IfValueT{#6}{%
        \ClassWarning{tudscrman}{%
          It is not possible to use any cross-reference\MessageBreak%
          shorthand like '#6' within the arguments of\MessageBreak%
          the environment `Declaration'%
        }%
      }%
      \tud@trace@markup[declare]{\the\tud@toks@}%
    \fi%
  \else%
    \if@tud@index\else%
      \IfValueT{#5}{%
        \ifstr{#5}{}{}{\addto@hook\tud@toks@{<http://www.ctan.org/pkg/#5>}}%
      }%
      \IfValueT{#6}{\addto@hook\tud@toks@{'#6'}}%
    \fi%
    \tud@trace@markup[output]{\the\tud@toks@}%
  \fi%
  \IfValueT{#2}{%
    \ifstr{#2}{}{}{%
      \tud@trace@subdeclare{#2}%
      \tud@iflabelexists{\@templabel}{}{%
        \ClassWarning{tudscrman}{No existing label \@templabel\space for #2}%
      }%
    }%
  }%
}
% {#1}: Label
% {#2}: Hauptargument
% [#3]: optionaler Suffix Ausgabe
\NewDocumentCommand\ProcessMarkup@Declare{mmo}{%
  \@CheckMarkupFormat%
% $$$ optionaler suffix weg, alles über einziges Argument
%  \IfValueT{#3}{\typeout{!!!!! #2:#3}}%
  \ifcase\tud@declare%
    \manualhyperdef{#1}%
    \@MarkupOutput{#2}[#3]%
  \or%
    \@MarkupOutput{#2}[#3]%
  \or%
    \manualhyperdef{#1}%
  \or%
    \manualhyperdef*{#1}%
  \fi%
  \@ClearMarkupFormat%
}
% {#1}: Label
% {#2}: Hauptargument
% [#3]: optionaler Suffix Ausgabe
% <#4>: URL
% '#5': Querverweis
\NewDocumentCommand\ProcessMarkup@Output{mmod<>d''}{%
  \@CheckMarkupFormat%
% $$$ optionaler suffix weg, alles über einziges Argument
%  \IfValueT{#3}{\typeout{!!!!! #2:#3}}%
  \begingroup%
    \def\@tempc{\@MarkupOutput{#2}[#3]}%
    \tud@iflabelexists{#1}{%
      \def\@tempa{\hyperref{}{\jobname}{#1}{\@tempc}}%
      \let\@tempb\relax%
      \IfValueT{#5}{%
        \def\@tempb{%
          \ClassWarning{tudscrman}{%
            You've used the unknown cross-reference\MessageBreak%
            shorthand '#5'. Only 'auto', 'page' and 'full'\MessageBreak%
            as well as 'none' \IfValueT{#4}{or 'url' }are valid%
          }%
        }%
        \ifstr{#5}{auto}{\def\@tempb{ in \autoref{#1}}}{%
        \ifstr{#5}{page}{\def\@tempb{ \vpageref{#1}}}{%
        \ifstr{#5}{ppage}{\def\@tempb{ \reftextfaraway{#1}}}{%
        \ifstr{#5}{full}{\def\@tempb{ in \fullref{#1}}}{%
        \ifstr{#5}{none}{\let\@tempa\@tempc\let\@tempb\relax}{}}}}}%
        \IfValueT{#4}{%
          \ifstr{#5}{url}{\def\@tempa{\href{#4}{\@tempc}}\let\@tempb\relax}{}%
        }%
      }%
    }{%
      \let\@tempa\@tempc%
      \IfValueT{#4}{\def\@tempa{\href{#4}{\@tempc}}}%
      \let\@tempb\relax%
      \IfValueT{#5}{%
        \def\@tempb{%
          \ClassWarning{tudscrman}{%
            The label #1\MessageBreak%
            is missing, no cross-reference created.%
          }%
        }%
      }%
    }%
    \@tempa\@tempb%
  \endgroup%
  \@ClearMarkupFormat%
}
% {#1}: Markup für Index
% (#2): optionale Subdeclaration
% [#3]: optionaler Suffix in der Index-Ausgabe
% |#4|: optionale Indexformatierung
% {#5}: Stern?
% $$$ optionales Argument für Optionen (key=value) als subentry
\NewDocumentCommand\@ProcessIndex{md()od||m}{%
  \if@tud@index\else%
    \IfBooleanTF{#5}{%
      \IfValueT{#4}{%
        \ClassWarning{tudscrman}{%
          You've used the starred version. No index entry\MessageBreak%
          for #1 is created. The\MessageBreak%
          optional argument |#4| is ignored%
        }%
      }%
    }{%
      \ifboolexpr{%
        bool {@declare} and test {\ifnumcomp{\value{deprecated}}{>}{\z@}}%
      }{}{%
        \@@ProcessIndex{#1}(#2)[#3]|#4|%
      }%
    }%
  \fi%
}
% {#1}: Markup für Index
% (#2): optionale Subdeclaration
% [#3]: optionaler Suffix in der Index-Ausgabe
% |#4|: optionale Indexformatierung
\NewDocumentCommand\@@ProcessIndex{md()d[]d||}{%
  \@getentryandformat\@tempentry\@tempformat{#1}(#2)[#3]%
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
  \@getsublabel\@templabel{#1}%
  \index[\@templabel]{\@tempentry @\@tempformat}%
}
% {#1}: Markup für Änderungsliste
% (#2): optionale Subdeclaration
% [#3]: optionaler Suffix in der Ausgabe der Änderungsliste
\NewDocumentCommand\@ProcessChangedAt{md()o}{%
  \@getentryandformat\@tempentry\@tempformat{#1}(#2)[#3]%
}
\NewDocumentCommand\@Label{m}{\@@Label#1}
\NewDocumentCommand\@@Label{mmm}{%
  \begingroup%
    \@gobblemarkup%
    \IfValueTF{#3}{%
      \IfValueTF{#1}{%
        \edef\@tempa{#1:#2:#3}%
      }{%
        \edef\@tempa{\@subdeclare:#2:#3}%
      }%
    }{%
      \IfValueTF{#2}{%
        \@getsublabel\@tempb{#2}%
        \IfValueTF{#1}{%
          \edef\@tempa{#1:\@tempb:#2}%
        }{%
          \edef\@tempa{\@subdeclare:\@tempb:#2}%
        }%
      }{%
        \edef\@tempa{#1}%
      }%
    }%
    \edef\@tempc{%
      \noexpand\endgroup%
      \def\noexpand\ProcessedArgument{\@tempa}%
    }%
  \@tempc%
  \tud@replace\ProcessedArgument{@}{<at>}%
}
\NewDocumentCommand\tud@iflabelexists{s>{\@Label}>{\SplitArgument{2}{:}}m}{%
  \ifcsdef{r@#2}{%
    \expandafter\@firstoftwo%
  }{%
    \IfBooleanTF{#1}{%
      \ifcsdef{r@#2.deprecated}{%
        \expandafter\@firstoftwo%
      }{%
        \expandafter\@secondoftwo%
      }%
    }{%
      \expandafter\@secondoftwo%
    }%
  }%
}
\NewDocumentCommand\@getlabel{sm>{\@Label}>{\SplitArgument{2}{:}}m}{%
  \def#2{#3}%
  \IfBooleanTF{#1}{%
    \ifnum\value{deprecated}>\z@%
      \appto#2{.deprecated}%
    \fi%
    \tud@trace@lbl@created{#2}%
  }{%
    \tud@iflabelexists{#2}{}{%
      \edef\tud@reserved{#2.deprecated}%
      \tud@iflabelexists{\tud@reserved}{%
        \let#2\tud@reserved%
      }{%
        \tud@ifsubdeclare{%
          \@@getlabel#2{#3}%
        }{%
          \tud@trace@lbl@missing{#2}%
        }%
      }%
    }%
  }%
}
\NewDocumentCommand\@@getlabel{m>{\SplitArgument{2}{:}}m}{%
  \@@@getlabel{#1}#2%
}
\NewDocumentCommand\@@@getlabel{mmmm}{%
  \edef\tud@reserved{\expandafter\detokenize\expandafter{\@subdeclaredefault}}%
  \ifstr{\tud@reserved}{#2}{%
    \tud@trace@lbl@missing{#1}%
  }{%
    \toks@{\@getlabel#1}%
    \eaddto@hook\toks@{\expandafter{\@subdeclaredefault:#3:#4}}%
    \the\toks@%
  }%
}
\NewDocumentCommand\@getentryandformat{mmmd()d[]}{%
  \let\@tempsubdeclare\@subdeclaredefault%
  \IfValueTF{#4}{%
    \def\@tempsubdeclare{#4}%
  }{%
    \tud@ifsubdeclare{%
      \tud@iflabelexists*{\@subdeclare:#3}{%
        \edef\@tempsubdeclare{\expandonce\@subdeclare}%
      }{}%
    }{}%
  }%
  \begingroup%
    \@gobblemarkup%
    \edef\tud@reserved{%
      \noexpand\endgroup%
%      % $$$ rein
%      \ifx\@tempsubdeclare\@subdeclaredefault%
        \def\noexpand#1{#3}%
%      \else%
%        \def\noexpand#1{#3 \@tempsubdeclare}%
%      \fi%
    }%
  \tud@reserved%
  \def#2{#3}%
  \ifx\@tempsubdeclare\@subdeclaredefault\else%
%    % $$$ raus
    \appto#2{(\@tempsubdeclare)}%
%%    % $$$ rein
%    \appto#2{(\@tempsubdeclare)\protect\suffix{\@tempsubdeclare}}%
  \fi%
  \IfValueT{#5}{%
    \appto#1{ #5}%
    \appto#2{\protect\suffix{#5}}%
  }%
  \tud@replace#1{@}{"@}%
  \protected@edef#2{#2}%
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
    \edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand#1{#1}%
    }%
  \tud@reserved%
}
%
%
%
% $$$ implementieren in \@MarkupOutput
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
% $$$ optionales Argument notwendig?
\newcommand*\@MarkupFormat{}
\newcommand*\@MarkupDeclare{}
\newcommand*\@MarkupSuffix{}
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
% $$$ optionales Argument direkt bei \Environment etc.?
\NewDocumentCommand\@SetMarkupFormat{mod()}{%
  \def\@MarkupFormat{#1}%
  \IfValueT{#2}{\def\@MarkupSuffix{\suffix{#2}}}%
  \IfValueT{#3}{\RenewDocumentCommand\@MarkupDeclare{mmr[]}{#3}}%
%  \apptocmd{\@MarkupDeclare}{\def\@MarkupFormat{#1}}{}{}%
}
\newcommand*\@ClearMarkupFormat{%
  \let\@MarkupFormat\relax%
  \let\@MarkupDeclare\@MarkupDeclare@Default%
  \let\@MarkupSuffix\relax%
}
\@ClearMarkupFormat
\newcommand*\@CheckMarkupFormat{%
  \ifx\@MarkupFormat\relax%
    \ClassError{tudscrman}{\string\@SetMarkupFormat\space unused}{%
      It seems you have forgotten to use \string\@SetMarkupFormat.%
    }%
  \fi%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand*\list@ChangedAt{}
\let\list@ChangedAt\relax%
\DeclareListParser*{\forssvlist}{,}%
% $$$ Listentrennzeichen zu ';' ändern, dafür Debug einfügen
%\NewDocumentCommand\@Debug@Split{>{\SplitArgument{2}{!}}m}{%
%  \Debug@@Split#1%
%}
%\newcommand*\Debug@@Split[3]{%
%  \IfValueT{#2}{\typeout{///// #1 #2 #3}}%
%}
%
\NewDocumentCommand\@ChangedAt@CreateList{om}{%
  \IfValueT{#2}{\forssvlist{\@ChangedAt@@CreateList[#1]}{#2}}%
}
% $$$ durch ':' ersetzen, dafür Debug einfügen
% $$$ generell das Markup in der Liste verbessern, Indexzusatz mit '|' etc.
\NewDocumentCommand\@ChangedAt@@CreateList{r[]>{\SplitArgument{2}{!}}m}{%
  \@ChangedAt@@@CreateList[#1]#2%
}
\NewDocumentCommand\@ChangedAt@@@CreateList{r[]mmm}{%
  % !!! Debug
%  \IfValueT{#4}{\typeout{***************************************** #4}}
  \IfValueTF{#1}{%
    \begingroup%
      \@gobbleparameters%
      \protected@edef\@tempa{#2!Implementierung!#1!}%
      \edef\tud@reserved{%
        \noexpand\endgroup%
        \toks@{\expandonce\@tempa}%
      }%
    \tud@reserved%
    \IfValueTF{#3}{%
      \addto@hook\toks@{#3!#4}%
    }{%
      \eaddto@hook\toks@{!#4}%
    }%
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
\NewDocumentCommand\@ChangedAt@CreateEntry{>{\SplitArgument{4}{!}}m}{%
  \@ChangedAt@@CreateEntry#1%
}
\newcommand*\@ChangedAt@@CreateEntry[5]{%
  % !!! Debug
%  \IfValueT{#5}{\typeout{***************************************** #4}}
  \IfValueT{#3}{%
    \IfValueTF{#4}{%
%      \typeout{*****}%
%      \typeout{1: #1}%
%      \typeout{2: #2}%
%      \typeout{3: #3}%
%      \typeout{4: #4}%
      \@changedattrue%
      #3%
      \@changedatfalse%
      % $$$ raus wenn \PrintChangelog neu
      \in@{\Key}{#3}%
      \ifin@%
        \begingroup%
          \RenewDocumentCommand\Key{smmod()d''d||}{##2\gdef\@tempd{##3}}%
          \@changedattrue%
          #3%
          \@changedatfalse%
          \global\let\@tempa\@tempentry%
          \global\let\@tempb\@tempformat%
        \endgroup%
        \edef\@tempentry{\expandonce\@tempa:"|\expandonce\@tempd}%
        \epreto\@tempformat{\expandonce\@tempb: }%
      \fi%
      % $$$ raus ende
      % $$$ wie mit |deprecated umgehen? kann raus, besser über Replace!
      \def\@tempc{}%
      \ifstr{#4}{}{%
        \ifnum\value{deprecated}>\z@%
          \appto\@tempentry{ \changedat@deprecated}%
          \appto\@tempformat{: \changedat@deprecated}%
          \def\@tempc{|deprecated}%
        \else%
          \appto\@tempentry{ \changedat@new}%
          \appto\@tempformat{: \changedat@new}%
        \fi%
      }{%
        \appto\@tempentry{ #4}%
        \appto\@tempformat{: #4}%
      }%
      \IfValueTF{#5}{%
        \appto\@tempformat{|#5}%
      }{%
        \appto\@tempformat{\@tempc}%
      }%
      \index[changelog]{#1!#2!\@tempentry @\@tempformat}%
    }{%
      \index[changelog]{#1!#2!#3}%
    }%
  }%
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
% $$$ Soll 
% - v2.xx -> kein Eintrag
% - v2.xx:Bla -> Eintrag in Allgemein
% - v2.xx!\Macro{Blubb}:Bla -> Eintrag in Implementierung
\newlength\changedatskip
\NewDocumentCommand\ChangedAt{sO{\changedatskip}mO{Allgemein}}{%
%  \ifhmode\unskip\fi% $$$ notwendig?
%  !!! Debug: optionales Argument kann raus
%  \IfValueT{#4}{\typeout{*********************** #4}}%
  \@ChangedAt@CreateList@Debug{#3}%
% $$$ rein
%  \@ChangedAt@CreateList{#3}%
%  !!! Debug Ende
  \@ChangedAt@ProcessList{#1}{#2}%
}
\NewDocumentCommand\printchangedatlist{sO{\z@}}{%
  \@ChangedAt@ProcessList{#1}{#2}%
}
% $$$ ersetzen durch Argument in Änderungseintrag (\ReplacedBy oder so)
% $$$ Zusammenspiel mit \see und \printdeclarationlist* verbessern
\NewDocumentCommand\Replace{ommm}{\forcsvlist{\@Replace[#1]{#2}{#3}}{#4}}
\NewDocumentCommand\@Replace{r[]mmm}{%
  % $$$ Seiteneintrag in Änderungsliste nicht unterdrücken, neue Option/Befehl
  % etc. im beschriebenden Text
  \@getentryandformat\@tempentry\@tempformat{#3}%
  \def\@tempa{#2!\changedat@deprecated}
  \eappto\@tempa{!see{\expandonce\@tempformat}}%
  \toks@{\@ChangedAt@CreateList[#4]}%
  \eaddto@hook\toks@{\expandafter{\@tempa}}%
  \the\toks@%
  \IfValueT{#1}{%
    \@getentryandformat\@tempentry\@tempformat{#3}%
    \let\@tempa\@tempformat%
    \@getentryandformat\@tempentry\@tempformat{#4}%
    \eappto\@tempformat{|see{\expandonce\@tempa}}%
    \@getsublabel\@templabel{#4}%
% $$$ Ursache für \vskip-\lastskip, evtl hier zurücksetzen
    \index[\@templabel]{\@tempentry @\@tempformat}%
  }%
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
  \def\@tempa##1{%
    \@tempb%
    \@getlabel\@templabel{\@subdeclare:\Package{##1}}%
    \manualhyperdef{\@templabel}%
    \Package{##1}<#2>'url'|!|%
    \def\@tempb{, }%
  }%
  \itempackages[{%
    \IfValueT{#1}{%
      \let\@tempb\relax%
      \forcsvlist{\@tempa}{#1}%
      \IfValueT{#3}{%
        \@getlabel\@templabel{\@subdeclare:\Package{#3}}%
        \quad(\manualhyperdef{\@templabel}\Package{#3}'none'|!|)%
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
      \indexprologue[\@printindexskip]{\manualhyperdef*{idx:main}}%
    \else%
      \indexprologue{%
        \manualhyperdef*{idx:main}%
        \@printindexprologue%
      }%
    \fi%
    \printindex\@printindexskip%
    \let\@printindexprologue\@empty%
  }{%
    \indexprologue[\@printindexskip]{\manualhyperdef*{idx:#1}}%
    \printindex[#1]\@printindexskip%
  }%
}
\newcommand*\PrintChangelog{%
  % §§§ \item als subsection und \let\subitem\item etc.
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
% $$$ evtl. \seelink um fehlende cross-ref-class zu vermeiden
% $$$ notwendige Argument prüfen
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
\newlength\tempdim
\newcommand*\Attention[1]{\marginnote{\fbox{Achtung!}}\emph{#1}}
\newcommand*\hrfn[2]{\href{#1}{#2}\footnote{\scalebox{0.97}{\url{#1}}}}
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
\newcommand*\tud@trace@lbl@missing[1]{}
\NewDocumentCommand\tracinglabels{sO{missing}}{%
  \RequirePackage{currfile}%
  \newcommand*\list@lbl@created{}%
  \newcommand*\list@lbl@missing{}%
  \newcommand*\lbl@typeout[1]{\typeout{##1}}%
  \@tempswafalse%
  \ifstr{#2}{created}{\@tempswatrue}{}%
  \ifstr{#2}{all}{\@tempswatrue}{}%
  \if@tempswa%
    \renewcommand*\tud@trace@lbl@created[1]{%
      \typeout{%
        +++++ label created: ##1^^J\space\space\space\space\space\space%
        in \currfilename\space on line \the\inputlineno%
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
    \renewcommand*\tud@trace@lbl@missing[1]{%
      \typeout{%
        +++++ label missing: ##1^^J\space\space\space\space\space\space%
        in \currfilename\space on line \the\inputlineno%
      }%
      \xifinlist{##1}{\list@lbl@missing}{}{\listxadd\list@lbl@missing{##1}}%
    }%
    \IfBooleanF{#1}{%
      \AfterEndDocument{%
        \typeout{+++++ labels missing (sorted) +++++}%
        \sortlist\list@lbl@missing%
        \forlistloop\lbl@typeout{\list@lbl@missing}%
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
