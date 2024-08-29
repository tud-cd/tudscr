%%
%% This is file `tudscrdoc.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tudscr-version.dtx  (with options: `class,doc,identify')
%% tudscr-base.dtx  (with options: `class,doc,load')
%% tudscr-misc.dtx  (with options: `class,doc,option')
%% tudscr-doc.dtx  (with options: `class,doc,option')
%% tudscr-localization.dtx  (with options: `class,doc')
%% tudscr-misc.dtx  (with options: `class,doc,body')
%% tudscr-doc.dtx  (with options: `class,doc,body')
%% tudscr-texindy.dtx  (with options: `class,doc')
%% 
%% TUD-Script -- Corporate Design of Technische Universitaet Dresden
%%               2022/09/01 v2.06p TUD-Script
%% 
%% Copyright (C) Falk Hanisch <hanisch.latex@outlook.com>, 2012-2022
%%               https://github.com/tud-cd/tudscr
%%               https://latex.wcms-file3.tu-dresden.de/phpBB3/
%% 
%% This file was generated from file(s) of the TUD-Script bundle.
%% ----------------------------------------------------------------------------
%% 
%% This work may be distributed and/or modified under the conditions of the
%% LaTeX Project Public License, either version 1.3c of this license or
%% any later version. The latest version of this license is in
%%   https://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of
%% LaTeX version 2008-05-04 or later.
%% 
%% This work has the LPPL maintenance status "maintained".
%% 
%% The current maintainer and author of this work is Falk Hanisch.
%% 
%%%% From File: tudscr-version.dtx (no git version info was found)
\NeedsTeXFormat{LaTeX2e}[2022-06-01]
\begingroup
  \catcode`\@11\relax%
  \ifx\TUD@Version\@undefined%
    \newcommand*\TUD@@Version[2]{%
      \gdef\TUD@Version{#1}%
      \gdef\TUD@KOMAVersion{#2}%
    }%
  \else%
    \newcommand*\TUD@@Version[2]{%
      \def\@tempa{#1}%
      \ifx\TUD@Version\@tempa\else%
        \@latex@warning@no@line{%
          \noexpand\TUD@Version\space is `\TUD@Version',\MessageBreak%
          but `#1' was expected!\MessageBreak%
          You should not use classes, packages or files from\MessageBreak%
          different TUD-Script bundle versions%
        }%
      \fi%
    }%
  \fi%
  \TUD@@Version{2022/09/01 v2.06p TUD-Script}{2022/05/01 v3.36 KOMA-Script}%
  \ifx\TUDScriptVersion\@undefined%
    \xdef\TUDScriptVersion{\TUD@Version}%
    \def\@tempa#1 v#2 #3\relax#4\relax#5{\gdef#5{#2}}%
    \expandafter\@tempa\TUD@Version ? ?\relax\relax{\TUDScriptVersionNumber}%
    \expandafter\@tempa\TUD@KOMAVersion ? ?\relax\relax{\TUD@KOMAVersionNumber}%
    \def\@tempa#1.#2#3#4\relax#5\relax{\gdef#5{#1.#2#3}}%
    \expandafter\@tempa%
      \TUDScriptVersionNumber\relax\TUDScriptVersion@Number\relax%
    \expandafter\@tempa%
      \TUD@KOMAVersionNumber\relax\TUD@KOMAVersion@Number\relax%
  \fi%
\endgroup
\@ifundefined{TUDScript}{%
  \DeclareRobustCommand\TUDScript{%
    \mbox{%
      \textsf{%
        T\kern.05em U\kern.05em D\kern.1em-\kern.1em Script%
      }%
    }\ifcsname xspace\endcsname\expandafter\xspace\fi%
  }%
}{}
\providecommand*\TUDScriptRepository{https://github.com/tud-cd/tudscr}
\providecommand*\TUDScriptContact{hanisch.latex@outlook.com}
\providecommand*\TUD@BugReport{%
  \TUDScriptRepository\MessageBreak\TUDScriptContact%
}
\newcommand*\TUD@ProvidesClass[3]
{%
  \ProvidesClass{#1}[%
  2022/09/01 v2.06p TUD-Script
    #3 (#2)%
  ]%
  \newcommand*\TUD@Class@KOMA{#2}%
  \ifx\TUD@Class@Parent\@undefined%
  \newcommand*\TUD@Class@Name{#1}%
  \newcommand*\TUDScriptClassName{#1}%
  \providecommand*\TUDClassName{\TUDScriptClassName}%
  \TUD@Class@Info%
  \fi%
}
\providecommand*\TUD@Class@Info{%
  \typeout{+------------------------------------------------------------------}%
  \typeout{| Corporate Design of Technische Universitaet Dresden}%
  \typeout{| Class:      \TUDScriptClassName}%
  \typeout{| Version:    \TUDScriptVersion}%
  \typeout{| Author:     Falk Hanisch (\TUDScriptContact)}%
  \typeout{| Repository: \TUDScriptRepository}%
  \typeout{+------------------------------------------------------------------}%
}
\TUD@ProvidesClass{tudscrdoc}{scrartcl}{source code documentation class}
%%%% From File: tudscr-base.dtx (no git version info was found)
\RequirePackage{tudscrbase}[%
  2022/09/01 v2.06p TUD-Script
]
\renewcommand*\TUD@KOMAoptions[1]{\PassOptionsToClass{#1}{\TUD@Class@KOMA}}
\AfterClass{\TUD@Class@KOMA}{\def\TUD@KOMAoptions{\KOMAoptions}}
%%%% From File: tudscr-misc.dtx (no git version info was found)
\RequirePackage{scrhack}[%
  2022/05/01 v3.36 KOMA-Script
]
\RequirePackage{xspace}
\xspaceaddexceptions{"=}
\PassOptionsToPackage{quiet}{marginnote}
\RequirePackage{marginnote}
\RequirePackage{shellesc}
\RequirePackage{pdftexcmds}
\PassOptionsToPackage{%
  colorlinks,%
  hyperindex=false%
}{hyperref}
\AtBeginDocument{%
  \bookmarksetup{%
    open,%
    openlevel=2,%
  }%
}
\AfterAtEndOfPackage*{hyperref}{%
  \@ifpackageloaded{bookmark}{}{\RequirePackage{bookmark}}%
  \hypersetup{%
    linkcolor=blue,%
    pdfpagelayout=OneColumn%
  }%
}
\TUD@UnwindPackage{hyperref}{%
  \ClassWarningNoLine{\TUD@Class@Name}%
  {%
    Loading the package `hyperref' is strongly\MessageBreak%
    recommended. At the very least, some essential\MessageBreak%
    commands are defined as stubs%
  }%
  \RequirePackage{url}
  \providerobustcmd*\url[1]{\texttt{\detokenize{#1}}}%
  \providerobustcmd*\nolinkurl[1]{\url{#1}}%
  \providecommand*\hypersetup[1]{}%
  \providecommand*\HyperDestRename[2]{}%
  \providerobustcmd*\href[3][]{#3}%
  \providecommand*\hyperdef[4][]{#4}%
  \providerobustcmd*\hyperref{%
    \kernel@ifnextchar[%]
      {\tud@x@hyperref@a}%
      {\tud@x@hyperref@b}%
  }%
  \newcommand*\tud@x@hyperref@a[2][]{#2}%
  \newcommand*\tud@x@hyperref@b[4]{#4}%
  \providecommand*\hypertarget[2]{#2}%
  \providecommand*\hyperlink[2]{#2}%
  \providecommand*\hyperpage[1]{#1}%
  \providecommand*\Hy@raisedlink[1]{#1}%
  \providecommand*\@currentHref{}%
}
\TUD@UnwindPackage{bookmark}{%
  \providecommand*\bookmarksetup[1]{}%
  \providecommand*\pdfbookmark[3][]{}%
  \providecommand*\currentpdfbookmark[2]{}%
  \providecommand*\subpdfbookmark[2]{}%
  \providecommand*\belowpdfbookmark[2]{}%
}
\AfterPackage*{babel}{\RequirePackage{csquotes}}
\TUD@UnwindPackage{babel}{%
  \ClassWarningNoLine{\TUD@Class@Name}%
    {Package `babel' not loaded}%
  \providecommand*\seename{see}%
  \providecommand*\alsoname{see~also}%
  \providecommand*\glqq{\quotedblbase}%
  \providecommand*\grqq{\textquotedblleft}%
}
\TUD@UnwindPackage{csquotes}{%
  \ClassWarningNoLine{\TUD@Class@Name}%
    {Package `csquotes' not loaded}%
  \providecommand\enquote[1]{\emph{#1}}%
}
%%%% From File: tudscr-doc.dtx (no git version info was found)
\newcommand*\scr@maketitle{}
\PassOptionsToClass{toc=left,fontsize=10pt,parskip=half-}{scrartcl}
\AfterClass{scrartcl}{\let\scr@maketitle\@maketitle}
\AfterClass{ltxdoc}{\let\@maketitle\scr@maketitle}
\newcommand*\tud@saved@LoadClass{}
\let\tud@saved@LoadClass=\LoadClass
\renewcommand*\LoadClass[2][]{%
  \begingroup%
    \edef\@tempc{#2}\def\@tempb{article}%
    \ifx\@tempc\@tempb%
      \let\LoadClass\tud@saved@LoadClass%
      \def\@tempc{scrartcl}%
    \fi%
    \edef\@tempc{%
      \endgroup%
      \noexpand\tud@saved@LoadClass[{#1}]{\@tempc}%
    }%
  \@tempc%
}
\newcommand*\tud@saved@PassOptionsToClass{}
\let\tud@saved@PassOptionsToClass=\PassOptionsToClass
\renewcommand*\PassOptionsToClass[2]{%
  \begingroup%
    \edef\@tempc{#2}\def\@tempb{article}%
    \ifx\@tempc\@tempb%
      \def\@tempc{scrartcl}%
    \fi%
    \edef\@tempc{%
      \endgroup%
      \noexpand\tud@saved@PassOptionsToClass{#1}{\@tempc}%
    }%
  \@tempc%
}
\LoadClassWithOptions{ltxdoc}[2015/03/26]
\setcounter{IndexColumns}{2}
\setcounter{StandardModuleDepth}{2}
\newcommand*\DisableCrossrefsForced{}
\let\DisableCrossrefsForced\DisableCrossrefs
\DeclareOption{final}{\let\tudfinalflag\relax}
\DeclareOption{texindy}{\let\tudxdyflag\relax}
\DeclareOption{xindy}{\let\tudxdyflag\relax}
\DeclareOption{xdy}{\let\tudxdyflag\relax}
\ProcessOptions\relax
\PassOptionsToPackage{ttfont=lmtt}{tudscrfonts}
\AfterPackage{tudscrfonts}{%
  \AtEndPreamble{%
    \ifnum\tud@ttfont@num>\z@\relax%
      \edef\mdseries@tt{\tud@ttfont@bf}%
    \fi%
  }%
}
%%%% From File: tudscr-localization.dtx (no git version info was found)
\newcommand*\tud@localization@define[1]{%
  \providecommand*#1{%
    \ClassError{\TUD@Class@Name}{%
      `\string#1' not defined for language `\languagename'%
    }{%
      Currently the class `\TUD@Class@Name' only supports the\MessageBreak%
      languages german and english as well as its dialects. You\MessageBreak%
      must define single patterns by yourself, e.g.:\MessageBreak%
      `\string\providecaptionname{\languagename}\string#1{<text>}'\MessageBreak%
      You can propose your definitions via\MessageBreak%
      \TUD@BugReport\MessageBreak%
      in order to implement additional language support.%
    }%
  }%
}
\tud@localization@define{\tud@general@name}
\tud@localization@define{\tud@implementation@name}
\tud@localization@define{\tud@symbols@name}
\tud@localization@define{\tud@changes@name}
\tud@localization@define{\tud@todo@name}
\tud@localization@define{\tud@environment@name}
\tud@localization@define{\tud@environments@name}
\tud@localization@define{\tud@option@name}
\tud@localization@define{\tud@options@name}
\tud@localization@define{\tud@layerpagestyle@name}
\tud@localization@define{\tud@layerpagestyles@name}
\tud@localization@define{\tud@layer@name}
\tud@localization@define{\tud@layers@name}
\tud@localization@define{\tud@length@name}
\tud@localization@define{\tud@lengths@name}
\tud@localization@define{\tud@counter@name}
\tud@localization@define{\tud@counters@name}
\tud@localization@define{\tud@TUDcolor@name}
\tud@localization@define{\tud@TUDcolors@name}
\tud@localization@define{\tud@localization@name}
\tud@localization@define{\tud@localizations@name}
\tud@localization@define{\tud@field@name}
\tud@localization@define{\tud@fields@name}
\tud@localization@define{\tud@KOMAfont@name}
\tud@localization@define{\tud@KOMAfonts@name}
\tud@localization@define{\tud@parameter@name}
\tud@localization@define{\tud@parameters@name}
\tud@localization@define{\tud@index@text}
\newcommand*\tud@localization@@german{%
  german,ngerman,austrian,naustrian,swissgerman,nswissgerman%
}
\newcommand*\tud@localization@german{%
  \expandafter\providecaptionname\expandafter{\tud@localization@@german}%
}
\tud@localization@german{\tud@general@name}{Allgemein}
\tud@localization@german{\tud@implementation@name}{Implementierung}
\tud@localization@german{\tud@symbols@name}{Symbole}
\tud@localization@german{\tud@changes@name}{\"Anderungsliste}
\tud@localization@german{\tud@todo@name}{Anstehende Aufgaben}
\tud@localization@german{\tud@environment@name}{Umg.}
\tud@localization@german{\tud@environments@name}{Umgebungen}
\tud@localization@german{\tud@option@name}{Opt.}
\tud@localization@german{\tud@options@name}{Optionen}
\tud@localization@german{\tud@layerpagestyle@name}{Seitenstil}
\tud@localization@german{\tud@layerpagestyles@name}{Seitenstile}
\tud@localization@german{\tud@layer@name}{Layer}
\tud@localization@german{\tud@layers@name}{Layer (Seitenstilebenen)}
\tud@localization@german{\tud@length@name}{L\"ange}
\tud@localization@german{\tud@lengths@name}{L\"angen}
\tud@localization@german{\tud@counter@name}{Z\"ahler}
\tud@localization@german{\tud@counters@name}{Z\"ahler}
\tud@localization@german{\tud@TUDcolor@name}{Farbe}
\tud@localization@german{\tud@TUDcolors@name}{Farben}
\tud@localization@german{\tud@localization@name}{Lok.}
\tud@localization@german{\tud@localizations@name}{Lokalisierungsmakros}
\tud@localization@german{\tud@field@name}{Feld}
\tud@localization@german{\tud@fields@name}{Eingabefelder}
\tud@localization@german{\tud@KOMAfont@name}{Schriftel.}
\tud@localization@german{\tud@KOMAfonts@name}{Schriftelemente}
\tud@localization@german{\tud@parameter@name}{Param.}
\tud@localization@german{\tud@parameters@name}{Parameter}
\tud@localization@german{\tud@index@text}{%
  Kursive Zahlen entsprechen der Seite, auf welcher der korrespondierende %
  Eintrag beschrieben wird. Unterstrichene Zahlen verweisen auf die %
  \ifcodeline@index Codezeile der \fi Definition. %
  \ifscan@allowed%
    Alle weiteren Eintr\"age sind %
    \ifcodeline@index Zeilennummern\else Seitenzahlen\fi, %
    wo der jeweilige Eintrag verwendet wird.%
  \fi%
}
\newcommand*\tud@localization@@english{%
  american,australian,british,canadian,english,newzealand,UKenglish,USenglish%
}
\newcommand*\tud@localization@english{%
  \expandafter\providecaptionname\expandafter{\tud@localization@@english}%
}
\tud@localization@english{\tud@general@name}{General}
\tud@localization@english{\tud@implementation@name}{Implementation}
\tud@localization@english{\tud@symbols@name}{Symbols}
\tud@localization@english{\tud@changes@name}{Change History}
\tud@localization@english{\tud@todo@name}{Pending tasks}
\tud@localization@english{\tud@environment@name}{env.}
\tud@localization@english{\tud@environments@name}{environments}
\tud@localization@english{\tud@option@name}{opt.}
\tud@localization@english{\tud@options@name}{options}
\tud@localization@english{\tud@layerpagestyle@name}{pagestyle}
\tud@localization@english{\tud@layerpagestyles@name}{pagestyles}
\tud@localization@english{\tud@layer@name}{layer}
\tud@localization@english{\tud@layers@name}{layers (pagestyle)}
\tud@localization@english{\tud@length@name}{length}
\tud@localization@english{\tud@lengths@name}{lengths}
\tud@localization@english{\tud@counter@name}{counter}
\tud@localization@english{\tud@counters@name}{counters}
\tud@localization@english{\tud@TUDcolor@name}{color}
\tud@localization@english{\tud@TUDcolors@name}{colors}
\tud@localization@english{\tud@localization@name}{localization}
\tud@localization@english{\tud@localizations@name}{localizations}
\tud@localization@english{\tud@field@name}{field}
\tud@localization@english{\tud@fields@name}{input fields}
\tud@localization@english{\tud@KOMAfont@name}{font}
\tud@localization@english{\tud@KOMAfonts@name}{font elements}
\tud@localization@english{\tud@parameter@name}{param.}
\tud@localization@english{\tud@parameters@name}{parameters}
\tud@localization@english{\tud@index@text}{%
  Numbers written in italic refer to the page where the corresponding entry is %
  described. Numbers underlined refer to the %
  \ifcodeline@index code line of the \fi definition. %
  \ifscan@allowed%
    All additional entries refer to the %
    \ifcodeline@index code lines \else pages \fi, %
    where the entry is used.%
  \fi%
}
%%%% From File: tudscr-misc.dtx (no git version info was found)
\AfterEndPreamble{%
  \robustify\url%
  \robustify\nolinkurl%
  \robustify\href%
  \robustify\hyperref%
  \robustify\emph%
  \robustify\dots%
  \robustify{~}%
}
\renewcommand*\@pnumwidth{2.1em}
\renewcommand*\@tocrmarg{3.1em}
\newrobustcmd*\slc{\kern.1em/\kern.1em}
\newrobustcmd*\bsc{%
  \ifx\f@family\ttdef@ult\kern-.05em\fi%
  \textbackslash%
  \ifx\f@family\ttdef@ult\kern-.05em\fi%
}
\newrobustcmd*\txb{{\raise.05em\hbox{\kern.05em\textbar\kern.05em}}}
\newcommand*\hrfn[2]{%
  \href{#1}{\trim@spaces{#2}}%
  \footnote{\strut\url{#1}}%
}
\newrobustcmd*\mailto[1]{\mbox{\href{mailto:#1}{\nolinkurl{#1}}}}
\newrobustcmd*\TUDScriptContactTitle{%
  \ifundef\emailaddress{%
    \\\expandafter\mailto\expandafter{\TUDScriptContact}%
  }{%
    \expandafter\emailaddress\expandafter{\TUDScriptContact}%
  }%
}
\AfterPackage*{hyperref}{%
  \pdfstringdefDisableCommands{%
    \let\mailto\@firstofone%
    \let\TUDScriptContactTitle\relax%
  }%
}
\NewDocumentCommand\seeplain{s m}{%
  \emph{\mbox{\IfBooleanTF{#1}{\alsoname}{\seename}}}~#2%
}
\NewExpandableDocumentCommand\@seeplain{s m}{%
  \IfBooleanTF{#1}{\alsoname}{\seename}\space#2%
}
\newcommand*\Attention[2][\z@]{%
  \marginnote{%
    \tud@setdim\fboxsep{0.25em}%
    \fbox{Achtung!}%
  }[{#1}]%
  \emph{\trim@spaces{#2}}%
}
\newcommand*\textsbn{}
\newrobustcmd*\sbnfont{\sffamily\bfseries\upshape}
\DeclareTextFontCommand\textsbn{\sbnfont}
\newcommand*\textsbi{}
\newrobustcmd*\sbifont{\sffamily\bfseries\itshape}
\DeclareTextFontCommand\textsbi{\sbifont}
\newcommand*\textttit{}
\newrobustcmd*\ttitfont{\ttfamily\itshape}
\DeclareTextFontCommand\textttit{\ttitfont}
\newcommand*\tud@english[1]{%
  \tud@language@wrn{english}%
  \let\tud@english\@firstofone%
  #1%
}
\AfterAtEndOfPackage*{babel}{%
  \AfterEndPreamble{%
    \renewcommand*\tud@english[1]{\foreignlanguage{english}{#1}}%
  }%
}
\AfterAtEndOfPackage*{polyglossia}{%
  \AfterEndPreamble{%
    \tud@if@language@loaded{english}{%
      \renewcommand*\tud@english[1]{\foreignlanguage{english}{#1}}%
    }{}%
  }%
}
\kernel@make@fragile\KOMAScript
\edef\KOMAScript{\noexpand\mbox{\expandonce\KOMAScript}\noexpand\xspace}
\robustify\KOMAScript
\robustify\TUDScript
\AfterPackage*{hyperref}{%
  \pdfstringdefDisableCommands{%
    \def\KOMAScript{KOMA-Script{}}%
    \def\TUDScript{TUD-Script{}}%
  }%
}
\NewExpandableDocumentCommand\vKOMAScript{s m}{%
  \IfArgIsEmpty{#2}{}{#2~}v\csuse{TUD@KOMAVersion\IfBooleanT{#1}{@}Number}%
}
\NewExpandableDocumentCommand\vTUDScript{s m}{%
  \IfArgIsEmpty{#2}{}{#2~}v\csuse{TUDScriptVersion\IfBooleanT{#1}{@}Number}%
}
\newrobustcmd*\CD{\tud@english{Corporate Design}\xspace}
\newrobustcmd*\CDs{\tud@english{Corporate Designs}\xspace}
\newrobustcmd*\TUD{Technische Universit\"at Dresden\xspace}
\newrobustcmd*\TnUD{Technischen Universit\"at Dresden\xspace}
\newcommand*\TUDCD{\CD der \TnUD}
\newcommand*\TUDCDs{\CDs der \TnUD}
\newrobustcmd*\DDC{%
  \mbox{%
    D\kern.05em R\kern.05em E\kern.05em S\kern.05em %
    D\kern.05em E\kern.05em N\kern.1em-\kern.1em concept%
  }\xspace%
}
\AfterPackage*{hyperref}{%
  \pdfstringdefDisableCommands{%
    \def\CD{Corporate Design{}}%
    \def\CDs{Corporate Designs{}}%
    \def\TUD{Technische Universit\"at Dresden{}}%
    \def\TnUD{Technischen Universit\"at Dresden{}}%
    \def\DDC{DRESDEN-concept{}}%
  }%
}
\newrobustcmd*\OpenSans{\textcdbn{Open~Sans}\xspace}
\newrobustcmd*\Univers{\textcdbi{Univers}\xspace}
\newrobustcmd*\DIN{\textcdbi{DIN~Bold}\xspace}
\AfterPackage*{hyperref}{%
  \pdfstringdefDisableCommands{%
    \def\OpenSans{Open Sans{}}%
    \def\Univers{Univers{}}%
    \def\DIN{DIN Bold{}}%
  }%
}
\newcommand*\notudscrartcl{%
  F\"ur die Klassen \Class{tudscrartcl} sowie \Class{tudscrposter} ist diese %
  Option nicht verf\"ugbar.%
}
\NewDocumentCommand\tud@url@normalize{s m O{https://} m m}{%
  \begingroup%
    \edef\tud@res@a{\trim@spaces{#5}}%
    \def\tud@res@b##1#4/##2#4/##3\@nil{%
      \IfArgIsEmpty{##2}{%
        \def\tud@res@c{##1}%
      }{%
        \def\tud@res@c{##2}%
      }%
    }%
    \expandafter\tud@res@b\tud@res@a #4/#4/\@nil%
    \tud@remove@enfold@char\tud@res@c{/}%
    \edef\tud@res@b{%
      \endgroup%
      \unexpanded{\def#2}{#3#4/\tud@res@c}%
      \IfBooleanT{#1}{\ifdefvoid\tud@res@a{\unexpanded{\let#2\relax}}{}}%
    }%
  \tud@res@b%
}
\newcommand*\tud@github@url@normalize[2]{%
  \tud@url@normalize*#1{github.com}{#2}%
}
\newcommand*\tud@github@url@base{}
\let\tud@github@url@base\relax
\NewDocumentCommand\GitHubBase{m}{%
  \tud@github@url@normalize\tud@github@url@base{#1}%
}
\newcommand*\tud@github@url@error{%
  \ClassError{\TUD@Class@Name}%
    {GitHub repository missing}%
    {%
      No default GitHub repository was set with\MessageBreak%
      `\detokenize{\GitHubBase{<url>}}'. You should either\MessageBreak%
      set a default one or pass it as argument.%
    }%
}
\NewDocumentCommand\GitHubRepo{d<> d'' o}{%
  \begingroup%
    \def\tud@res@a{\href}%
    \IfValueT{#1}{\tud@github@url@normalize\tud@github@url@base{#1}}%
    \ifdefvoid\tud@github@url@base{%
      \def\tud@res@a{\tud@github@url@error\@secondoftwo}%
      \def\tud@github@url@base{??}%
    }{}%
    \IfValueTF{#3}{%
      \def\tud@res@c{\csuse{@safe@activesfalse}#3{}}%
    }{%
      \expandafter\filename@parse\expandafter{\tud@github@url@base}%
      \edef\tud@res@c{%
        \noexpand\tud@english{%
          \unexpanded{GitHub\mbox{-}Repository~\textsbn}{\filename@base}%
        }%
      }%
    }%
    \IfValueT{#2}{%
      \edef\tud@res@b{\trim@spaces{#2}}%
      \Ifnumber{\tud@res@b}{%
        \IfValueF{#3}{\eappto\tud@res@c{\unskip\#\tud@res@b}}%
        \eappto\tud@github@url@base{/issues/\tud@res@b}%
      }{%
        \tud@remove@enfold@char\tud@res@b{/}%
        \eappto\tud@github@url@base{/\tud@res@b}%
      }%
    }%
    \protected@edef\tud@res@a{%
      \endgroup%
      \expandonce\tud@res@a{\tud@github@url@base}{\expandonce\tud@res@c}%
    }%
  \tud@res@a\xspace%
}
\NewDocumentCommand\GitHubDownload{d<> d'' o m}{%
  \begingroup%
    \def\tud@res@a{\href}%
    \IfValueT{#1}{\tud@github@url@normalize\tud@github@url@base{#1}}%
    \ifdefvoid\tud@github@url@base{%
      \def\tud@res@a{\tud@github@url@error\@secondoftwo}%
      \def\tud@github@url@base{??}%
    }{}%
    \IfValueTF{#2}{%
      \edef\tud@res@b{\trim@spaces{#2}}%
      \tud@remove@enfold@char\tud@res@b{/}%
      \eappto\tud@github@url@base{/releases/download/\tud@res@b}%
    }{%
      \appto\tud@github@url@base{/releases/latest/download}%
    }%
    \appto\tud@github@url@base{/#4}%
    \IfValueTF{#3}{%
      \def\tud@res@c{\csuse{@safe@activesfalse}#3{}}%
    }{%
      \def\tud@res@c{\textttit{#4}}%
    }%
    \protected@edef\tud@res@a{%
      \endgroup%
      \expandonce\tud@res@a{\tud@github@url@base}{\expandonce\tud@res@c}%
    }%
  \tud@res@a%
}
\newcommand*\tud@ctan@url@normalize[2]{%
  \tud@url@normalize#1{ctan.org}{#2}%
}
\NewDocumentCommand\CTAN{d<> o}{%
  \begingroup%
    \def\tud@res@a{\href}%
    \tud@ctan@url@normalize\tud@res@d{\IfValueT{#1}{#1}}%
    \IfValueTF{#2}{%
      \def\tud@res@c{\csuse{@safe@activesfalse}#2{}}%
    }{%
      \def\tud@res@c{%
        \tud@english{Comprehensive \Lettering{TeX} Archive Network~(CTAN)}%
      }%
    }%
    \protected@edef\tud@res@a{%
      \endgroup%
      \expandonce\tud@res@a{\tud@res@d}{\expandonce\tud@res@c}%
    }%
  \tud@res@a\xspace%
}
\NewDocumentCommand\scrguide{O{\KOMAScript-Handbuch}}{%
  \CTAN<pkg/koma-script>[#1]%
}
\newcommand*\tud@if@cdfont@activated{}
\let\tud@if@cdfont@activated\@secondoftwo
\AtBeginDocument{%
  \ifdefined\if@tud@cdfont@active
    \expandafter\@firstofone%
  \else%
    \expandafter\@gobble%
  \fi{%
    \renewcommand*\tud@if@cdfont@activated{%
      \if@tud@cdfont@active%
        \expandafter\@firstoftwo%
      \else%
        \expandafter\@secondoftwo%
      \fi%
    }%
  }%
}
\newcommand*\tud@lttr@kern[2][0]{%
  \kern\dimexpr1em*%
    \numexpr\ifdim\the\fontdimen\@ne\font>\z@#1+\fi#2\relax%
  /100\relax%
}
\newcommand*\tud@lttr@shift[2]{%
  \lower\dimexpr1ex*#1/100\relax\hbox{#2}%
}
\newcommand*\tud@lttr@topscript[2]{%
  \begingroup%
    \setbox\z@\hbox{#1}%
    \vbox to\ht\z@{%
      \hbox{%
        \check@mathfonts%
        \fontsize\sf@size\z@%
        \math@fontsfalse\selectfont%
        #2%
      }%
      \vss%
    }%
  \endgroup%
}
\RequirePackage{l3draw}
\ExplSyntaxOn
\newcommand*\tud@lttr@reflect[1]{%
  \begingroup%
  \rlap{%
    \draw_begin:
    \hcoffin_set:Nn \l_tmpa_coffin{ #1 }
    \draw_transform_xslant:n{ \the\dimexpr\fontdimen\@ne\font*2\relax }
    \draw_transform_xscale:n{ -1 }
    \draw_coffin_use:Nnn \l_tmpa_coffin { hc } { vc }
    \draw_end:
  }%
  \hphantom{#1}%
  \endgroup%
}
\ExplSyntaxOff
\newcommand*\tud@lttr@list{}
\newcommand*\tud@lttr@define[3][]{%
  \expandafter\newcommand\expandafter*%
    \csname\detokenize{tud@lettering@#2}\endcsname{#3}%
  \listadd\tud@lttr@list{#2}%
  \forcsvlist{\tud@lttr@alias{#2}}{#1}%
}
\newcommand*\tud@lttr@alias[2]{%
  \csdef{\detokenize{tud@lettering@#2}}{\csuse{\detokenize{tud@lettering@#1}}}%
}
\newrobustcmd*\Lettering[1]{%
  \ifcsundef{\detokenize{tud@lettering@#1}}{%
    \ClassError{\TUD@Class@Name}%
      {Lettering `\detokenize{#1}' missing}%
      {%
        `\@backslashchar\detokenize{tud@lettering@#1}'\MessageBreak%
        was never defined, possible values as argument are:\MessageBreak%
        \tud@lttr@list%
      }%
  }{%
    \mbox{\csuse{\detokenize{tud@lettering@#1}}}%
  }%
}
\AfterPackage*{hyperref}{%
  \pdfstringdefDisableCommands{%
    \let\Lettering\@firstofone%
  }%
}
\tud@lttr@define{TeX}{%
  T%
  \tud@if@cdfont@activated{%
    \tud@lttr@kern[-4]{-17}%
    \tud@lttr@shift{40}{E}%
    \tud@lttr@kern[7]{-6}%
  }{%
    \tud@lttr@kern[-5]{-17}%
    \tud@lttr@shift{48}{E}%
    \tud@lttr@kern[2]{-13}%
  }%
  X\@%
}
\tud@lttr@define{LaTeX}{%
  L%
  \tud@if@cdfont@activated{%
    \tud@lttr@kern[9]{-32}\tud@lttr@topscript{T}{A}%
    \tud@lttr@kern[1]{-13}%
  }{%
    \tud@lttr@kern[3]{-33}\tud@lttr@topscript{T}{A}%
    \tud@lttr@kern[-7]{-17}%
  }%
  \Lettering{TeX}%
}
\tud@lttr@define{LaTeXe}{%
  \Lettering{LaTeX}%
  \tud@if@cdfont@activated{%
    \tud@lttr@kern[-2]{8}%
  }{%
    \tud@lttr@kern[-2]{7}%
  }%
  \hbox{%
    \m@th%
    \if b\expandafter\@car\f@series x\@nil\csname boldmath\endcsname\fi%
    2$_{\textstyle\varepsilon}$%
  }\@%
}
\tud@lttr@define{LaTeX3}{%
  \Lettering{LaTeX}%
  \tud@if@cdfont@activated{%
    \tud@lttr@kern[-2]{8}%
  }{%
    \tud@lttr@kern[-2]{7}%
  }%
  3\@%
}
\tud@lttr@define{pdfLaTeX}{%
  pdf%
  \tud@if@cdfont@activated{%
    \tud@lttr@kern{3}%
  }{%
    \tud@lttr@kern[-6]{4}%
  }%
  \Lettering{LaTeX}%
}
\tud@lttr@define{LuaLaTeX}{%
  Lua%
  \tud@if@cdfont@activated{%
    \tud@lttr@kern{-2}%
  }{%
    \tud@lttr@kern[-3]{3}%
  }%
  \Lettering{LaTeX}%
}
\tud@lttr@define{XeLaTeX}{%
  X%
  \tud@if@cdfont@activated{%
    \tud@lttr@kern[-15]{-5}%
    \tud@lttr@shift{40}{\tud@lttr@reflect{E}}%
    \tud@lttr@kern[15]{-12}%
  }{%
    \tud@lttr@kern[-9]{-10}%
    \tud@lttr@shift{48}{\tud@lttr@reflect{E}}%
    \tud@lttr@kern[2]{-10}%
  }%
  \Lettering{LaTeX}%
}
\tud@lttr@define{BibTeX}{%
  B%
  \tud@if@cdfont@activated{%
    \tud@lttr@kern{-5}%
    \tud@lttr@shift{7}{\tud@lttr@topscript{x}{I\tud@lttr@kern{-5}B}}%
    \tud@lttr@kern{-10}%
  }{%
    \tud@lttr@kern{-5}%
    \tud@lttr@shift{-10}{\tud@lttr@topscript{x}{I\tud@lttr@kern[-6]{-3}B}}%
    \tud@lttr@kern[-5]{-7}%
  }%
  \Lettering{TeX}%
}
\tud@lttr@define[TeX Live,TeX~Live]{TeXLive}{%
  \Lettering{TeX}%
  \tud@lttr@kern[-5]{\tud@if@cdfont@activated{20}{15}}Live\@%
}
\tud@lttr@define{MacTeX}{%
  Mac\tud@lttr@kern{-3}\Lettering{TeX}%
}
\tud@lttr@define{MiKTeX}{%
  MiK\tud@lttr@kern{\tud@if@cdfont@activated{6}{-2}}\Lettering{TeX}%
}
\tud@lttr@define{LyX}{%
  L%
  \tud@if@cdfont@activated{%
    \tud@lttr@kern[-3]{-11}%
    \tud@lttr@shift{40}{Y}%
    \tud@lttr@kern[7]{-11}%
  }{%
    \tud@lttr@kern[-9]{-9}%
    \tud@lttr@shift{40}{Y}%
    \tud@lttr@kern[1]{-11}%
  }%
  X\@%
}
\tud@lttr@define{TikZ}{%
  \textnormal{Ti}\textit{k}%
   \tud@if@cdfont@activated{%
    \tud@lttr@kern[5]{-2}%
  }{%
    \tud@lttr@kern[10]{-3}%
  }%
  \textnormal{Z}\@%
}
%%%% From File: tudscr-doc.dtx (no git version info was found)
\AtEndOfClass{%
  \@ifpackageloaded{tudscr-gitinfo}{%
    \GetFileInfo{\jobname}%
    \title{\file{\filename}}%
    \date{%
      \filedate%
      \ifdefvoid\fileversion{}{~\fileversion}%
      \ifdefvoid\filerevision{}{~\texttt{\filerevision}}%
    }%
  }{}%
  \CodelineIndex%
  \RecordChanges%
}
\AtBeginDocument{%
  \ifdefvoid\filename{%
    \IfFileExists{\jobname.dtx}{%
      \edef\filename{\jobname.dtx}%
    }{%
      \edef\filename{\jobname.tex}%
    }%
    \undef\filedate%
    \undef\fileversion%
    \undef\fileinfo%
    \undef\filerevision%
    \undef\filedir%
    \expandafter\GetFileInfo\expandafter{\filename}%
  }{}%
  \ifdefvoid\filerevision{\let\filerevision\@empty}{}%
  \ifdefvoid\filedir{\let\filedir\@empty}{}%
  \newcommand*\filepath{\ifdefvoid\filerevision{main}{\filerevision}/\filedir}%
  \expandafter\selectlanguage\expandafter{\languagename}%
}
\pretocmd\@docinclude{%
  \GetFileInfo{#1}\pagestyle{tudscrdoc}%
}{}{\tud@patch@wrn{@docinclude}}
\def\ps@tudscrdoc{%
  \let\@mkboth\@gobbletwo%
  \let\@oddhead\@empty%
  \let\@evenhead\@empty%
  \def\@oddfoot{%
    File\ifnum\c@part>\z@~\thepart\fi:~%
    \texttt{%
      \ifdefvoid\filename{?}{%
        \ifdefvoid\tud@github@url@base%
          {\filename}%
          {\GitHubRepo'blob/\filepath\filename'[\filename]}%
      }%
    }%
    \enskip Version:~\ifdefvoid\filedate{?}{\filedate}%
    \ifdefvoid\fileversion{}{~\fileversion}%
    \ifdefvoid\filerevision{}{%
      \enskip\texttt{%
        \ifdefvoid\tud@github@url@base%
          {\filerevision}%
          {\texttt{\GitHubRepo'commit/\filerevision'[\filerevision]}}%
      }%
    }%
    \hfill\thepage%
  }%
  \def\@evenfoot{\@oddfoot}%
}
\pagestyle{tudscrdoc}%
\let\ps@titlepage\ps@tudscrdoc%
\tud@newdim\tud@dim@marginnotevskip
\AfterPackage*{marginnote}{%
  \renewcommand*\marginpar[2][]{%
    \IfArgIsEmpty{#1}{%
      \marginnote{#2}[\tud@dim@marginnotevskip]%
    }{%
      \marginnote[{#1}]{#2}[\tud@dim@marginnotevskip]%
    }%
  }%
}
\newcommand*\doc@createdescribes[1]{%
  \expandafter\newcommand\expandafter*\csname Describe#1s\endcsname[2][]{%
    \tud@setdim\tud@dim@marginnotevskip{\z@}%
    \def\@tempc{##2}%
    \@for\@tempa:=\@tempc\do{%
      \trim@spaces@in\@tempa%
      \ifx\@tempa\@empty\else%
        \def\@tempb{\@nameuse{Describe#1}[{##1}]}%
        \expandafter\@tempb\expandafter{\@tempa}%
        \tud@addtodim\tud@dim@marginnotevskip{1\baselineskip}%
      \fi%
    }%
    \tud@setdim\tud@dim@marginnotevskip{\z@}%
    \ignorespaces%
  }%
}
\NewDocumentCommand\tud@idx@typemarkup{r()}{%
  \begingroup%
  \normalfont\scriptsize\space(#1)%
  \endgroup%
}
\AtBeginDocument{\let\PrintMacroName\@@PrintMacroName}
\apptocmd\@NewDocElement{%
  \doc@createdescribes{#2}%
  \csletcs{@@PrintDescribe#2}{PrintDescribe#2}%
  \csletcs{@@Print#2Name}{Print#2Name}%
  \csletcs{@@SpecialMain#2Index}{SpecialMain#2Index}%
  \csletcs{@@Special#2Index}{Special#2Index}%
}{}{\tud@patch@wrn{@NewDocElement}}
\patchcmd\@NewDocElement{%
  \@temptokena\expandafter{%
    \expandafter\textnormal\expandafter{%
      \expandafter\space\expandafter(\doc@printtype)%
    }%
  }%
}{%
  \@temptokena\expandafter{%
    \expandafter\textnormal\expandafter{%
      \expandafter\tud@idx@typemarkup\expandafter(\doc@printtype)\strut%
    }%
  }%
}{}{\tud@patch@wrn{@NewDocElement}}
\newcommand*\tud@idx@sortkey{}
\let\tud@idx@sortkey\relax
\newcommand*\tud@idx@format{}
\let\tud@idx@format\relax
\newcommand*\tud@idx@element{}
\let\tud@idx@element\relax
\newcommand*\tud@idx@parent{}
\let\tud@idx@parent\relax
\CheckCommand*\doc@createspecialindexes[3]{%
  \@temptokena{\space (#2)}%
  \@temptokenb{#3:}%
  \@nameedef{SpecialMain#1Index}##1{%
    \noexpand\@bsphack
    \ifdoc@toplevel
      \noexpand\special@index{%
        ##1\noexpand\actualchar{\string\ttfamily\space##1}%
        \ifx\@nil#2\@nil\else\the\@temptokena\fi
        \noexpand\encapchar main%
      }%
    \fi
    \ifx\@nil#3\@nil\else
      \noexpand\special@index{%
        \the\@temptokenb\noexpand\levelchar
        ##1\noexpand\actualchar{\string\ttfamily\space##1}%
        \noexpand\encapchar main%
      }%
    \fi
    \noexpand\@esphack%
  }%
  \@nameedef{Special#1Index}##1{%
    \noexpand\@bsphack
    \ifdoc@toplevel
      \noexpand\doc@providetarget
      \noexpand\index{%
        ##1\noexpand\actualchar{\string\ttfamily\space##1}%
        \ifx\@nil#2\@nil\else\the\@temptokena\fi
        \noexpand\doc@handleencap{usage}%
      }%
    \fi
    \ifx\@nil#3\@nil\else
      \noexpand\index{%
        \the\@temptokenb\noexpand\levelchar
        ##1\noexpand\actualchar{\string\ttfamily\space##1}%
        \noexpand\doc@handleencap{usage}%
      }%
    \fi
    \noexpand\@esphack%
  }%
}
\renewcommand*\doc@createspecialindexes[3]{%
  \@temptokena{\space (#2)}%
  \@temptokenb{#3:}%
  \@nameedef{SpecialMain#1Index}##1{%
    \noexpand\@bsphack
    \ifdoc@toplevel
      \noexpand\special@index{%
        % PATCH: add `\the\@temptokena' to sorting argument
        ##1\ifx\@nil#2\@nil\else\the\@temptokena\fi
        \noexpand\actualchar{\string\ttfamily\space##1}%
        % PATCH: add `\tud@idx@typemarkup' for markup
        \ifx\@nil#2\@nil\else\noexpand\tud@idx@typemarkup\the\@temptokena\fi
        \noexpand\encapchar main%
      }%
    \fi
    \ifx\@nil#3\@nil\else
      \noexpand\special@index{%
        \the\@temptokenb\noexpand\levelchar
        % PATCH: add `\the\@temptokena' to sorting argument
        ##1\ifx\@nil#2\@nil\else\the\@temptokena\fi
        \noexpand\actualchar{\string\ttfamily\space##1}%
        \noexpand\encapchar main%
      }%
    \fi
    \noexpand\@esphack%
    % PATCH: assign used sort key and formatted entry to dedicated macros
    \gdef\noexpand\tud@idx@sortkey{##1\ifx\@nil#2\@nil\else\the\@temptokena\fi}%
    \gdef\noexpand\tud@idx@format{%
      {\string\ttfamily\space##1}%
      \ifx\@nil#2\@nil\else\noexpand\tud@idx@typemarkup\the\@temptokena\fi
    }%
    % PATCH: reset settings for nested index and changelog entries
    \gdef\noexpand\tud@idx@element{#1}%
    \global\let\noexpand\tud@idx@parent\relax%
  }%
  \@nameedef{Special#1Index}##1{%
    \noexpand\@bsphack
    \ifdoc@toplevel
      \noexpand\doc@providetarget
      \noexpand\index{%
        % PATCH: add `\the\@temptokena' to sorting argument
        ##1\ifx\@nil#2\@nil\else\the\@temptokena\fi
        \noexpand\actualchar{\string\ttfamily\space##1}%
        % PATCH: add `\tud@idx@typemarkup' for markup
        \ifx\@nil#2\@nil\else\noexpand\tud@idx@typemarkup\the\@temptokena\fi
        \noexpand\doc@handleencap{usage}%
      }%
    \fi
    \ifx\@nil#3\@nil\else
      \noexpand\index{%
        \the\@temptokenb\noexpand\levelchar
        % PATCH: add `\the\@temptokena' to sorting argument
        ##1\ifx\@nil#2\@nil\else\the\@temptokena\fi
        \noexpand\actualchar{\string\ttfamily\space##1}%
        \noexpand\doc@handleencap{usage}%
      }%
    \fi
    \noexpand\@esphack%
    % PATCH: assign used sort key and formatted entry to dedicated macros
    \gdef\noexpand\tud@idx@sortkey{##1\ifx\@nil#2\@nil\else\the\@temptokena\fi}%
    \gdef\noexpand\tud@idx@format{%
      {\string\ttfamily\space##1}%
      \ifx\@nil#2\@nil\else\noexpand\tud@idx@typemarkup\the\@temptokena\fi
    }%
    % PATCH: reset settings for nested index and changelog entries
    \gdef\noexpand\tud@idx@element{#1}%
    \global\let\noexpand\tud@idx@parent\relax%
  }%
}
\CheckCommand*\doc@createspecialmacrolikeindexes[3]{%
  \@temptokena{\space (#2)}%
  \@temptokenb{#3:}%
  \@nameedef{Code#1Index}##1##2{%
    \noexpand\@SpecialIndexHelper@##2\noexpand\@nil
    \noexpand\@bsphack
    \noexpand\ifdoc@noindex\noexpand\else
      \ifdoc@toplevel
        \noexpand\special@index{%
          \noexpand\@gtempa\noexpand\actualchar
          \string\verb% % to fool emacs highlighting
          \noexpand\quotechar*\noexpand\verbatimchar
          \noexpand\bslash\noexpand\@gtempa\noexpand\verbatimchar
          \ifx\@nil#2\@nil\else \the\@temptokena \fi
          \noexpand\encapchar ##1%
        }%
      \fi
      \ifx\@nil#3\@nil\else
        \noexpand\special@index{%
          \the\@temptokenb\noexpand\levelchar
          \noexpand\@gtempa\noexpand\actualchar
          \string\verb% % to fool emacs highlighting
          \noexpand\quotechar*\noexpand\verbatimchar
          \noexpand\bslash\noexpand\@gtempa\noexpand\verbatimchar
          \noexpand\encapchar ##1%
        }%
      \fi
    \noexpand\fi
    \noexpand\@esphack%
  }%
  \@nameedef{SpecialMain#1Index}##1{%
    \expandafter\noexpand\csname Code#1Index\endcsname{main}{##1}%
  }%
  \@nameedef{Special#1Index}##1{%
    \noexpand\@SpecialIndexHelper@##1\noexpand\@nil
    \noexpand\@bsphack
    \noexpand\ifdoc@noindex\noexpand\else
      \ifdoc@toplevel
        \noexpand\doc@providetarget
        \noexpand\index{%
          \noexpand\@gtempa\noexpand\actualchar
          \string\verb% % to fool emacs highlighting
          \noexpand\quotechar*\noexpand\verbatimchar
          \noexpand\bslash\noexpand\@gtempa\noexpand\verbatimchar
          \ifx\@nil#2\@nil\else \the\@temptokena \fi
          \noexpand\doc@handleencap{usage}%
        }%
      \fi
      \ifx\@nil#3\@nil\else
        \noexpand\index{%
          \the\@temptokenb\noexpand\levelchar
          \noexpand\@gtempa\noexpand\actualchar
          \string\verb% % to fool emacs highlighting
          \noexpand\quotechar*\noexpand\verbatimchar
          \noexpand\bslash\noexpand\@gtempa\noexpand\verbatimchar
          \noexpand\doc@handleencap{usage}%
        }%
      \fi
    \noexpand\fi
    \noexpand\@esphack%
  }%
}
\renewcommand*\doc@createspecialmacrolikeindexes[3]{%
  \@temptokena{\space (#2)}%
  \@temptokenb{#3:}%
  \@nameedef{Code#1Index}##1##2{%
    \noexpand\@SpecialIndexHelper@##2\noexpand\@nil
    \noexpand\@bsphack
    \noexpand\ifdoc@noindex\noexpand\else
      \ifdoc@toplevel
        \noexpand\special@index{%
          % PATCH: add `\the\@temptokena' to sorting argument
          \noexpand\@gtempa\ifx\@nil#2\@nil\else\the\@temptokena\fi
          \noexpand\actualchar
          \string\verb% % to fool emacs highlighting
          \noexpand\quotechar*\noexpand\verbatimchar
          \noexpand\bslash\noexpand\@gtempa\noexpand\verbatimchar
          % PATCH: add `\tud@idx@typemarkup' for markup
          \ifx\@nil#2\@nil\else\noexpand\tud@idx@typemarkup\the\@temptokena\fi
          \noexpand\encapchar ##1%
        }%
      \fi
      \ifx\@nil#3\@nil\else
        \noexpand\special@index{%
          \the\@temptokenb\noexpand\levelchar
          % PATCH: add `\the\@temptokena' to sorting argument
          \noexpand\@gtempa\ifx\@nil#2\@nil\else\the\@temptokena\fi
          \noexpand\actualchar
          \string\verb% % to fool emacs highlighting
          \noexpand\quotechar*\noexpand\verbatimchar
          \noexpand\bslash\noexpand\@gtempa\noexpand\verbatimchar
          \noexpand\encapchar ##1%
        }%
      \fi
    \noexpand\fi
    \noexpand\@esphack%
  }%
  \@nameedef{SpecialMain#1Index}##1{%
    \expandafter\noexpand\csname Code#1Index\endcsname{main}{##1}%
    % PATCH: assign used sort key and formatted entry to dedicated macros
    \xdef\noexpand\tud@idx@sortkey{%
      \noexpand\expandonce\noexpand\@gtempa%
      \ifx\@nil#2\@nil\else\noexpand\unexpanded{\the\@temptokena}\fi%
    }%
    \xdef\noexpand\tud@idx@format{%
      \unexpanded{\noexpand\string\noexpand\verb}%
      \unexpanded{\noexpand\quotechar*\noexpand\verbatimchar}%
      \unexpanded{\noexpand\bslash}\noexpand\expandonce\noexpand\@gtempa%
      \unexpanded{\noexpand\verbatimchar}%
      \ifx\@nil#2\@nil\else
        \noexpand\unexpanded{\noexpand\tud@idx@typemarkup\the\@temptokena}%
      \fi
    }%
    % PATCH: reset settings for nested index and changelog entries
    \gdef\noexpand\tud@idx@element{#1}%
    \global\let\noexpand\tud@idx@parent\relax
  }%
  \@nameedef{Special#1Index}##1{%
    \noexpand\@SpecialIndexHelper@##1\noexpand\@nil
    \noexpand\@bsphack
    \noexpand\ifdoc@noindex\noexpand\else
      \ifdoc@toplevel
        \noexpand\doc@providetarget
        \noexpand\index{%
          % PATCH: add `\the\@temptokena' to sorting argument
          \noexpand\@gtempa\ifx\@nil#2\@nil\else\the\@temptokena\fi
          \noexpand\actualchar
          \string\verb% % to fool emacs highlighting
          \noexpand\quotechar*\noexpand\verbatimchar
          \noexpand\bslash\noexpand\@gtempa\noexpand\verbatimchar
          % PATCH: add `\tud@idx@typemarkup' for markup
          \ifx\@nil#2\@nil\else\noexpand\tud@idx@typemarkup\the\@temptokena\fi
          \noexpand\doc@handleencap{usage}%
        }%
      \fi
      \ifx\@nil#3\@nil\else
        \noexpand\index{%
          \the\@temptokenb\noexpand\levelchar
          % PATCH: add `\the\@temptokena' to sorting argument
          \noexpand\@gtempa\ifx\@nil#2\@nil\else\the\@temptokena\fi
          \noexpand\actualchar
          \string\verb% % to fool emacs highlighting
          \noexpand\quotechar*\noexpand\verbatimchar
          \noexpand\bslash\noexpand\@gtempa\noexpand\verbatimchar
          \noexpand\doc@handleencap{usage}%
        }%
      \fi
    \noexpand\fi
    \noexpand\@esphack%
    % PATCH: assign used sort key and formatted entry to dedicated macros
    \xdef\noexpand\tud@idx@sortkey{%
      \noexpand\expandonce\noexpand\@gtempa%
      \ifx\@nil#2\@nil\else\noexpand\unexpanded{\the\@temptokena}\fi%
    }%
    \xdef\noexpand\tud@idx@format{%
      \unexpanded{\noexpand\string\noexpand\verb}%
      \unexpanded{\noexpand\quotechar*\noexpand\verbatimchar}%
      \unexpanded{\noexpand\bslash}\noexpand\expandonce\noexpand\@gtempa%
      \unexpanded{\noexpand\verbatimchar}%
      \ifx\@nil#2\@nil\else
        \noexpand\unexpanded{\noexpand\tud@idx@typemarkup\the\@temptokena}%
      \fi
    }%
    % PATCH: reset settings for nested index and changelog entries
    \gdef\noexpand\tud@idx@element{#1}%
    \global\let\noexpand\tud@idx@parent\relax
  }%
}
\def\tud@res@a#1{%
  \kernel@ifnextchar[%]
  {\tud@res@b{#1}}{\tud@res@b{#1}[]}%
}
\def\tud@res@b#1[#2]#3#4{%
  #1[{%
    idxgroup=\csname tud@#4s@name\endcsname,%
    idxtype=\csname tud@#4@name\endcsname,%
    printtype=\csname tud@#4@name\endcsname,%
    #2%
  }]{#3}{#4}%
}
\tud@res@a\RenewDocElement[macrolike,idxgroup,idxtype,printtype]{Macro}{macro}
\tud@res@a\RenewDocElement{Env}{environment}
\tud@res@a\NewDocElement{Option}{option}
\tud@res@a\NewDocElement{LayerPageStyle}{layerpagestyle}
\tud@res@a\NewDocElement{Layer}{layer}
\tud@res@a\NewDocElement[macrolike]{Length}{length}
\tud@res@a\NewDocElement{Counter}{counter}
\tud@res@a\NewDocElement{Color}{TUDcolor}
\tud@res@a\NewDocElement[macrolike]{Localization}{localization}
\tud@res@a\NewDocElement[macrolike]{Field}{field}
\tud@res@a\NewDocElement{Font}{KOMAfont}
\tud@res@a\NewDocElement{Parameter}{parameter}
\newcommand*\DescribeMacroParameters{}
\def\DescribeMacroParameters{%
  \kernel@ifnextchar[%]
  {\Describe@Parameters{Macro}}{\Describe@Parameters{Macro}[]}%
}
\newcommand*\DescribeEnvParameters{}
\def\DescribeEnvParameters{%
  \kernel@ifnextchar[%]
  {\Describe@Parameters{Env}}{\Describe@Parameters{Env}[]}%
}
\newcommand*\Describe@Parameters{}
\def\Describe@Parameters#1[#2]#3#4{%
  \begingroup%
    \csname keys_set:nn\endcsname{doc}{#2}%
    \ifdoc@noindex%
      \aftergroup\@gobble%
    \else%
      \aftergroup\@firstofone%
    \fi%
  \endgroup{%
    \def\@tempc{#3}%
    \@for\@tempa:=\@tempc\do{%
      \trim@spaces@in\@tempa%
      \ifx\@tempa\@empty\else%
        \begingroup%
          \let\index\@gobble%
          \def\@tempb{\@nameuse{Describe#1}[noprint]}%
          \expandafter\@tempb\expandafter{\@tempa}%
          \xdef\tud@idx@parent{%
            {\expandonce\tud@idx@sortkey}{\expandonce\tud@idx@format}%
          }%
        \endgroup%
        \DescribeParameters[{#2,noprint}]{#4}%
      \fi%
    }%
  }%
  \begingroup%
    \csname keys_set:nn\endcsname{doc}{#2}%
    \ifdoc@noprint%
      \aftergroup\@gobble%
    \else%
      \aftergroup\@firstofone%
    \fi%
  \endgroup{%
    \DescribeParameters[{#2,noindex}]{#4}%
  }%
  \global\let\tud@idx@parent\relax%
}
\renewcommand*\SpecialMainParameterIndex[1]{%
  \ifx\tud@idx@parent\relax%
    \@expandtwoargs\in@{\tud@idx@element}{Macro,Env}%
    \ifin@%
      \xdef\tud@idx@parent{%
        {\expandonce\tud@idx@sortkey}{\expandonce\tud@idx@format}%
      }%
    \else%
      \ClassError{\TUD@Class@Name}{No previous macro or environment}{%
        Since parameters can only be used for macros or\MessageBreak%
        environments, you have to use `parameter' within\MessageBreak%
        `macro' or `environment'.%
      }%
    \fi%
  \fi%
  \ifx\tud@idx@parent\relax\else%
    \gdef\tud@idx@sortkey{#1\space(\tud@parameter@name)}%
    \gdef\tud@idx@format{%
      {\string\ttfamily\space#1}%
      \tud@idx@typemarkup\space(\tud@parameter@name)%
    }%
    \@bsphack%
    \special@index{%
      \expandafter\@firstoftwo\tud@idx@parent\actualchar%
      \expandafter\@secondoftwo\tud@idx@parent\levelchar%
      \tud@idx@sortkey\actualchar\tud@idx@format%
      \encapchar main%
    }%
    \@esphack%
  \fi%
}
\renewcommand*\SpecialParameterIndex[1]{%
  \ifx\tud@idx@parent\relax%
    \ClassError{\TUD@Class@Name}{No macro or environment given}{%
      Since parameters can only be used for macros or\MessageBreak%
      environments, you have to use an appropriate command like\MessageBreak%
      `\string\DescribeMacroParameters' or `\string\DescribeEnvParameters'.%
    }%
  \else%
    \gdef\tud@idx@sortkey{#1\space(\tud@parameter@name)}%
    \gdef\tud@idx@format{%
      {\string\ttfamily\space#1}%
      \tud@idx@typemarkup\space(\tud@parameter@name)%
    }%
    \@bsphack%
    \index{%
      \expandafter\@firstoftwo\tud@idx@parent\actualchar%
      \expandafter\@secondoftwo\tud@idx@parent\levelchar%
      \tud@idx@sortkey\actualchar\tud@idx@format%
      \encapchar usage%
    }%
    \@esphack%
  \fi%
}
\ifdefined\tudxdyflag
\newcommand*\tud@xdy@filesep{?-}
\newcommand*\tud@xdy@reference[1]{0:\filesep#1:\thepage}
\newcommand*\tud@xdy@destination[3]{%
  #1\if#2\expandafter\@car\tud@xdy@filesep\@nil\else\mbox{--}#2\fi%
  \ifnum#3>\z@\textsubscript{\kern.1em#3}\fi%
}
\newcommand*\tud@xdy@mapping[2]{\tud@xdy@@mapping{#1}#2\@nil}
\newcommand*\tud@xdy@@mapping{}
\def\tud@xdy@@mapping#1#2:#3-#4:#5\@nil{%
  \begingroup%
    \ifundef\hyperlink{\let\tud@res@a\@gobble}{\let\tud@res@a\@firstofone}%
    \csname\ifx\\#1\\relax\else#1\fi\endcsname{%
      \tud@res@a{\hyperlink{page.#5}}{\tud@xdy@destination{#5}{#3}{#4}}%
    }%
  \endgroup%
}
\AfterPackage*{hypdoc}{%
  \renewcommand*\tud@xdy@reference[1]{\the\c@HD@hypercount:\filesep#1:\thepage}%
  \def\tud@xdy@@mapping#1#2:#3-#4:#5\@nil{%
    \ifnum#2>\z@\relax
      \hdclindex{#2}{#1}{\tud@xdy@destination{#5}{#3}{#4}}%
    \else
        \csname\ifx\\#1\\relax\else#1\fi\endcsname{%
          \hyperlink{page.#5}{\tud@xdy@destination{#5}{#3}{#4}}%
        }%
    \fi
  }%
}
\fi
\ifdefined\tudxdyflag
\newcommand*\lettergroup[1]{%
  \par%
  \ifundef\belowpdfbookmark{}{%
    \smash{\raisebox{2\baselineskip}{\belowpdfbookmark{#1}{theindex/#1}}}%
  }%
  \centerline{\normalsize\textbf{\textsf{#1}}}%
  \par\smallskip\nopagebreak%
}
\newcommand*\lettergroupDefault[1]{\lettergroup{\tud@symbols@name}}
\fi
\ifdefined\tudxdyflag
\newcommand*\tud@xdy@wrindex[1]{%
    \protected@write\@indexfile{}{%
      \string\indexentry{#1}{\tud@xdy@reference{0}}%
    }%
  \endgroup%
  \@esphack%
}
\newcommand*\tud@xdy@page@wrindex[1]{%
  \begingroup
    \let\@wrindex\tud@xdy@wrindex%
    \index{#1}%
  \endgroup
}
\AfterPackage*{hypdoc}{%
  \renewcommand*\tud@xdy@page@wrindex[1]{%
    \begingroup
      \let\@wrindex\tud@xdy@wrindex%
      \HDorg@index{#1}%
    \endgroup
  }
}
\newcommand*\tud@xdy@codeline@wrindex[1]{%
  \if@filesw
    \begingroup
      \let\protect\noexpand
      \immediate\write\@indexfile{%
        \string\indexentry{#1}{\tud@xdy@reference{\number\c@CodelineNo}}%
      }%
    \endgroup
  \fi
}
\fi
\def\changehistoryname{\tud@changes@name}
\CheckCommand*\changes@[3]{%
  \protected@edef\@tempa{%
    \noexpand\glossary{%
      #1%
      \ifdoc@reportchangedates\space -- #2\fi
      \levelchar
      \ifx\saved@macroname\@empty
        \quotechar!%
        \actualchar
        \generalname
      \else
        \saved@indexname
        \actualchar
        \string\verb\quotechar*%
        \verbatimchar\saved@macroname
        \verbatimchar
      \fi
      :\levelchar #3%
    }%
  }%
  \@tempa\endgroup\@esphack%
}
\renewcommand*\changes@[3]{%
  \ifnum\@parse@version@1993/01/01\@nil<\expandafter\@parse@version@#2//00\@nil%
    \expandafter\@gobble%
  \else%
    \expandafter\@firstofone%
  \fi{\ClassWarning{\TUD@Class@Name}{The given date `#2' seems to be invalid}}%
  \changes@@{#1}{#2}{#3}%
}
\ifdefined\tudxdyflag
  \newcommand*\changes@@[3]{%
    \protected@edef\@tempa{%
      \noexpand\glossary{%
        #1\ifdoc@reportchangedates\space -- #2\fi
        \levelchar
        \ifx\saved@macroname\@empty
          \string~\actualchar\tud@general@name%
        \else
          \ifx\tud@idx@parent\relax\else
            \expandafter\@firstoftwo\tud@idx@parent\actualchar
            \expandafter\@secondoftwo\tud@idx@parent:\levelchar
          \fi
          \tud@idx@sortkey\actualchar\tud@idx@format%
        \fi
        :\levelchar
        #2\space\protecting{#3}\actualchar\protecting{#3}%
      }%
    }%
    \@tempa\endgroup\@esphack%
  }%
\else
  \renewcommand*\changes@[3]{%
    \protected@edef\@tempa{%
      \noexpand\glossary{%
        #1\ifdoc@reportchangedates\space -- #2\fi
        \levelchar
        \ifx\saved@macroname\@empty
          \quotechar!\actualchar\tud@general@name%
        \else
          \ifx\tud@idx@parent\relax\else
            \expandafter\@firstoftwo\tud@idx@parent\space--\space%
          \fi
          \tud@idx@sortkey\actualchar
          \ifx\tud@idx@parent\relax\else
            \expandafter\@secondoftwo\tud@idx@parent\noexpand\,--\noexpand\,%
          \fi
          \tud@idx@format%
        \fi
        :\levelchar
        #2\space\protecting{#3}\actualchar\protecting{#3}%
      }%
    }%
    \@tempa\endgroup\@esphack%
  }%
\fi
\ifdefined\tudxdyflag
\newcommand*\tud@xdy@wrglossary[1]{%
    \@tud@res@swafalse%
    \ifx\special@index\@gobble\else\ifcodeline@index
      \ifx\saved@macroname\@empty\else\@tud@res@swatrue\fi
    \fi\fi
    \global\advance\c@CodelineNo\@ne%
    \protected@write\@glossaryfile{}{%
      \string\glossaryentry{#1|change}%
        {\tud@xdy@reference{\if@tud@res@swa\number\c@CodelineNo\else0\fi}}%
    }%
    \global\advance\c@CodelineNo\m@ne%
  \endgroup%
  \@esphack%
}
\fi
\newcommand*\tud@lst@@sub{}
\newcommand*\tud@lst@@@sub{}
\newcommand*\tud@lst@def{%
  \newcommand*\tud@lst@values{}%
  \tud@newif\if@tud@lst@multi%
  \newcommand*\tud@lst@init{%
    \let\tud@lst@values\relax%
    \let\tud@lst@@sub\relax%
    \@tud@lst@multifalse%
  }%
  \newcommand*\tud@lst@add[1]{%
    \ifx\tud@lst@values\relax\else%
      \@tud@lst@multitrue%
      \def\tud@lst@@sub{\subitem}%
    \fi%
    \listadd\tud@lst@values{\tud@lst@@sub ##1}%
  }%
  \newcommand*\tud@lst@process{%
    \if@tud@lst@multi%
      \preto\tud@lst@values{\efill}%
    \fi%
    \forlistloop{}{\tud@lst@values}%
    \tud@lst@init%
  }%
  \newcommand*\tud@lst@@values{}%
  \tud@newif\if@tud@lst@@multi%
  \newcommand*\tud@lst@@init{%
    \let\tud@lst@@values\relax%
    \def\tud@lst@@sub{\subitem}%
    \def\tud@lst@@@sub{\space}%
    \@tud@lst@@multifalse%
  }%
  \newcommand*\tud@lst@@add[1]{%
    \@tud@lst@multitrue%
    \ifx\tud@lst@@values\relax\else%
      \@tud@lst@@multitrue%
      \def\tud@lst@@@sub{\subsubitem}%
    \fi%
    \listadd\tud@lst@@values{##1}%
  }%
  \newcommand*\tud@lst@@process{%
    \if@tud@lst@@multi%
      \appto\tud@lst@values{\efill}%
    \fi%
    \protected@edef\tud@reserved####1{%
      \noexpand\listadd\noexpand\tud@lst@values{%
        \expandonce\tud@lst@@@sub####1%
      }%
    }%
    \forlistloop{\tud@reserved}{\tud@lst@@values}%
    \tud@lst@@init%
  }%
}
\DeclareHookRule{begindocument/before}{doc/hyperref}{<}{.}
\AddToHook{begindocument/before}{%
  \CheckCommand*\@wrindex[1]{%
    \protected@write\@indexfile{}{\string\indexentry{#1}{\thepage}}%
    \endgroup
    \@esphack%
  }
  \CheckCommand*\codeline@wrindex[1]{% ltxdoc
    \if@filesw
      \begingroup
        \let\protect\noexpand
        \immediate\write\@indexfile{%
          \string\indexentry{#1}{\filesep\number\c@CodelineNo}%
        }%
      \endgroup
    \fi
  }
  \@ifpackageloaded{hypdoc}{%
    \CheckCommand*\filesep{}
    \CheckCommand*\doc@handleencap[1]{%
      \encapchar hdclindex{\the\c@HD@hypercount}{#1}%
    }
    \CheckCommand*\HD@codeline@wrindex[1]{%
      \begingroup
        \let\HDorg@encapchar\encapchar
        \def\encapchar##1\encapchar##2\@nil{%
          \HDorg@encapchar
          hdclindex{\the\c@HD@hypercount}{##1}%
        }%
        \codeline@wrindex{#1\encapchar\encapchar\@nil}%
      \endgroup
    }
    \CheckCommand*\HD@page@wrindex[1]{%
      \begingroup
        \let\HDorg@encapchar\encapchar
        \def\encapchar##1\encapchar##2\@nil{%
          \HDorg@encapchar
          hdpindex{##1}%
        }%
        \HDorg@index{#1\encapchar\encapchar\@nil}%
      \endgroup
    }
    \CheckCommand*\@wrglossary[1]{%
      \let\HDorg@encapchar\encapchar
      \def\encapchar##1\encapchar##2\@nil{%
        \HDorg@encapchar
        hdpindex{##1}%
      }%
      \HDorg@wrglossary{#1\encapchar\encapchar\@nil}%
    }
    \CheckCommand*\HDorg@wrglossary[1]{%
      \protected@write\@glossaryfile{}%
      {\string\glossaryentry{#1}{\thepage}}%
      \endgroup
      \@esphack%
    }
  }{%
    \CheckCommand*\@wrglossary[1]{%
      \protected@write\@glossaryfile{}%
      {\string\glossaryentry{#1}{\thepage}}%
      \endgroup
      \@esphack%
    }
  }
  \ifdefined\tudxdyflag
    \ifx\special@index\@gobble\else
      \ifcodeline@index
        \let\special@index\tud@xdy@codeline@wrindex
      \else
        \let\special@index\tud@xdy@page@wrindex
      \fi
      \@ifpackageloaded{hypdoc}{%
        \let\HD@codeline@wrindex\tud@xdy@codeline@wrindex
        \let\HD@page@wrindex\tud@xdy@page@wrindex
      }{}%
    \fi
    \let\filesep\tud@xdy@filesep
    \def\doc@handleencap#1{\encapchar #1}
    \let\@wrindex\tud@xdy@wrindex
    \let\@wrglossary\tud@xdy@wrglossary
  \fi
}
\ifdefined\tudxdyflag
  \tud@newwrite\tud@xdy@write%
  \tud@newread\tud@xdy@read%
  \def\actualchar{<|1|>}%
  \def\quotechar{<|2|>}%
  \def\levelchar{<|3|>}%
  \begingroup%
    \endlinechar=\m@ne\relax%
    \def\tud@reserved#1#2{%
      \IfFileExists{\jobname.#1}{%
        \immediate\openin\tud@xdy@read="\jobname.#1" %
        \immediate\openout\tud@xdy@write="\jobname-xdy.#1"\relax%
        \@tempswafalse%
        \loop\unless\ifeof\tud@xdy@read%
          \readline\tud@xdy@read to\tud@line@replace%
          \expandafter\tud@replace@@in\expandafter\tud@line@replace%
            \expandafter{\quotechar"}{"}%
          \expandafter\tud@replace@@in\expandafter\tud@line@replace%
            \expandafter{\quotechar!}{!}%
          \expandafter\tud@replace@@in\expandafter\tud@line@replace%
            \expandafter{\quotechar:}{:}%
          \expandafter\tud@replace@@in\expandafter\tud@line@replace%
            \expandafter{\quotechar @}{@}%
          \tud@replace@@in\tud@line@replace{"}{""}%
          \tud@replace@@in\tud@line@replace{!}{"!}%
          \tud@replace@@in\tud@line@replace{:}{":}%
          \tud@replace@@in\tud@line@replace{@}{"@}%
          \tud@replace@@in\tud@line@replace{\"@}{"\"@}%
          \expandafter\tud@replace@@in\expandafter\tud@line@replace%
            \expandafter{\actualchar}{@}%
          \expandafter\tud@replace@@in\expandafter\tud@line@replace%
            \expandafter{\quotechar}{"}%
          \expandafter\tud@replace@@in\expandafter\tud@line@replace%
            \expandafter{\levelchar}{!}%
          \tud@replace@@in\tud@line@replace{" @}{}%
          \ifeof\tud@xdy@read\else%
            \immediate\write\tud@xdy@write{%
              \unexpanded\expandafter{\tud@line@replace}%
            }%
            \@tempswatrue%
          \fi%
        \repeat%
        \immediate\closein\tud@xdy@read%
        \immediate\closeout\tud@xdy@write%
        \ifnum\pdf@shellescape=\@ne\relax%
          \if@tempswa%
            \ShellEscape{%
              texindy\space%
              -M \@currname.\@currext-#2.xdy\space%
              \ifdefvoid\inputencodingname{%
                -C\space utf8%
              }{%
                -C\space\inputencodingname%
              }\space%
              -t \jobname-#2.xlg\space%
              -o \jobname.#2\space%
              \jobname-xdy.#1%
            }%
          \else%
            \immediate\openout\tud@xdy@write="\jobname.#2"\relax%
            \immediate\closeout\tud@xdy@write%
          \fi%
        \fi%
      }{}%
    }%
    \tud@reserved{idx}{ind}%
    \tud@reserved{glo}{gls}%
  \endgroup%
\else
  \ifnum\pdf@shellescape=\@ne\relax%
    \ShellEscape{%
      makeindex -s gglo.ist -t \jobname.glg -o \jobname.gls \jobname.glo%
    }%
    \ShellEscape{%
      makeindex -s gind.ist -t \jobname.ilg -o \jobname.ind \jobname.idx%
    }%
  \fi%
\fi
\DeclareNewTOC[%
  listname={\tud@todo@name},%
  owner=\@currname,%
]{tdo}
\setuptoc{tdo}{totoc,noindent}
\newcommand*\PrintToDos{\ifdefined\tudfinalflag\else\listoftoc{tdo}\fi}
\ifdefined\tudfinalflag
\NewDocumentCommand\ToDo{mo}{}
\else%
\NewDocumentCommand\ToDo{mo}{%
  \begingroup%
    \csuse{phantomsection}%
    \IfValueTF{#2}{%
      \def\tud@reserved{#2}%
    }{%
      \def\tud@reserved{??}%
    }%
    \endgraf\ifdim\parskip>\z@\else\smallskip\fi\noindent%
    \hfuzz0.8pt%
    \leavevmode%
    \def\@tempa{\raggedleft\fbox{ToDo:\space\tud@reserved\strut}}%
    \ifundef\marginnote{%
      \expandafter\marginpar\expandafter{\@tempa}%
    }{%
      \expandafter\marginnote\expandafter{\@tempa}[%
        \dimexpr-\fboxsep-\fboxrule\relax%
      ]%
    }%
    \fbox{\parbox{\dimexpr\linewidth-\fboxsep*2\relax}{#1\strut}}%
    \endgraf\ifdim\parskip>\z@\else\bigskip\fi\noindent%
    \let\@tempa\@empty%
    \ifdefvoid\currentfile{}{%
      \def\@tempa{\,--\,\texttt{\currentfile}}%
    }%
    \addxcontentsline{tdo}{subsection}{\tud@reserved\@tempa:\space#1}%
  \endgroup%
  \ignorespaces%
}
\fi
\newcommand*\tud@index@heading{\addsec}
\IndexPrologue{\tud@index@heading{\indexname}\tud@index@text}
\GlossaryPrologue{\tud@index@heading{\tud@changes@name}}
\NewDocumentCommand\PrintBackMatter{s}{%
  \begingroup%
    \@ifpackageloaded{bookmark}{\bookmarksetup{startatroot,open=false}}{}%
    \IfBooleanT{#1}{\renewcommand*\tud@index@heading{\addpart}}%
    \deftocheading{tdo}{\tud@index@heading{##1}}%
    \IfBooleanT{#1}{\cleardoublepage}\PrintIndex%
    \IfBooleanT{#1}{\cleardoublepage}\PrintChanges%
    \IfBooleanT{#1}{\cleardoublepage}\PrintToDos%
  \endgroup%
}
\patchcmd\@docinclude{%
  \let\@ltxdoc@PrintIndex\PrintIndex
  \let\PrintIndex\relax
  \let\@ltxdoc@PrintChanges\PrintChanges
  \let\PrintChanges\relax
}{%
  \let\@ltxdoc@PrintIndex\PrintIndex
  \let\PrintIndex\relax
  \let\@ltxdoc@PrintChanges\PrintChanges
  \let\PrintChanges\relax
  \let\@ltxdoc@PrintToDos\PrintToDos
  \let\PrintToDos\relax
}{}{\tud@patch@wrn{@docinclude}}
\patchcmd\@docinclude{%
  \let\PrintIndex\@ltxdoc@PrintIndex
  \let\PrintChanges\@ltxdoc@PrintChanges
}{%
  \let\PrintIndex\@ltxdoc@PrintIndex
  \let\PrintChanges\@ltxdoc@PrintChanges
  \let\PrintToDos\@ltxdoc@PrintToDos
}{}{\tud@patch@wrn{@docinclude}}
\AfterPackage*{mweights}{%
  \CheckCommand*\MacroFont{%
    \fontencoding\encodingdefault%
    \fontfamily\ttdefault%
    \fontseries\mddefault%
    \fontshape\shapedefault%
    \small%
  }%
  \renewcommand*\MacroFont{%
    \fontencoding\encodingdefault%
    \fontfamily\ttdefault%
    \fontseries\mdseries@tt%
    \fontshape\shapedefault%
    \small%
  }%
  \CheckCommand*\AltMacroFont{%
    \fontencoding\encodingdefault%
    \fontfamily\ttdefault%
    \fontseries\mddefault%
    \fontshape\sldefault%
    \small%
  }%
  \renewcommand*\AltMacroFont{%
    \fontencoding\encodingdefault%
    \fontfamily\ttdefault%
    \fontseries\mdseries@tt%
    \fontshape\sldefault%
    \small%
  }%
  \AtEndPreamble{%
    \ifundef\mdseries@tt{\edef\mdseries@tt{\mddefault}}{}%
  }%
}
\newcommand*\tud@setarea{%
  \tud@setdim\topmargin{-1in}%
  \tud@setdim\headheight{0pt}%
  \tud@setdim\headsep{3em}%
  \tud@setdim\footskip{\headsep}%
  \tud@setdim\textheight{\paperheight-\headsep*5/2-\footskip*3/2}%
  \@colht=\textheight%
  \@colroom=\textheight%
  \vsize=\textheight%
  \settowidth\MacroIndent{\rmfamily\scriptsize 0000\ }%
  \begingroup%
    \MacroFont\selectfont%
    \settowidth\@tempdima{\space}%
    \tud@setdim\@tempdima{80\@tempdima}%
    \tud@addtodim\@tempdima{\MacroIndent}%
    \edef\@tempa{%
      \endgroup%
      \unexpanded{\tud@setdim\textwidth}{\the\@tempdima}%
    }%
  \@tempa%
  \columnwidth=\textwidth%
  \hsize=\columnwidth%
  \linewidth=\hsize%
  \tud@setdim\columnsep{1em}%
  \tud@setdim\labelsep{1em}%
  \tud@setdim\marginparsep{\labelsep}%
  \tud@setdim\oddsidemargin{\paperwidth-\textwidth-\labelsep-1in}%
  \tud@setdim\marginparwidth{\oddsidemargin+1in-\labelsep-\marginparsep}%
}
\AtBeginDocument{\tud@setarea}
\TUD@UnwindPackage{tudscrfonts}{%
  \RequirePackage{lmodern}
  \providecommand*\textcdln[1]{\textsf{#1}}%
  \providecommand*\textcdrn[1]{\textcdln{#1}}%
  \providecommand*\textcdsn[1]{\textcdln{#1}}%
  \providecommand*\textcdbn[1]{\textbf{\textcdln{#1}}}%
  \providecommand*\textcdxn[1]{\textcdbn{#1}}%
  \providecommand*\textcdli[1]{\textsl{\textcdln{#1}}}%
  \providecommand*\textcdri[1]{\textcdli{#1}}%
  \providecommand*\textcdsi[1]{\textcdli{#1}}%
  \providecommand*\textcdbi[1]{\textbf{\textcdli{#1}}}%
  \providecommand*\textcdxi[1]{\textcdbi{#1}}%
}
\newrobustcmd*\app[1]{\mbox{\textsl{\textbf{#1}}}}
\newrobustcmd*\bdl[1]{\mbox{\textsf{\textbf{#1}}}}
\newrobustcmd*\cls[1]{\mbox{\textsf{\textbf{#1}}}}
\newrobustcmd*\pkg[1]{\mbox{\textsf{\textbf{#1}}}}
\newrobustcmd*\opt[1]{\mbox{\texttt{#1}}}
\newrobustcmd*\val[1]{\mbox{\texttt{#1}}}
\newrobustcmd*\default[1]{\val{\textit{#1}}}
\newrobustcmd*\pgs[1]{\mbox{\texttt{#1}}}
\newrobustcmd*\env[1]{\mbox{\texttt{#1}}}
\newrobustcmd*\prm[1]{\mbox{\texttt{#1}}}
\newrobustcmd*\cnt[1]{\mbox{\texttt{#1}}}
\newrobustcmd*\file[1]{\mbox{\texttt{#1}}}
\AfterPackage*{hyperref}{%
  \pdfstringdefDisableCommands{%
    \let\app\@firstofone%
    \let\bdl\@firstofone%
    \let\cls\@firstofone%
    \let\pkg\@firstofone%
    \let\opt\@firstofone%
    \let\val\@firstofone%
    \let\default\@firstofone%
    \let\pgs\@firstofone%
    \let\env\@firstofone%
    \let\prm\@firstofone%
    \let\file\@firstofone%
  }%
}
%%%% From File: tudscr-texindy.dtx (no git version info was found)
\edef\tud@res@a{\catcode`\noexpand\#=\the\catcode`\#\relax}%
\@makeother\#
\newcommand*\@hashchar{#}
\tud@res@a
\ifdefined\tudxdyflag
\NewDocumentCommand\tud@xdy@create{s}{%
  \begingroup%
    \edef\tud@res@a{\@currname.\@currext-\IfBooleanTF{#1}{gls}{ind}.xdy}%
    \def\tud@res@b{\endgroup}%
    \expandafter\IfFileExists\expandafter{\tud@res@a}{}{%
      \eappto\tud@res@b{%
        \noexpand\tud@xdy@@create%
          {#1}%
          {the\IfBooleanTF{#1}{glossary}{index}}%
          {\tud@res@a}%
      }%
    }%
  \tud@res@b%
}
\newcommand*\tud@xdy@@create[3]{%
  \immediate\openout\tud@xdy@write="#3"\relax%
  \immediate\write\tud@xdy@write{(require "texindy.xdy")}%
  \immediate\write\tud@xdy@write{%
    (markup-index^^J%
    \@spaces:hierdepth 3^^J%
    \@spaces:open^^J%
    "^^J%
    \string\begin{#2}^^J%
    \space\space\string\makeatletter\@percentchar^^J%
    \space\space\string\scan@allowedfalse\@percentchar^^J%
\IfBooleanT{#1}{%
    \space\space\string\newcommand*\string\@lettergroup{}\@percentchar^^J%
    \space\space\string\def\string\@lettergroup\@hashchar1\string\relax%
        {\string\lettergroup{\@hashchar1}}\@percentchar^^J%
    \space\space\string\tud@lst@def\@percentchar^^J%
}%
    "^^J% /open
    \@spaces:close^^J%
    "^^J%
    \string~n\string\end{#2}^^J%
    "^^J% /close
    )^^J%
    (define-sort-rule-orientations (forward backward forward forward))^^J%
    (use-rule-set :run 0^^J%
    \@spaces:rule-set ("xy-alphabetize" "xy-resolve-special")^^J%
    )^^J%
    (use-rule-set :run 1^^J%
    \@spaces:rule-set ("xy-resolve-diacritics" "xy-resolve-special")^^J%
    )^^J%
    (use-rule-set :run 2^^J%
    \@spaces:rule-set ("xy-resolve-case" "xy-resolve-special")^^J%
    )^^J%
    (define-alphabet "AlphaExtended"^^J%
    \@spaces(^^J%
    \@spaces\@spaces"A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M"^^J%
    \@spaces\@spaces"N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"^^J%
    \@spaces\@spaces"a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m"^^J%
    \@spaces\@spaces"n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"^^J%
    \@spaces\@spaces"?"^^J%
    \@spaces)^^J%
    )^^J%
    (define-location-class "hypdoc"^^J%
    \@spaces(^^J%
    \@spaces\@spaces"arabic-numbers" :sep ":"^^J%
    \@spaces\@spaces"AlphaExtended" \space:sep "-" "arabic-numbers" :sep ":"^^J%
    \@spaces\@spaces"arabic-numbers"^^J%
    \@spaces)^^J%
    )^^J%
    (define-location-class "arabic-page-numbers"^^J%
    \@spaces("arabic-numbers")^^J%
    \@spaces:min-range-length 1^^J%
    )^^J%
    (define-location-class-order ("hypdoc" "arabic-page-numbers"))^^J%
    (markup-range :sep "--")^^J%
    (merge-rule :again^^J%
    \@spaces"(.*)@(.*)"^^J%
    \@spaces"\string\1\string\2\space\string~e"^^J%
    )^^J%
    (merge-rule :eregexp^^J%
    \@spaces"\string\[(.*)\string\]"^^J%
    \@spaces""^^J%
    )^^J%
\IfBooleanTF{#1}{%
    (markup-letter-group^^J%
    \@spaces:open-head\space\space%
      "\string~n\space\space\string\@gobble\@charlb"^^J%
    \@spaces:close-head\space%
      "\@charrb"^^J%
    )^^J%
    (markup-indexentry-list :depth 0^^J%
    \@spaces:sep\space\space\space%
        "\string~n\string~n\space\space\string\indexspace\string~n"^^J%
    )^^J%
    (markup-indexentry \@spaces\space:depth 0^^J%
    \@spaces:open\space\space%
        "\string~n\space\space\string\@lettergroup\space"^^J%
    )^^J%
    (markup-indexentry-list :depth 1^^J%
    \@spaces:open\space\space%
      "\string\relax"^^J%
    )^^J%
    (markup-indexentry \@spaces\space:depth 1^^J%
    \@spaces:open\space\space%
      "\string~n\space\space\string\item\space"^^J%
    )^^J%
    (markup-indexentry-list :depth 2^^J%
    \@spaces:open\space\space%
      "\string\tud@lst@init"^^J%
    \@spaces:close\space%
      "\string~n \@spaces\space\string\tud@lst@process"^^J%
    )^^J%
    (markup-indexentry \@spaces\space:depth 2^^J%
    \@spaces:open\space\space%
      "\string~n\@spaces\space\space\string\tud@lst@add\@charlb"^^J%
    \@spaces:close\space%
      "\@charrb"^^J%
    )^^J%
    (markup-indexentry-list :depth 3^^J%
    \@spaces:open\space\space%
      "\@charrb\string\tud@lst@@init"^^J%
    \@spaces:close\space%
      "\string~n\@spaces\@spaces\string\tud@lst@@process\@charlb"^^J%
    )^^J%
    (markup-indexentry \@spaces\space:depth 3^^J%
    \@spaces:open\space\space%
      "\string~n\@spaces\@spaces\string\tud@lst@@add\@charlb"^^J%
    \@spaces:close\space%
      "\@charrb"^^J%
    )^^J%
}{%
    (markup-indexentry-list :depth 1^^J%
    \@spaces:open\space\space%
      "\string\hfil\string\nopagebreak"^^J%
    )^^J%
}%
    (markup-locclass-list^^J%
    \@spaces:open\space\space%
      "\string\pfill\space"^^J%
    \@spaces:close\space%
      "\string\relax"^^J%
    )^^J%
    (markup-attribute-group-list :sep ",\space")^^J%
    (define-attributes (("usage") ("main") ("code") ("change") ("default")))^^J%
    (markup-locref :attr "change"^^J%
    \@spaces:open\space\space%
      "\string\tud@xdy@mapping{change}\@charlb"^^J%
    \@spaces:close\space%
      "\@charrb"^^J%
    )^^J%
    (markup-locref :attr "code"^^J%
    \@spaces:open\space\space%
      "\string\tud@xdy@mapping{code}\@charlb"^^J%
    \@spaces:close\space%
      "\@charrb"^^J%
    )^^J%
    (markup-locref :attr "usage"^^J%
    \@spaces:open\space\space%
      "\string\tud@xdy@mapping{usage}\@charlb"^^J%
    \@spaces:close\space%
      "\@charrb"^^J%
    )^^J%
    (markup-locref :attr "main"^^J%
    \@spaces:open\space\space%
      "\string\tud@xdy@mapping{main}\@charlb"^^J%
    \@spaces:close\space%
      "\@charrb"^^J%
    )^^J%
  }%
  \immediate\closeout\tud@xdy@write%
}
\tud@xdy@create
\tud@xdy@create*
\fi
\endinput
%%
%% End of file `tudscrdoc.cls'.
