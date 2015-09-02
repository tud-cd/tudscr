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

% §§§ \tud@trace@label@created \tud@trace@label@missing
% §§§ überarbeiten \@IndexFormat
\newcommand*\tud@trace@label[1]{}
\newcommand*\tracinglabels{%
  \RequirePackage{currfile}%
  \newcommand*\@missinglabellist{}%
  \renewcommand*\tud@trace@label[1]{%
    \expandafter\IfBooleanF\expandafter{\@IndexFormat}{%
      \typeout{%
        +++++ label ##1 is missing^^J%
        +++++ in \currfilename\space on line \the\inputlineno%
      }%
      \xifinlist{##1}{\@missinglabellist}{}{\listxadd\@missinglabellist{##1}}%
    }%
  }%
  \AfterEndDocument{%
    \sortlist{\@missinglabellist}%
    \typeout{+++++ missing labels sorted +++++}%
    \def\@tempa##1{\typeout{##1}}%
    \forlistloop\@tempa{\@missinglabellist}%
  }%
}\@onlypreamble\tracinglabels
\newcommand*\tud@trace@markup[2][]{#2}
\newcommand*\tracingmarkup{%
  \renewcommand*\tud@trace@markup[2][]{%
    \typeout{+++++ markup ##1 on page \thepage^^J##2}##2%
  }%
}
\@onlypreamble\tracingmarkup
% §§§ implementieren
%\newcommand*\tud@trace@index[1]{#1}
%\newcommand*\tracingindex{%
%  \renewcommand*\tud@trace@index[1]{\typeout{+++++ index:^^J##1^^J}##1}%
%}
%\@onlypreamble\tracingindex
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
\tracingsubdeclare



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
  \NewDocumentCommand\manualhyperdef{st'm}{%
    \IfBooleanTF{#2}{%
      \raisebox{4\baselineskip}[0pt][0pt]{\hyperdef{\jobname}{#3}{}}%
      \par\nobreak\vskip\dimexpr-\parskip-\baselineskip\relax%
      \@afterindentfalse\@afterheading%
    }{%
      \Hy@raisedlink{\hyperdef{\jobname}{#3}{}}%
      \ignorespaces%
    }%
    \IfBooleanTF{#1}{%
      \in@{:}{#3}%
      \ifin@\else\phantomsection\addxcontentsline{toc}{subsection}{#3}\fi%
    }{\label{#3}}%
  }
  \newcommand*\manualhyperref[2]{\hyperref{}{\jobname}{#1}{#2}}
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
\write\tud@write@i{%
(markup-locref^^J%
\space\space :attr "deprecated"^^J%
\space\space :open "\string\deprecatedhyperpage{"^^J%
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
\makexindyindex{Befehle und Umgebungen}[macros]
\makexindyindex{Umgebungs- und Befehlsparameter}[keys]% §§§ raus
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
\newcommand*\pdfexpandableoutline[1]{%
  \AfterPackage*{hyperref}{\pdfstringdefDisableCommands{\csletcs{#1}{@#1}}}%
}
\newcommand*\@TUDScript{TUD-KOMA-Script}
\pdfexpandableoutline{TUDScript}

\newcommand*\idxfont{}
\let\idxfont\footnotesize
\robustify{\idxfont}
\newcommand*\idxsuffix[1]{\begingroup\idxfont\noexpand~(#1)\endgroup}
\newrobustcmd*\hyperidx[2][]{%
%  \begingroup%
%    \renewcommand*\tud@trace@label[1]{}%
    \manualhyperref{#1}{#2}%
%  \endgroup%
}
\newrobustcmd*\bsc{\@backslashchar}



\newif\if@declare
\newif\if@stareddeclare
\newif\if@openindex
\newif\if@deprecated
\newcommand*\@declarationlist{}
\let\@declarationlist\relax
\newcommand*\@presetlist{}
\let\@presetlist\relax
\newif\if@presetlist
\newcommand*\@additionallist{}
\let\@additionallist\relax
\newif\if@additionallist
\newcommand*\@gobbleparameters{%
  \let\PName\@gobble%
  \let\PBoolean\@empty%
  \let\PBName\@gobble%
  \let\PSet\@empty%
  \let\PValue\@gobble%
  \let\Parameter\@gobble%
  \let\OParameter\@gobble%
  \let\LParameter\@empty%
  \let\OLParameter\@gobble%
  \let\PParameter\@gobble%
  \let\POParameter\@gobble%
}
\NewDocumentEnvironment{Declaration}{omoog}{%
  \listadd\@declarationlist{#2}%
  \@changedatdeclare{#1}{#2}%
  \IfValueTF{#3}{%
    \@presetlisttrue%
    \IfValueTF{#4}{%
      \def\@tempa[##1:##2]{##1:\,##2}%
      \listeadd\@presetlist{preset:\,#3\,|\,\expandonce{\@tempa[#4]}}%
    }{%
      \listadd\@presetlist{preset:\,#3}%
    }%
  }{%
    \listadd\@presetlist{\relax}%
  }%
  \IfValueTF{#5}{%
    \@additionallisttrue%
    \listadd\@additionallist{\hspace*{\tabcolsep}\small(#5)}%
    % §§§ checken, ob das anders geht
    \in@{\Environment}{#2}%
    \ifin@\listadd\@additionallist{\tabularnewline}\fi%
  }{%
    \listadd\@additionallist{\relax}%
    \in@{\Environment}{#2}%
    \ifin@\listadd\@additionallist{\relax}\listadd\@additionallist{\relax}\fi%
  }%
}{%
  \ifx\@declarationlist\relax\else%
    \ClassError{tudscrman}{\string\printdeclarationlist\space is missing}{%
      \string\@declarationlist\space is not empty. Did you forget\MessageBreak%
      to print this list with \string\printdeclarationlist?%
    }%
  \fi%
  \@gobbleparameters%
  \vskip-\lastskip%
  \@declaretrue\@openindexfalse#2\@declarefalse%
  \pagebreak[0]%
}
\NewDocumentCommand\printdeclarationlist{sod()}{%
  \ifx\@declarationlist\relax\else%
    \ifvmode\else\par\fi%
    \addpenalty{\@beginparpenalty}%
    \addvspace{1.5\baselineskipglue}%
    \IfBooleanTF{#1}{%
      \global\@deprecatedtrue%
      \renewcommand*\@changedatdeclaredefault{\emph{entf\"allt}|deprecated}%
    }{%
      \global\@deprecatedfalse%
    }%
    \IfValueT{#2}{%
      \if@additionallist%
        \ClassWarning{tudscrman}{%
          It is not possible to use the optional argument\MessageBreak%
          of \string\printdeclarationlist due to the given\MessageBreak%
          additional information as argument of the\MessageBreak%
          environment `Declaration'%
        }%
      \else%
        \@additionallisttrue%
        \let\@additionallist\relax%
        \protected@edef\@tempa{#2}%
        \protected@edef\@tempb{\hspace*{\tabcolsep}\protect\small}%
        \def\@tempc##1{%
          \listeadd\@additionallist{\expandonce\@tempb(\expandonce\@tempa)}%
        }%
        \forlistloop\@tempc{\@declarationlist}%
      \fi%
    }%
    \@declaretrue\@openindextrue%
    \@afterindentfalse\@afterheading%
    \def\@tempa##1{\ignorespaces##1\tabularnewline}%
    \edef\HyperRaiseLinkDefault{\the\baselineskip}%
    \setbox\z@\hbox{%
      \begin{tabular}{|l|}%
        \hline%
        \forlistloop\@tempa{\@declarationlist}%
        \hline%
      \end{tabular}%
    }\usebox\z@%
    \@declarefalse%
    \ifboolexpr{bool {@presetlist} or bool {@additionallist}}{%
      \if@presetlist%
        \qquad%
        \texttt{%
          \begin{tabular}{l@{}}%
            \forlistloop\@tempa{\@presetlist}%
          \end{tabular}%
        }%
      \fi%
      \if@additionallist%
        \begin{tabular}{@{}l@{}}%
          \forlistloop\@tempa{\@additionallist}%
        \end{tabular}%
      \fi%
    }{}%
    \global\let\@declarationlist\relax%
    \global\let\@presetlist\relax%
    \global\@presetlistfalse%
    \global\let\@additionallist\relax%
    \global\@additionallistfalse%
    \printchangedatlist*[%
      \dimexpr.5\ht\strutbox+.5\dp\strutbox-.5\ht0-.5\dp0\relax%
    ]%
    \IfValueT{#3}{#3}%
    \par\nobreak%
    \vskip 1.5\baselineskipglue%
    \@afterindentfalse\@afterheading%
  \fi%
}
% §§§ Declaration*[!] und SuDeclaration in einer Umgebung zusammenfassen?!
% §§§
% §§§ optionales Argument für Änderungsliste überarbeiten (s. tudscrfonts)
% §§§ Eintrag sollte in Allgemein
\newcommand*\@subdeclare{}
\newcommand*\@subdeclaredefault{tudscr}
\let\@subdeclare\@subdeclaredefault
\NewDocumentEnvironment{Declaration*}{omt!}{%
  \@changedatdeclare{#1}{#2}%
  \@stareddeclaretrue%
  \global\@deprecatedfalse% §§§ warum?
  \@declaretrue\@openindextrue#2\@declarefalse%
  \@stareddeclarefalse%
  \IfBooleanT{#3}{\SubDeclaration{#2}}%
}{%
  \IfBooleanT{#3}{\endSubDeclaration}%
  \ifx\@changedatdeclarelist\relax\else%
    \ClassError{tudscrman}{\string\printchangedatlist\space is missing}{%
      \string\@changedatdeclarelist\space is not empty. Did you\MessageBreak%
      forget to print this list with \string\printchangedatlist?%
    }%
  \fi%
  \global\@deprecatedfalse% §§§ warum?
  \@gobbleparameters%
  \@declaretrue\@openindexfalse#2\@declarefalse%
}
\newenvironment{SubDeclaration}[1]{%
  \ifx\@subdeclare\@subdeclaredefault%
    \gdef\@subdeclare{#1}%
  \else%
    \ClassError{tudscrman}{Nested environment `SubDeclaration'}{%
      It is not possible to nest this environment, when\MessageBreak%
      a cross-label was given before.%
    }%
  \fi%
  \ignorespaces%
}{\global\let\@subdeclare\@subdeclaredefault\aftergroup\ignorespaces}
\newcommand*\tud@ifsubdeclare[3]{%
  \@tempswafalse%
  \def\@tempd{#2}%
  \def\@tempe{#2}%
  \IfValueTF{#1}{%
    \ifstr{#1}{}{%
%      \typeout{**************** leer:^^J2:\meaning\@tempd^^J3:\meaning\@tempe}%
    }{%
      \ifstr{#1}{\@subdeclaredefault}{}{\@tempswatrue}%
    }%
  }{%
%    \typeout{**************** #1:^^J2:\meaning\@tempd^^J3:\meaning\@tempe}%
  }%
  \if@tempswa#2\else#3\fi%
}
\NewDocumentCommand\Application{smd||}{%
  \ifdin{#2}{%
    \mbox{\textsbs{#2}}%
    \CheckIndexFormat{#1}{#3}%
    % §§§ \@ProcessIndex?
    \IfBooleanF{#1}{%
      \index{\textsbs{#2}\idxsuffix{Anwendungssoftware}\IfValueT{#3}{|#3}}%
    }%
  }%
}
\DeclareExpandableDocumentCommand\@Application{sm}{#2}
\pdfexpandableoutline{Application}
\NewDocumentCommand\Distribution{smod||}{%
  \ifdin{#2\IfValueT{#3}{~#3}}{%
    \mbox{\textsbn{#2\IfValueT{#3}{~#3}}}%
    \CheckIndexFormat{#1}{#4}%
    % §§§ \@ProcessIndex?
    \IfBooleanF{#1}{%
      \index{\textsbn{#2}\idxsuffix{Distribution}\IfValueT{#4}{|#4}}%
    }%
  }%
}
\DeclareExpandableDocumentCommand\@Distribution{sm}{#2}
\pdfexpandableoutline{Distribution}
\newrobustcmd*\Path[1]{\mbox{\texttt{#1}}}
\NewDocumentCommand\File{smd||}{%
  \ifdin{#2}{%
    \mbox{\textsbn{#2}}%
    \CheckIndexFormat{#1}{#3}%
    % §§§ \@ProcessIndex?
    \IfBooleanF{#1}{%
      \index[files]{\textsbn{#2}\idxsuffix{Datei}\IfValueT{#3}{|#3}}%
    }%
  }%
}
\DeclareExpandableDocumentCommand\@File{sm}{#2}
\pdfexpandableoutline{File}
% §§§ Argumente von \@ProcessOutput für Auszeichung in Fließtext und Index 
% §§§ zusammenführen, evtl. noch einmal Delimiter der opt. Arg. überarbeiten
% §§§ ProcessChangedAt ebenfalls anpassen
\NewDocumentCommand\Class{smd''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{files}{\protect\sbnfont}{#2}{Klasse}%
  \else%
    \ifdin{#2}{%
      \SetIndexFormat{#1}{#4}%
      \@ProcessOutput{#2}'#3'{files}[\protect\sbnfont]{#2}[Klasse]%
    }%
  \fi%
}
\DeclareExpandableDocumentCommand\@Class{sm}{#2}
\pdfexpandableoutline{Class}
% §§§ \@CTANLink als Argument für ProcessOutput?!
\newcommand*\@CTANLink{}
\let\@CTANLink\relax
\NewDocumentCommand\Package{smd''d<>d||}{%
  \SetMarkupFormat{\sbnfont}%
  \@Process@toks{#1}{files}{#2}%
  \if@changelog%
    \@ProcessChangedAt{#1}{files}{\sbnfont}{#2}{Paket}%
  \else%
    % §§§ wo kommt das vor? mit \typeout{msg} prüfen
    \ifdin{#2}{%
      \@ProcessMarkup@toks'#3'%
      \@ProcessIndex@toks<Paket>|#5|%
%      \IfValueTF{#4}{%
%        \ifstr{#4}{}{\let\@CTANLink\relax}{\def\@CTANLink{pkg/#4}}%
%      }{\def\@CTANLink{pkg/#2}}%
%      \SetIndexFormat{#1}{#5}%
%      \@ProcessOutput{#2}'#3'{files}[\sbnfont]{#2}[Paket]%
    }%
  \fi%
  \ClearMarkupFormat%
}
\DeclareExpandableDocumentCommand\@Package{sm}{#2}
\pdfexpandableoutline{Package}
% §§§ suchen nach \\Option\*?\{.*\}\[.*\]
% §§§ \Option(*){option}[value] in \Option(*){option=value}
% §§§ optionales Argument mit Warnung zum Ändern in der Doku!
\NewDocumentCommand\Option{sd()mod''d()d||}{%
% §§§ Debug
%  % §§§ Implementierung? optionaler WErt durch '=' getrennt
%  \IfValueT{#4}{%
%    \ClassWarning{tudscrman}{please change the optional argument}%
%  }%
% §§§ #6 raus und stattdessen #2 verwenden
%  \IfValueT{#6}{%
%    \ClassWarning{tudscrman}{please move the subdeclaration}%
%  }%
% §§§ Debug Ende
  \SetMarkupFormat{\ttfamily}%
  \@Process@toks{#1}(#6){options}{#3}%
  \if@changelog%
    \@ProcessChangedAt{#1}(#6){options}{\ttfamily}{#3}{Option}%
  \else%
    \@ProcessMarkup@toks[#4](=#4)'#5'%
    \@ProcessIndex@toks|#7|%
  \fi%
  \ClearMarkupFormat%
}
\DeclareExpandableDocumentCommand\@Option{sd()m}{#3}
\pdfexpandableoutline{Option}
\NewDocumentCommand\Environment{sd()mod''d()d||}{%
% §§§ Debug
% §§§ #6 raus und stattdessen #2 verwenden
%  \IfValueT{#6}{%
%    \ClassWarning{tudscrman}{please move the subdeclaration}%
%  }%
% §§§ Debug Ende
% §§§ evtl. Warnung bei optionalem Argument #2 wenn nicht declare
% §§§ evtl. noch etwas anpassen....
  \SetMarkupFormat{\ttfamily}%
  (%
    \ttfamily \bsc{}begin\{##1\}\IfValueT{#4}{#4}\tabularnewline%
    \ttfamily \dots\tabularnewline%
    \ttfamily\bsc{}end\{##1\}%
  )%
  \@Process@toks{#1}(#6){macros}{#3}%[#4]%
  \if@changelog%
    \@ProcessChangedAt{#1}(#6){macros}{\ttfamily}{#3}{Umgebung}%
  \else%
    \@ProcessMarkup@toks'#5'%
    \@ProcessIndex@toks<Umgebung>|#7|%
  \fi%
  \ClearMarkupFormat%
}
\DeclareExpandableDocumentCommand\@Environment{sd()m}{#3}
\pdfexpandableoutline{Environment}%
\NewDocumentCommand\Macro{smd''D(){\@subdeclare}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#4){macros}{\ttfamily\bsc}{#2}{Befehl}%
  \else%
    \SetIndexFormat{#1}{#5}%
    \@ProcessOutput{#2}'#3'(#4){macros}[\ttfamily\bsc]{#2}%
  \fi%
}
\DeclareExpandableDocumentCommand\@Macro{sm}{#2}
\pdfexpandableoutline{Macro}%
% §§§ suchen nach \\Key\*?\{.*\}\{.*\}\[.*\]
% §§§ \Key(*){cmd}{key}[value] in \Key(*){cmd}{key=value}
% §§§ optionales Argument mit Warnung zum Ändern in der Doku!
\NewDocumentCommand\Key{smmod''D(){\@subdeclare}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#6){macros}!#2!{\ttfamily}{#3}{Parameter}%
  \else%
    \SetIndexFormat{#1}{#7}%
    \@ProcessOutput{#3}[%
      \IfValueT{#4}{\texttt{=#4}}%
      \if@declare\idxsuffix{Parameter}\fi%
    ]'#5'(#6){macros}!#2![\ttfamily]{#3}[Parameter]%
  \fi%
}
\DeclareExpandableDocumentCommand\@Key{smm}{#3}
\pdfexpandableoutline{Key}
\NewDocumentCommand\Term{smd''D(){\@subdeclare}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#4){terms}{\ttfamily\bsc}{#2}{Bezeichner}%
  \else%
    \SetIndexFormat{#1}{#5}%
    \@ProcessOutput{#2}[%
      \if@declare\idxsuffix{Bezeichner}\fi%
    ]'#3'(#4){terms}[\ttfamily\bsc]{#2}%
  \fi%
}
\DeclareExpandableDocumentCommand\@Term{sm}{#2}
\pdfexpandableoutline{Term}%
\newcommand\@termlist{}
\let\@termlist\relax
\NewDocumentCommand\TermTable{smg}{%
  \forcsvlist{\listadd\@termlist}{#2}%
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
  \let\@termlist\relax%
  \par\addvspace{\baselineskipglue}%
}
\newcommand*\@TermTable{%
  \toprule%
  \textbf{Bezeichner} & \textbf{Deutsch} & \textbf{Englisch}\tabularnewline%
  \midrule%
  \forlistloop\@@TermTable{\@termlist}%
  \bottomrule%
}
\newcommand*\@@TermTable[1]{%
  \Term{#1} & \@nameuse{#1} & %
    \selectlanguage{english}\vspace*{\@tempdimc}\@nameuse{#1}\tabularnewline%
}
\NewDocumentCommand\Font{smd''D(){\@subdeclare}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#4){fonts}{\ttfamily}{#2}{Schriftelement}%
  \else%
    \SetIndexFormat{#1}{#5}%
    \@ProcessOutput{#2}[%
      \if@declare\idxsuffix{Schriftelement}\fi%
    ]'#3'(#4){fonts}[\ttfamily]{#2}%
  \fi%
}
\DeclareExpandableDocumentCommand\@Font{sm}{#2}
\pdfexpandableoutline{Font}%
\newcommand*\@TempColor{}
% §§§ suchen nach \\Color\*?\{.*\}\[.*\]
% §§§ ??? \Color(*){color}[alternative] in \Color(*){color}(alternative)
% §§§ optionales Argument mit Warnung zum Ändern in der Doku!
\NewDocumentCommand\Color{smod''D(){\@subdeclare}d||}{%
  \def\@TempColor{#5}%
  % §§§ geht das anders als mit tudscr? bei argumentdeklaration
  \ifstr{\@TempColor}{\@subdeclaredefault}{%
    \def\@TempColor{\Package{tudscrcolor}}%
  }{}%
  \if@changelog%
    \@ProcessChangedAt{#1}(\@TempColor){colors}{\ttfamily}{#2}{Farbe}%
  \else%
    \SetIndexFormat{#1}{#6}%
    \toks@{%
      \@ProcessOutput{#2}[%
        \IfValueT{#3}{\nobreakspace\texttt{(#3)}}%
        \if@declare\idxsuffix{Farbe}\fi%
      ]'#4'%
    }%
    \expandafter\addto@hook\expandafter\toks@\expandafter{(\@TempColor)}%
    \addto@hook\toks@{{colors}[\ttfamily]{#2}}%
    \the\toks@%
  \fi%
}
\DeclareExpandableDocumentCommand\@Color{sm}{#2}
\pdfexpandableoutline{Color}%
% §§§ Index pagestyles
\NewDocumentCommand\PageStyle{smd''D(){\@subdeclare}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#4){macros}{\ttfamily}{#2}{Seitenstil}%
  \else%
    \SetIndexFormat{#1}{#5}%
    \@ProcessOutput{#2}[%
      \if@declare\idxsuffix{Seitenstil}\fi%
    ]'#3'(#4){macros}[\ttfamily]{#2}[Seitenstil]%
  \fi%
}
\DeclareExpandableDocumentCommand\@PageStyle{sm}{#2}
\pdfexpandableoutline{PageStyle}%
% §§§ Index lenghts
\NewDocumentCommand\Length{smd''D(){\@subdeclare}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#4){macros}{\ttfamily\bsc}{#2}{L\"ange}%
  \else%
    \SetIndexFormat{#1}{#5}%
    \@ProcessOutput{#2}[%
      \if@declare\idxsuffix{L\"ange}\fi%
    ]'#3'(#4){macros}[\ttfamily\bsc]{#2}[L\"ange]%
  \fi%
}
\DeclareExpandableDocumentCommand\@Length{sm}{#2}
\pdfexpandableoutline{Length}%
% §§§ Index counter
\NewDocumentCommand\Counter{smd''D(){\@subdeclare}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#4){macros}{\ttfamily}{#2}{Z\"ahler}%
  \else%
    \SetIndexFormat{#1}{#5}%
    \@ProcessOutput{#2}[%
      \if@declare\idxsuffix{Z\"ahler}\fi%
    ]'#3'(#4){macros}[\ttfamily]{#2}[Z\"ahler]%
  \fi%
}
\DeclareExpandableDocumentCommand\@Counter{sm}{#2}
\pdfexpandableoutline{Counter}%
\NewDocumentCommand\@ProcessOutput{mod''d()md!!omo}{%
  \if@declare%
    \if@openindex%
      \IfValueT{#3}{%
        \ClassWarning{tudscrman}{%
          It is not possible to use any cross-reference\MessageBreak%
          shorthand like '#3' within the arguments of\MessageBreak%
          the environment `Declaration'%
        }%
      }%
      \IfValueTF{#6}{%
        \@CreateLabel*\@templabel{#5:#6:#1}{#4}%%
      }{%
        \@CreateLabel*\@templabel{#5:#1}{#4}%
      }%
      \if@deprecated%
        \expandafter\IfBooleanF\expandafter{\@IndexFormat}{%
          \manualhyperdef{\@templabel}%
        }%
      \else%
        \expandafter\IfBooleanTF\expandafter{\@IndexFormat}{%
          \manualhyperdef{\@templabel}%
        }{%
          \ifx\@IndexFormat\@empty\else%
            \ClassWarning{tudscrman}{%
              It is not possible to use any indexing format\MessageBreak%
              like |\@IndexFormat| within the arguments of the\MessageBreak%
              environment `Declaration'%
            }%
          \fi%
          \if@stareddeclare%
            \manualhyperdef'{\@templabel}%
          \else%
            \manualhyperdef{\@templabel}%
          \fi%
          \@HyperIndex{#5}{#6}{#7}{#1}{#9}{#4}{(declare}%
        }%
      \fi%
      \if@stareddeclare\else%
        \mbox{#7#1\IfValueT{#2}{#2}}%
      \fi%
    \else%
      \if@deprecated\else%
        \expandafter\IfBooleanF\expandafter{\@IndexFormat}{%
          \@HyperIndex{#5}{#6}{#7}{#1}{#9}{#4}{declare)}%
        }%
      \fi%
    \fi%
  \else%
    \IfValueTF{#6}{%
      \@CreateLabel\@templabel{#5:#6:#1}{#4}%
    }{%
      \@CreateLabel\@templabel{#5:#1}{#4}%
    }%
    \ifcsdef{r@\@templabel}{%
      \def\@tempa{%
        \mbox{\hyperref{}{\jobname}{\@templabel}{#7#1}\IfValueT{#2}{#2}}%
      }%
      \let\@tempb\relax%
      \IfValueT{#3}{%
        \def\@tempb{%
          \ClassWarning{tudscrman}{%
            You've used the unknown cross-reference\MessageBreak%
            shorthand '#3'. Only 'auto', 'page'\MessageBreak%
            and 'full' as well as 'none' are valid%
          }%
        }%
        \ifstr{#3}{auto}{\def\@tempb{ in \autoref{\@templabel}}}{}%
        \ifstr{#3}{page}{\def\@tempb{ \vpageref{\@templabel}}}{}%
        \ifstr{#3}{ppage}{\def\@tempb{ \reftextfaraway{\@templabel}}}{}%
        \ifstr{#3}{full}{\def\@tempb{ in \fullref{\@templabel}}}{}%
        \ifstr{#3}{none}{%
          \def\@tempa{\mbox{#7#1\IfValueT{#2}{#2}}}%
          \let\@tempb\relax%
        }{}%
      }%
      \@tempa\@tempb%
    }{%
      \def\@tempa{\mbox{#7#1\IfValueT{#2}{#2}}}%
      \IfValueT{#3}{%
        \ClassWarning{tudscrman}{%
          No cross-reference created, label \@templabel\MessageBreak%
          is missing%
        }%
      }%
      \ifx\@CTANLink\relax%
        \@tempa%
      \else%
        \href{http://www.ctan.org/\@CTANLink}{\@tempa}%
      \fi%
%      \tud@trace@label{\@templabel}%
    }%
    \ifx\@IndexFormat\relax%
      \ClassError{tudscrman}{\string\SetIndexFormat\space unused}{%
        It seems you have forgotten to use \string\SetIndexFormat.%
      }%
    \else%
      \expandafter\IfBooleanF\expandafter{\@IndexFormat}{%
        \@HyperIndex{#5}{#6}{#7}{#1}{#9}{#4}{\@IndexFormat}%
      }%
    \fi%
  \fi%
  \let\@IndexFormat\relax%
  \let\@CTANLink\relax%
}
\NewDocumentCommand\@HyperIndex{mmmmmmm}{%
  \IfValueTF{#3}{\def\@tempa{#3}}{\def\@tempa{}}%
  \IfValueTF{#5}{\def\@tempb{\idxsuffix{#5}}}{\def\@tempb{}}%
  \IfValueTF{#7}{\edef\@tempc{|#7}}{\def\@tempc{}}%
  \IfValueTF{#2}{%
    \@CreateLabel\@templabel{#1:#2:#4}{#6}%
    \@CreateEntry\@tempentry{#1:#2:#4}{}{%
      \begingroup\expandonce\@tempa#4\endgroup\expandonce\@tempb%
    }%
    \@CreateEntry\@tempkeyentry{#1:#2:#4}{#6}{%
      \begingroup\expandonce\@tempa#4\endgroup%
      \idxsuffix{#2}%
    }%
    \ifcsdef{r@\@templabel}{%
      \tud@ifsubdeclare{#6}{%
        \index[#1]{%
          #2\idxsuffix{#6}!%
            \hyperidx[\@templabel]{\expandonce\@tempentry}\expandonce\@tempc%
        }%
      }{%
        \index[#1]{%
          #2!\hyperidx[\@templabel]{\expandonce\@tempentry}\expandonce\@tempc%
        }%
      }%
      \index[keys]{%
        \hyperidx[\@templabel]{\expandonce\@tempkeyentry}\expandonce\@tempc%
      }%
    }{%
      \index[#1]{#2!\expandonce\@tempentry\expandonce\@tempc}%
      \index[keys]{\expandonce\@tempkeyentry\expandonce\@tempc}%
    }%
  }{%
    \@CreateLabel\@templabel{#1:#4}{#6}%
    \@CreateEntry\@tempentry{#1:#4}{#6}{%
      \begingroup\expandonce\@tempa#4\endgroup\expandonce\@tempb%
    }%
    \ifcsdef{r@\@templabel}{%
      \index[#1]{%
        \hyperidx[\@templabel]{\expandonce\@tempentry}\expandonce\@tempc%
      }%
    }{%
      \index[#1]{\expandonce\@tempentry\expandonce\@tempc}%
    }%
  }%
}
\newcommand*\@IndexFormat{}
\let\@IndexFormat\relax
\newcommand*\CheckIndexFormat[2]{%
  \IfBooleanT{#1}{%
    \IfValueT{#2}{%
      \ClassWarning{tudscrman}{%
        You've used the starred version so no entry for\MessageBreak%
        the index is created and the optional argument\MessageBreak%
        |#2| will be ignored%
      }%
    }%
  }%
}
\newcommand*\SetIndexFormat[2]{%
  \CheckIndexFormat{#1}{#2}%
  \IfBooleanTF{#1}{%
    \def\@IndexFormat{#1}%
  }{%
    \IfValueTF{#2}{\def\@IndexFormat{#2}}{\def\@IndexFormat{}}%
  }%
}
% Doku: Sternversion zum Erzeugen des Labels, ohne Stern zur Nutzung
\newcommand*\@templabel{}
% \tud@lowerstring einbinden
\NewDocumentCommand\@CreateLabel{smmm}{%
  \@@CreateLabel[#1]{#3}{#4}%
    \if@tempswa%
      \edef\@tempa{%
        \noexpand\endgroup%
        \noexpand\edef\noexpand#2{#4:#3}%
      }%
    \else%
      \edef\@tempa{%
        \noexpand\endgroup%
        \noexpand\edef\noexpand#2{#3}%
      }%
    \fi%
  \@tempa%
%  \IfBooleanTF{#1}{%
%     \typeout{/////! \meaning#2}%
%  }{%
%     \typeout{////// \meaning#2}%
%  }%
}
\NewDocumentCommand\@@CreateLabel{omm}{%
  \begingroup%
    \let\Class\@Class%
    \let\Package\@Package%
    \let\Environment\@Environment%
    \let\Macro\@Macro%
    \tud@ifsubdeclare{#3}{%
      \@tempswatrue%
      \IfBooleanF{#1}{\ifcsdef{r@#3:#2}{}{\@tempswafalse}}%
    }{\@tempswafalse}%
}
\newcommand*\@tempentry{}
\newcommand*\@tempkeyentry{}
\newcommand*\@CreateEntry[4]{%
  \@@CreateLabel{#2}{#3}%
    \global\let\if@tempswa=\if@tempswa%
  \endgroup%
  \if@tempswa%
    \edef#1{#4\idxsuffix{#3}}%
  \else%
    \edef#1{#4}%
  \fi%
}



\newtoks\tud@toks
\newcommand*\eaddto@hook[2]{%
  \expandafter\addto@hook\expandafter#1\expandafter{#2}%
}
% Debug
% {#1}: Stern?
% (#2): Subdeclaration
% {#3}: Ziellabel/Zielindex
% !#4!: Untereintrag für Key in Index und Label
% {#5}: Hauptargument
% [#6]: optionaler Suffix Ausgabe
\NewDocumentCommand\@Process@toks{md()md!!m}{%
  \tud@toks{{#1}}%
  \IfValueTF{#2}{%
    \addto@hook\tud@toks{(#2)}%
    \tud@trace@subdeclare{#2}%
  }{%
    \eaddto@hook\tud@toks{\expandafter(\@subdeclare)}%
    \expandafter\tud@trace@subdeclare\expandafter{\@subdeclare}%
  }%
  \addto@hook\tud@toks{{#3}}%
  \IfValueT{#4}{\addto@hook\tud@toks{!#4!}}%
  \addto@hook\tud@toks{{#5}}%
  \global\tud@toks=\tud@toks%
}
% Argumente #1 und #2 sauber dokumentieren
\NewDocumentCommand\@ProcessMarkup@toks{od()r''}{%
  \toks@{\@ProcessMarkup}%
  \eaddto@hook\toks@{\the\tud@toks}%
  \IfValueT{#1}{%
    \IfValueTF{#2}{%
      \addto@hook\toks@{[#2]}%
    }{%
      \addto@hook\toks@{[#1]}%
    }%
  }%
  \IfValueT{#3}{\addto@hook\toks@{'#3'}}%
  \tud@trace@markup[output]{\the\toks@}%
}
% Argumente #1 und #2 sauber dokumentieren
% optionales Argument <#3> in [#3], sobald das mit \@ProcessIndex geht
\NewDocumentCommand\@ProcessIndex@toks{od()d<>r||}{%
  \toks@{\@ProcessIndex}%
  \eaddto@hook\toks@{\the\tud@toks}%
  \IfValueT{#1}{%
    \IfValueTF{#2}{%
      \addto@hook\toks@{[#2]}%
    }{%
      \addto@hook\toks@{[#1]}%
    }%
  }%
  \IfValueT{#3}{\addto@hook\toks@{<#3>}}%
  \IfValueT{#4}{\addto@hook\toks@{|#4|}}%
  \tud@trace@markup[index]{\the\toks@}%
}
% {#1}: Stern?
% (#2): Subdeclaration
% {#3}: Ziellabel/Zielindex
% !#4!: Untereintrag für Key in Index und Label
% {#5}: Hauptargument
% [#6]: optionaler Suffix Ausgabe
% '#7': Querverweis
\NewDocumentCommand\@ProcessMarkup{mr()md!!mod''}{%
  \CheckMarkupFormat%
  \if@declare%
    \if@openindex%
      \IfValueT{#7}{%
        \ClassWarning{tudscrman}{%
          It is not possible to use any cross-reference\MessageBreak%
          shorthand like '#7' within the arguments of\MessageBreak%
          the environment `Declaration'%
        }%
      }%
      \@Process@label*\tud@label(#2){#3}!#4!{#5}%
%      % §§§ suffix an \tud@label, wie mit Änderngsliste umgehen?
%%      \if@deprecated%
%%        \appto{\tud@label}{:old}
%%      \fi%
%%      \if@deprecated%
%%        \IfBooleanF{#1}{%
%%          \manualhyperdef{\tud@label}%
%%        }%
%%      \else%
%        \IfBooleanTF{#1}{%
%          \manualhyperdef{\tud@label}%
%        }{%
          \if@stareddeclare%
            \manualhyperdef'{\tud@label}%
          \else%
            \manualhyperdef{\tud@label}%
          \fi%
%        }%
%%      \fi%
      \if@stareddeclare\else%
        \@MarkupDeclare{#5\IfValueT{#6}{#6}}%
      \fi%
    \fi%
  \else%
    \@Process@label\tud@label(#2){#3}!#4!{#5}%
    \def\@tempc{\mbox{\@MarkupFormat#5\IfValueT{#6}{#6}}}%
    \ifcsdef{r@\tud@label}{%
      \def\@tempa{\hyperref{}{\jobname}{\tud@label}{\@tempc}}%
      \let\@tempb\relax%
      \IfValueT{#7}{%
        \def\@tempb{%
          \ClassWarning{tudscrman}{%
            You've used the unknown cross-reference\MessageBreak%
            shorthand '#7'. Only 'auto', 'page'\MessageBreak%
            and 'full' as well as 'none' are valid%
          }%
        }%
        \ifstr{#7}{auto}{\def\@tempb{ in \autoref{\tud@label}}}{%
        \ifstr{#7}{page}{\def\@tempb{ \vpageref{\tud@label}}}{%
        \ifstr{#7}{ppage}{\def\@tempb{ \reftextfaraway{\tud@label}}}{%
        \ifstr{#7}{full}{\def\@tempb{ in \fullref{\tud@label}}}{%
        \ifstr{#7}{none}{\let\@tempa\@tempc\let\@tempb\relax}{}}}}}%
      }%
    }{%
%      \ifx\@CTANLink\relax%
        \let\@tempa\@tempc%
%      \else%
%        \def\@tempa{\href{http://www.ctan.org/\@CTANLink}{\@tempc}}%
%      \fi%
      \let\@tempb\relax%
      \IfValueT{#7}{%
        \def\@tempb{%
          \ClassWarning{tudscrman}{%
            No cross-reference created, label \tud@label\MessageBreak%
            is missing%
          }%
        }%
      }%
      \tud@trace@label{\tud@label}%
    }%
    \@tempa\@tempb%
  \fi%
%  \let\@IndexFormat\relax%
%  \let\@CTANLink\relax%
}

% {#1}: Stern?
% (#2): Subdeclaration
% {#3}: Ziellabel/Zielindex
% !#4!: Untereintrag für Key in Index und Label
% {#5}: Hauptargument
% [#6]: optionaler Suffix Ausgabe
% <#7>: Indexsuffix
% |#8|: Indexformatierung
% optionales Argument <#7> in [#7], sobald [#6] nicht mehr notwendig
\NewDocumentCommand\@ProcessIndex{mr()md!!mod<>d||}{%
  \CheckMarkupFormat%
  % §§§ wie mit den alten Sachen (\if@deprecated) umgehen?
  \@tempswatrue%
  % §§§ so global ist das scheiße
  \if@deprecated\@tempswafalse\fi%
  \IfBooleanT{#1}{%
    \@tempswafalse%
    \IfValueT{#8}{%
      \ClassWarning{tudscrman}{%
        You've used the starred version so no entry for\MessageBreak%
        the index is created and the optional argument\MessageBreak%
        |#8| will be ignored%
      }%
    }%
  }%
  \if@tempswa%
    \if@declare%
      \if@openindex%
        \IfValueT{#8}{%
          \ClassWarning{tudscrman}{%
            It is not possible to use any indexing format\MessageBreak%
            like |#8| within the arguments of the\MessageBreak%
            environment `Declaration'%
          }%
        }%
        \def\@tempc{|(declare}%
      \else%
        \def\@tempc{|declare)}%
      \fi%
    \else%
      \IfValueTF{#8}{\def\@tempc{|#8}}{\def\@tempc{}}%
    \fi%
    \@Process@label\tud@label(#2){#3}!#4!{#5}[@tempswa]%
    \IfValueTF{#7}{\def\@tempa{\idxsuffix{#7}}}{\def\@tempa{}}%
    \if@tempswa%
      \tud@ifsubdeclare{#2}{\preto\@tempa{\idxsuffix{#2}}}{}%
    \fi%
    \edef\@tempentry{%
      \begingroup%
        \expandonce\@MarkupFormat#5\IfValueT{#6}{#6}%
      \endgroup%
      \@tempa%
    }%
    % §§§ Paketen im Index fehlt der hyperlink
%    \typeout{***** #2: #5 #7^^J\meaning\@tempentry^^J\meaning\tud@label}%
%     \fi%
%    \tud@ifsubdeclare{#2}{%
%      \eappto\@tempentry{\idxsuffix{#2}}%
%      \typeout{***** #5}%
%    }{}%
%
%    \typeout{***** \meaning\@tempentry}%
    % §§§ über toks, damit tracebar
    \ifcsdef{r@\tud@label}{%
      \index[#3]{%
        \hyperidx[\tud@label]{\expandonce\@tempentry}\expandonce\@tempc%
      }%
    }{%
      \index[#3]{\expandonce\@tempentry\expandonce\@tempc}%
    }%
  \fi%
}


% Doku: Sternversion zum Erzeugen des Labels, ohne Stern zur Nutzung
\newcommand*\tud@label{}
\NewDocumentCommand\@Process@label{smr()mr!!mo}{%
  \@@Process@label#2(#3){#4}!#5!{#6}%
  \IfValueT{#7}{\booltrue{#7}}%
  \IfBooleanF{#1}{%
    \ifcsdef{r@#2}{}{%
      \@@Process@label#2(\@subdeclaredefault){#4}!#5!{#6}%
      \IfValueT{#7}{\boolfalse{#7}}%
    }%
  }%
}
\NewDocumentCommand\@@Process@label{mr()mr!!m}{%
  \begingroup%
    \let\Class\@Class%
    \let\Package\@Package%
    \let\Environment\@Environment%
    \let\Macro\@Macro%
    \IfValueTF{#4}{%
      \ClassError{tudscrman}{not implemented #4}{ToDo}%
    }{%
      \edef\@tempa{%
        \noexpand\endgroup%
        \noexpand\edef\noexpand#1{#2:#3:#5}%
      }%
    }%
  \@tempa%
}
% §§§ implementieren in \@MarkupFormat
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
\newcommand*\@MarkupFormat{}
\newcommand*\@MarkupDeclare[1]{}
\NewDocumentCommand\SetMarkupFormat{md()o}{%
  \tud@toks{}%
  \gdef\@MarkupFormat{#1}%
  \IfValueTF{#2}{%
    \gdef\@MarkupDeclare##1{#2}%
  }{%
    \IfValueTF{#3}{%
      \gdef\@MarkupDeclare##1{#1##1\idxsuffix{#3}}%
    }{%
      \gdef\@MarkupDeclare##1{#1##1}%
    }%
  }%
}
\newcommand*\CheckMarkupFormat{%
  \ifx\@MarkupFormat\relax%
    \ClassError{tudscrman}{\string\SetMarkupFormat\space unused}{%
      It seems you have forgotten to use \string\SetMarkupFormat.%
    }%
  \fi%
}
\newcommand*\ClearMarkupFormat{%
  \global\let\@MarkupFormat\relax%
  \global\let\@MarkupDeclare\@gobble%
}
\ClearMarkupFormat




%\newcommand*\tud@indexentry{}
%\newcommand*\@Process@indexentry[4]{%
%  \@@Process@label{#2}{#3}%
%    \global\let\if@tempswa=\if@tempswa%
%  \endgroup%
%  \if@tempswa%
%    \edef#1{#4\idxsuffix{#3}}%
%  \else%
%    \edef#1{#4}%
%  \fi%
%}

% §§§ Änderungsliste: Markup komplett überarbeiten
\newcommand*\@changedatdeclarelist{}
\let\@changedatdeclarelist\relax
\newcommand*\@changedatdeclaredefault{\emph{neu}}
\newcommand*\@changedatdeclare[2]{%
  \IfValueT{#1}{%
    \@for\@tempa:=#1\do{%
      \ifx\@tempa\@empty\else\ifx\@tempa\space\else%
        \preto{\@tempa}{#2!}%
        \expandafter\ChangedAt@Split\expandafter{\@tempa}%
      \fi\fi%
    }%
  }%
}
\NewDocumentCommand\ChangedAt@Split{>{\SplitArgument{2}{!}}m}{%
  \ChangedAt@@Split#1%
}
% §§§ Leerzeichen durch \@subdeclare?!
\newcommand*\ChangedAt@@Split[3]{%
  \in@{*}{#1}%
  \ifin@%
    \tud@ifsubdeclare{\@subdeclare}{%
      \protected@edef\@tempa{Allgemein\nobreakspace\@subdeclare!#2}%
    }{%
      \protected@edef\@tempa{Allgemein!#2}%
    }%
  \else%
    \tud@ifsubdeclare{\@subdeclare}{%
      \protected@edef\@tempa{%
        Implementierung\nobreakspace\@subdeclare!#2!%
        \IfValueTF{#3}{#3}{\noexpand\@changedatdeclaredefault}!#1(\@subdeclare)%
      }%
    }{%
      \protected@edef\@tempa{%
        Implementierung!#2!%
        \IfValueTF{#3}{#3}{\noexpand\@changedatdeclaredefault}!#1%
      }%
    }%
  \fi%
%  \typeout{+++++ \meaning\@tempa}
  \listeadd\@changedatdeclarelist{\expandonce\@tempa}%
}
\NewDocumentCommand\printchangedatlist{sO{\z@}}{%
  \ifx\@changedatdeclarelist\relax\else%
    \if@deprecated%
      \ChangedAt@Process[#1]{#2}{\@changedatdeclarelist}%
    \else%
      \ChangedAt@Process{#2}{\@changedatdeclarelist}%
    \fi%
    \global\let\@changedatdeclarelist\relax%
    \IfBooleanF{#1}{%
      \par\nobreak\vskip\dimexpr-\parskip-\baselineskip\relax%
      \@afterindentfalse\@afterheading%
    }%
  \fi%
}
\newlength\changedatskip
\NewDocumentCommand\ChangedAt{sO{\changedatskip}mO{Allgemein}}{%
  \tud@ifsubdeclare{\@subdeclare}{%
    \ChangedAt@Process[#1]{#2}[#4\nobreakspace\@subdeclare]{#3}%
  }{%
    \ChangedAt@Process[#1]{#2}[#4]{#3}%
  }%
}
\newcommand*\@changedatlist{}
\newcommand*\ChangedAt@Default{}
\newcommand*\@changedatversionlist{}
\let\@changedatversionlist\relax
\NewDocumentCommand\ChangedAt@Process{omom}{%
  \let\@changedatlist\relax%
  \let\@changedatversionlist\relax%
  \@for\@tempa:=#4\do{%
    \ifx\@tempa\@empty\else\ifx\@tempa\space\else%
      \IfValueT{#3}{\preto\@tempa{#3!}}%
      \listeadd{\@changedatlist}{\expandonce\@tempa}%
    \fi\fi%
  }%
  \forlistloop\ChangedAt@Process@Split{\@changedatlist}%
  \IfBooleanF{#1}{%
    \sortlist{\@changedatversionlist}%
    \strut%
    \marginnote{%
      \def\@tempa####1{%
        \ignorespaces\manualhyperref{####1}{####1}\tabularnewline%
      }%
      \begin{tabular}{|l|}%
        \hline%
        \forlistloop\@tempa{\@changedatversionlist}%
        \hline%
      \end{tabular}%
    }[#2]%
    \ignorespaces%
  }%
}
\NewDocumentCommand\ChangedAt@Process@Split{>{\SplitArgument{3}{!}}m}{%
  \ChangedAt@@Process#1%
}
\newcommand*\ChangedAt@@Process[4]{%
  \IfValueTF{#4}{%
    \begingroup%
      \@gobbleparameters%
      \xdef\ChangedAt@Default{#4}%
    \endgroup%
    \ChangedAt@@@Process{#2}{#1}{\ChangedAt@Default: #3}%
  }{%
    \IfValueT{#3}{\ChangedAt@@@Process{#2}{#1}{#3}}%
  }%
  \xifinlist{#2}{\@changedatversionlist}{}{\listeadd\@changedatversionlist{#2}}%
}
\newcommand*\@TempKey{}% §§§ raus
% §§§ checken, ob das anders als mit \Key geht
\newcommand*\ChangedAt@@@Process[3]{%
  \begingroup%
    \def\@tempa{#3}%
    \in@{\ChangedAt@Default}{#3}%
    \ifin@%
      \expandafter\def\expandafter\@tempa\expandafter{\ChangedAt@Default}%
    \fi%
    \expandafter\in@\expandafter\Key\expandafter{\@tempa}%
    \ifin@%
      \begingroup%
        \RenewDocumentCommand\Key{sommo}{\xdef\@TempKey{##3:}}%
        \setbox\z@\hbox{#3}%
      \endgroup%
      \index[changelog]{%
        #1\manualhyperdef*{#1}!\manualhyperdef*{#1:#2}#2!\@TempKey\ #3%
      }%
    \else%
      \index[changelog]{%
        #1\manualhyperdef*{#1}!\manualhyperdef*{#1:#2}#2!#3%
      }%
    \fi%
  \endgroup%
}
\NewDocumentCommand\Replace{ommm}{%
  \@for\@tempa:={,#4}\do{%
    \ifx\@tempa\@empty\else\ifx\@tempa\space\else%
      \def\@tempb{#3}%
      \tud@ifsubdeclare{\@subdeclare}{%
        \edef\@tempa{\expandonce\@tempa(\@subdeclare)}%
        \edef\@tempb{\expandonce\@tempb(\@subdeclare)}%
      }{}%
      \protected@edef\@tempc{%
        Implementierung!#2!\emph{entf\"allt}|see{\@tempb}!\@tempa%
      }%
      \expandafter\listadd\expandafter\@changedatdeclarelist\expandafter{%
        \@tempc%
      }%
      \IfValueT{#1}{\index[#1]{\@tempa|see{\@tempb}}}%
    \fi\fi%
  }%
}
% §§§ Reihenfolge der Argumente anpassen siehe \@ProcessMarkup/\@ProcessIndex
% \@MarkupFormat nutzen
\NewDocumentCommand\@ProcessChangedAt{md()md!!mmom}{%
  \IfBooleanTF{#1}{%
    \protected@edef\@tempa{\begingroup#5#6\endgroup}%
  }{%
    \protected@edef\@tempa{\begingroup#5#6\idxsuffix{#8}\endgroup}%
  }%
  \IfValueTF{#4}{%
    \@CreateLabel\@templabel{#3:#4:#6}{#2}%
  }{%
    \@CreateLabel\@templabel{#3:#6}{#2}%
  }%
  \ifcsdef{r@\@templabel}{\hyperidx[\@templabel]{\@tempa}}{\@tempa}%
}
\newif\if@listsorted
\newcommand*\@sortedlist{}
\newcommand*\sortlist[1]{%
  \let\@sortedlist\relax%
  \forlistloop\@sortlist{#1}%
  \let#1\relax%
  \@for\@tempa:=\@sortedlist\do{\listeadd{#1}{\@tempa}}%
}
\newcommand*\@sortlist[1]{%
  \ifx\@sortedlist\relax%
    \def\@sortedlist{#1}%
  \else%
    \@listsortedfalse%
    \let\@tempb\@empty%
    \@for\@tempa:=\@sortedlist\do{%
      \if@listsorted%
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
          \@listsortedtrue%
        \else%
          \ifx\@tempb\@empty%
            \expandafter\edef\expandafter\@tempb\expandafter{\@tempa}%
          \else%
            \expandafter\edef\expandafter\@tempb\expandafter{\@tempb,\@tempa}%
          \fi%
        \fi%
      \fi%
    }%
    \if@listsorted\else%
      \expandafter\edef\expandafter\@tempb\expandafter{\@tempb,#1}%
    \fi%
    \let\@sortedlist\@tempb%
  \fi%
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
  % §§§ \Package<>|!| aufrufen, \manualhyperdef mit richtigem argument nutzen
  % evtl. letztes \tud@label verwenden
  \itempackages[{%
    \IfValueT{#1}{%
      \let\@tempb\relax%
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


\newrobustcmd*\textOR{\,\textbardbl\,}
\newrobustcmd*\PName[1]{\mbox{\texttt{\textsl{<#1>}}}}
\newrobustcmd*\PBoolean{\PName{Ein-Aus-Wert}}
\newrobustcmd*\PBName[1]{\PBoolean\textOR\PName{#1}}
\newrobustcmd*\PSet{\PName{Einstellung}}
\newrobustcmd*\Parameter[1]{\mbox{\texttt{\{}\PName{#1}\texttt{\}}}}
\newrobustcmd*\OParameter[1]{\mbox{\texttt{[}\PName{#1}\texttt{]}}}
\newrobustcmd*\LParameter{\mbox{\texttt{[}\PName{Parameterliste}\texttt{]}}}
\newrobustcmd*\OLParameter[1]{%
  \mbox{\texttt{[}\PName{#1}\textOR\PName{Parameterliste}\texttt{]}}%
}
\newrobustcmd*\PValue[1]{\mbox{\texttt{#1}}}
\newrobustcmd*\PParameter[1]{\mbox{\texttt{\{#1\}}}}
\newrobustcmd*\POParameter[1]{\mbox{\texttt{[#1]}}}
\newrobustcmd*\hypertut[2]{%
  \hyperref{tutorials/#1.pdf}{\jobname}{tutorials:#1}{\textsbn{#1.pdf}#2}%
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
    \textsbn{#2.pdf}%
    \tud@shellescape@wrn%
  }%
  \IfBooleanF{#1}{%
    \index[files]{%
      \hypertut{#2}{\idxsuffix{Tutorial}}%
      \IfValueT{#3}{|#3}%
    }%
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
\newcommand*\PrintIndex{%
  \begingroup%
    \@printindex%
    \@printindex[options]%
    \clearpage%
    \@printindex[macros]%
%    \@printindex[keys]% §§§ raus
    \@printindex[terms]%
%    \@printindex[pagestyles]%
%    \@printindex[lengths]%
%    \@printindex[counters]%
    \@printindex[fonts]%
    \begingroup%
      \let\lettergroup\@gobble%
      \let\indexspace\par%
      \@printindex[colors]%
    \endgroup%
    \@printindex[files]%
  \endgroup%
}
\newcommand*\PrintIndexPrologue[1]{\long\gdef\@printindexprologue{#1}}
\newcommand*\@printindexprologue{}
\newcommand*\@printindexskip{%
  \ifnum\imki@columns>\@ne\relax\vspace{-\multicolsep}\fi%
}
\newcommand*\@printindex[1][]{%
  \pagebreak[3]%
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
\newcommand*\seeidx[2]{\pageref{idx:#1}}
\NewDocumentCommand\Index{mom}{%
  \index{%
    #1!\textrightarrow{}\space%
    \manualhyperref{idx:#3}{Index der \IfValueTF{#2}{#2}{#1}}|seeidx{#3}%
  }%
}
\newcommand*\deprecatedhyperpage{}
\newif\if@changelog
\newcommand*\PrintChangelog{%
  \begingroup%
    \let\lettergroup\@gobble%
    \@changelogtrue%
    \let\deprecatedhyperpage\hyperpage%
    \preto\item{\let\deprecatedhyperpage\hyperpage}%
    \preto\subitem{\let\deprecatedhyperpage\hyperpage}%
    \preto\subsubitem{\let\deprecatedhyperpage\hyperpage}%
    \@printindex[changelog]%
  \endgroup%
}
\NewDocumentCommand\Changelog{m}{%
  \index{%
    #1!\textrightarrow{}\space%
    \manualhyperref{idx:changelog}{\"Anderungsliste}|seeidx{changelog}%
  }%
}
\renewrobustcmd*\see[2]{%
  \ifstr{#1}{*}%
    {\emph{\seename}\nobreakspace#2}%
    {\emph{\seename}\nobreakspace#1}%
  \if@changelog\let\deprecatedhyperpage\@gobble\fi%
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
    \href{\@tempc}{GitHub-Repository~\File*{tudscr}}%
  }{%
    \hrfn{\@tempc}{GitHub-Repository~\File*{tudscr}}%
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
