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
  \@TUDVersion{2015/10/06 v2.05 BETA TUD-KOMA-Script}%
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
%%% From File: tudscr-misc.dtx
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\TUDClassName@Parent}}
\TUDProcessOptions\relax
\LoadClass{\TUDClassName@Parent}
%%% From File: tudscr-manual.dtx
\ifdef{\tudfinalflag}{\TUDoptions{ToDo=false}}{}%
\ifdef{\tudprintflag}{%
  \TUDoptions{color=no}%
  \PassOptionsToPackage{hidelinks}{hyperref}%
}{}%
\PassOptionsToPackage{log-declarations=false}{xparse}
\RequirePackage{xparse}[2013/12/31]
\RequirePackage{textcomp}[2005/09/27]
\RequirePackage{setspace}[2011/12/19]
\setstretch{1.1}
\RequirePackage{babel}[2014/03/24]
\AfterPackage{inputenc}{\RequirePackage{csquotes}[2011/10/22]}
\AfterPackage{hyperref}{%
  \RequirePackage[babel]{microtype}[2013/05/23]%
  \patchcmd{\pdfstringdef}{\csname HyPsd@babel@}{%
    \let\bbl@info\@gobble\csname HyPsd@babel@%
  }{}{\tud@patch@wrn{pdfstringdef}}%
}
\AtBeginDocument{%
  \@ifpackageloaded{csquotes}{}{%
    \ClassWarning%
      {tudscrman}{Package `csquotes' not loaded}%
    \providecommand\enquote[1]{\glqg#1\grqq{}}%
  }%
  \@ifpackageloaded{hyperref}{}{%
    \RequirePackage[babel]{microtype}[2013/05/23]%
    \providecommand*\hyperpage[1]{#1}%
  }%
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
\newcommand*\Email[1]{\mbox{#1}}
\newcommand*\tudhyperref[2]{#2}
\newrobustcmd*\hyperidx[2][]{\tudhyperref{#1}{#2}}
\NewDocumentCommand\tudhyperdef{sm}{}
\newcommand*\autorefname[1][]{??\xspace}
\AfterPackage{hyperref}{%
  \renewcommand*\Email[1]{\href{mailto:#1}{\nolinkurl{#1}}}%
  \renewcommand*\tudhyperref[2]{\hyperref{}{\jobname}{#1}{#2}}%
  \renewcaptionname{ngerman}{\sectionautorefname}{Unterkapitel}%
  \renewcaptionname{ngerman}{\subsectionautorefname}{Abschnitt}%
  \renewcaptionname{ngerman}{\subsubsectionautorefname}{Unterabschnitt}%
  \RenewDocumentCommand\tudhyperdef{sm}{%
    \IfBooleanTF{#1}{%
      \raisebox{4\baselineskip}[0pt][0pt]{\hyperdef{\jobname}{#2}{}}%
      \par\nobreak\vskip\dimexpr-\parskip-\baselineskip\relax%
      \@afterindentfalse\@afterheading%
    }{%
      \Hy@raisedlink{\hyperdef{\jobname}{#2}{}}\ignorespaces%
    }%
    \label{#2}%
    \tud@trace@lbl@created{#2}%
  }%
  \renewcommand*\autorefname[1][current]{%
    \ifstr{#1}{current}{%
      \expandafter\HyPsd@@autorefname\@currentHref\@nil%
    }{%
      \@autorefname\HyPsd@@autorefname{#1}%
    }%
    \unskip\xspace%
  }%
  \newcommand*\@autorefname[2]{%
    \expandafter\ifx\csname r@#2\endcsname\relax%
      ??%
    \else%
      \expandafter\expandafter\expandafter\@@autorefname%
          \csname r@#2\endcsname{}{}{}{}\@nil#1\@nil%
    \fi%
  }%
  \newcommand*\@@autorefname{}%
  \def\@@autorefname#1#2#3#4#5\@nil#6\@nil{#6#4.\@nil}%
}
\PassOptionsToPackage{xindy,splitindex}{imakeidx}
\RequirePackage{imakeidx}[2013/07/11]
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
\newcommand*\@see{}
\renewrobustcmd{\see}{\@see}
\renewrobustcmd{\seealso}{%
  \ClassWarning{tudscrman}{You should use `see' instead of `seealso'}%
  \@see%
}
\def\@see#1#2#3\relax{%
  \if\relax\detokenize{#3}\relax%
    \emph{\seename}\space#1%
  \else%
    #3, \emph{\alsoname}\space#1%
  \fi%
}
\NewDocumentCommand\seeref{sm}{%
  \emph{\IfBooleanTF{#1}{\alsoname}{\seename}}\space#2%
}
\newcommand*\seeidx[2]{\pageref{idx:#1}}
\newcommand*\tud@write@i{}
\newwrite\tud@write@i
\openout\tud@write@i=\jobname-temp.xdy
\write\tud@write@i{%
(require "texindy.xdy")^^J%
(define-location-class^^J%
\space\space "arabic-page-numbers" ("arabic-numbers") :min-range-length 1^^J%
)^^J%
(markup-range :sep "--")^^J%
(markup-locclass-list^^J%
\space\space :open "\string\,\string\dotfill\string\,"^^J%
\space\space :close "\string\relax"^^J%
)^^J%
(markup-crossref-layer-list^^J%
\space\space :class "see" ^^J%
\space\space :sep "\string\,\string\textbar\string\,"^^J%
)^^J%
(define-crossref-class "seeidx" :unverified)^^J%
(markup-crossref-list^^J%
\space\space :class "seeidx"^^J%
\space\space :open "\string\seeidx{" :sep "; " :close "}{}"^^J%
)^^J%
(define-location-class-order^^J%
\space (^^J%
\space\space "see" "seealso" "seeidx"^^J%
\space\space "roman-page-numbers" "arabic-page-numbers" "alpha-page-numbers"^^J%
\space\space "Roman-page-numbers" "Alpha-page-numbers"^^J%
\space )^^J%
)^^J%
(markup-indexentry :open "~n        \string\subsubsubitem " :depth 3)^^J%
(markup-indexentry :open "~n        \string\subsubsubsubitem " :depth 4)^^J%
(merge-rule "\@backslashchar[(.*)\@backslashchar]" "" :eregexp)^^J%
(define-attributes (("declare" "!" "important" "?" "default")))^^J%
(markup-locref^^J%
\space\space :attr "declare"^^J%
\space\space :open "\string\textbf{\string\hyperpage{"^^J%
\space\space :close "}}"^^J%
)^^J%
(markup-locref^^J%
\space\space :attr "!"^^J%
\space\space :open "\string\textbf{\string\hyperpage{"^^J%
\space\space :close "}}"^^J%
)^^J%
(markup-locref^^J%
\space\space :attr "important"^^J%
\space\space :open "\string\textsl{\string\hyperpage{"^^J%
\space\space :close "}}"^^J%
)^^J%%
(markup-locref^^J%
\space\space :attr "?"^^J%
\space\space :open "\string\textsl{\string\hyperpage{"^^J%
\space\space :close "}}"^^J%
)^^J%
(markup-locref^^J%
\space\space :attr "default"^^J%
\space\space :open "\string\hyperpage{"^^J%
\space\space :close "}"^^J%
)^^J%
}
\closeout\tud@write@i
\NewDocumentCommand\makexindyindex{somo}{%
  \let\@tempb\@empty%
  \IfBooleanT{#1}{%
    \def\@tempc{\jobname-#4-declare.idx}%
    \makeindex[name={#4-declare}]%
    \IfFileExists{\@tempc}{%
      \edef\@tempb{-o \jobname-#4.ind \@tempc}%
    }{\ClassWarning{tudscrman}{File \@tempc\space not found}}%
  }%
  \protected@edef\@tempa{%
    title={#3},%
    columnsep=\noexpand\the\columnsep,%
    \IfValueTF{#4}{%
      name={#4},%
      options={-M \jobname-temp.xdy -L german-din -t \jobname-#4.xlg \@tempb},%
    }{%
      options={-M \jobname-temp.xdy -L german-din -t \jobname.xlg},%
    }%
    \IfValueT{#2}{#2}%
  }%
  \expandafter\makeindex\expandafter[\@tempa]%
}
\makexindyindex{Allgemeiner Index}
\makexindyindex*{Klassen, Pakete und Dateien}[files]
\makexindyindex*{Klassen- und Paketoptionen}[options]
\makexindyindex*{Befehle und Umgebungen mit dazugeh\"origen Parametern}[macros]
\makexindyindex*{Sprachabh\"angige Bezeichner}[terms]
\makexindyindex*{Seitenstile, Schriftelemente und Farben}[elements]
\makexindyindex*{L\"angen und Z\"ahler}[misc]
\makexindyindex[columns=1]{\"Anderungsliste}[changelog]
\undef\makexindyindex
\RequirePackage{enumitem}[2011/09/28]
\setlist{noitemsep}
\AtEndPreamble{%
  \RequirePackage{ellipsis}[2004/9/28]%
  \let\ellipsispunctuation\relax%
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
\newrobustcmd*\suffix[1]{\begingroup~\footnotesize(#1)\endgroup}
\newif\if@declare
\newif\if@openindex
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
\NewDocumentEnvironment{Declaration}{omoog}{%
  \listadd\list@Declaration{#2}%
  \tud@declare@start[#1]{#2}{#3}{#4}{#5}%
}{%
  \tud@declare@end{#2}{\printdeclarationlist}%
}
\newif\if@obsolete
\NewDocumentEnvironment{Obsolete}{momoog}{%
  \@obsoletetrue%
  \ifstr{#1}{}{%
    \listadd\list@Declaration{%
      \def\tud@declare{1}%
      #3%
      \def\tud@declare{0}%
    }%
    \tud@declare@start{#3}{#4}{#5}{#6}%
  }{%
    \listadd\list@Declaration{#3}%
    \IfValueTF{#2}{%
      \@ChangedAt@CreateList[#2]{#1!#3}%
    }{%
      \@ChangedAt@CreateList[#3]{#1}%
    }%
    \IfValueTF{#6}{%
      \tud@declare@start{#3}{#4}{#5}{#6}%
    }{%
      \toks@{\tud@declare@start{#3}{#4}{#5}}%
      \def\@tempa{\emph{entf\"allt}}%
      \in@{:}{#1}%
      \ifin@%
        \def\@tempb##1:##2\@nnil{%
          \if\relax\detokenize{##2}\relax\else%
            \def\@tempa{\seeref{##2'page'}}%
          \fi%
        }%
        \@tempb#1\@nnil%
      \fi%
      \eaddto@hook\toks@{\expandafter{\@tempa}}%
      \the\toks@%
    }%
  }%
  \@obsoletefalse%
}{%
  \@obsoletetrue%
  \tud@declare@end{#3}{\printobsoletelist}%
  \@obsoletefalse%
}
\NewDocumentEnvironment{Declaration*}{om}{%
  \tud@declare@special@start[#1]{#2}{2}%
}{%
  \tud@declare@special@end{#2}%
}

\newcommand*\@bundle{}
\newcommand*\@bundledefault{tudscr}
\let\@bundle\@bundledefault
\newcommand*\tud@ifbundle[2]{%
  \ifstr{\@bundle}{\@bundledefault}{#2}{#1}%
}
\newenvironment{Bundle}[1]{%
  \tud@ifbundle{%
    \ClassError{tudscrman}{Nested environment `Bundle'}{%
      It is not possible to nest this environment, when\MessageBreak%
      a cross-label was given before.%
    }%
  }{%
    \gdef\@bundle{#1}%
  }%
  \ignorespaces%
}{\global\let\@bundle\@bundledefault\aftergroup\ignorespaces}
\NewDocumentEnvironment{Bundle!}{om}{%
  \tud@declare@special@start[#1]{#2}{3}%
  \Bundle{#2}%
}{%
  \endBundle%
  \tud@declare@special@end{#2}%
}
\NewDocumentCommand\tud@declare@start{ommmm}{%
  \@ChangedAt@CreateList[#2]{#1}%
  \IfValueTF{#3}{%
    \@preset@listtrue%
    \def\@tempa{Voreinstellung: \PValue{#3}}%
    \IfValueT{#4}{%
      \def\@tempb[##1:##2]{##1: \PValue{##2}}%
      \eappto\@tempa{ | \expandonce{\@tempb[#4]}}%
    }%
    \listeadd\list@Preset{\expandonce\@tempa}%
  }{%
    \listadd\list@Preset{\relax}%
  }%
  \IfValueTF{#5}{%
    \@additional@listtrue%
    \listadd\list@Additional{(#5)}%
    \in@{\Environment}{#2}%
    \ifin@\listadd\list@Additional{\tabularnewline}\fi%
  }{%
    \listadd\list@Additional{\relax}%
    \in@{\Environment}{#2}%
    \ifin@\listadd\list@Additional{\relax}\listadd\list@Additional{\relax}\fi%
  }%
}
\newcommand*\tud@declare@end[2]{%
  \ifx\list@Declaration\relax\else%
    \ClassError{tudscrman}{\string#2\space is missing}{%
      \string\list@Declaration\space is not empty. Did you forget\MessageBreak%
      to print this list with \string#2?%
    }%
  \fi%
  \vskip-\lastskip%
  \@declaretrue\@openindexfalse#1\@declarefalse%
  \pagebreak[1]%
}
\NewDocumentCommand\tud@declare@special@start{omm}{%
  \@ChangedAt@CreateList(#2){#1}%
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
  \@declaretrue\@openindexfalse#1\@declarefalse%
}
\NewDocumentCommand\printdeclarationlist{sd()}{%
  \ifx\list@Declaration\relax\else%
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
      \def\@tempa##1{\small\ignorespaces##1\tabularnewline}%
      \qquad%
      \if@preset@list%
        \begin{tabular}{@{}l@{}}%
          \forlistloop\@tempa{\list@Preset}%
        \end{tabular}%
        \hspace{\tabcolsep}%
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
      \dimexpr.5\ht\strutbox+.5\dp\strutbox-.5\ht0-.5\dp0\relax%
    }%
    \IfValueT{#2}{#2}%
    \par\nobreak%
    \vskip 1.5\baselineskipglue%
    \@afterindentfalse\@afterheading%
  \fi%
}
\newcommand*\printobsoletelist{%
  \@obsoletetrue%
  \printdeclarationlist*%
  \@obsoletefalse%
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@changedat
\newrobustcmd*\bsc{\@backslashchar}
\newcommand*\NewExpandableDocumentCommand[3]{%
  \NewDocumentCommand#1{#2}{#3}%
  \DeclareExpandableDocumentCommand#1{#2}{#3}%
}
\newcommand*\ProcessorKeyVal[1]{%
  \begingroup%
    \in@{=}{#1}%
    \ifin@%
      \def\@tempa##1=##2\@nil{\toks@{{##1}=##2=}}%
    \else%
      \def\@tempa##1\@nil{\toks@{{##1}}}%
    \fi%
    \@tempa#1\@nil%
    \edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand\ProcessedArgument{\the\toks@}%
    }%
  \tud@reserved%
}
\newcommand*\tud@keyval@error{%
  \ClassError{tudscrman}{Wrong usage of optional argument for value}{%
    There are two optional arguments for a value!%
  }%
}
\NewExpandableDocumentCommand\@Application{sm}{#2}
\NewDocumentCommand\Application{smd||}{%
  \@SetMarkupFormat{\sbsfont}%
  \@ProcessMarkup{\Application{#2}}%
  \@ProcessIndex{\Application{#2}}{#1}|#3|[Anwendungssoftware]%
}
\NewExpandableDocumentCommand\@Distribution{sm}{#2}
\NewDocumentCommand\Distribution{smod||}{%
  \@SetMarkupFormat{\sbnfont}%
  \IfValueTF{#3}{%
    \@ProcessMarkup{\Distribution{#2}}[~#3]%
  }{%
    \@ProcessMarkup{\Distribution{#2}}%
  }%
  \@ProcessIndex{\Distribution{#2}}{#1}|#4|[Distribution]%
}
\NewExpandableDocumentCommand\@File{sm}{#2}
\NewDocumentCommand\File{smd||}{%
  \@SetMarkupFormat{\sbnfont}%
  \@ProcessMarkup{\File{#2}}%
  \@ProcessIndex{\File{#2}}{#1}|#3|[Datei]%
}
\NewExpandableDocumentCommand\@Class{sm}{#2}
\NewDocumentCommand\Class{smd''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Class{#2}}[Klasse]%
  \else%
    \@SetMarkupFormat{\sbnfont}%
    \@ProcessMarkup{\Class{#2}}'#3'%
    \@ProcessIndex{\Class{#2}}{#1}|#4|[Klasse]%
  \fi%
}
\NewExpandableDocumentCommand\@Package{sm}{#2}
\NewDocumentCommand\Package{smd<>d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Package{#2}}[Paket]%
  \else%
    \@SetMarkupFormat{\sbnfont}%
    \IfValueTF{#3}{%
      \@ProcessMarkup{\Package{#2}}<#3>'#4'%
    }{%
      \@ProcessMarkup{\Package{#2}}<#2>'#4'%
    }%
    \@ProcessIndex{\Package{#2}}{#1}|#5|[Paket]%
  \fi%
}
\NewExpandableDocumentCommand\@Option{sm}{#2}
\NewDocumentCommand\Option{s>{\ProcessorKeyVal}md==d()d''d||}{%
  \Option@Value{#1}#2=#3=(#4)'#5'|#6|%
}
\NewDocumentCommand\Option@Value{mmd==d==d()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Option{#2}}=#3=(#5)[Option]%
  \else%
    \@SetMarkupFormat{\ttfamily}%
    \@ProcessMarkup{\Option{#2}}=#3=(#5)'#6'%
    \@ProcessIndex{\Option{#2}}=#3=(#5){#1}|#7|%
  \fi%
  \IfValueT{#4}{\tud@keyval@error}%
}
\NewExpandableDocumentCommand\@Environment{sm}{#2}
\NewDocumentCommand\Environment{smod()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Environment{#2}}(#4)[Umgebung]%
  \else%
    \@SetMarkupFormat{\ttfamily}(%
      \ttfamily \bsc{}begin\{#2\}\IfValueT{#3}{#3}\tabularnewline%
      \ttfamily \dots\tabularnewline%
      \ttfamily \bsc{}end\{#2\}%
    )%
    \@ProcessMarkup{\Environment{#2}}[#3](#4)'#5'%
    \@ProcessIndex{\Environment{#2}}(#4){#1}|#6|[Umgebung]%
  \fi%
}
\NewExpandableDocumentCommand\@Macro{sm}{#2}
\NewDocumentCommand\Macro{smod()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Macro{#2}}(#4)[Befehl]%
  \else%
    \@SetMarkupFormat{\ttfamily\bsc}%
    \@ProcessMarkup{\Macro{#2}}[#3](#4)'#5'%
    \@ProcessIndex{\Macro{#2}}(#4){#1}|#6|%
  \fi%
}
\NewExpandableDocumentCommand\@Key{smm}{#2!#3}
\NewDocumentCommand\Key{sm>{\ProcessorKeyVal}md==d()d''d||}{%
  \Key@Value{#1}{#2}#3=#4=(#5)'#6'|#7|%
}
\NewDocumentCommand\Key@Value{mmmd==d==d()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Key{#2}{#3}}=#4=(#6)[Parameter]%
  \else%
    \@SetMarkupFormat{\ttfamily}[Parameter]%
    \@ProcessMarkup{\Key{#2}{#3}}=#4=(#6)'#7'%
    \@ProcessIndex{\Key{#2}{#3}}=#4=(#6){#1}|#8|%
  \fi%
  \IfValueT{#5}{\tud@keyval@error}%
}
\NewExpandableDocumentCommand\@Term{sm}{#2}
\NewDocumentCommand\Term{smd()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Term{#2}}(#3)[Bezeichner]%
  \else%
    \@SetMarkupFormat{\ttfamily\bsc}[Bezeichner]%
    \@ProcessMarkup{\Term{#2}}(#3)'#4'%
    \@ProcessIndex{\Term{#2}}(#3){#1}|#5|%
  \fi%
}
\NewExpandableDocumentCommand\@PageStyle{sm}{#2}
\NewDocumentCommand\PageStyle{smd()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\PageStyle{#2}}(#3)[Seitenstil]%
  \else%
    \@SetMarkupFormat{\ttfamily}[Seitenstil]%
    \@ProcessMarkup{\PageStyle{#2}}(#3)'#4'%
    \@ProcessIndex{\PageStyle{#2}}(#3){#1}|#5|[Seitenstil]%
  \fi%
}
\NewExpandableDocumentCommand\@Font{sm}{#2}
\NewDocumentCommand\Font{smd()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Font{#2}}(#3)[Schriftelement]%
  \else%
    \@SetMarkupFormat{\ttfamily}[Schriftelement]%
    \@ProcessMarkup{\Font{#2}}(#3)'#4'%
    \@ProcessIndex{\Font{#2}}(#3){#1}|#5|[Schriftelement]%
  \fi%
}
\NewExpandableDocumentCommand\@Color{sm}{#2}
\NewDocumentCommand\Color{smoD(){\Package{tudscrcolor}}d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Color{#2}}(#4)[Farbe]%
  \else%
    \@SetMarkupFormat{\ttfamily}[Farbe](%
      \begingroup\@MarkupFormat#2\IfValueT{#3}{~(#3)}\endgroup%
    )%
    \@ProcessMarkup{\Color{#2}}[#3](#4)'#5'%
    \@ProcessIndex{\Color{#2}}(#4){#1}|#5|[Farbe]%
  \fi%
}
\NewExpandableDocumentCommand\@Length{sm}{#2}
\NewDocumentCommand\Length{smd()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Length{#2}}(#3)[L\"ange]%
  \else%
    \@SetMarkupFormat{\ttfamily\bsc}[L\"ange]%
    \@ProcessMarkup{\Length{#2}}(#3)'#4'%
    \@ProcessIndex{\Length{#2}}(#3){#1}|#5|[L\"ange]%
  \fi%
}
\NewExpandableDocumentCommand\@Counter{sm}{#2}
\NewDocumentCommand\Counter{smd()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Counter{#2}}(#3)[Z\"ahler]%
  \else%
    \@SetMarkupFormat{\ttfamily}[Z\"ahler]%
    \@ProcessMarkup{\Counter{#2}}(#3)'#4'%
    \@ProcessIndex{\Counter{#2}}(#3){#1}|#5|[Z\"ahler]%
  \fi%
}
\newrobustcmd*\Path[1]{\mbox{\texttt{#1}}}
\newrobustcmd*\PValue[1]{\mbox{\texttt{#1}}}
\newrobustcmd*\PName[1]{\PValue{\textsl{<#1>}}}
\newrobustcmd*\PValueName[1]{\PName{#1}}
\newrobustcmd*\textOR{\PValue{\,\textbardbl\,}}
\newrobustcmd*\PSet{\PName{Einstellung}}
\newrobustcmd*\PBoolean{\PName{Ein-Aus-Wert}}
\newrobustcmd*\PBName[1]{\PBoolean\textOR\PName{#1}}
\newrobustcmd*\Parameter[1]{\mbox{\texttt{\{}\PName{#1}\texttt{\}}}}
\newrobustcmd*\OParameter[1]{\mbox{\texttt{[}\PName{#1}\texttt{]}}}
\newrobustcmd*\LParameter{\mbox{\texttt{[}\PName{Parameterliste}\texttt{]}}}
\newrobustcmd*\OLParameter[1]{%
  \mbox{\texttt{[}\PName{#1}\textOR\PName{Parameterliste}\texttt{]}}%
}
\newrobustcmd*\PParameter[1]{\mbox{\texttt{\{#1\}}}}
\newrobustcmd*\POParameter[1]{\mbox{\texttt{[#1]}}}
\newcommand*\@getPValue{%
  \let\PValue\@firstofone%
  \let\PValueName\@firstofone%
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
  \let\emph\@firstofone%
}
\NewDocumentCommand\@suppressmarkup{s}{%
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
  \let\PageStyle\@PageStyle%
  \let\Font\@Font%
  \let\Color\@Color%
  \let\Length\@Length%
  \let\Counter\@Counter%
  \IfBooleanF{#1}{%
    \let\PValue\@firstofone%
    \let\PName\@firstofone%
    \let\PValueName\@firstofone%
    \let\PSet\relax%
    \let\PBoolean\relax%
    \let\PBName\@firstofone%
    \let\Parameter\@firstofone%
    \let\OParameter\@firstofone%
    \let\LParameter\relax%
    \let\OLParameter\@firstofone%
    \let\PParameter\@firstofone%
    \let\POParameter\@firstofone%
    \let\hologoRobust\@firstofone%
    \let\TUDScript\@TUDScript%
    \def\_{-}%
    \protected\def~{~}%
  }%
}
\AfterPackage{hyperref}{%
  \expandafter\pdfstringdefDisableCommands\expandafter{\@suppressmarkup}%
}
\newcommand*\@templabel{}
\newcommand*\@tempentry{}
\newcommand*\@tempformat{}
\newcommand*\@tempkey{}
\newcommand*\@tempbundle{}
\newcommand*\@templist{}
\let\@templist\relax%
\newtoks\tud@toks@
\newcommand*\eaddto@hook[2]{%
  \expandafter\addto@hook\expandafter#1\expandafter{#2}%
}
\NewDocumentCommand\@getsublabel{smm}{%
  \begingroup%
    \def\@tempa##1##2##3{%
      \def##1####1{%
        \edef\@tempb{\IfBooleanTF{#1}{##2}{##3}}%
      }%
    }%
    \@tempa\Application{\jobname}{app}%
    \@tempa\Distribution{\jobname}{dist}%
    \@tempa\File{files}{file}%
    \@tempa\Class{files}{cls}%
    \@tempa\Package{files}{pkg}%
    \@tempa\Option{options}{opt}%
    \@tempa\Environment{macros}{env}%
    \@tempa\Macro{macros}{cmd}%
    \def\Key##1##2{%
      \edef\@tempb{\IfBooleanTF{#1}{macros}{key}}%
    }%
    \@tempa\Term{terms}{term}%
    \@tempa\PageStyle{elements}{pgs}%
    \@tempa\Font{elements}{font}%
    \@tempa\Color{elements}{clr}%
    \@tempa\Length{misc}{len}%
    \@tempa\Counter{misc}{cnt}%
    #3%
    \edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand#2{\@tempb}%
    }%
  \tud@reserved%
}
\newcommand*\@suppressoutput{%
  \let\@ProcessMarkup\@GobbleMarkup%
  \renewcommand*\index[2][]{}%
}
% {#1}: Markup für Ausgabe
% =#2=: optionaler Wert für Option und Key
% [#3]: optionaler Suffix für Ausgabe
% (#4): optionale Subdeclaration
% <#5>: URL
% '#6': Querverweis
\NewDocumentCommand\@GobbleMarkup{md==od()d<>d''}{}%
\NewDocumentCommand\@ProcessMarkup{md==od()d<>d''}{%
  \if@declare%
    \@getlabel*\@templabel{\@bundle:#1}=#2=%
    \tud@toks@{\ProcessMarkup@Declare}%
  \else%
    \@getlabel\@templabel{#4:#1}=#2=%
    \tud@toks@{\ProcessMarkup@Output}%
  \fi%
  \eaddto@hook\tud@toks@{\expandafter{\@templabel}}%
  \begingroup%
    \@suppressmarkup*%
    \protected@edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand\@tempentry{#1}%
    }%
  \tud@reserved%
  \eaddto@hook\tud@toks@{\expandafter{\@tempentry}}%
  \IfValueT{#2}{\addto@hook\tud@toks@{=#2=}}%
  \IfValueT{#3}{\addto@hook\tud@toks@{[#3]}}%
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
  \IfValueT{#4}{%
    \ifstr{#4}{}{}{%
      \tud@trace@bundle{#4}%
      \tud@iflabelexists{\@templabel}{}{%
        \ClassWarning{tudscrman}{No existing label \@templabel\space for #4}%
      }%
    }%
  }%
}
% {#1}: Label
% {#2}: Hauptargument
% =#3=: optionaler Wert für Option und Key
% [#4]: optionaler Suffix Ausgabe
\NewDocumentCommand\ProcessMarkup@Declare{mmd==o}{%
  \@CheckMarkupFormat%
  \ifcase\tud@declare%
    \tudhyperdef{#1}%
    \@MarkupOutput{#2}=#3=[#4]%
  \or%
    \@MarkupOutput{#2}=#3=[#4]%
  \or%
    \tudhyperdef{#1}%
  \or%
    \tudhyperdef*{#1}%
  \fi%
  \@ClearMarkupFormat%
}
% {#1}: Label
% {#2}: Hauptargument
% =#3=: optionaler Wert für Option und Key
% [#4]: optionaler Suffix Ausgabe
% <#5>: URL
% '#6': Querverweis
\NewDocumentCommand\ProcessMarkup@Output{mmd==od<>d''}{%
  \@CheckMarkupFormat%
  \begingroup%
    \def\@tempc{\@MarkupOutput{#2}=#3=[#4]}%
    \tud@iflabelexists{#1}{%
      \def\@tempa{\hyperref{}{\jobname}{#1}{\@tempc}}%
      \let\@tempb\relax%
      \IfValueT{#6}{%
        \def\@tempb{%
          \ClassWarning{tudscrman}{%
            You've used the unknown cross-reference\MessageBreak%
            shorthand '#6'. Only 'auto', 'page' and 'full'\MessageBreak%
            as well as 'none' \IfValueT{#5}{or 'url' }are valid%
          }%
        }%
        \ifstr{#6}{auto}{\def\@tempb{ in \autoref{#1}}}{%
        \ifstr{#6}{page}{\def\@tempb{ \vpageref{#1}}}{%
        \ifstr{#6}{ppage}{\def\@tempb{ \reftextfaraway{#1}}}{%
        \ifstr{#6}{full}{\def\@tempb{ in \fullref{#1}}}{%
        \ifstr{#6}{none}{\let\@tempa\@tempc\let\@tempb\relax}{}}}}}%
        \IfValueT{#5}{%
          \ifstr{#6}{url}{\def\@tempa{\href{#5}{\@tempc}}\let\@tempb\relax}{}%
        }%
      }%
    }{%
      \let\@tempa\@tempc%
      \IfValueT{#5}{\def\@tempa{\href{#5}{\@tempc}}}%
      \let\@tempb\relax%
      \IfValueT{#6}{%
        \ifstr{#6}{none}{}{%
          \def\@tempb{%
            \ClassWarning{tudscrman}{%
              Label #1\MessageBreak%
              is missing, no cross-reference created.%
            }%
          }%
        }%
      }%
      \tud@trace@lbl@missing{#1}%
    }%
    \ifdin{\@tempc}{\@tempa\@tempb}%
  \endgroup%
  \@ClearMarkupFormat%
}
% {#1}: Markup für Index
% =#2=: optionaler Wert für Option und Key für subentry
% (#3): optionale Subdeclaration
% {#4}: Stern?
% |#5|: optionale Indexformatierung
% [#6]: optionaler Suffix in der Index-Ausgabe
\NewDocumentCommand\@ProcessIndex{md==d()md||o}{%
  \ifboolexpr{%
    bool {@tud@index} or bool {@obsolete}%
  }{}{%
    \IfBooleanTF{#4}{%
      \IfValueT{#5}{%
        \ClassWarning{tudscrman}{%
          You've used the starred version. No index entry\MessageBreak%
          for #1 is created. The\MessageBreak%
          optional argument |#5| is ignored%
        }%
      }%
    }{%
      \@@ProcessIndex{#1}=#2=(#3)|#5|[#6]%
    }%
  }%
}
% {#1}: Markup für Index
% =#2=: optionaler Wert für Option und Key für subentry
% (#3): optionale Subdeclaration
% |#4|: optionale Indexformatierung
% [#5]: optionaler Suffix in der Index-Ausgabe
\NewDocumentCommand\@@ProcessIndex{mr==r()r||r[]}{%
  \@getindex\@tempentry\@tempformat\@tempkey{#1}=#2=(#3)[#5]%
  \@getsublabel*\@templabel{#1}%
  \if@declare%
    \if@openindex%
      \IfValueT{#4}{%
        \ClassWarning{tudscrman}{%
          It is not possible to use any indexing format\MessageBreak%
          like |#4| within the arguments of the\MessageBreak%
          environments `Declaration' or `Declaration*'%
        }%
      }%
      \index[\@templabel-declare]{\@tempkey\@tempentry @\@tempformat|(declare}%
    \else%
      \index[\@templabel-declare]{\@tempkey\@tempentry|declare)}%
    \fi%
  \else%
    \IfValueT{#2}{%
      \begingroup%
        \@getPValue%
        \ifstr{#2}{}{%
          \def\tud@reserved{\endgroup}%
        }{%
          \def\@tempa{%
            \@getindex*\@tempentry\@tempformat\@tempkey{#1}=#2=(#3)[#5]%
          }%
          \protected@edef\tud@reserved{%
            \noexpand\endgroup%
            \expandonce\@tempa%
            \def\noexpand\@tempentry{\@tempentry!\@tempentry=#2}%
          }%
        }%
      \tud@reserved%
    }%
    \IfValueT{#4}{%
      \ifstr{#4}{declare}{%
        \appto\@templabel{-declare}%
        \appto\@tempformat{|declare}%
      }{%
        \appto\@tempformat{|#4}%
      }%
    }%
    \index[\@templabel]{\@tempkey\@tempentry @\@tempformat}%
  \fi%
}
% {#1}: Markup für Änderungsliste
% =#2=: optionaler Wert für Option und Key für Änderungsliste
% (#3): optionale Subdeclaration
% [#4]: optionaler Suffix in der Änderungsliste
\NewDocumentCommand\@ProcessChangedAt{md==d()o}{%
  \@getindex*\@tempentry\@tempformat\@tempkey{#1}=#2=(#3)[#4]%
    !Parameter angepasst!%
  \IfValueT{#2}{%
    \begingroup%
      \@getPValue%
      \ifstr{#2}{}{%
        \def\tud@reserved{\endgroup}%
      }{%
        \protected@edef\tud@reserved{%
          \noexpand\endgroup%
          \def\noexpand\@tempentry{\@tempentry=#2}%
        }%
      }%
    \tud@reserved%
  }%
}
\newcommand*\tud@label{%
  \let\IeC\@firstofone%
  \def~{-}%
  \def\"##1{##1e}%
  \def\ss{ss}%
}
% Verwendung dokumentieren!
\NewDocumentCommand\@Label{m}{\@@Label#1}
\NewDocumentCommand\@@Label{mmm}{%
  \begingroup%
    \@suppressmarkup%
    \tud@label%
    \IfValueTF{#3}{%
      \IfValueTF{#1}{%
        \edef\@tempa{#1:#2:#3}%
      }{%
        \edef\@tempa{\@bundle:#2:#3}%
      }%
    }{%
      \IfValueTF{#2}{%
        \@getsublabel\@tempb{#2}%
        \IfValueTF{#1}{%
          \edef\@tempa{#1:\@tempb:#2}%
        }{%
          \edef\@tempa{\@bundle:\@tempb:#2}%
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
  \tud@lowerstring{\ProcessedArgument}{\ProcessedArgument}%
}
\NewDocumentCommand\@@@Label{mmd==}{%
  \def#1{#2}%
  \IfValueT{#3}{%
    \begingroup%
      \@getPValue%
      \tud@label%
      \ifstr{#3}{}{%
        \def\tud@reserved{\endgroup}%
      }{%
        \protected@edef\tud@reserved{%
          \noexpand\endgroup%
          \lowercase{\appto\noexpand#1{=#3}}%
        }%
      }%
    \tud@reserved%
  }%
}
% Verwendung dokumentieren!
\NewDocumentCommand\tud@iflabelexists{>{\@Label}>{\SplitArgument{2}{:}}md==}{%
  \@@@Label\tud@reserved{#1}=#2=%
  \ifcsdef{r@\tud@reserved}{%
    \expandafter\@firstoftwo%
  }{%
    \@@@Label\tud@reserved{#1}%
    \ifcsdef{r@\tud@reserved}{%
      \expandafter\@firstoftwo%
    }{%
     \expandafter\@secondoftwo%
    }%
  }%
}
% Verwendung dokumentieren!
\NewDocumentCommand\@getlabel{sm>{\@Label}>{\SplitArgument{2}{:}}md==}{%
  \@@@Label#2{#3}=#4=%
  \IfBooleanF{#1}{%
    \tud@iflabelexists{#2}{}{%
      \@@@Label\tud@reserved{#3}%
      \tud@iflabelexists{\tud@reserved}{%
        \IfValueT{#4}{\typeout{::::: Label \tud@reserved=#4}}%
        \let#2\tud@reserved%
      }{%
        \tud@ifbundle{\@@getlabel#2{#3}=#4=}{}%
      }%
    }%
  }%
}
\NewDocumentCommand\@@getlabel{m>{\SplitArgument{2}{:}}mr==}{%
  \@@@getlabel{#1}#2=#3=%
}
\NewDocumentCommand\@@@getlabel{mmmmr==}{%
  \edef\tud@reserved{\expandafter\detokenize\expandafter{\@bundledefault}}%
  \ifstr{\tud@reserved}{#2}{}{%
    \toks@{\@getlabel#1}%
    \eaddto@hook\toks@{\expandafter{\@bundledefault:#3:#4}}%
    \IfValueT{#5}{\addto@hook\toks@{=#5=}}%
    \the\toks@%
  }%
}
\NewDocumentCommand\@getindex{smmmmd==r()r[]d!!}{%
  \let\@tempbundle\@bundledefault%
  \IfValueTF{#7}{%
    \def\@tempbundle{#7}%
  }{%
    \tud@ifbundle{%
      \tud@iflabelexists{\@bundle:#5}=#6={%
        \edef\@tempbundle{\expandonce\@bundle}%
      }{}%
    }{}%
  }%
  \begingroup%
    \in@{\Key}{#5}%
    \ifin@%
      \@suppressoutput%
      \let\Key\@firstoftwo%
      #5%
      \def#4{%
        \expandonce#2\IfValueT{#9}{: #9}@%
        \expandonce#3\IfValueT{#9}{: #9}!%
      }%
      \let\Key\@secondoftwo%
    \else%
      \@suppressmarkup%
      \let#4\@empty%
    \fi%
    \edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand#2{#5}%
      \def\noexpand#4{#4}%
    }%
  \tud@reserved%
  \tud@replace#2{@}{"@}%
  \def#3{#5}%
  \IfValueT{#6}{\appto#3{=\protecting{#6}=}}%
  \ifx\@tempbundle\@bundledefault\else%
    \appto#3{(\@tempbundle)}%
  \fi%
  \IfValueT{#8}{%
    \appto#2{ #8}%
    \appto#3{\suffix{#8}}%
  }%
  \@tempswatrue%
  \ifx\@tempbundle\@bundledefault\@tempswafalse\fi%
  \in@{\Key}{#5}\ifin@\@tempswafalse\fi%
  \IfBooleanT{#1}{\@tempswafalse}%
  \if@tempswa%
    \appto#3{\suffix{\@tempbundle}}%
  \fi%
}
\newcommand*\tud@replace[3]{%
  \begingroup%
    % Ergebnis: \def\@tempa##1@##2\@nnil{\@tempb{##1}{##2}}%
    \toks@{\def\@tempa##1}%
    \eaddto@hook\toks@{\detokenize{#2}}%
    \addto@hook\toks@{##2\@nnil{\@tempb{##1}{##2}}}%
    \the\toks@%
    \def\@tempb##1##2{%
      \if\relax\detokenize{##2}\relax%
        \appto#1{##1}%
        \let\@tempc\relax%
      \else%
        \appto#1{##1#3}%
        \def\@tempc{\@tempa##2\@nnil}%
      \fi%
      \@tempc%
    }%
    % Ergebnis: \@tempa #1@\@nnil%
    \toks@{\@tempa}%
    \edef\@tempc{\expandafter\detokenize\expandafter{#1}}%
    \eaddto@hook\toks@{\@tempc}%
    \eaddto@hook\toks@{\detokenize{#2}\@nnil}%
    \def#1{}%
    \the\toks@%
    \edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand#1{#1}%
    }%
  \tud@reserved%
}
\newcommand*\@MarkupFormat{}
\newcommand*\@MarkupDeclare{}
\newcommand*\@MarkupSuffix{}
\NewDocumentCommand\@MarkupOutput{>{\SplitArgument{1}{!}}md==o}{%
  \@@MarkupOutput#1=#2=[#3]%
}
\NewDocumentCommand\@@MarkupOutput{mmd==o}{%
  \if@declare%
    \tud@toks@{\@MarkupDeclare}%
  \else%
    \tud@toks@{\@MarkupInline}%
  \fi%
  \IfValueTF{#2}{%
    \def\@tempa{#2}%
  }{%
    \def\@tempa{#1}%
  }%
  \IfValueT{#3}{\appto\@tempa{=#3}}%
  \IfValueT{#4}{\appto\@tempa{#4}}%
  \eaddto@hook\tud@toks@{\expandafter{\@tempa}}%
  \the\tud@toks@%
}
\newcommand*\@MarkupInline[1]{\mbox{\@MarkupFormat#1}}
\newcommand*\@MarkupDeclare@Default[1]{%
  \begingroup\@MarkupFormat#1\endgroup\@MarkupSuffix%
}
\NewDocumentCommand\@SetMarkupFormat{mod()}{%
  \def\@MarkupFormat{\ifdin{}{#1}}%
  \IfValueT{#2}{\def\@MarkupSuffix{\suffix{#2}}}%
  \IfValueT{#3}{\renewcommand*\@MarkupDeclare[1]{#3\@MarkupSuffix}}%
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
\DeclareListParser*{\forssvlist}{;}%
\NewDocumentCommand\@ChangedAt@CreateList{od()m}{%
  \IfValueT{#3}{\forssvlist{\@ChangedAt@@CreateList[#1](#2)}{#3}}%
}
\NewDocumentCommand\@ChangedAt@@CreateList{r[]r()>{\SplitArgument{1}{:}}m}{%
  \@ChangedAt@@@CreateList[#1](#2)#3%
}
\NewDocumentCommand\@ChangedAt@@@CreateList{r[]r()>{\SplitArgument{1}{!}}mm}{%
  \@ChangedAt@@@@CreateList[#1](#2)#3{#4}%
}
% §§§ optionale Argumente bei \Option etc. beachten (cd=alternative)
% §§§ Markup ändern
\NewDocumentCommand\@ChangedAt@@@@CreateList{r[]r()mmm}{%
  \begingroup%
    \def\@tempb##1{%
      \@changedattrue%
      ##1%
      \@changedatfalse%
      \let\@tempa\@tempformat%
    }%
    \let\@tempa\@empty%
    \tud@ifbundle{%
      \@tempb{\@bundle}%
    }{%
      \IfValueT{#2}{\@tempb{#2}}%
    }%
    \protected@edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand\@tempa{\@tempa}%
    }%
  \tud@reserved%
  \IfValueTF{#1}{%
    \toks@{#3!Implementierung }%
    \eaddto@hook\toks@{\@tempa}%
    \addto@hook\toks@{!#1!}%
    \IfValueT{#4}{\addto@hook\toks@{#4}}%
    \addto@hook\toks@{!}%
    \if@obsolete\else%
      \IfValueT{#5}{\addto@hook\toks@{#5}}%
    \fi%
  }{%
    \toks@{#3!Allgemein }%
    \IfValueTF{#2}{%
      \addto@hook\toks@{!}%
      \eaddto@hook\toks@{\@tempa:\space}%
      \IfValueTF{#5}{%
        \addto@hook\toks@{#5}%
      }{%
        \addto@hook\toks@{\emph{neu}}%
      }%
    }{%
      \eaddto@hook\toks@{\@tempa}%
      \addto@hook\toks@{!}%
      \addto@hook\toks@{#5}%
    }%
    \IfValueT{#4}{%
      \ClassError{tudscrman}{Using !#4 isn't allowed for a change notice}{%
        At least, it has to be implemented!%
      }%
    }%
  }%
  \listeadd{\list@ChangedAt}{\the\toks@}%
}
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
          \ignorespaces%
          \tudhyperref{idx:changelog:####1}{####1}%
          \tabularnewline%
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
  \IfValueT{#3}{%
    \IfValueTF{#4}{%
      % \@ProcessChangedAt wird durch Markup aufgerufen
      \@changedattrue%
      #3%
      \@changedatfalse%
      \ifstr{#4}{}{}{%
        \eappto\@tempkey{%
          \expandonce\@tempentry: Werte angepasst@%
          \expandonce\@tempformat: Werte angepasst!%
        }%
        \begingroup
          \@changedattrue%
          #4%
          \@changedatfalse%
          \let\suffix\@gobble%
          \protected@edef\tud@reserved{%
            \noexpand\endgroup%
            \def\noexpand\@tempentry{\@tempentry}%
            \def\noexpand\@tempformat{\@tempformat}%
          }%
        \tud@reserved%
      }%
      \ifstr{#5}{}{%
        \if@obsolete%
          \appto\@tempformat{: \emph{entf\"allt}}%
        \else%
          \appto\@tempformat{: \emph{neu}}%
        \fi%
      }{%
        \appto\@tempentry{ #5}%
        \appto\@tempformat{: #5}%
      }%
      \index[changelog]{#1!#2!\@tempkey\@tempentry @\@tempformat}%
    }{%
      \index[changelog]{#1!#2!#3}%
    }%
  }%
  \ifinlist{#1}{\@templist}{}{\listadd\@templist{#1}}%
}
\newlength\changedatskip
\NewDocumentCommand\ChangedAt{somO{\changedatskip}}{%
  \IfValueTF{#2}{%
    \@ChangedAt@CreateList[#2]{#3}%
  }{%
    \@ChangedAt@CreateList{#3}%
  }%
  \@ChangedAt@ProcessList{#1}{#4}%
}
\NewDocumentCommand\printchangedatlist{sO{\z@}}{%
  \@ChangedAt@ProcessList{#1}{#2}%
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
\newcommand*\stditem{}
\newcommand*\before@item[1]{%
  \ifdefvoid{\stditem}{%
    \let\stditem\item%
    \letcs\item{tud@item@#1}%
    \setlength\changedatskip{-\baselineskip}%
  }{}%
}
\newcommand*\tud@values{}
\NewDocumentEnvironment{values}{go}{%
  \def\tud@values{#1}%
  \IfValueF{#1}{%
    \let\tud@values\@empty%
    \ClassWarning{tudscrman}{argument for values is missing}%
  }%
  \@values%
}{%
  \end@values%
}
\newlist{@values}{description}{1}
\setlist[@values]{%
  topsep=.5\baselineskipglue,labelwidth=\columnwidth,labelsep=0pt,%
  font=\normalfont\ttfamily,before=\before@item{values}%
}
\DeclareListParser*{\forslashlist}{/}%
\NewDocumentCommand\tud@item@values{sood()}{%
  \let\@tempa\@empty%
  \IfValueT{#2}{%
    \def\@tempa##1{%
      \if@tempswa%
        \appto\@tempc{/##1}%
      \else%
        \@tempswatrue%
        \def\@tempb{##1}%
        \let\@tempc\@empty%
      \fi%
    }%
    \@tempswafalse%
    \forslashlist{\@tempa}{#2}%
    \@getlabel*\@templabel{\@bundle:\tud@values}=\@tempb=%
    \protected@edef\@tempb{%
      =\IfBooleanTF{#1}{\noexpand\emph}{\@firstofone}{\@tempb}='none'|declare|%
    }%
    \edef\@tempc{%
      \noexpand\normalfont%
      \IfBooleanTF{#1}{\noexpand\emph}{\@firstofone}{%
        \noexpand\PValue{\@tempc}\noexpand\normalfont%
      }%
    }%
    \IfBooleanTF{#1}{%
      \appto\@tempc{\suffix{S\"aumniswert}}%
    }{%
      \IfValueT{#3}{\appto\@tempc{\suffix{S\"aumniswert f\"ur #3}}}%
    }%
    \IfValueT{#4}{\appto\@tempc{\suffix{#4}}}%
  }%
  \stditem[\tudhyperdef{\@templabel}\expandafter\tud@values\@tempb\@tempc]%
}
\NewDocumentCommand\itemfalse{sood()}{\item@bool{#1}{false/off/no}[#2][#3](#4)}
\NewDocumentCommand\itemtrue{sood()}{\item@bool{#1}{true/on/yes}[#2][#3](#4)}
\NewDocumentCommand\item@bool{mmr[]r[]r()}{%
  \toks@{\item}%
  \IfBooleanT{#1}{\addto@hook\toks@{*}}%
  \protected@edef\@tempa{#2\IfValueT{#3}{/#3}}%
  \eaddto@hook\toks@{\expandafter[\@tempa]}%
  \IfValueT{#4}{\addto@hook\toks@{[#4]}}%
  \IfValueT{#5}{\addto@hook\toks@{(#5)}}%
  \the\toks@%
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
  parsep=\parskip,listparindent=\parindent,before=\before@item{packages}%
}
\NewDocumentCommand\tud@item@packages{od<>d()}{%
  \def\@tempa##1{%
    \@tempb%
    \@getlabel\@templabel{\@bundle:\Package{##1}}%
    \tudhyperdef{\@templabel}%
    \begingroup%
      \Package{##1}<#2>'url'|!|%
    \endgroup%
    \def\@tempb{, }%
  }%
  \stditem[{%
    \IfValueT{#1}{%
      \let\@tempb\relax%
      \forcsvlist{\@tempa}{#1}%
      \IfValueT{#3}{%
        \@getlabel\@templabel{\@bundle:\Package{#3}}%
        \quad(\tudhyperdef{\@templabel}\Package{#3}'none'|!|)%
      }%
    }%
  }]%
}
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
    \index[files]{\hypertut{#2}{\suffix{Tutorial}}\IfValueT{#3}{|#3}}%
  }%
}
\newcommand*\IncludeExample[1]{%
  \lstinputlisting[style=tudscr]{examples/#1}%
  \ifnum\pdfshellescape=\@ne\relax%
    \filemodCmp{examples/#1.pdf}{examples/#1.tex}{}{%
      \immediate\write18{%
        pdflatex -output-directory examples examples/#1.tex^^J%
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
        \def\@tempa{\@ifnextchar v{\@tempb}{\@tempb v}}%
        \def\@tempb v##1\@nnil{\def\@tempc{##1}}%
        \@tempa #4\@nnil%
        \ifcsdef{tud@v@\@tempc}{}{\appto\@ToDo{,nxt}}%
        \vskip.8ex%
        \IfValueT{#4}{%
          \settowidth\marginparwidth{#4}%
          \addtolength\marginparwidth{\dimexpr1.6ex+1pt\relax}%
          \let\par\relax\noindent%
          \edef\@tempa{\noexpand\todo[\@ToDo,noline,nolist]}%
          \@tempa{#4\unskip}%
        }%
        \edef\@tempa{\noexpand\todo[\@ToDo,inline]}%
        \@tempa{#3\unskip}%
      \fi%
    \endgroup%
    \par\noindent%
  }{}%
  \ignorespaces%
}
\newcommand*\ListOfToDo{\if@tud@todo\listoftodos\fi}
\reversemarginpar
\NewDocumentCommand\CrossIndex{smom}{%
  \def\@tempa##1##2##3{%
    \index{%
      \IfBooleanTF{#1}{##3@##3}{##3!"|@}%
      \,\textrightarrow\,%
      \tudhyperref{idx:##1}{\IfValueTF{##2}{##2}{Index der ##3}}|seeidx{##1}%
    }%
  }%
  \forcsvlist{\@tempa{#2}{#3}}{#4}%
}
\newcommand*\SeeRef[2]{%
  \begingroup%
    \@suppressoutput%
    \@nameuse{#1}{#2}%
    \protected@edef\tud@reserved{%
      \noexpand\endgroup%
      \noexpand\index{#1!\@nameuse{#1}{#2}|see{\@tempformat}}%
    }%
  \tud@reserved%
}
\newcommand*\tud@indexprologue{}
\newcommand*\PrintIndex{%
  \begingroup%
    \renewcommand\tud@indexprologue{%
      Die aufgelisteten Schlagworte sollen sowohl Antworten bei generellen 
      Fragen als auch L\"osungen f\"ur typische Probleme beim Umgang mit 
      \hologo{LaTeXe} sowie dem \TUDScript-Bundle liefern. Falls ein gesuchter 
      Begriff hier nicht auftaucht, sollte das \Forum erster Anlaufpunkt sein, 
      um Fragen bei der Nutzung von \TUDScript zu beantworten.
    }%
    \@printindex%
    \clearpage%
    \renewcommand\tud@indexprologue{%
      Dies ist der Index allre im Handbuch erl\"auterten sowie erw\"ahnten 
      Optionen, wobei bei den meisten auch Untereintr\"age mit Seitenangeben 
      f\"ur spezielle Wertzuweisungen existieren.
    }%
    \@printindex[options]%
    \renewcommand\tud@indexprologue{%
      Hier werden alle im Handbuch erl\"auterten sowie erw\"ahnten Befehle und 
      Umgebungen aufgelistet, wobei bei einigen auch Untereintr\"age f\"ur 
      Schl\"ussel-Wert-Parameter existieren, die im optionalen Argument der 
      jeweiligen Anweisung verwendet werden k\"onnen. Bei einigen Parametern 
      gibt es zus\"atzlich eine weitere Unterebene, in der Seitenverweise zu 
      expliziten Wertzuweisungen an diese Parameter gegeben werden.
    }%
    \@printindex[macros]%
    \renewcommand\tud@indexprologue{%
      Dies sind alle von \TUDScript definierten, sprachabh\"angigen Bezeichner. 
      Informationen zur Verwendung sowie den Anpassungsm\"oglichkeiten sind in 
      \autoref{sec:localization} zu finden. 
    }%
    \@printindex[terms]%
    \@printindex[elements]%
    \@printindex[misc]%
    \@printindex[files]%
  \endgroup%
}
\newcommand*\@printindexskip{%
  \ifnum\imki@columns>\@ne\relax\vspace{-\multicolsep}\fi%
}
\newif\if@tud@index
\newcommand*\@printindex[1][]{%
  \pagebreak[3]%
  \@tud@indextrue%
  \ifx\tud@indexprologue\@empty%
    \indexprologue[\@printindexskip]{%
      \ifblank{#1}{\tudhyperdef*{idx:main}}{\tudhyperdef*{idx:#1}}%
    }%
  \else%
    \indexprologue{%
      \ifblank{#1}{\tudhyperdef*{idx:main}}{\tudhyperdef*{idx:#1}}%
      \begingroup%
        \let\footnote\@gobble%
        \tud@indexprologue%
      \endgroup%
    }%
  \fi%
  \ifblank{#1}{\printindex}{\printindex[#1]}%
  \@printindexskip%
  \let\tud@indexprologue\@empty%
}
\newcommand*\PrintChangelog{%
  \begingroup%
    \def\lettergroup##1{}%
    \def\subsubsubitem{\@idxitem\hspace*{45\p@}}%
    \apptocmd{\theindex}{%
      \let\subsubsubsubitem\subsubsubitem
      \let\subsubsubitem\subsubitem%
      \let\subsubitem\subitem%
      \let\subitem\item%
      \renewcommand*\item{%
        % ///
        \clearpage%
        % \\\
        \begingroup%
          \escapechar=`\\%
          \catcode\endlinechar=\active%
          \csname\string\item\endcsname%
      }%
      \begingroup%
      \escapechar=`\\%
      \lccode`\~=\endlinechar%
      \lowercase{%
        \expandafter\endgroup%
        \expandafter\def\csname\string\item\endcsname##1~%
      }{%
        \endgroup%
        \subsection*{\TUDScript \NoCaseChange{##1}}%
        \tudhyperdef{idx:changelog:##1}%
        \addsubsectiontocentry{}{##1}%
      }%
    }{}{\tud@patch@wrn{theindex}}%
    \@printindex[changelog]%
  \endgroup%
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
\newcommand*\TUDCD{\CD der \TnUD}%
\newcommand*\TUDCDs{\CDs der \TnUD}%
\newrobustcmd*\DDC{%
  \mbox{%
    D\kern.05em R\kern.05em E\kern.05em S\kern.05em %
    D\kern.05em E\kern.05em N\kern.1em-\kern.1em concept%
  }\xspace%
}
\AfterPackage{babel}{%
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
\newcommand*\Attention[1]{\marginnote{\fbox{Achtung!}}\emph{#1\unskip}}
\newcommand*\hrfn[2]{%
  \href{#1}{\trim@spaces{#2}}\footnote{\strut\scalebox{0.95}{\url{#1}}}%
}
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
  F\"ur die Klasse \Class{tudscrartcl} ist diese Option nicht verf\"ugbar.%
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
  \newcommand*\list@lbl@created{}%
  \newcommand*\list@lbl@missing{}%
  \newcommand*\lbl@typeout[1]{\typeout{##1}}%
  \@tempswafalse%
  \ifstr{#2}{created}{\@tempswatrue}{}%
  \ifstr{#2}{all}{\@tempswatrue}{}%
  \if@tempswa%
    \renewcommand*\tud@trace@lbl@created[1]{%
      \typeout{%
        +++++ label created: ##1 on page \thepage%
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
        +++++ label missing: ##1 on page \thepage%
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
}
\@onlypreamble\tracinglabels
\newcommand*\tud@trace@markup[2][]{#2}
\newcommand*\tracingmarkup{%
  \renewcommand*\tud@trace@markup[2][]{%
    \typeout{+++++ markup ##1 on page \thepage^^J##2}##2%
  }%
}
\@onlypreamble\tracingmarkup
\newcommand*\tud@trace@bundle[1]{}
\newcommand*\@bundlelist{}
\newcommand*\tracingbundle{%
  \renewcommand*\tud@trace@bundle[1]{%
    \begingroup%
      \def\Class####1{class:####1}%
      \def\Package####1{package:####1}%
      \xifinlist{##1}{\@bundlelist}{}{\listxadd\@bundlelist{##1}}%
    \endgroup%
  }%
  \AfterEndDocument{%
    \typeout{+++++ bundlelist +++++}%
    \def\@tempa##1{\typeout{##1}}%
    \forlistloop\@tempa{\@bundlelist}%
  }%
}
\@onlypreamble\tracingbundle
\newcounter{typeoutargs}
\newcommand*\typeoutargs[2][:::::]{%
  \begingroup%
    \setcounter{typeoutargs}{0}%
    \typeout{^^J#1}%
    \def\@tempa##1{%
      \stepcounter{typeoutargs}%
      \toks@{##1}%
      \typeout{\the\value{typeoutargs}: \the\toks@}%
    }%
    \forcsvlist{\@tempa}{#2}%
  \endgroup%
}
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
\AfterPackage{hyperref}{%
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
