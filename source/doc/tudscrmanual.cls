%%
%% This is file `tudscrmanual.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tudscr-version.dtx  (with options: `class,manual,identify,inherit')
%% tudscr-base.dtx  (with options: `class,manual,inherit,load')
%% tudscr-misc.dtx  (with options: `class,manual,option')
%% tudscr-manual.dtx  (with options: `class,manual,option')
%% tudscr-misc.dtx  (with options: `class,manual,inherit,execute')
%% tudscr-misc.dtx  (with options: `class,manual,body')
%% tudscr-manual.dtx  (with options: `class,manual,body')
%% tudscr-fields.dtx  (with options: `class,manual,body')
%% tudscr-localization.dtx  (with options: `class,manual,body')
%% tudscr-texindy.dtx  (with options: `class,manual')
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
\newcommand*\TUD@ProvidesWrapperClass[3]
{%
  \ProvidesClass{#1}[%
  2022/09/01 v2.06p TUD-Script
    #3 (#2)%
  ]%
  \newcommand*\TUD@Class@Parent{#2}%
  \newcommand*\TUD@Class@Name{#1}%
  \newcommand*\TUDScriptClassName{#1}%
  \providecommand*\TUDClassName{\TUDScriptClassName}%
  \TUD@Class@Info%
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
\TUD@ProvidesWrapperClass{tudscrmanual}{tudscrreprt}{manual class}
%%%% From File: tudscr-base.dtx (no git version info was found)
\RequirePackage{tudscrbase}[%
  2022/09/01 v2.06p TUD-Script
]
\renewcommand*\TUD@KOMAoptions[1]{\PassOptionsToClass{#1}{\TUD@Class@Parent}}
%%%% From File: tudscr-misc.dtx (no git version info was found)
\RequirePackage{scrhack}[%
  2022/05/01 v3.36 KOMA-Script
]
\RequirePackage{xspace}
\xspaceaddexceptions{"=}
\PassOptionsToPackage{quiet}{marginnote}
\RequirePackage{marginnote}
\reversemarginpar
\RequirePackage{shellesc}
\RequirePackage{pdftexcmds}
\PassOptionsToPackage{%
  destlabel=true,%
  colorlinks,%
  hyperindex=false%
}{hyperref}
\AtBeginDocument{%
  \bookmarksetup{%
    open,%
    openlevel=1,%
  }%
}
\AfterAtEndOfPackage*{hyperref}{%
  \@ifpackageloaded{bookmark}{}{\RequirePackage{bookmark}}%
  \hypersetup{%
    linkcolor=HKS44,%
    urlcolor=HKS33,%
    citecolor=HKS57,%
    filecolor=HKS65,%
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
\newcommand*\tud@unique@add[2]{%
  \ifinlist{#2}{#1}{}{\listadd#1{#2}}%
}
\newcommand*\tud@unique@eadd[2]{%
  \xifinlist{#2}{#1}{}{\listeadd#1{#2}}%
}
\newcommand*\tud@unique@xadd[2]{%
  \xifinlist{#2}{#1}{}{\listxadd#1{#2}}%
}
\newcommand*\tud@unique@csxadd[2]{%
  \xifinlistcs{#2}{#1}{}{\listcsxadd{#1}{#2}}%
}
\providerobustcmd*\listeremove[2]{%
  \begingroup%
    \edef\etb@tempa{\endgroup\unexpanded{\listremove#1}{#2}}%
  \etb@tempa%
}
\tud@newif\if@tud@list@sorted
\newcommand*\tud@list@sorted{}
\newcommand*\tud@list@sort[1]{%
  \begingroup%
    \let\tud@list@sorted\@empty%
    \forlistloop\tud@list@@sort{#1}%
    \edef\tud@res@c{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@list@sorted}%
    }%
  \tud@res@c%
}
\newcommand*\tud@list@@sort[1]{%
  \@tud@list@sortedfalse%
  \let\tud@res@a\@empty%
  \forlistloop{\tud@list@@@sort\tud@res@a{#1}}{\tud@list@sorted}%
  \if@tud@list@sorted\else%
    \listadd\tud@res@a{#1}%
  \fi%
  \let\tud@list@sorted\tud@res@a%
}
\newcommand*\tud@list@@@sort[3]{%
  \if@tud@list@sorted%
    \listadd#1{#3}%
  \else%
    \ifnum\pdf@strcmp{#2}{#3}<\z@\relax%
      \listadd#1{#2}%
      \listadd#1{#3}%
      \@tud@list@sortedtrue%
    \else%
      \listadd#1{#3}%
    \fi%
  \fi%
}
%%%% From File: tudscr-manual.dtx (no git version info was found)
\PassOptionsToPackage{obeyFinal}{todonotes}
\ifdef\tudprintflag{%
  \PassOptionsToPackage{color=white}{todonotes}%
}{%
  \PassOptionsToPackage{colorinlistoftodos,color=HKS92!10}{todonotes}%
}
\tud@newif\if@tud@todo
\newcommand*\tud@todo@type@pos{}
\let\tud@todo@type@pos\relax
\newcommand*\tud@todo@type@neg{}
\let\tud@todo@type@neg\relax
\TUD@key{ToDo}[true]{%
  \TUD@set@ifkey{ToDo}{@tud@todo}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \let\tud@todo@type@pos\relax%
    \let\tud@todo@type@neg\relax%
  \else%
    \def\@tempa not##1##2##3##4\@nil{%
      \tud@if@strequal{##1##2##3}{not}{%
        \IfArgIsEmpty{##4}{}{%
          \listeadd\tud@todo@type@neg{##4}%
          \@tud@todotrue%
          \FamilyKeyStateProcessed%
        }%
      }{%
        \IfArgIsEmpty{##1}{}{%
          \listeadd\tud@todo@type@pos{##1##2##3##4}%
          \@tud@todotrue%
          \FamilyKeyStateProcessed%
        }%
      }%
    }%
    \edef\@tempb{not\trim@spaces{#1}}%
    \expandafter\@tempa\@tempb\@empty\@empty\@empty\@nil%
  \fi%
}
\TUD@key{final}[true]{%
  \TUD@set@ifkey{final}{@tempswa}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tempswa%
      \let\tudfinalflag\relax%
    \fi%
  \fi%
}
\TUD@key{print}[true]{%
  \TUD@set@ifkey{print}{@tempswa}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tempswa%
      \let\tudprintflag\relax%
    \fi%
  \fi%
}
\AtEndOfClass%
{%
  \TUD@key@toolate{final}%
  \TUD@key@toolate{print}%
  \ifdefined\tudfinalflag
    \TUDoptions{ToDo=false}%
    \TUD@key{ToDo}{\FamilyKeyStateProcessed}%
  \else
    \TUD@KOMAoptions{overfullrule}%
  \fi
  \ifdefined\tudprintflag
    \ifnum\tud@cd@num>\z@\relax
      \TUDoptions{cd=true}%
    \fi
    \PassOptionsToPackage{hidelinks}{hyperref}%
    \AfterEndPreamble{\hypersetup{hidelinks}}%
  \fi
  \TUD@key@toolate{cd}%
  \ClassInfoNoLine{tudscrmanual}%
  {%
    Output mode:%
    \space`\ifdefined\tudfinalflag\else non-\fi final'%
    \space`\ifdefined\tudprintflag\else non-\fi print'%
  }%
}
%%%% From File: tudscr-misc.dtx (no git version info was found)
\PassOptionsToClass
{%
  ttfont=roboto,%
  cdfoot=true%
}
{\TUD@Class@Parent}
\TUD@KOMAoptions{headings=optiontoheadandtoc}
\DeclareOption*{%
  \expandafter\PassOptionsToClass\expandafter{\CurrentOption}%
  {\TUD@Class@Parent}%
}
\TUDProcessOptions\relax
\LoadClass{\TUD@Class@Parent}[%
  2022/09/01 v2.06p TUD-Script
]
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
%%%% From File: tudscr-manual.dtx (no git version info was found)
\newcommand*\tud@addtocontents@hook{}
\let\tud@addtocontents@hook\relax
\patchcmd\addtocontents{%
  \let\index\@gobble\let\glossary\@gobble%
}{%
  \let\index\@gobble\let\glossary\@gobble%
  \tud@addtocontents@hook%
}{}{\tud@patch@wrn{addtocontents}}
\NewDocumentCommand\tud@addtocontents@initialize{s m}{%
  \appto\tud@addtocontents@hook{#2}%
  \IfBooleanT{#1}{%
    \AfterPackage*{hyperref}{\pdfstringdefDisableCommands{#2}}%
    \AfterPackage*{nameref}{\GetTitleStringDisableCommands{#2}}%
  }%
}
\@onlypreamble\tud@addtocontents@initialize
\newcommand*\tud@outputpage@hook{}
\let\tud@outputpage@hook\relax
\patchcmd\@outputpage{%
  \let\index\@gobble\let\glossary\@gobble%
}{%
  \let\index\@gobble\let\glossary\@gobble%
  \tud@outputpage@hook%
}{}{\tud@patch@wrn{@outputpage}}
\newcommand*\tud@outputpage@initialize[1]{\appto\tud@outputpage@hook{#1}}
\@onlypreamble\tud@outputpage@initialize
\NewExpandableDocumentCommand\@gobbleopt@one{o m}{}
\RequirePackage{multicol}
\RequirePackage{setspace}
\setstretch{1.1}
\RequirePackage{quoting}
\quotingsetup{vskip=\smallskipamount}
\RequirePackage{isodate}
\RequirePackage{noindentafter}
\RequirePackage{ragged2e}
\@removefromreset{footnote}{chapter}
\renewcommand*\raggedfootnote{\tud@RaggedRight}%
\AtEndPreamble{%
  \RequirePackage{ellipsis}
  \let\ellipsispunctuation\relax%
}
\RequirePackage{tabularx}
\RequirePackage{booktabs}
\DeclareListParser{\dossvlist}{;}
\DeclareListParser*{\forssvlist}{;}
\RequirePackage{enumitem}
\setlist{%
  before*={\endgraf\tud@RaggedRight},%
  partopsep=0pt,noitemsep%
}
\newcommand*\tud@list@create[4][]{%
  \newlist{#2}{#3}{#4}%
  \setlist[{#2}]{%
    font=\normalfont,%
    topsep=\smallskipamount,parsep=\parskip,listparindent=\parindent,%
    style=nextline,%
    leftmargin=2.5em,itemindent=-2em,labelwidth=0pt,labelsep=0pt,%
    midpenalty=-\@medpenalty,%
    #1%
  }%
}
\RequirePackage{tikz}
\RequirePackage{pdfpages}
\RequirePackage{caption}
\RequirePackage{floatrow}
\DeclareCaptionSubType[alph]{figure}
\DeclareCaptionSubType[alph]{table}
\captionsetup{font=sf,labelfont=bf,labelsep=space}
\captionsetup{singlelinecheck=off,format=hang,justification=raggedright}
\captionsetup[subfloat]{labelformat=brace,list=off}
\KOMAoption{captions}{tableheading,figuresignature}
\floatsetup[table]{style=plaintop}
\RequirePackage{filemod}
\RequirePackage{ifplatform}
\newcommand*\tud@file@check[1]{%
  \ifnum\pdf@shellescape=\@ne\relax
    \AfterReadingMainAux{\IfFileExists{#1}{}{\tud@file@@check{#1}}}%
  \else
    \IfFileExists{#1}{}{\tud@file@@check{#1}}%
  \fi
}
\newcommand*\tud@file@@check[1]{%
  \ClassWarning{tudscrmanual}%
  {%
    `#1' missing!\MessageBreak%
    \ifnum\pdf@shellescape=\@ne
      It actually should have been created so you\MessageBreak%
      may consult the log file%
    \else
      Run again with --shell-escape%
    \fi
  }%
}
\newcommand*\tud@latex@ext{pdflatex\space}
\iftutex
  \ifxetex
    \renewcommand*\tud@latex@ext{xelatex\space}
  \else
    \renewcommand*\tud@latex@ext{lualatex\space}
  \fi
\fi
\appto\tud@latex@ext{-synctex=1\space-interaction=batchmode\space}
\AfterAtEndOfPackage*{hyperref}{%
  \newcommand*\autorefname[1][current]{%
    \tud@if@strequal{#1}{current}{%
      \expandafter\HyPsd@@autorefname\@currentHref\@nil%
    }{%
      \auto@refname\HyPsd@@autorefname{#1}%
    }%
    \unskip\xspace%
  }%
  \newcommand*\auto@refname[2]{%
    \ifcsundef{r@#2}{%
      ??%
    }{%
      \expandafter\expandafter\expandafter\auto@@refname%
          \csname r@#2\endcsname{}{}{}{}\@nil#1\@nil%
    }%
  }%
  \newcommand*\auto@@refname{}%
  \def\auto@@refname#1#2#3#4#5\@nil#6\@nil{#6#4.\@nil}%
  \begingroup%
    \def\do#1{%
      \tud@if@language@loaded{#1}{%
        \renewcaptionname{#1}{\sectionautorefname}{Unterkapitel}%
        \renewcaptionname{#1}{\subsectionautorefname}{Abschnitt}%
        \renewcaptionname{#1}{\subsubsectionautorefname}{Unterabschnitt}%
      }{}%
    }%
    \expandafter\docsvlist\expandafter{\tud@localization@@german}%
  \endgroup%
}
\AfterPackage*{nameref}{%
  \patchcmd\NR@gettitle{%
    \GetTitleString%
  }{%
    \GetTitleStringExpand%
  }{}{\tud@patch@wrn{NR@gettitle}}%
}
\TUD@UnwindPackage{hyperref}{%
  \providerobustcmd*\autoref{??~\kernel@ifstar{\ref}{\ref}}%
  \providerobustcmd*\autorefname[1][]{??\xspace}%
  \tud@localization@german{\partautorefname}{Teil}%
  \tud@localization@german{\chapterautorefname}{Kapitel}%
  \tud@localization@german{\sectionautorefname}{Unterkapitel}%
  \tud@localization@german{\subsectionautorefname}{Abschnitt}%
  \tud@localization@german{\subsubsectionautorefname}{Unterabschnitt}%
  \tud@localization@english{\partautorefname}{Part}%
  \tud@localization@english{\chapterautorefname}{chapter}%
  \tud@localization@english{\sectionautorefname}{section}%
  \tud@localization@english{\subsectionautorefname}{subsection}%
  \tud@localization@english{\subsubsectionautorefname}{subsubsection}%
}
\newrobustcmd*\tud@hyperdef[2][]{%
  \begingroup
    \edef\tud@res@a{%
      \endgroup
      \noexpand\Hy@raisedlink{\noexpand\hyperdef{#1}{#2}{}}%
    }%
  \tud@res@a%
}
\newrobustcmd*\tud@hyperref[3][]{%
  \begingroup
    \edef\tud@res@a{%
      \endgroup
      \noexpand\hyperref{}{#1}{#2}%
    }%
  \tud@res@a{#3}%
}
\newcommand*\tud@currentHref{}
\RequirePackage[nospace]{varioref}
\renewrobustcmd*\fullref[1]{\hyperref[{#1}]{\autoref*{#1}\space\vpageref{#1}}}
\RequirePackage{listings}
\lstloadlanguages{[primitive]TeX,[common]TeX,[LaTeX]TeX}
\lstdefinestyle{tudscr}{%
  basicstyle=\ttfamily\ifundef\setstretch{}{\setstretch{1}},%
  keywordstyle=,%
  columns=fullflexible,keepspaces,%
  aboveskip=\smallskipamount,%
  belowskip=\smallskipamount,%
  language=[LaTeX]TeX,%
  texcl,%
}
\RequirePackage{todonotes}
\AtEndPreamble{%
  \ifdim\marginparwidth<2cm\relax%
    \tud@setdim\marginparwidth{2cm}%
  \fi%
}
\TUD@UnwindPackage{todonotes}{%
  \renewcommand*\ListOfToDo{}%
  \RenewDocumentCommand\ToDo{s o m !o}{}%
}
\newcommand*\tud@todo@type@use{}
\newcommand*\ListOfToDo{\if@tud@todo\clearpage\listoftodos\fi}
\NewDocumentCommand\ToDo{s o m !o}{%
  \if@tud@todo%
    \global\let\tud@currentHref\@currentHref%
    \begingroup%
      \let\tud@todo@type@use\@empty%
      \IfValueTF{#2}{%
        \IfArgIsEmpty{#2}{}{%
          \let\tud@todo@type@use\relax%
          \ifx\tud@todo@type@pos\relax%
            \def\tud@res@a##1{%
              \ifinlist{##1}{\tud@todo@type@use}{}{%
                \ifinlist{##1}{\tud@todo@type@neg}{}{%
                  \listadd\tud@todo@type@use{##1}%
                }%
              }%
            }%
          \else%
            \def\tud@res@a##1{%
              \ifinlist{##1}{\tud@todo@type@use}{}{%
                \ifinlist{##1}{\tud@todo@type@pos}{%
                  \listadd\tud@todo@type@use{##1}%
                }{}%
              }%
            }%
          \fi%
          \forcsvlist\tud@res@a{#2}%
        }%
      }{}%
      \ifx\tud@todo@type@use\relax\else%
        \let\tud@res@a\@empty%
        \let\tud@res@b\@empty%
        \let\tud@res@c\@empty%
        \ifinlist{rls}{\tud@todo@type@use}{%
          \def\tud@res@a{color=HKS44!30,}%
          \def\tud@res@b{color=HKS44!30,}%
          \edef\tud@res@c{v\TUDScriptVersionNumber}%
        }{%
          \ifinlist{imp}{\tud@todo@type@use}{%
            \def\tud@res@a{color=HKS57!50,}%
          }{%
            \ifinlist{doc}{\tud@todo@type@use}{%
              \def\tud@res@a{color=HKS41!30,}%
            }{}%
          }%
          \def\tud@res@c{ToDo}%
          \IfValueT{#4}{%
            \begingroup%
              \tud@v@get\tud@res@a{#4}%
              \def\tud@res@c##1.##2##3##4\@nil{##1##2##3}%
              \edef\tud@res@b{\expandafter\tud@res@c\tud@res@a.000\@nil}%
              \Ifnumber{\tud@res@b}{%
                \edef\tud@res@c{%
                  \expandafter\tud@res@c\TUDScriptVersionNumber.000\@nil%
                }%
                \ifnum\tud@res@b>\tud@res@c\relax%
                  \def\tud@res@b{color=HKS92!30,}%
                \else%
                  \ifnum\tud@res@b<\tud@res@c\relax%
                    \def\tud@res@b{color=HKS07!50,}%
                  \else%
                    \def\tud@res@b{color=HKS41!30,}%
                  \fi%
                \fi%
                \def\tud@res@c{v\tud@res@a}%
              }{%
                \let\tud@res@b\@empty%
                \def\tud@res@c{#4}%
              }%
              \edef\tud@res@c{%
                \endgroup%
                \def\noexpand\tud@res@b{\tud@res@b}%
                \def\noexpand\tud@res@c{\tud@res@c}%
              }%
            \tud@res@c%
          }%
        }%
        \ifhmode\par\fi%
        \let\par\relax%
        \vskip\medskipamount%
        \noindent%
        \toks@\expandafter{\tud@res@b inline}%
        \IfBooleanT{#1}{\addto@hook\toks@{,nolist}}%
        \sbox\z@{%
          \expandafter\todo\expandafter[\the\toks@]{\trim@spaces{#3}\strut}%
        }\usebox\z@%
        \renewcommand*\marginpar[2][]{%
          \marginnote[{##1}]{##2}[\dimexpr-\ht\z@+1.6ex+1.75pt\relax]%
        }%
        \toks@\expandafter{\tud@res@a noline,nolist}%
        \settowidth\marginparwidth{\tud@res@c}%
        \tud@addtodim\marginparwidth{1.6ex+1pt}%
        \expandafter\todo\expandafter[\the\toks@]{\tud@res@c\strut}%
        \aftergroup\par\aftergroup\noindent%
        \listremove{\tud@todo@type@use}{rls}%
        \listremove{\tud@todo@type@use}{imp}%
        \listremove{\tud@todo@type@use}{doc}%
        \ifx\tud@todo@type@use\@empty\else%
          \begingroup%
            \let\tud@res@c\@empty%
            \def\do##1{\appto\tud@res@c{,##1}}%
            \dolistloop{\tud@todo@type@use}%
            \edef\tud@res@c{%
              \endgroup%
              \edef\noexpand\tud@res@c{\expandafter\@gobble\tud@res@c}%
            }%
          \tud@res@c%
          \ClassWarning{tudscrmanual}%
          {%
            Unknown key(s) `\string\ToDo[\tud@res@c]'%
          }%
        \fi%
      \fi%
    \endgroup%
    \global\let\@currentHref\tud@currentHref%
  \fi%
  \ignorespaces%
}
\newcommand*\tud@index@list{}
\newcommand*\tud@index@name{}
\newcommand*\tud@index@title{}
\newcommand*\tud@index@opt{}
\NewDocumentCommand\tud@index@make{O{main} d() m}{%
  \begingroup%
    \edef\tud@index@name{#1}%
    \def\tud@index@opt{head={#3},tocentry={#3},reference={Index der #3}}%
    \IfValueT{#2}{\appto\tud@index@opt{,#2}}%
    \def\tud@index@title{#3}%
    \tud@toks@{}%
    \def\tud@res@a##1{%
      \addto@hook@expandafter\tud@toks@{%
        \expandafter\def\expandafter##1\expandafter{##1}%
      }%
    }%
    \tud@res@a\tud@index@name%
    \tud@res@a\tud@index@title%
    \tud@res@a\tud@index@opt%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@unique@add\noexpand\tud@index@list{\tud@index@name}%
      \noexpand\csdef{tud@index@set@@#1}{\the\tud@toks@}%
    }%
  \tud@res@a%
}
\AtEndOfClass%
  {\undef\tud@index@make}
\tud@index@make
  (reference=Allgemeiner Index)
  {Allgemeiner Index}
\tud@index@make[options]
  {Klassen- und Paketoptionen}
\tud@index@make[macros]
  (reference=Index der Befehle und Umgebungen)
  {Befehle und Umgebungen mit zugeh\"origen Parametern}
\tud@index@make[misc]
  {L\"angen und Z\"ahler}
\tud@index@make[terms]
  (reference=Index der Bezeichner)
  {Sprachabh\"angige Bezeichner}
\tud@index@make[elements]
  {Seitenstile, Schriftelemente und Farben}
\tud@index@make[files]
  {Klassen, Pakete und Dateien}
\newcommand*\changesname{\"Anderungsliste}%
\newcommand*\tud@changes@list{}
\newcommand*\tud@changes@make[1]{%
  \tud@unique@add\tud@changes@list{changes-v#1}%
  \tud@index@make[changes-v#1](%
    head=\changesname:~\TUDScript~v#1,%
    tocentry=v#1,%
    reference=\changesname\space f\"ur \TUDScript~v#1,%
  ){\TUDScript~v#1}%
}
\forlistloop\tud@changes@make{\tud@v@list}
\newcommand*\tud@index@cols{2}
\newcommand*\tud@index@prologue{}
\newcommand*\tud@index@hook{}
\RenewDocumentEnvironment{theindex}{+b}{%
  \def\lettergroup##1{\minisec{##1}}%
  \def\item{\tud@index@item{0}}%
  \def\subitem{\tud@index@item{1}}%
  \def\subsubitem{\tud@index@item{2}}%
  \def\subsubsubitem{\tud@index@item{3}}%
  \def\indexspace{\tud@index@vskip[\bigskipamount]}%
  \tud@index@hook%
  \def\tud@res@a{\addsec}%
  \eappto\tud@res@a{[{\expandonce\tud@index@opt}]}%
  \appto\tud@res@a{%
    {\tud@index@title\label{idx:\tud@index@name}}%
    \markdouble{\@currentheadentry}%
    \ifx\tud@index@prologue\@empty
      \setlength\multicolsep{\z@}%
    \else
      \nopagebreak\tud@index@prologue\par
      \setlength\multicolsep{\tud@index@glue{\bigskipamount}}%
    \fi
  }%
  \ifnum\tud@index@cols>\@ne\relax%
    \long\def\tud@res@b##1{%
      \setlength\columnsep{\f@size\p@}%
      \setlength\columnseprule{\z@}%
      \begin{multicols}{\tud@index@cols}[\tud@res@a]%
      ##1%
      \end{multicols}%
    }%
  \else%
    \long\def\tud@res@b##1{\tud@res@a##1}%
  \fi%
  \tud@res@b{%
    \setparsizes{\z@}{\z@\@plus.1\baselineskip}{\z@\@plus1fil}%
    \par@updaterelative%
    \tud@raggedright%
    #1%
  }%
}{}
\newcommand*\tud@index@item[2][\relax]{%
  \par\addpenalty{\numexpr#2*\@lowpenalty-\@lowpenalty\relax}#1%
  \hspace*{\dimexpr\numexpr#2\relax em\relax}%
  \hangindent=\dimexpr\numexpr2*#2+3\relax em/2\relax%
}
\newcommand*\tud@index@vskip[1][\smallskipamount]{%
  \vskip\tud@index@glue{#1}%
}
\newcommand*\tud@index@glue[1]{%
  \glueexpr%
    1\glueexpr#1\relax%
    \@plus1\glueexpr#1\relax%
    \@minus.5\glueexpr#1\relax%
  \relax%
}
\newcommand*\tud@xdy@settings{}
\edef\tud@xdy@settings{texindy -M \@currname.\@currext-ind.xdy}
\AtEndDocument{%
  \tud@if@language@main{german}{%
    \eappto\tud@xdy@settings{\space-L german-din}%
  }{}%
  \eappto\tud@xdy@settings{%
    \space-C \ifundef\inputencodingname{utf8}{\inputencodingname}%
  }%
}
\newcommand*\tud@xdy@mdfive{}
\newcommand*\tud@xdy@log{}
\edef\tud@xdy@log{\jobname.xlg}
\ifx\makeindex\relax\else
\def\makeindex{%
  \tud@newwrite\@indexfile%
  \immediate\openout\@indexfile="\jobname.idx"\relax%
  \typeout{Writing index file \jobname.idx}%
  \BeforeClosingMainAux{%
    \immediate\closeout\@indexfile%
    \@tud@res@swafalse%
    \edef\tud@res@a{\pdf@filemdfivesum{\jobname.idx}}%
    \edef\tud@res@b{\pdf@filemdfivesum{\tud@xdy@log}}%
    \edef\tud@res@c{%
      splitindex%
        \space-m\space''%'\tud@xdy@settings\space2>\string&1'%
        \space\jobname.idx%
    }%
    \ifnum\pdf@strcmp{\tud@res@a}{\tud@xdy@mdfive}=\z@\else
      \ifnum\pdf@shellescape=\@ne\relax
        \ClassInfo{tudscrmanual}%
          {invoking: \tud@res@c}%
        \begingroup%
          \everyeof{\noexpand}%
          \endlinechar=\m@ne%
          \edef\tud@res@c{%
            \noexpand\@@input\string|%
              \string"\tud@res@c\string"\space%
          }%
          \tud@res@c%
        \endgroup%
        \immediate\openout\@indexfile="\tud@xdy@log"\relax%
        \immediate\closeout\@indexfile%
        \def\do##1{%
          \begingroup
            \eappto\tud@xdy@settings{\space-o \jobname-##1.ind}%
            \def\tud@res@c{\jobname-##1-declare.idx}%
            \IfFileExists{\tud@res@c}{%
              \eappto\tud@xdy@settings{\space\tud@res@c}%
            }{}%
            \eappto\tud@xdy@settings{\space\jobname-##1.idx}%
            \begingroup%
              \everyeof{\noexpand}%
              \endlinechar=\m@ne%
              \edef\tud@res@c{%
                \noexpand\@@input\string|%
                  \string"\tud@xdy@settings%
                    \space>>\tud@xdy@log%
                    \space2>\string&1%
                    \string"\space%
              }%
              \tud@res@c%
            \endgroup%
          \endgroup
        }%
        \dolistloop{\tud@index@list}%
        \ifnum\pdf@strcmp{\pdf@filemdfivesum{\tud@xdy@log}}{\tud@res@b}=\z@%
          \ClassWarningNoLine{tudscrmanual}%
          {%
            \tud@res@c\MessageBreak%
            was called but there is no result%
          }%
        \else%
          \let\tud@xdy@mdfive\tud@res@a%
        \fi%
      \else%
        \ClassWarningNoLine{tudscrmanual}%
        {%
          The index file `\jobname.idx' has changed. Run again\MessageBreak%
          with --shell-escape flag enabled or just call\MessageBreak%
          \tud@res@c%
        }%
      \fi
    \fi
    \immediate\write\@mainaux{%
      \string\gdef\string\tud@xdy@mdfive{\tud@xdy@mdfive}%
    }%
  }%
  \def\@index[##1]##2{%
    \@wrindex[{##1}]{##2}%
    \endgroup\@esphack%
  }%
  \let\makeindex\@empty
}
\fi
\@onlypreamble\makeindex
\undef\@wrindex
\newcommand*\@wrindex[2][main]{%
  \protected@write\@indexfile{\@sanitize}{%
    \string\indexentry[#1]{#2}{\thepage}%
  }%
}
\def\index{%
  \@bsphack\begingroup%
  \@sanitize%
  \@ifnextchar[%]
    {\@index}%
    {\@index[main]}%
}
\def\@index[#1]#2{\endgroup\@esphack}
\tud@outputpage@initialize{\let\index\@gobbleopt@one}
\tud@addtocontents@initialize*{\let\index\@gobbleopt@one}
\NewDocumentCommand\tud@index@csv{m m}{%
  \begingroup
    \let#1\relax
    \protected@edef\tud@res@a{%
      \noexpand\forcsvlist{\tud@index@@csv\noexpand#1}{#2}%
    }%
    \tud@res@a%
    \protected@edef\tud@res@a{%
      \endgroup
      \unexpanded{\def#1}{\expandonce#1}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@index@@csv{m >{\TrimSpaces}m}{%
  \IfArgIsEmpty{#2}{}{%
    \in@{|}{#2}%
    \ifin@
      \tud@index@@@csv#1#2\@nil%
    \else
      \tud@index@@@csv#1#2|\@nil%
    \fi
  }%
}
\newcommand*\tud@index@@@csv{}
\def\tud@index@@@csv#1#2|#3\@nil{%
  \protected@eappto#1{%
    \noexpand\index{\trim@spaces{#2}\IfArgIsEmpty{#3}{}{|#3}}%
  }%
}
\newcommand*\seeidx[1]{\pageref{idx:#1}}
\NewDocumentCommand\SeeIndex{m o m}{%
  \begingroup
    \def\do##1{%
      \IfValueTF{#2}{%
        \def\tud@res@b{#2}%
        \tud@replace@in\tud@res@b{*}{##1}%
        \trim@spaces@in\tud@res@b%
        \protected@edef\tud@res@b{\noexpand\hyperref[{idx:#1}]{\tud@res@b}}%
      }{%
        \def\tud@res@b{\nameref{idx:#1}}%
      }%
      \protected@edef\tud@res@c{##1}%
      \trim@spaces@in\tud@res@c%
      \index{%
        \tud@res@c!""idx:#1@\textrightarrow\kern.1em\tud@res@b|seeidx{#1}%
      }%
    }%
    \docsvlist{#3}%
  \endgroup
}
\NewDocumentCommand\SeeEntry{s m m}{%
  \begingroup
    \def\do##1{%
      \begingroup
        \def\do####1{%
          \protected@edef\tud@res@a{####1}%
          \trim@spaces@in\tud@res@a%
          \protected@edef\tud@res@b{##1}%
          \trim@spaces@in\tud@res@b%
          \edef\tud@res@c{%
            \noexpand\index{%
              \expandonce\tud@res@a%
              |see\IfBooleanT{#1}{unverified}{\expandonce\tud@res@b}%
            }%
          }%
          \tud@res@c%
        }%
        \docsvlist{#2}%
      \endgroup
    }%
    \docsvlist{#3}%
  \endgroup
}
\newrobustcmd*\seesep{\txb}
\newrobustcmd*\cleversee{\tud@cleversee{\seename}}
\newrobustcmd*\cleverseealso{%
  \ClassWarning{tudscrmanual}%
    {You should use `|see' instead of `|seealso'}%
  \tud@cleversee{\alsoname}%
}
\newcommand*\tud@cleversee{}
\def\tud@cleversee#1#2\relax{%
  \begingroup%
    \let\cleversee\@empty%
    \let\cleverseealso\@empty%
    \let\tud@res@a\@empty%
    \def\tud@res@b{#2}%
    \def\tud@res@c##1\\##2\@nil{%
      \appto\tud@res@a{##1}%
      \def\tud@res@b{##2}%
      \trim@spaces@in\tud@res@b%
      \in@{\\}{##2}%
    }%
    \in@true%
    \@whilesw\ifin@\fi{%
      \expandafter\tud@res@c\tud@res@b\@nil%
    }%
    \ifx\tud@res@b\@empty%
      \mbox{\emph{#1}}%
    \else%
      \tud@res@b\space\linebreak[1]\mbox{\emph{\alsoname}}%
    \fi%
    \space\tud@res@a%
  \endgroup%
}
\NewDocumentCommand\tud@index@print{s O{main} D<>{2} >{\TrimSpaces}+D(){}}{%
  \pagebreak[3]%
  \begingroup
    \@tud@res@swafalse%
    \IfBooleanTF{#1}{\@tud@res@swatrue}{%
      \ifinlist{#2}{\tud@index@nolettergroup@list}{\@tud@res@swatrue}{}%
    }%
    \if@tud@res@swa
      \preto\tud@index@hook{%
        \let\lettergroup\@gobble
        \let\lettergroupDefault\@gobble
        \let\indexspace\relax
      }%
    \fi
    \csuse{tud@index@set@@#2}%
    \def\tud@index@cols{#3}\relax%
    \ifnum\tud@index@cols<\tw@\relax%
      \def\tud@index@cols{\@ne}\relax%
    \fi%
    \def\tud@index@prologue{#4}%
    \IfFileExists{\jobname-#2.ind}{%
      \@input@{\jobname-#2.ind}%
    }{%
      \IfFileExists{\jobname-#2.idx}{%
        \begin{theindex}\end{theindex}%
        \ClassWarning{tudscrmanual}%
        {%
          Processing with `texindy' went wrong as\MessageBreak%
          `\jobname-#2.ind' is missing%
        }%
        \global\let\tud@xdy@mdfive\@empty%
      }{}%
    }%
  \endgroup
}
\newcommand*\tud@index@nolettergroup@list{}
\NewDocumentCommand\tud@index@nolettergroup@add{>{\TrimSpaces}m}{%
  \xifinlist{#1}{\tud@index@list}{%
    \tud@unique@eadd\tud@index@nolettergroup@list{#1}%
  }{%
    \ClassWarning{tudscrmanual}%
    {%
      Index `#1' unknown, possible values are:\MessageBreak%
      \tud@index@list%
    }%
  }%
}
\newcommand*\tud@index@check{%
  \IfFileExists{\jobname.idx}{}{%
    \ClassWarning{tudscrmanual}%
    {%
      Did you use `\string\makeindex'? Index file\MessageBreak%
      `\jobname.idx' is missing%
    }%
  }%
}
\AtBeginDocument{\ifx\makeindex\relax\let\tud@index@check\relax\fi}
\NewDocumentCommand\PrintIndex{>{\SplitList{,}}d() >{\TrimSpaces}o}{%
  \cleardoublepage%
  \tud@index@check%
  \let\tud@index@nolettergroup@list\@empty%
  \IfValueT{#1}{\ProcessList{#1}{\tud@index@nolettergroup@add}}%
  \bookmarksetup{startatroot}%
  \def\tud@index@hook{\@tud@indextrue}%
  \setchapterpreamble{%
    \begin{abstract}%
    \noindent%
    \IfValueTF{#2}{#2}{%
      Die Formatierung der Eintr\"age in allen aufgef\"uhrten Indexen ist %
      folgenderma\ss{}en aufzufassen: \textbf{Zahlen in fetter Schrift} %
      verweisen auf die \textbf{Erkl\"arung} zu einem Stichwort, wobei in %
      der digitalen Fassung dieses Handbuchs dieser Eintrag selbst ein %
      Hyperlink zu seiner Erl\"auterung ist. Seitenzahlen in normaler %
      Schriftst\"arke hingegen deuten auf zus\"atzliche Informationen, %
      wobei diese f\"ur \textit{kursiv hervorgehobene Zahlen} als besonders %
      \textit{wichtig} erachtet werden.\par %
      In den themenspezifischen Indexen wird f\"ur alle Eintr\"age, welche %
      nicht durch \TUDScript sondern von anderen Klassen oder Paketen zur %
      Verf\"ugung gestellt werden, dies im Suffix des entsprechenden %
      Eintrages angegeben. Existiert f\"ur einen solchen Eintrag %
      \emph{keine} direkte \textbf{Erl\"auterung} ist dementsprechend auch %
      kein Hyperlink verf\"ugbar.%
    }%
    \end{abstract}%
  }%
  \addchap{\indexname\label{idx:index}}%
  \tud@index@print%
  (%
    Die im Folgenden aufgelisteten Schlagworte sollen f\"ur den Umgang mit %
    \Lettering{LaTeX} im Allgemeinen sowie dem \TUDScript-Bundle im Speziellen %
    sowohl Antworten bei generellen Fragen liefern als auch L\"osungen f\"ur %
    typische Probleme bereitstellen. Falls ein gesuchter Begriff hier nicht %
    zu finden ist oder trotz vorhandener Hinweise kein zufriedenstellendes %
    Ergebnis erzielt werden kann, sollte das \GitHubRepo'discussions' erster %
    Anlaufpunkt sein, um weitere Hilfe zu erhalten.%
  )%
  \clearpage%
  \tud@index@print[options]%
  (%
    Dies ist der Index aller im Handbuch erl\"auterten sowie erw\"ahnten %
    Optionen, wobei bei den meisten auch Untereintr\"age mit Seitenangaben %
    f\"ur spezielle Wertzuweisungen existieren.%
  )%
  \tud@index@print[macros]%
  (%
    Dies ist eine Auflistung aller zuvor erl\"auterten sowie erw\"ahnten %
    Befehle und Umgebungen. Bei einigen sind zus\"atzliche Untereintr\"age %
    f\"ur Schl\"ussel-Wert-Parameter zu finden, die im optionalen Argument %
    der jeweiligen Anweisung verwendet werden k\"onnen. Gegebenenfalls sind %
    auch explizite Wertzuweisungen an diese Parameter angegeben.%
  )%
  \tud@index@print[terms]%
  (%
    Dies sind die von \TUDScript definierten respektive erw\"ahnten, %
    sprachabh\"angigen Bezeichner. Informationen zu Nutzung und %
    Anpassungsm\"oglichkeiten sind in \autoref{sec:localization} zu finden.%
  )%
  \tud@index@print[elements]%
  \tud@index@print[misc]%
  \tud@index@print[files]%
}
\newcommand*\PrintChanges{%
  \begingroup%
    \cleardoublepage%
    \tud@index@check%
    \bookmarksetup{startatroot}%
    \def\tud@index@hook{%
      \@tud@indextrue%
      \def\indexspace{\tud@index@vskip}%
      \def\item{%
        \def\item{\tud@index@item[\tud@index@vskip]{0}}%
        \tud@index@item{0}%
      }%
    }%
    \addchap{\changesname\label{idx:changes}}%
    \def\do##1{\tud@index@print*[##1]<1>}%
    \dolistloop{\tud@changes@list}%
  \endgroup%
}
\newcommand*\tud@truncate@value[2]{%
  \begingroup%
    \protected@edef\tud@res@a{#2}%
    \def\tud@res@b##1=##2\@nil{%
      \endgroup%
      \def#1{##1}%
    }%
  \expandafter\tud@res@b\tud@res@a=\@nil%
}
\newcommand*\tud@doifPValue[3][]{%
  \IfValueT{#2}{%
    \begingroup%
      \let\PName\@gobble%
      \let\PValue\@firstofone%
      \let\MPName\@gobble%
      \let\MPValue\@gobble%
      \let\OPName\@gobble%
      \let\OPValue\@gobble%
      \let\OList\@empty%
      \let\OPList\@gobble%
      \let\PSet\@firstofone%
      \let\PMisc\@empty%
      \let\PBoolean\@empty%
      \let\PLength\@empty%
      \let\textOR\@empty%
      \let\emph\@firstofone%
      #1%
      \tud@if@strblank{#2}{%
        \def\tud@reserved{\endgroup}%
      }{%
        \protected@edef\tud@reserved{\endgroup#3}%
      }%
    \tud@reserved%
  }%
}
\newcommand*\Parameter@Expandable{%
  \let\PName\@firstofone%
  \let\PValue\@firstofone%
  \let\MPName\@firstofone%
  \let\MPValue\@firstofone%
  \let\OPName\@firstofone%
  \let\OPValue\@firstofone%
  \let\OList\@empty%
  \let\OPList\@firstofone%
  \let\PSet\@gobble%
  \let\PMisc\@empty%
  \let\PBoolean\@empty%
  \let\PLength\@empty%
  \let\textOR\@empty%
}
\newrobustcmd*\PName[1]{\mbox{\texttt{\textsl{<#1>}}}}
\newrobustcmd*\PValue[1]{\mbox{\texttt{#1}}}
\newrobustcmd*\MPName[1]{%
  \mbox{\texttt{\textbraceleft}\PName{#1}\texttt{\textbraceright}}%
}
\newrobustcmd*\MPValue[1]{\mbox{\texttt{\textbraceleft#1\textbraceright}}}
\newrobustcmd*\OPName[1]{\mbox{\texttt{[}\PName{#1}\texttt{]}}}
\newrobustcmd*\OPValue[1]{\mbox{\texttt{[{#1}]}}}
\newrobustcmd*\OList{\mbox{\texttt{[}\PName{Parameterliste}\texttt{]}}}
\newrobustcmd*\OPList[1]{%
  \mbox{\texttt{[}\PName{#1}\textOR\PName{Parameterliste}\texttt{]}}%
}
\newrobustcmd*\PSet[1]{\PName{#1}}
\newrobustcmd*\PMisc{\PSet{Einstellung}}
\newrobustcmd*\PBoolean{\PSet{Ein-Aus-Wert}}
\newrobustcmd*\PLength{\PSet{L\"angenwert}}
\newrobustcmd*\textOR{\PValue{\,\textbardbl\,}}
\tud@newif\if@tud@index
\addtoeachtocfile{\protect\@tud@indextrue}
\newcommand*\Markup@Format{}
\undef\Markup@Format
\newcommand*\Markup@Suffix{}
\NewDocumentCommand\Markup@SetFormat{o m o d()}{%
  \def\Markup@Format##1{\begingroup#2{\IfValueT{#1}{#1}##1}\endgroup}%
  \IfValueT{#3}{\def\Markup@Suffix{\suffix{#3}}}%
  \IfValueT{#4}{\renewcommand*\Markup@Declare[1]{#4\Markup@Suffix}}%
}
\newcommand*\Markup@ClearFormat{%
  \undef\Markup@Format%
  \let\Markup@Declare\Markup@@Declare%
  \let\Markup@Suffix\relax%
}
\Markup@ClearFormat
\newcommand*\Markup@CheckFormat{%
  \ifundef\Markup@Format{%
    \ClassError{tudscrmanual}%
      {\string\Markup@SetFormat\space unused}%
      {It seems you have forgotten to use \string\Markup@SetFormat.}%
  }{}%
}
\newrobustcmd*\suffix[1]{\begingroup~\scriptsize(#1)\endgroup}
\newcommand*\AP@MarkupAppend[1]{%
  \begingroup
    \protected@edef\ProcessedArgument{#1}%
    \@expandtwoargs\in@{|}{\expandonce\ProcessedArgument}%
    \in@{|}{#1}%
    \ifin@
      \def\tud@res@d##1|##2\@nil{%
        \def\tud@res@a{##1}%
        \def\tud@res@b{##2}%
        \trim@spaces@in\tud@res@a%
        \trim@spaces@in\tud@res@b%
        \edef\ProcessedArgument{{\expandonce\tud@res@a}[\expandonce\tud@res@b]}%
      }%
      \expandafter\tud@res@d\ProcessedArgument\@nil%
    \else
      \trim@spaces@in\ProcessedArgument%
      \edef\ProcessedArgument{{\expandonce\ProcessedArgument}}%
    \fi
    \edef\tud@res@a{%
      \endgroup
      \unexpanded{\def\ProcessedArgument}{\expandonce\ProcessedArgument}%
    }%
  \tud@res@a%
}
\newcommand*\AP@MarkupKeyVal[1]{%
  \begingroup
    \AP@MarkupAppend{#1}%
    \def\tud@res@a##1##2\@nil{%
      \AP@@MarkupKeyVal{##1}%
      \edef\ProcessedArgument{\expandonce\ProcessedArgument\unexpanded{##2}}%
    }%
    \expandafter\tud@res@a\ProcessedArgument\@nil%
    \edef\tud@res@a{%
      \endgroup
      \unexpanded{\def\ProcessedArgument}{\expandonce\ProcessedArgument}%
    }%
  \tud@res@a%
}
\newcommand*\AP@@MarkupKeyVal[1]{%
  \begingroup
    \in@{=}{#1}%
    \ifin@
      \in@{/}{#1}%
      \ifin@
        \def\tud@res@a##1/##2=##3\@nil{\toks@{{##1}/##2/=##3=}}%
      \else
        \def\tud@res@a##1=##2\@nil{\toks@{{##1}=##2=}}%
      \fi
    \else
      \in@{/}{#1}%
      \ifin@
        \def\tud@res@a##1/##2\@nil{\toks@{{##1}/##2/}}%
      \else
        \def\tud@res@a##1\@nil{\toks@{{##1}}}%
      \fi
    \fi
    \tud@res@a#1\@nil%
    \edef\tud@res@a{%
      \endgroup
      \unexpanded{\def\ProcessedArgument}{\the\toks@}%
    }%
  \tud@res@a%
}
\newcommand*\AP@Underscore[1]{%
  \begingroup%
    \def\tud@res@a{#1}%
    \tud@replace@in\tud@res@a{_}{\_}%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand\ProcessedArgument{\expandonce\tud@res@a}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Markup@Expandable{s}{%
  \let\Distribution\@Distribution%
  \let\Distro\@Distro%
  \let\Format\@Format%
  \let\Bundle\@Bundle%
  \let\Class\@Class%
  \let\Package\@Package%
  \let\Option\@Option%
  \let\Environment\@Environment%
  \let\Macro\@Macro%
  \let\Length\@Length%
  \let\Counter\@Counter%
  \let\Term\@Term%
  \let\PageStyle\@PageStyle%
  \let\Font\@Font%
  \let\Color\@Color%
  \let\Application\@Application%
  \let\Tutorial\@Tutorial%
  \let\File\@File%
  \IfBooleanF{#1}{%
    \Parameter@Expandable%
    \Misc@Expandable%
  }%
}
\AfterPackage*{hyperref}{%
  \expandafter\pdfstringdefDisableCommands\expandafter{\Markup@Expandable}%
}
\newcommand*\Misc@Expandable{%
  \let\Lettering\@firstofone%
  \let\emph\@firstofone%
  \let\texttt\@firstofone%
  \def\dots{...}%
  \def\_{_}%
  \protected\def~{~}%
}
\NewExpandableDocumentCommand\@Distribution{s d|| d'' d() m}{#5}
\NewDocumentCommand\Distribution{s d|| d'' d() m}{%
  \Markup@SetFormat{\sbnfont}%
  \Process@Markup{\Distribution{#5}}(#4)'#3'|#2|%
  \Process@Index{#1}[main]{\Distribution{#5}}[Distribution](#4)|#2|%
}
\NewDocumentCommand\Distro{s d||}{%
  \Lettering{LaTeX}\mbox{-}Distribution%
  \IfBooleanF{#1}{\Distro@IndexEntry{#2}}%
  \xspace%
}
\newcommand*\@Distro{LaTeX-Distribution}
\newcommand*\Distro@@IndexEntry{}
\edef\Distro@@IndexEntry{\@Distro\detokenize{@}{\Distro}}
\NewDocumentCommand\Distro@IndexEntry{o m}{%
  \if@tud@index\else
    \begingroup
      \IfValueTF{#2}{\edef\tud@res@a{|#2}}{\let\tud@res@a\@empty}%
      \expandafter\index\expandafter{\Distro@@IndexEntry\tud@res@a}%
      \IfValueT{#1}{%
        \expandafter\index\expandafter{\Distro@@IndexEntry!#1\tud@res@a}%
      }%
    \endgroup
  \fi
}
\NewDocumentCommand\Distro@Wrapper{m m r|| r'' m}{%
  \begingroup
    \tud@toks@{\Distribution*'#4'}%
    \edef\tud@res@a{{#5\IfBooleanT{#2}{~Portable}}}%
    \addto@hook@expandafter\tud@toks@{\tud@res@a}%
    \edef\tud@res@b{\if@tud@index\BooleanTrue\else#1\fi}%
    \expandafter\IfBooleanF\expandafter{\tud@res@b}{%
      \preto\tud@res@a{\Distribution}%
      \Markup@Inner@Get\tud@res@a{\tud@res@a}%
      \Markup@Replace\tud@res@a[Distribution]{\tud@res@a}%
      \expandafter\tud@idx@get\tud@res@a%
      \edef\tud@res@b{\tud@idx@key\detokenize{@}\tud@idx@fmt}%
      \edef\tud@res@a{\Distro@IndexEntry[\tud@res@b]{#3}}%
      \tud@replace@@in\tud@res@b{~Portable}{}%
      \eappto\tud@res@a{\SeeEntry*{\tud@res@b}{\Distro}}%
      \addto@hook@expandafter\tud@toks@{\tud@res@a}%
    }%
    \edef\tud@res@a{%
      \endgroup
      \the\tud@toks@%
    }%
  \tud@res@a\xspace%
}
\NewDocumentCommand\MiKTeX{s t+ d|| d''}{%
  \Distro@Wrapper{#1}{#2}|#3|'#4'{\Lettering{MiKTeX}}%
}
\NewDocumentCommand\TeXLive{s t+ d|| d''}{%
  \Distro@Wrapper{#1}{#2}|#3|'#4'{\Lettering{TeX~Live}}%
}
\NewDocumentCommand\MacTeX{s t+ d|| d''}{%
  \Distro@Wrapper{#1}{#2}|#3|'#4'{\Lettering{MacTeX}}%
}
\NewExpandableDocumentCommand\@Format{s d|| d'' d() m}{#5}
\NewDocumentCommand\Format{s d|| d'' d() m}{%
  \Markup@SetFormat{\sbnfont}%
  \Process@Markup{\Format{\Lettering{#5}}}(#4)'#3'|#2|%
  \Process@Index{#1}[main]{\Format{#5}}[Textsatzsystem](#4)|#2|%
}
\NewExpandableDocumentCommand\@Bundle{s d|| d'' d() m}{#5}
\NewDocumentCommand\Bundle{s d|| d'' d() m}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Bundle{#5}}[Bundle]%
  \else%
    \Markup@SetFormat{\sbnfont}%
    \Process@Markup{\Bundle{#5}}(#4)'#3'|#2|%
    \Process@Index{#1}[files]{\Bundle{#5}}[Bundle](#4)|#2|%
  \fi%
}
\NewExpandableDocumentCommand\@Class{s d|| d'' d() m}{#5}
\NewDocumentCommand\Class{s d|| d'' d() m}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Class{#5}}[Klasse]%
  \else%
    \Markup@SetFormat{\sbnfont}%
    \Process@Markup{\Class{#5}}(#4)'#3'|#2|%
    \Process@Index{#1}[files]{\Class{#5}}[Klasse](#4)|#2|%
  \fi%
}
\NewExpandableDocumentCommand\@Package{s d|| d'' d() m}{#5}
\NewDocumentCommand\Package{s d|| d'' d() m !d<>}{%
%%  \IfValueT{#6}{\ClassWarning{xxx}{move me \detokenize{#6}}}%
  \if@tud@changedat%
    \Process@ChangedAt{\Package{#5}}[Paket]%
  \else%
    \Markup@SetFormat{\sbnfont}%
    \IfValueTF{#6}{%
      \Process@Markup{\Package{#5}}(#4)<#6>'#3'|#2|%
    }{%
      \Process@Markup{\Package{#5}}(#4)<#5>'#3'|#2|%
    }%
    \Process@Index{#1}[files]{\Package{#5}}[Paket](#4)|#2|%
  \fi%
}
\NewExpandableDocumentCommand\@Option{s d|| d'' d() m}{#5}
\NewDocumentCommand\Option{s d|| d'' d() >{\AP@MarkupKeyVal}m}{%
  \Option@Value{#1}|#2|'#3'(#4)#5%
}
\NewDocumentCommand\Option@Value{m r|| r'' r() m d== d[]}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Option{#5}}=#6=[Option](#4)%
  \else%
    \Markup@SetFormat{\ttfamily}%
    \Process@Markup{\Option{#5}}=#6=[{#7}](#4)'#3'|#2|%
    \Process@Index{#1}[options]{\Option{#5}}=#6=(#4)|#2|%
  \fi%
}
\NewExpandableDocumentCommand\@Environment{s d|| d'' d() m}{#5}
\NewDocumentCommand\Environment{s d|| d'' d() >{\AP@MarkupKeyVal}m}{%
  \Environment@Value{#1}|#2|'#3'(#4)#5%
}
\NewDocumentCommand\Environment@Value{m r|| r'' r() m d// d== d[]}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Environment{#5}}/#6/=#7=[Umgebung](#4)%
  \else%
    \IfValueTF{#6}{%
      \Markup@SetFormat{\ttfamily}[Parameter]%
    }{%
      \Markup@SetFormat{\ttfamily}(%
        \ttfamily\bsc{}begin\textbraceleft#5\textbraceright\IfValueT{#8}{#8}%
        \tabularnewline\ttfamily\dots%
        \tabularnewline\ttfamily\bsc{}end\textbraceleft#5\textbraceright%
      )%
    }%
    \Process@Markup{\Environment{#5}}/#6/=#7=[{#8}](#4)'#3'|#2|%
    \Process@Index{#1}[macros]{\Environment{#5}}/#6/=#7=[Umgebung](#4)|#2|%
  \fi%
}
\NewExpandableDocumentCommand\@Macro{s d|| d'' d() m}{#5}
\NewDocumentCommand\Macro{s d|| d'' d() >{\AP@MarkupKeyVal}m}{%
  \Macro@Value{#1}|#2|'#3'(#4)#5%
}
\NewDocumentCommand\Macro@Value{m r|| r'' r() m d// d== d[]}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Macro{#5}}/#6/=#7=[Befehl](#4)%
  \else%
    \IfValueTF{#6}{%
      \Markup@SetFormat{\ttfamily}[Parameter]%
    }{%
      \Markup@SetFormat[\bsc]{\ttfamily}%
    }%
    \Process@Markup{\Macro{#5}}/#6/=#7=[{#8}](#4)'#3'|#2|%
    \Process@Index{#1}[macros]{\Macro{#5}}/#6/=#7=(#4)|#2|%
  \fi%
}
\NewExpandableDocumentCommand\@Length{s d|| d'' d() m}{#5}
\NewDocumentCommand\Length{s d|| d'' d() m}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Length{#5}}[L\"ange](#4)%
  \else%
    \Markup@SetFormat[\bsc]{\ttfamily}[L\"ange]%
    \Process@Markup{\Length{#5}}(#4)'#3'|#2|%
    \Process@Index{#1}[misc]{\Length{#5}}[L\"ange](#4)|#2|%
  \fi%
}
\NewExpandableDocumentCommand\@Counter{s d|| d'' d() m}{#5}
\NewDocumentCommand\Counter{s d|| d'' d() m}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Counter{#5}}[Z\"ahler](#4)%
  \else%
    \Markup@SetFormat{\ttfamily}[Z\"ahler]%
    \Process@Markup{\Counter{#5}}(#4)'#3'|#2|%
    \Process@Index{#1}[misc]{\Counter{#5}}[Z\"ahler](#4)|#2|%
  \fi%
}
\NewExpandableDocumentCommand\@Term{s d|| d'' d() m}{#5}
\NewDocumentCommand\Term{s d|| d'' d() m}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Term{#5}}[Bezeichner](#4)%
  \else%
    \Markup@SetFormat[\bsc]{\ttfamily}[Bezeichner]%
    \Process@Markup{\Term{#5}}(#4)'#3'|#2|%
    \Process@Index{#1}[terms]{\Term{#5}}(#4)|#2|%
  \fi%
}
\NewExpandableDocumentCommand\@PageStyle{s d|| d'' d() m}{#5}
\NewDocumentCommand\PageStyle{s d|| d'' d() m}{%
  \if@tud@changedat%
    \Process@ChangedAt{\PageStyle{#5}}[Seitenstil](#4)%
  \else%
    \Markup@SetFormat{\ttfamily}[Seitenstil]%
    \Process@Markup{\PageStyle{#5}}(#4)'#3'|#2|%
    \Process@Index{#1}[elements]{\PageStyle{#5}}[Seitenstil](#4)|#2|%
  \fi%
}
\NewExpandableDocumentCommand\@Font{s d|| d'' d() m}{#5}
\NewDocumentCommand\Font{s d|| d'' d() m}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Font{#5}}[Schriftelement](#4)%
  \else%
    \Markup@SetFormat{\ttfamily}[Schriftelement]%
    \Process@Markup{\Font{#5}}(#4)'#3'|#2|%
    \Process@Index{#1}[elements]{\Font{#5}}[Schriftelement](#4)|#2|%
  \fi%
}
\NewExpandableDocumentCommand\@Color{s d|| d'' d() m}{#5}
\NewDocumentCommand\Color{%
    s d|| d'' D(){\Package{tudscrcolor}} >{\AP@MarkupAppend}m%
}{%
  \Color@Value{#1}|#2|'#3'(#4)#5%
}
\NewDocumentCommand\Color@Value{m r|| r'' r() m d[]}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Color{#5}}[Farbe](#4)%
  \else%
    \Markup@SetFormat{\ttfamily}[Farbe](%
      \begingroup\ttfamily{#5\IfValueT{#6}{~(#6)}}\endgroup%
    )%
    \Process@Markup{\Color{#5}}[{#6}](#4)'#3'|#2|%
    \Process@Index{#1}[elements]{\Color{#5}}[Farbe](#4)|#2|%
  \fi%
}
\NewExpandableDocumentCommand\@Application{s d|| d'' d() m}{#5}
\NewDocumentCommand\Application{s d|| d'' d() m !d<>}{%
%%  \IfValueT{#6}{\ClassWarning{xxx}{move me \detokenize{#6}}}%
  \Markup@SetFormat{\sbifont}%
  \Process@Markup{\Application{#5}}(#4)<#6>'#3'|#2|%
  \Process@Index{#1}[main]{\Application{#5}}[Anwendungssoftware](#4)|#2|%
}
\NewExpandableDocumentCommand\@Tutorial{s d|| d'' d() m}{#5}
\NewDocumentCommand\Tutorial{s d|| d'' d() >{\AP@Underscore}m}{%
  \Markup@SetFormat{\sbnfont}%
  \Process@Markup{\Tutorial{#5}}(#4)'#3'|#2|%
  \Process@Index{#1}[files]{\Tutorial{#5}}[Tutorial](#4)|#2|%
}
\NewExpandableDocumentCommand\@File{s d|| d'' d() m}{#5}
\NewDocumentCommand\File{s d|| d'' d() >{\AP@Underscore}m}{%
  \Markup@SetFormat{\ttfamily}%
  \Process@Markup{\File{#5}}(#4)'#3'|#2|%
  \Process@Index{#1}[files]{\File{#5}}[Datei](#4)|#2|%
}
\newcommand*\tud@ety@crnt{}
\newcommand*\tud@ety@dflt{\Bundle{tudscr}}
\newcommand*\tud@ety@gnrl{+general+}
\NewDocumentEnvironment{Entity}{m}{%
  \def\tud@ety@crnt{#1}%
  \ignorespaces%
}{%
  \aftergroup\ignorespaces%
}
\newcommand*\tud@lbl@tmp{}
\NewDocumentCommand\tud@lbl@get{m m}{%
  \begingroup%
    \Markup@Inner@Get\tud@res@a{#2}%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\tud@lbl@@get#1}{\expandonce\tud@res@a}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@lbl@@get{m m}{%
  \begingroup%
    \tud@lbl@@@get#2%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\detokenize\expandafter{\tud@lbl@tmp}}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@lbl@@@get{m d// d== o d() d<> d'' d||}{%
  \begingroup%
    \IfValueTF{#5}{\protected@edef\tud@res@a{#5}}{\let\tud@res@a\tud@ety@crnt}%
    \ifx\tud@res@a\tud@ety@gnrl\else%
      \let\tud@res@b\@empty%
      \def\tud@res@c##1##2\@nil{%
        \ifx\tud@res@b\@empty\else%
          \appto\tud@res@b{+}%
        \fi%
        \eappto\tud@res@b{\expandafter\@gobble\string##1(##2)}%
      }%
      \@for\tud@res@d:=\tud@res@a\do{%
        \trim@spaces@in\tud@res@d%
        \ifx\tud@res@d\@empty\else%
          \expandafter\tud@res@c\tud@res@d\@nil%
        \fi%
      }%
      \ifx\tud@res@b\@empty%
        \let\tud@res@a\tud@ety@gnrl
      \else%
        \let\tud@res@a\tud@res@b
      \fi%
    \fi%
    \Parameter@Expandable%
    \Misc@Expandable%
    \protected@edef\tud@res@d{#1}%
    \def\tud@res@b##1##2\@nil{%
      \edef\tud@res@b{\expandafter\@gobble\string##1}%
      \appto\tud@res@b{:##2}%
    }%
    \expandafter\tud@res@b\tud@res@d\@nil%
    \let\tud@res@c\@empty
    \tud@doifPValue{#3}{\unexpanded{\def\tud@res@c}{\trim@spaces{#3}}}%
    \protected@edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def\tud@lbl@tmp}{%
        \tud@res@a:\tud@res@b%
        \IfValueT{#2}{/#2}%
        \ifx\tud@res@c\@empty\else=\tud@res@c\fi%
      }%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@lbl@declare{s m}{%
  \begingroup
    \edef\tud@res@a{%
      \endgroup
      \noexpand\tud@lbl@@declare{#1}{#2}%
    }%
  \tud@res@a%
}
\newcommand*\tud@lbl@@declare[2]{%
  \begingroup
    \tud@hyperdef{#2}%
    \let\HyperDestRename\@gobbletwo%
    \label{#2}%
    \tud@trace@lbl@add{created}{#2}%
  \endgroup
}
\NewDocumentCommand\entitylabel{o m}{\IfValueT{#1}{\label{#1}}}
\newrobustcmd*\tud@lbl@ref[2]{\tud@hyperref{#1}{#2}}
\newcommand*\tud@if@lbl@exists[3]{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\ifcsundef{r@#1}%
    }%
  \tud@res@a{#3}{#2}%
}
\newcommand*\Markup@Suppress{\let\Process@Markup\Markup@@Suppress}
\NewDocumentCommand\Markup@@Suppress{m d// d== o d() d<> d'' d||}{}
\NewDocumentCommand\Process@Markup{m d// d== o d() d<> d'' d||}{%
  \tud@lbl@@get\tud@lbl@tmp{{#1}/#2/=#3=(#5)}%
  \if@tud@declare%
    \tud@toks@{\Process@@MarkupDeclare}%
  \else%
    \tud@toks@{\Process@@MarkupInline}%
    \tud@if@lbl@exists\tud@lbl@tmp{}{%
      \tud@truncate@value\tud@lbl@tmp{\tud@lbl@tmp}%
    }%
    \tud@if@lbl@exists\tud@lbl@tmp{}{%
      \IfValueF{#5}{%
        \tud@lbl@@get\tud@lbl@tmp{{#1}/#2/=#3=(\tud@ety@dflt)}%
        \tud@if@lbl@exists\tud@lbl@tmp{}{%
          \tud@truncate@value\tud@lbl@tmp{\tud@lbl@tmp}%
          \tud@if@lbl@exists\tud@lbl@tmp{}{%
            \tud@lbl@@get\tud@lbl@tmp{{#1}/#2/(\tud@ety@gnrl)}%
          }%
        }%
      }%
    }%
  \fi%
  \addto@hook@expandafter\tud@toks@{\expandafter{\tud@lbl@tmp}}%
  \begingroup%
    \Markup@Expandable*%
    \protected@edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand\tud@reserved{\IfValueTF{#2}{#2}{#1}}%
    }%
  \tud@reserved%
  \addto@hook@expandafter\tud@toks@{\expandafter{\tud@reserved}}%
  \IfValueT{#3}{\addto@hook\tud@toks@{=#3=}}%
  \IfValueT{#4}{\addto@hook\tud@toks@{[{#4}]}}%
  \if@tud@declare%
    \if@openindex%
      \IfValueT{#7}{%
        \@tud@res@swatrue
        \IfValueT{#6}{\tud@if@strequal{#7}{url}{\@tud@res@swafalse}{}}%
        \if@tud@res@swa
          \ClassWarning{tudscrmanual}{%
            It is not possible to use any cross-reference\MessageBreak%
            shorthand like '#7' within the arguments\MessageBreak%
            of the environment `Declaration'%
          }%
        \fi
      }%
      \tud@trace@ety@add{declared}{\the\tud@toks@}%
    \else%
      \tud@toks@{\relax}%
    \fi%
  \else%
    \if@tud@index\else%
      \IfValueT{#6}{%
        \tud@if@strblank{#6}%
          {}%
          {\addto@hook\tud@toks@{<http://www.ctan.org/pkg/#6>}}%
      }%
      \IfValueT{#7}{\addto@hook\tud@toks@{'#7'}}%
    \fi%
    \tud@trace@ety@add{output}{\the\tud@toks@}%
  \fi%
  \if@tud@index\else%
    \IfValueT{#5}{%
      \tud@if@strblank{#5}{}{%
        \tud@if@strequal{#7}{none}{}{%
          \tud@if@lbl@exists{\tud@lbl@tmp}{}{%
%            \ClassWarning{tudscrmanual}{%
%              No existing label \tud@lbl@tmp\space for #5%
%            }%
          }%
        }%
      }%
    }%
  \fi%
  \the\tud@toks@%
}
\NewDocumentCommand\Process@@MarkupDeclare{m m d== o}{%
  \Markup@CheckFormat%
  \ifcase\tud@declare@num\relax%
    \tud@lbl@declare{#1}%
    \Markup@Output{#2}=#3=[{#4}]%
  \or%
    \Markup@Output{#2}=#3=[{#4}]%
  \or%
    \tud@lbl@declare{#1}%
  \or%
    \tud@lbl@declare*{#1}%
  \fi%
  \Markup@ClearFormat%
}
\NewDocumentCommand\Process@@MarkupInline{m m d== o d<> d''}{%
  \Markup@CheckFormat%
  \begingroup%
    \def\@tempc{\Markup@Output{#2}=#3=[{#4}]}%
    \tud@if@lbl@exists{#1}{%
      \def\@tempa{\tud@lbl@ref{#1}{\@tempc}}%
      \let\@tempb\relax%
      \IfValueT{#6}{%
        \def\@tempb{%
          \ClassWarning{tudscrmanual}{%
            You've used the unknown cross-reference\MessageBreak%
            shorthand '#6'. Only 'auto', 'page' and 'full'\MessageBreak%
            as well as 'none' \IfValueT{#5}{or 'url' }are valid%
          }%
        }%
        \tud@if@strequal{#6}{auto} {\def\@tempb{ in \autoref{#1}}}{%
        \tud@if@strequal{#6}{page} {\def\@tempb{ \vpageref{#1}}}{%
        \tud@if@strequal{#6}{ppage}{\def\@tempb{ \reftextfaraway{#1}}}{%
        \tud@if@strequal{#6}{full} {\def\@tempb{ in \fullref{#1}}}{%
        \tud@if@strequal{#6}{none} {\let\@tempa\@tempc\let\@tempb\relax}{}}}}}%
        \IfValueT{#5}{%
          \tud@if@strequal{#6}{url}%
            {\def\@tempa{\href{#5}{\@tempc}}\let\@tempb\relax}%
            {}%
        }%
      }%
      \tud@trace@lbl@add{matched}{#1}%
    }{%
      \let\@tempa\@tempc%
      \IfValueT{#5}{\def\@tempa{\href{#5}{\@tempc}}}%
      \let\@tempb\relax%
      \IfValueT{#6}{%
        \tud@if@strequal{#6}{none}{\let\@tempa\@tempc}{%
          \def\@tempb{%
            \ClassWarning{tudscrmanual}%
            {%
              Label #1\MessageBreak%
              is missing, no cross-reference created%
            }%
          }%
        }%
      }%
      \tud@trace@lbl@add{missing}{#1}%
    }%
    \if@tud@sec%
      \@tempc%
    \else%
      \@tempa\@tempb%
    \fi%
  \endgroup%
  \Markup@ClearFormat%
}
\NewDocumentCommand\Markup@Output{m r== r[]}{%
  \if@tud@declare%
    \tud@toks@{\Markup@Declare}%
  \else%
    \tud@toks@{\Markup@Inline}%
  \fi%
  \def\@tempa{#1}%
  \IfValueT{#2}{\appto\@tempa{=#2}}%
  \IfValueT{#3}{\appto\@tempa{#3}}%
  \addto@hook@expandafter\tud@toks@{\expandafter{\@tempa}}%
  \the\tud@toks@%
}
\newcommand*\Markup@Inline[1]{\mbox{\Markup@Format{#1}}}
\newcommand*\Markup@Declare{}
\newcommand*\Markup@@Declare[1]{\Markup@Format{#1}\Markup@Suffix}
\NewDocumentCommand\Markup@Inner@Get{m m}{%
  \begingroup
    \RenewDocumentCommand\Process@Index{m r[] m d// d== o d() d||}{}%
    \let\Process@Markup\Markup@Inner@@Get%
    #2%
    \edef\tud@res@a{%
      \endgroup
      \unexpanded{\def#1}{\the\tud@toks@}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Markup@Inner@@Get{m d// d== o d() d<> d'' d||}{%
  \tud@toks@{{#1}/#2/=#3=[#4](#5)<#6>'#7'|#8|}%
}
\NewDocumentCommand\Markup@Outer@Get{m m}{%
  \begingroup%
    \protected@edef\tud@res@a{\noexpand\Markup@Outer@@Get#2}%
    \tud@res@a%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\the\tud@toks@}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Markup@Outer@@Get{m d// d== o d() d<> d'' d||}{%
  \expandafter\def\expandafter\tud@res@a\expandafter{\@firstoftwo#1}%
  \IfValueT{#8}{\appto\tud@res@a{|#8|}}%
  \IfValueT{#7}{\appto\tud@res@a{'#7'}}%
  \IfValueT{#5}{\appto\tud@res@a{(#5)}}%
  \tud@toks@\expandafter{\tud@res@a}%
  \expandafter\def\expandafter\tud@res@b\expandafter{\@secondoftwo#1}%
  \IfValueT{#2}{\appto\tud@res@b{/#2}}%
  \IfValueT{#3}{\appto\tud@res@b{=#3}}%
  \addto@hook@expandafter\tud@toks@{\expandafter{\tud@res@b}}%
  \IfValueT{#4}{\addto@hook\tud@toks@{[#4]}}%
  \IfValueT{#6}{\addto@hook\tud@toks@{<#6>}}%
}
\NewDocumentCommand\Markup@Replace{s m d// d== o d() d'' d|| m}{%
  \begingroup
    \protected@edef\tud@res@a{\Markup@Replace#9}%
    \DeclareDocumentCommand\Markup@Replace{m d// d== o d() d<> d'' d||}{%
      \tud@toks@{{##1}}%
      \Markup@@Replace{#1}{//}{#3}{##2}%
      \Markup@@Replace{#1}{==}{#4}{##3}%
      \Markup@@Replace{#1}{[]}{#5}{##4}%
      \Markup@@Replace{#1}{()}{#6}{##5}%
      \addto@hook\tud@toks@{<##6>}%
      \Markup@@Replace{#1}{''}{#7}{##7}%
      \Markup@@Replace{#1}{||}{#8}{##8}%
    }%
    \tud@res@a%
    \edef\tud@res@a{%
      \endgroup
      \unexpanded{\def#2}{\the\tud@toks@}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Markup@@Replace{m m m m}{%
  \begingroup
    \def\tud@res@a{#4}%
    \IfValueT{#3}{%
      \IfBooleanTF{#1}{%
        \IfValueF{#4}{\edef\tud@res@a{#3}}%
      }{%
        \edef\tud@res@a{#3}%
      }%
    }%
    \edef\tud@res@a{%
      \endgroup
      \unexpanded{\addto@hook\tud@toks@}{%
        \@firstoftwo#2\expandonce\tud@res@a\@secondoftwo#2%
      }%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Process@Index{m r[] m d// d== o d() d||}{%
  \ifboolexpr{%
    bool {@tud@index} or bool {@tud@obsolete}%
  }{}{%
    \IfBooleanTF{#1}{%
      \IfValueT{#8}{%
        \ClassWarning{tudscrmanual}%
        {%
          You've used the starred version. No index entry\MessageBreak%
          for `\detokenize{#3}' is created. The\MessageBreak%
          optional argument |#8| will be ignored%
        }%
      }%
    }{%
      \Process@@Index[#2]{#3}/#4/=#5=[{#6}](#7)|#8|%
    }%
  }%
}
\NewDocumentCommand\Process@@Index{r[] m r// r== r[] r() r||}{%
  \if@tud@declare%
    \tud@idx@get{#2}/#3/=#4=[{#5}](#6)|declare|%
  \else%
    \tud@idx@get{#2}/#3/=#4=[{#5}](#6)|#7|%
  \fi%
  \edef\tud@lbl@tmp{#1}%
  \if@tud@declare%
    \if@openindex%
      \IfValueT{#7}{%
        \ClassWarning{tudscrmanual}{%
          It is not possible to use any indexing format\MessageBreak%
          like |#7| within the arguments of the\MessageBreak%
          environments `Declaration' or `DeclareEntity*'%
        }%
      }%
      \index[\tud@lbl@tmp-declare]{%
        \tud@idx@val\tud@idx@key @\tud@idx@fmt|(!%
      }%
    \else%
      \index[\tud@lbl@tmp-declare]{%
        \tud@idx@val\tud@idx@key @\tud@idx@fmt|!)%
      }%
    \fi%
  \else%
    \IfValueT{#7}{%
      \tud@if@strequal{#7}{declare}{%
        \appto\tud@lbl@tmp{-declare}%
        \appto\tud@idx@fmt{|!}%
      }{%
        \appto\tud@idx@fmt{|#7}%
      }%
    }%
    \index[\tud@lbl@tmp]{\tud@idx@val\tud@idx@key @\tud@idx@fmt}%
  \fi%
}
\newcommand*\tud@idx@key{}
\newcommand*\tud@idx@fmt{}
\newcommand*\tud@idx@val{}
\newcommand*\tud@idx@ety{}
\NewDocumentCommand\tud@idx@get{s m r// r== r[] r() d<> d'' d||}{%
  \begingroup%
    \begingroup%
      \Markup@Expandable%
      \edef\tud@reserved{%
        \noexpand\endgroup%
        \def\noexpand\tud@idx@key{#2}%
      }%
    \tud@reserved%
    \def\tud@idx@fmt{#2}%
    \tud@replace@@in\tud@idx@key{@}{"@}%
    \tud@replace@@in\tud@idx@fmt{@}{"@}%
    \let\tud@idx@val\@empty%
    \let\tud@idx@ety\tud@ety@dflt%
    \IfValueTF{#6}{%
      \def\tud@idx@ety{#6}%
    }{%
      \ifx\tud@ety@crnt\tud@ety@dflt\else
        \tud@lbl@@get\tud@lbl@tmp{{#2}/#3/(\tud@ety@crnt)}%
        \tud@if@lbl@exists{\tud@lbl@tmp}{%
          \let\tud@idx@ety\tud@ety@crnt%
          \def\tud@reserved{#2}%
          \ifx\tud@reserved\tud@idx@ety%
            \let\tud@idx@ety\tud@ety@dflt%
          \fi%
        }{}%
      \fi
    }%
    \let\@tempa\@empty%
    \let\@tempb\@empty%
    \let\@tempc\@empty%
    \@tempswatrue%
    \ifx\tud@idx@ety\tud@ety@dflt%
      \@tempswafalse%
    \else%
      \IfBooleanT{#1}{\@tempswafalse}%
      \let\@tempc\tud@idx@ety
    \fi%
    \IfValueT{#5}{%
      \appto\@tempa{ #5}%
      \appto\@tempb{\suffix{#5}}%
    }%
    \if@tempswa%
      \begingroup%
        \Markup@Expandable%
        \edef\tud@reserved{%
          \noexpand\endgroup%
          \ifx\tud@idx@ety\@empty\else
            \noexpand\appto\noexpand\@tempa{\space\tud@idx@ety}%
          \fi
        }%
      \tud@reserved%
      \ifx\tud@idx@ety\@empty\else
        \eappto\@tempb{\suffix{\expandonce\tud@idx@ety}}%
      \fi
    \fi%
    \@tempswafalse%
    \let\@tempd\@empty%
    \IfBooleanT{#1}{%
      \@tempswatrue%
      \def\@tempd{: Parameter angepasst}%
    }%
    \IfValueT{#9}{%
      \tud@if@strequal{#9}{declare}{%
        \@tempswatrue%
        \tud@doifPValue{#4}{\noexpand\@tempswafalse}%
      }{}%
      \tud@if@strequal{#9}{default}{\@tempswatrue}{}%
    }%
    \if@tempswa%
      \tud@doifPValue{#4}{\noexpand\appto\noexpand\tud@idx@key{=#4}}%
      \IfValueTF{#3}{%
        \tud@idx@hacky@fmt{#2}%
        \let\@tempb\@empty%
        \edef\tud@idx@val{%
          \expandonce\tud@idx@key\expandonce\@tempa\@tempd @%
          \expandonce\tud@idx@fmt\@tempd!%
        }%
        \begingroup
          \Markup@Expandable%
          \edef\tud@reserved{%
            \endgroup
            \def\noexpand\tud@idx@key{#3}%
          }%
        \tud@reserved%
        \tud@idx@hacky@fmt/#3/=#4={#2}%
        \IfBooleanT{#1}{\appto\tud@idx@fmt{\suffix{Parameter}}}%
      }{%
        \eappto\tud@idx@key{\expandonce\@tempa}%
        \tud@idx@hacky@fmt=#4={#2}%
      }%
    \else%
      \tud@doifPValue{#4}{\noexpand\@tempswatrue}%
      \if@tempswa%
        \tud@idx@hacky@fmt{#2}%
        \let\@tempb\@empty%
        \edef\tud@idx@val{%
          \expandonce\tud@idx@key\expandonce\@tempa\@tempd @%
          \expandonce\tud@idx@fmt\@tempd!%
        }%
        \IfValueT{#3}{%
          \begingroup
            \Markup@Expandable%
            \edef\tud@reserved{%
              \endgroup
              \def\noexpand\tud@idx@key{#3}%
            }%
          \tud@reserved%
          \tud@idx@hacky@fmt/#3/{#2}%
          \eappto\tud@idx@val{%
            \expandonce\tud@idx@key @%
            \expandonce\tud@idx@fmt!%
          }%
        }%
        \appto\tud@idx@key{=#4}%
        \tud@idx@hacky@fmt/#3/=#4={#2}%
      \else%
        \tud@idx@hacky@fmt{#2}%
        \let\@tempb\@empty%
        \IfValueTF{#3}{%
          \edef\tud@idx@val{%
            \expandonce\tud@idx@key\expandonce\@tempa\@tempd @%
            \expandonce\tud@idx@fmt\@tempd!%
          }%
          \begingroup
            \Markup@Expandable%
            \edef\tud@reserved{%
              \endgroup
              \def\noexpand\tud@idx@key{#3}%
            }%
          \tud@reserved%
          \tud@idx@hacky@fmt/#3/=#4={#2}%
          \IfBooleanT{#1}{\appto\tud@idx@fmt{\suffix{Parameter}}}%
        }{%
          \eappto\tud@idx@key{\expandonce\@tempa}%
        }%
      \fi%
    \fi%
    \let\emph\@firstofone%
    \protected@edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand\tud@idx@key{\tud@idx@key}%
      \def\noexpand\tud@idx@fmt{\tud@idx@fmt}%
      \def\noexpand\tud@idx@val{\tud@idx@val}%
    }%
  \tud@reserved%
}
\NewDocumentCommand\tud@idx@hacky@fmt{d// d== m}{%
  \begingroup
    \let\emph\@firstofone%
    \protected@edef\tud@res@c{#3}%
    \expandafter\def\expandafter\tud@res@a\expandafter%
      {\expandafter\@firstoftwo\tud@res@c}%
    \expandafter\def\expandafter\tud@res@b\expandafter%
      {\expandafter\@secondoftwo\tud@res@c}%
          \ifx\@tempc\@empty\else\eappto\tud@res@a{(\expandonce\@tempc)}\fi%
          \IfValueT{#1}{\appto\tud@res@b{/#1}}%
          \IfValueT{#2}{\appto\tud@res@b{=#2}}%
    \edef\tud@res@c{%
      \endgroup
      \unexpanded{\def\tud@idx@fmt}{%
        \expandonce\tud@res@a{\expandonce\tud@res@b}%
        \expandonce\@tempb%
      }%
    }%
  \tud@res@c%
}
\tud@newif\if@tud@changedat
\NewDocumentCommand\Process@ChangedAt{m d// d== o d()}{%
  \tud@idx@get*{#1}/#2/=#3=[{#4}](#5)%
}
\tud@newdim\changedatskip
\NewDocumentCommand\ChangedAt{s o d() m !O{\changedatskip}}{%
  \IfValueTF{#2}{%
    \Changed@At@CreateList[#2](#3){#4}%
  }{%
    \Changed@At@CreateList(#3){#4}%
  }%
  \print@changedatlist{#1}{#5}%
}
\NewExpandableDocumentCommand\@ChangedAt{s o d() m}{}
\AfterPackage*{hyperref}{%
  \pdfstringdefDisableCommands{%
    \let\ChangedAt\@ChangedAt%
  }%
}
\tud@addtocontents@initialize*{\let\ChangedAt\@ChangedAt}
\newcommand*\tud@changedat@list{}
\let\tud@changedat@list\relax
\NewDocumentCommand\Changed@At@CreateList{o d() m}{%
  \IfValueT{#3}{\forssvlist{\Changed@At@@CreateList[{#1}](#2)}{#3}}%
}
\NewDocumentCommand\Changed@At@@CreateList{r[] r() >{\SplitArgument{1}{:}}m}{%
  \Changed@At@@@CreateList[{#1}](#2)#3%
}
\NewDocumentCommand\Changed@At@@@CreateList{%
  r[] r() >{\SplitArgument{1}{!}}m m%
}{%
  \Changed@At@@@@CreateList[{#1}](#2)#3{#4}%
}
\NewDocumentCommand\Changed@At@@@@CreateList{r[] r() m m m}{%
  \def\@tempa##1{%
    \sbox\z@{%
      \let\tud@idx@fmt\relax%
      \@tud@changedattrue##1\@tud@changedatfalse%
      \ifx\tud@idx@fmt\relax%
        \def\@tempb{##1}%
      \else%
        \let\@tempb\tud@idx@fmt%
      \fi%
      \trim@spaces@in\tud@res@b%
      \global\let\@tempb\@tempb
    }%
  }%
  \let\@tempb\@empty%
  \IfValueTF{#2}{%
    \@tempa{#2}%
  }{%
    \ifx\tud@ety@crnt\tud@ety@dflt\else
      \expandafter\@tempa\expandafter{\tud@ety@crnt}%
    \fi
  }%
  \IfValueTF{#1}{%
    \toks@{#3!Implementierung}%
    \ifx\@tempb\@empty\else
      \addto@hook\toks@{\space}%
      \addto@hook@expandafter\toks@{\@tempb}%
    \fi
    \addto@hook\toks@{!#1!}%
    \IfValueT{#4}{\addto@hook\toks@{#4}}%
    \addto@hook\toks@{!}%
    \if@tud@obsolete\else%
      \IfValueT{#5}{\addto@hook\toks@{#5}}%
    \fi%
  }{%
    \toks@{#3!Allgemein}%
    \IfValueTF{#2}{%
      \addto@hook\toks@{!}%
      \ifx\@tempb\@empty\else
        \addto@hook@expandafter\toks@{\@tempb}%
      \fi
      \addto@hook@expandafter\toks@{:\space}%
      \IfValueTF{#5}{%
        \addto@hook\toks@{#5}%
      }{%
        \addto@hook\toks@{neu}%
      }%
    }{%
      \ifx\@tempb\@empty\else
        \addto@hook\toks@{\space}%
        \addto@hook@expandafter\toks@{\@tempb}%
      \fi
      \addto@hook\toks@{!}%
      \addto@hook\toks@{#5}%
    }%
    \IfValueT{#4}{%
      \ClassError{tudscrmanual}{Using !#4 isn't allowed for a change notice}{%
        At least, it has to be implemented!%
      }%
    }%
  }%
  \listeadd\tud@changedat@list{\the\toks@}%
}
\newcommand*\tud@chg@entry@validate[3]{%
  \begingroup%
    \in@{:}{#3}%
    \ifin@%
      \def\tud@res@c##1:##2\@nil{%
        \def\tud@res@a{##1}%
        \def\tud@res@b{##2}%
        \trim@spaces@in\tud@res@b%
      }%
      \tud@res@c#3\@nil%
    \else%
      \def\tud@res@a{#3}%
      \let\tud@res@b\@empty%
    \fi%
    \tud@v@validate\tud@res@a{\tud@res@a}%
    \edef\tud@res@c{%
      \endgroup%
      \unexpanded{\def#1}{v\tud@res@a}%
      \unexpanded{\def#2}{\expandonce\tud@res@b}%
    }%
  \tud@res@c%
}
\NewDocumentCommand\Changed@At@CreateEntry{>{\SplitArgument{4}{!}}m}{%
  \Changed@At@@CreateEntry#1%
}
\newcommand*\Changed@At@@CreateEntry[5]{%
  \IfValueT{#3}{%
    \IfValueTF{#4}{%
      \@tud@changedattrue#3\@tud@changedatfalse%
      \tud@if@strblank{#4}{}{%
        \eappto\tud@idx@val{%
          \expandonce\tud@idx@key: Werte angepasst@%
          \expandonce\tud@idx@fmt: Werte angepasst!%
        }%
        \begingroup%
          \@tud@changedattrue#4\@tud@changedatfalse%
          \let\suffix\@gobble%
          \protected@edef\tud@reserved{%
            \noexpand\endgroup%
            \def\noexpand\tud@idx@key{\tud@idx@key}%
            \def\noexpand\tud@idx@fmt{\tud@idx@fmt}%
          }%
        \tud@reserved%
      }%
      \tud@if@strblank{#5}{%
        \if@tud@obsolete%
          \appto\tud@idx@fmt{: entf\"allt}%
        \else%
          \appto\tud@idx@fmt{: neu}%
        \fi%
      }{%
        \appto\tud@idx@key{: #5}%
        \appto\tud@idx@fmt{: #5}%
      }%
      \index[changes-#1]{#2!\tud@idx@val\tud@idx@key @\tud@idx@fmt}%
    }{%
      \def\tud@idx@fmt{#3}%
      \tud@replace@@in\tud@idx@fmt{"=}{""=}%
      \tud@replace@@in\tud@idx@fmt{"~}{""~}%
      \index[changes-#1]{#2!\tud@idx@fmt}%
    }%
  }%
  \ifinlist{#1}{\tud@templist}{}{\listadd\tud@templist{#1}}%
}
\NewDocumentCommand\Changed@At@Special{o m d<> m}{%
  \begingroup%
    \def\do##1{%
      \tud@chg@entry@validate\tud@res@a\tud@res@b{##1}%
      \IfValueTF{#3}%
        {\def\tud@res@c{#2\detokenize{@}\hyperref[{#3}]{#2}}}%
        {\def\tud@res@c{#2}}%
      \tud@unique@xadd\tud@changedat@list{\tud@res@a}%
      \tud@replace@@in\tud@res@b{"=}{""=}%
      \tud@replace@@in\tud@res@b{"~}{""~}%
      \index[{changes-\tud@res@a}]{\tud@res@c!\tud@res@b}%
    }%
    \dossvlist{#4}%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\printchangedatlist\IfValueT{#1}{\unexpanded{[{#1}]}}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Hint{O{\expandonce\@currentlabelname} m}{%
  \Changed@At@Special{Tipps \& Tricks}<sec:tips>%
    {#2:#1\detokenize{@}\hyperref{}{}{\@currentHref}{#1}}%
}
\NewDocumentCommand\printchangedatlist{s O{\z@}}{%
  \print@changedatlist{#1}{#2}%
}
\NewDocumentCommand\print@changedatlist{mm}{%
  \ifx\tud@changedat@list\relax\else%
    \let\tud@templist\relax%
    \forlistloop\Changed@At@CreateEntry{\tud@changedat@list}%
    \global\let\tud@changedat@list\relax%
    \IfBooleanF{#1}{%
      \tud@list@sort\tud@templist%
      \strut%
      \marginnote{%
        \def\@tempa####1{%
          \ignorespaces%
           ####1%\hyperref[idx:changes-####1]{####1}%
          \tabularnewline%
        }%
        \begin{tabular}{|l|}%
          \hline%
          \forlistloop\@tempa{\tud@templist}%
          \hline%
        \end{tabular}%
      }[{#2}]%
      \ignorespaces%
    }%
  \fi%
}
\NewDocumentEnvironment{Declaration}{m d== d() d<> o}{% TODO evaluate #2
  \listadd\tud@declaration@list{#1}%
  \tud@declare@start[{#5}]{#1}(#3){#4}%
}{%
  \tud@declare@end{#1}%
}
\NewDocumentEnvironment{Declaration*}{m d() d<>}{%
  \@tud@obsoletetrue
  \listadd\tud@declaration@list{%
    \def\tud@declare@num{1}%
    #1%
    \def\tud@declare@num{0}%
  }%
  \tud@declare@start{#1}(#2){#3}%
  \@tud@obsoletefalse
}{%
  \@tud@obsoletetrue
  \tud@declare@end{#1}%
  \@tud@obsoletefalse
}
\newcommand*\tud@cessations@version{}
\AtBeginDocument{\undef\tud@cessations@version}
\NewDocumentEnvironment{Cessations}{m o}{%
  \ifundef\tud@cessations@version{%
    \tud@v@validate\tud@cessations@version{#1}%
    \edef\tud@cessations@version{v\tud@cessations@version}%
  }{%
    \ClassError{tudscrmanual}{Nested environment `Cessations'}{%
      The environment `Cessations' must not be nested, but\MessageBreak%
      Version `\tud@cessations@version' is currently processed.
    }%
    \undef\tud@cessations@version%
  }%
  \ifundef\tud@cessations@version{}{%
    \begingroup%
      \edef\tud@res@a{%
        \unexpanded{Anpassungen f\"ur \TUDScript~}\tud@cessations@version%
      }%
      \edef\tud@lbl@tmp{sec:cessations:\tud@cessations@version}%
      \let\tud@res@b\@empty%
      \IfValueT{#2}{%
        \def\do##1{%
          \eappto\tud@res@b{\tud@cessations@version:}%
          \appto\tud@res@b{##1;}%
        }%
        \dossvlist{#2}%
      }%
      \edef\tud@res@a{%
        \endgroup%
        \noexpand\subsection[nonumber=true]{%
          \expandonce\tud@res@a%
          \noexpand\label{\tud@lbl@tmp}%
          \noexpand\index[changes-\tud@cessations@version]{%
            Allgemein!""@\noexpand\hyperref[\tud@lbl@tmp]{%
              \unexpanded{Anpassungen gegen\"uber der vorhergehenden Version}%
            }%
          }%
          \noexpand\ChangedAt*{\expandonce\tud@res@b}%
        }%
      }%
    \tud@res@a%
  }%
}{}
% TODO #1 verschieben, das macht dort keinen Sinn; Angleich an Declaration
\NewDocumentEnvironment{Cessation}{o m d() d<> d''}{%
  \ifundef\tud@cessations@version{%
    \ClassError{tudscrmanual}{Missing environment `Cessations'}{%
      The environment `Cessation' must be nested\MessageBreak%
      within environment `Cessations'!%
    }%
    \edef\tud@cessations@version{v\TUDScriptVersion@Number}%
  }{}%
  \@tud@obsoletetrue%
  \listadd\tud@declaration@list{#2}%
  \let\tud@res@d\@empty
  \IfValueTF{#5}{%
    \tud@declare@start{#2}(#3){#5}%
  }{%
    \toks@{\tud@declare@start{#2}(#3)}%
    \def\tud@res@d{entf\"allt}%
    \IfValueT{#4}{%
      \begingroup
        \Markup@Inner@Get\tud@res@a{#4}%
        \Markup@Replace\tud@res@a'page'{\tud@res@a}%
        \Markup@Outer@Get\tud@res@a{\tud@res@a}%
        \edef\tud@res@a{%
          \endgroup
          \unexpanded{\appto\tud@res@d}{, \noexpand\seeplain{\tud@res@a}}%
        }%
      \tud@res@a%
    }%
    \addto@hook@expandafter\toks@{\expandafter{\tud@res@d}}%
    \the\toks@%
  }%
  \IfValueTF{#1}{%
    \Changed@At@CreateList[#1]{\tud@cessations@version!#2}%
  }{%
    \Changed@At@CreateList[#2]{\tud@cessations@version}%
  }%
  \@tud@obsoletefalse%
  \RenewDocumentCommand\printdeclarationlist{o d()}{%
    \@tud@obsoletetrue%
    \tud@print@declarationlist*[{##1}](##2)%
    \@tud@obsoletefalse%
  }%
}{%
  \@tud@obsoletetrue%
  \tud@declare@end{#2}%
  \@tud@obsoletefalse%
}
\tud@newif\if@tud@declare
\tud@newif\if@tud@obsolete
\tud@newif\if@openindex
\newcommand*\tud@declaration@list{}
\let\tud@declaration@list\relax
\newcommand*\tud@declare@num{0}
\newcommand*\tud@preset@list{}
\let\tud@preset@list\relax
\tud@newif\if@tud@preset@list
\newcommand*\tud@additional@list{}
\let\tud@additional@list\relax
\tud@newif\if@tud@additional@list
\NewDocumentCommand\tud@declare@start{o m >{\AP@PresetParser}r() m}{%
  \Changed@At@CreateList[#2]{#1}%
  \IfValueTF{#3}{%
    \@tud@preset@listtrue%
    \listadd\tud@preset@list{#3}%
  }{%
    \listadd\tud@preset@list{\relax}%
  }%
  \IfValueTF{#4}{%
    \@tud@additional@listtrue%
    \listadd\tud@additional@list{#4}%
    \in@{\Environment}{#2}%
    \ifin@%
      \@expandtwoargs\in@{/}{\@secondoftwo#2}%
      \ifin@\else
        \listadd\tud@additional@list{\tabularnewline}%
      \fi
    \fi%
  }{%
    \listadd\tud@additional@list{\relax}%
    \in@{\Environment}{#2}%
    \ifin@%
      \@expandtwoargs\in@{/}{\@secondoftwo#2}%
      \ifin@\else
        \listadd\tud@additional@list{\relax}%
        \listadd\tud@additional@list{\relax}%
      \fi
    \fi%
  }%
}
\newcommand*\tud@declare@end[1]{%
  \ifvmode\removelastskip\else\@killglue\fi
  \tud@declare@index%
  \global\let\tud@declare@index\@empty%
  \ifx\tud@declaration@list\relax\else%
    \ClassError{tudscrmanual}{\string\printdeclarationlist\space is missing}{%
      \string\tud@declaration@list\space is not empty. Did you\MessageBreak%
      forget to print this list with\MessageBreak%
      \string\printdeclarationlist?%
    }%
  \fi%
  \@tud@declaretrue\@openindexfalse#1\@tud@declarefalse%
  \par%
}
\newcommand*\tud@declare@index{}
\AddToHook{shipout/after}{\tud@declare@index}
\newcommand*\AP@PresetParser[1]{%
  \begingroup
    \let\tud@res@a\@empty
    \def\tud@res@b{#1}%
    \let\tud@res@c\@empty
    \let\tud@res@d\@empty
    \trim@spaces@in\tud@res@b%
    \ifx\tud@res@b\@empty\tud@res@cnt=\z@\else\tud@res@cnt=\tw@\fi
    \@expandtwoargs\in@{|}{\expandonce\tud@res@b}%
    \ifin@
      \advance\tud@res@cnt\tw@
      \expandafter\tud@preset@parser@bar\tud@res@b\@nil\tud@res@b\tud@res@c%
    \fi
    \@expandtwoargs\in@{:}{\expandonce\tud@res@b}%
    \ifin@
      \expandafter\tud@preset@parser@colon\tud@res@b\@nil\tud@res@a\tud@res@b%
    \else
      \def\tud@res@a{Voreinstellung}%
    \fi
    \@expandtwoargs\in@{:}{\expandonce\tud@res@c}%
    \ifin@
      \expandafter\tud@preset@parser@colon\tud@res@c\@nil\tud@res@c\tud@res@d%
    \fi
    \trim@spaces@in\tud@res@a%
    \trim@spaces@in\tud@res@b%
    \trim@spaces@in\tud@res@c%
    \trim@spaces@in\tud@res@d%
    \ifx\tud@res@b\@empty\else
      \advance\tud@res@cnt\m@ne
      \ifx\tud@res@a\@empty\else\advance\tud@res@cnt\m@ne\fi
      \eappto\tud@res@a{%
        \ifx\tud@res@a\@empty\else:\space\fi
        \noexpand\PValue{\expandonce\tud@res@b}%
      }%
    \fi
    \ifx\tud@res@d\@empty\else
      \advance\tud@res@cnt\m@ne
      \ifx\tud@res@c\@empty\else\advance\tud@res@cnt\m@ne\fi
      \eappto\tud@res@c{%
        \ifx\tud@res@c\@empty\else:\space\fi
        \noexpand\PValue{\expandonce\tud@res@d}%
      }%
    \fi
    \edef\tud@res@a{%
      \endgroup
      \unexpanded{\def\ProcessedArgument}{%
        \expandonce\tud@res@a%
        \ifx\tud@res@c\@empty\else\noexpand\txb\expandonce\tud@res@c\fi
      }%
      \ifnum\tud@res@cnt>\z@\noexpand\@firstofone\else\noexpand\@gobble\fi
    }%
  \tud@res@a{%
    \ClassWarning{tudscrmanual}{%
      Wrong format for (conditional) preset. Given is\MessageBreak%
      `#1'\MessageBreak%
      but should be `prefixtext:preset|condition:preset'\MessageBreak%
      whereas the conditional part needs both elements%
    }%
  }%
}
\newcommand*\tud@preset@parser@bar{}
\def\tud@preset@parser@bar#1|#2\@nil#3#4{%
  \def#3{#1}%
  \def#4{#2}%
}
\newcommand*\tud@preset@parser@colon{}
\def\tud@preset@parser@colon#1:#2\@nil#3#4{%
  \def#3{#1}%
  \def#4{#2}%
}
\NewDocumentCommand\printdeclarationlist{o d()}{%
  \tud@print@declarationlist[{#1}](#2)%
}
\NewDocumentCommand\tud@print@declarationlist{s o d()}{%
  \tud@setglue\tud@res@glue{\medskipamount}%
  \ifx\tud@declaration@list\relax\else%
    \ifhmode%
      \vskip\tud@res@glue%
    \else%
      \addpenalty{\@beginparpenalty}%
      \addvspace{\tud@res@glue}%
    \fi%
    \@tud@declaretrue\@openindextrue%
    \noindent\null%
    \def\@tempa##1{\ignorespaces##1\tabularnewline}%
    \sbox\z@{%
      \edef\HyperRaiseLinkDefault{\the\dimexpr1\baselineskip\relax}%
      \begin{tabular}{|l|}%
        \hline%
        \forlistloop\@tempa{\tud@declaration@list}%
        \hline%
      \end{tabular}%
    }\usebox\z@%
    \@tud@declarefalse%
    \let\tud@declare@index\@empty
    \IfValueT{#2}{%
      \tud@index@csv\tud@declare@index{#2}%
      \tud@declare@index%
    }%
    \global\let\tud@declare@index\tud@declare@index
    \ifboolexpr{bool {@tud@preset@list} or bool {@tud@additional@list}}{%
      \def\@tempa##1{\small\ignorespaces##1\tabularnewline}%
      \hskip1.2em%
      \if@tud@preset@list%
        \begin{tabular}{@{}l@{}}%
          \forlistloop\@tempa{\tud@preset@list}%
        \end{tabular}%
        \hspace{\tabcolsep}%
      \fi%
      \if@tud@additional@list%
        \begin{tabular}{@{}l@{}}%
          \forlistloop\@tempa{\tud@additional@list}%
        \end{tabular}%
      \fi%
    }{}%
    \global\let\tud@declaration@list\relax%
    \global\let\tud@preset@list\relax%
    \global\let\tud@additional@list\relax%
    \global\@tud@preset@listfalse%
    \global\@tud@additional@listfalse%
    \print@changedatlist{#1}{%
      \dimexpr(\ht\strutbox+\dp\strutbox-\ht0-\dp0)/2\relax%
    }%
    \IfValueT{#3}{#3}%
    \par\nobreak%
    \vskip\medskipamount%
    \@afterindentfalse\@afterheading%
  \fi%
}
\NewDocumentCommand\InlineDeclaration{m}{\Inline@Declaration{#1}}
\NewDocumentCommand\Inline@Declaration{s m}{%
  \tud@declare@special@start{#2}{2}%
  \begingroup
    \let\index\@gobbleopt@one
    \IfBooleanF{#1}{\let\hyperref\@gobblethree#2}%
  \endgroup
  \tud@declare@special@end{#2}%
  \IfBooleanF{#1}{\null}%
}
\NewDocumentEnvironment{DeclareEntity}{m o}{%
  \tud@declare@special@start[{#2}]{#1}{3}%
  \begin{Entity}{#1}%
}{%
  \end{Entity}%
  \tud@declare@special@end{#1}%
}
\NewDocumentEnvironment{DeclareEntity*}{m o}{%
  \tud@declare@special@start[{#2}]{#1}{2}%
}{%
  \tud@declare@special@end{#1}%
}
\NewDocumentCommand\tud@declare@special@start{o m m}{%
  \Changed@At@CreateList(#2){#1}%
  \def\tud@declare@num{#3}%
  \@tud@declaretrue\@openindextrue#2\@tud@declarefalse%
  \def\tud@declare@num{0}%
  \printchangedatlist%
}
\newcommand*\tud@declare@special@end[1]{%
  \ifx\tud@changedat@list\relax\else%
    \ClassError{tudscrmanual}{\string\printchangedatlist\space is missing}{%
      \string\tud@changedat@list\space is not empty. Did you\MessageBreak%
      forget to print this list with \string\printchangedatlist?%
    }%
  \fi%
  \@tud@declaretrue\@openindexfalse#1\@tud@declarefalse%
}
\NewDocumentCommand\TermTable{o m}{%
  \ifhmode\par\fi%
  \vskip\smallskipamount%
  \@afterindentfalse\@afterheading%
  \IfValueTF{#1}{%
    \begin{tabularx}{\dimexpr\glueexpr#1\relax\relax}[b]{lXX}%
      \Term@@Table{#2}%
    \end{tabularx}%
  }{%
    \begin{tabular}[b]{lll}%
      \Term@@Table{#2}%
    \end{tabular}%
  }%
  \par\addvspace{\medskipamount}%
}
\newcommand*\Term@@Table[1]{%
  \toprule%
  \textbf{Bezeichner} & \textbf{Deutsch} & \textbf{Englisch}\tabularnewline%
  \midrule%
  \forcsvlist{\Term@@@Table}{#1}%
  \bottomrule%
}
\newcommand*\Term@@@Table[1]{%
  \Term*{#1} & %
  \tud@if@strempty{\csuse{#1}}{\PName{leer}}{\csuse{#1}} & %
  \strut\selectlanguage{english}%
  \tud@if@strempty{\csuse{#1}}{\PName{empty}}{\csuse{#1}}\tabularnewline%
}
\newcommand*\tud@val@index{}
\AddToHook{shipout/after}{\tud@val@index}
\newcommand*\tud@val@declare{}
\NewDocumentEnvironment{DeclareValues}{o}{%
  \begin{Declare@Values}%
  \let\tud@val@index\@empty
  \IfValueT{#1}{%
    \tud@index@csv\tud@val@index{#1}%
    \tud@val@index%
  }%
  %\def\tud@val@declare{#2}%
}{%
  \ifvmode\removelastskip\else\@killglue\fi
  \tud@val@index%
  \end{Declare@Values}%
}
\NoIndentAfterEnv{DeclareValues}
\newcommand*\itemval{}
\AtBeginDocument{\undef\itemval}
\newcommand*\tud@val@before{%
  \let\itemval\tud@val@item%
  \let\NR@gettitle\@gobble%
  \tud@setdim\changedatskip{-1\baselineskip}%
}
\tud@list@create[before=\tud@val@before]{Declare@Values}{description}{1}
\NewDocumentCommand\tud@val@item{s m d() d<> o}{% TODO evaluate #5 for changes
  \begingroup
    \tud@val@format\tud@val@main\tud@val@addon{#1}{#2}%
    \let\tud@res@d\@empty%
    \IfValueTF{#3}{%
      \appto\tud@res@d{\suffix{S\"aumniswert f\"ur #3}}%
    }{%
      \IfBooleanT{#1}{\appto\tud@res@d{\suffix{S\"aumniswert}}}%
    }%
    \IfValueT{#4}{\appto\tud@res@d{\suffix{#4}}}%
	% TODO resolve \tud@val@declare from Declaration
%    \tud@lbl@@get\tud@lbl@tmp{{\tud@val@declare}=\tud@val@main=(\tud@ety@crnt)}%
%    \Markup@Inner@Get\tud@res@a{\tud@val@declare}%
%    \edef\tud@res@b{\IfBooleanTF{#1}{\noexpand\emph}{\@firstofone}{\tud@val@main}}%
%    \Markup@Replace\tud@res@a=\tud@res@b='none'|!|{\tud@res@a}%
%    \Markup@Outer@Get\tud@res@a{\tud@res@a}%
	% TEMP START
    \let\tud@res@a\@empty
    \edef\tud@res@b{\IfBooleanTF{#1}{\noexpand\emph}{\@firstofone}{\tud@val@main}}%
	% TEMP END
    \edef\tud@res@a{%
      \endgroup
      \noexpand\item[{%
%        \noexpand\tud@lbl@declare{\tud@lbl@tmp}% TODO use it
        \expandonce\tud@res@a\expandonce\tud@val@addon\expandonce\tud@res@d%
      }]%
    }%
  \tud@res@a%
  \strut\ignorespaces%
}
\newcommand*\tud@val@format[4]{%
  \begingroup
    \let\tud@res@d\@empty%
    \protected@edef\tud@res@a{#4}%
    \@for\tud@res@a:=\tud@res@a\do{%
      \trim@spaces@in\tud@res@a%
      \ifx\tud@res@a\@empty\else%
        \TUD@set@ifkey{}{@tempswa}{\tud@res@a}%
        \ifx\FamilyKeyState\FamilyKeyStateProcessed%
          \if@tempswa%
            \preto\tud@res@d{true,on,yes,}%
          \else%
            \preto\tud@res@d{false,off,no,}%
          \fi%
        \else%
          \eappto\tud@res@d{,\expandonce\tud@res@a}%
        \fi%
      \fi%
    }%
    \let\tud@res@a\@empty%
    \let\tud@res@b\@empty%
    \def\do##1{%
      \def\tud@res@d{##1}%
      \ifx\tud@res@d\@empty\else%
        \ifx\tud@res@a\@empty%
          \let\tud@res@a\tud@res@d%
        \else%
          \eappto\tud@res@b{%
            \noexpand\PValue{\slc}%
            \IfBooleanTF{#3}{\noexpand\emph}{\@firstofone}{%
              \noexpand\PValue{\expandonce\tud@res@d}%
            }%
          }%
        \fi%
      \fi%
    }%
    \expandafter\docsvlist\expandafter{\tud@res@d}%
    \edef\tud@res@a{%
      \endgroup
      \unexpanded{\def#1}{\expandonce\tud@res@a}%
      \unexpanded{\def#2}{\expandonce\tud@res@b}%
    }%
  \tud@res@a%
}
\newcommand*\tud@pkg@index{}
\AddToHook{shipout/after}{\tud@pkg@index}
\NewDocumentEnvironment{DeclarePackages}{o}{%
  \begin{Declare@Packages}%
  \let\tud@pkg@index\@empty
  \IfValueT{#1}{%
    \tud@index@csv\tud@pkg@index{#1}%
    \tud@pkg@index%
  }%
}{%
  \ifvmode\removelastskip\else\@killglue\fi
  \tud@pkg@index%
  \end{Declare@Packages}%
}
\NoIndentAfterEnv{DeclarePackages}
\newcommand*\itempkg{}
\AtBeginDocument{\undef\itempkg}
\newcommand*\tud@pkg@before{%
  \let\itempkg\tud@pkg@item%
  \let\NR@gettitle\@gobble%
}
\tud@list@create[before=\tud@pkg@before]{Declare@Packages}{description}{2}
\NewDocumentCommand\tud@pkg@item{m d() d<> o d''}{%
  \begingroup
    \let\tud@res@a\@empty
    \forcsvlist{\tud@pkg@declare\tud@res@a<#5>}{#1}%
    \IfValueT{#2}{%
      \forcsvlist{\tud@pkg@@declare\tud@res@a<#5>}{#2}%
    }%
    \IfValueT{#3}{%
      \forcsvlist{\tud@pkg@@declare*\tud@res@a<#5>}{#3}%
    }%
    \let\tud@res@b\@empty
    \IfValueT{#4}{%
      \let\tud@res@c\@empty
      \def\do##1{%
        \eappto\tud@res@c{%
          \ifx\tud@res@c\@empty\else\slc\fi
          \noexpand\Package{\trim@spaces{##1}}%
        }%
      }%
      \docsvlist{#1}%
      \def\do##1{%
        \ifx\tud@res@b\@empty\else\appto\tud@res@b{;}\fi
        \appto\tud@res@b{##1}%
        \in@{:}{##1}%
        \ifin@\else
          \eappto\tud@res@b{:\expandonce\tud@res@c}%
        \fi
      }%
      \dossvlist{#4}%
      \edef\tud@res@b{%
        \noexpand\Changed@At@Special[-1\baselineskip]%
          {Paketbeschreibungen}<sec:packages:recommended>%
          {\expandonce\tud@res@b}%
      }%
    }%
    \edef\tud@res@a{%
      \endgroup
      \noexpand\item[{\expandonce\tud@res@a}]%
      \noexpand\strut\expandonce\tud@res@b%
    }%
  \tud@res@a%
  \ignorespaces%
}
\NewDocumentCommand\tud@pkg@declare{m r<> m}{%
  \tud@pkg@@declare{#1}<#2>'url'{\Package{#3}}%
}
\NewDocumentCommand\tud@pkg@@declare{s m r<> d'' >{\TrimSpaces}m}{%
  \eappto#2{\IfBooleanF{#1}{\ifx#2\@empty\else\slc\fi}}%
  \begingroup
    \Markup@Inner@Get\tud@res@a{#5}%
    \Markup@Replace\tud@res@a'#4'{\tud@res@a}%
    \Markup@Outer@Get\tud@res@a{\tud@res@a}%
    \edef\tud@res@a{%
      \endgroup
      \unexpanded{\appto#2}{\Inline@Declaration\IfBooleanT{#1}{*}{\tud@res@a}}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Path{>{\AP@Underscore}m}{\mbox{\textttit{#1}}}
\NewDocumentCommand\GitHubFile{s t! d<> d'' d() m}{%
  \begingroup
    \def\tud@res@a{\File}%
    \IfBooleanT{#1}{\appto\tud@res@a{*}}%
    \appto\tud@res@a{(#5){#6}}%
    \IfBooleanT{#2}{\edef\tud@res@a{\InlineDeclaration{\expandonce\tud@res@a}}}%
    \edef\tud@res@a{%
      \endgroup
      \unexpanded{\GitHubDownload<#3>'#4'}[\expandonce\tud@res@a]%
    }%
  \tud@res@a{#6}%
}
\tud@newwrite\tud@bash@write
\newcommand*\tud@tutorial@list{}
\newrobustcmd*\TUDScriptTutorial[1]{%
  \filemodCmp{tutorials/#1.pdf}{tutorials/#1.tex}{}{%
    \tud@unique@xadd\tud@tutorial@list{#1}%
    \tud@file@check{tutorials/#1.pdf}%
  }%
  \href[pdfnewwindow]{tutorials/#1.pdf}{\Tutorial'none'(\tud@ety@dflt){#1}}%
}
\AfterReadingMainAux{%
  \ifnum\pdf@shellescape=\@ne\relax
    \ifx\tud@tutorial@list\@empty\else\tud@tutorial@compile\fi
  \fi
}%
\newrobustcmd*\tud@tutorial@compile{%
  \immediate\openout\tud@bash@write=tutorials.sh\relax%
  \def\tud@res@a##1{\immediate\write\tud@bash@write{##1}}%
  \tud@res@a{cd tutorials}%
  \let\tud@res@b\@empty
  \ifdefined\tudfinalflag\appto\tud@res@b{\def\noexpand\tudfinalflag{}}\fi
  \ifdefined\tudprintflag\appto\tud@res@b{\def\noexpand\tudprintflag{}}\fi
  \edef\tud@res@b##1{%
    \expandonce\tud@res@b\unexpanded{\noexpand\input}{##1.tex}%
  }%
  \def\do##1{%
    \tud@res@a{\tud@latex@ext -shell-escape "\tud@res@b{##1}"}%
    \def\tud@res@c{biber --nolog -V ##1 > ##1.blg\space2>\string&1}%
    \ifwindows
      \tud@res@a{if exist ##1.bcf \tud@res@c}%
    \else
      \tud@res@a{[ -f ##1.bcf ] && \tud@res@c}%
    \fi
    \tud@res@a{\tud@latex@ext "\tud@res@b{##1}"}%
  }%
  \dolistloop{\tud@tutorial@list}%
  \def\tud@res@c##1{%
    \ifwindows
      \tud@res@a{if exist ##1.ist makeglossaries ##1}%
      \tud@res@a{if exist ##1.xdy makeglossaries ##1}%
    \else
      \tud@res@a{[ -f ##1.ist ] && makeglossaries ##1}%
      \tud@res@a{[ -f ##1.xdy ] && makeglossaries ##1}%
    \fi
  }%
  \def\do##1{%
    \tud@res@c{##1}%
    \tud@res@a{\tud@latex@ext -shell-escape "\tud@res@b{##1}"}%
  }%
  \dolistloop{\tud@tutorial@list}%
  \dolistloop{\tud@tutorial@list}%
  \dolistloop{\tud@tutorial@list}%
  \immediate\closeout\tud@bash@write%
  \ifwindows
    \ShellEscape{rename tutorials.sh tutorials.bat}%
    \ShellEscape{tutorials.bat}%
    \ShellEscape{del tutorials.bat}%
  \else
    \ShellEscape{bash tutorials.sh}%
    \ShellEscape{rm tutorials.sh}%
  \fi
}
\tud@newglue\tempdim
\newsavebox\tabularm@box
\tud@newdim\tabularm@wd
\newcommand*\tabularm@num{1}
\NewEnviron{tabularm}[1]{%
  \begin{lrbox}{\tabularm@box}%
    \let\allcolumnpar\@gobble%
    \begin{tabular}{*{#1}l}\BODY\end{tabular}%
  \end{lrbox}%
  \tud@setdim\tabularm@wd{\wd\tabularm@box}%
  \def\tabularm@num{#1}%
  \let\allcolumnpar\tabularm@allcolumnpar%
  \begin{tabular}{*{#1}l}\BODY\end{tabular}%
}
\newcommand*\tabularm@allcolumnpar[1]{%
  \multicolumn{\tabularm@num}{@{}p{\tabularm@wd}@{}}{#1}%
}
\newenvironment{Example}{\csuse{Example*}}{%
  \csuse{endExample*}%
  \addvspace{-\topsep}%
}
\newenvironment{Example*}{%
  \labeling{{\usekomafont{disposition}{Beispiel:\nobreakspace}}}%
  \item[{\usekomafont{disposition}{Beispiel:\nobreakspace}}]%
}{%
  \endlabeling%
}
\NewDocumentCommand\tud@file@compile{D(){#3.tex} o m}{%
  \filemodCmp{#3.pdf}{#1}{}{%
    \ifnum\pdf@shellescape=\@ne\relax
      \edef\tud@res@a{\tud@latex@ext\IfValueT{#2}{\space#2}\space"#3.tex"}%
      \ShellEscape{\tud@res@a}%
      \ShellEscape{\tud@res@a}%
    \fi
    \tud@file@check{#3.pdf}%
  }%
}
\newcommand*\tud@file@stub[3]{
  \begingroup
    \fboxsep=-\arrayrulewidth%
    \noindent\fbox{\vbox to #1{%
      \vss\vss%
      \hbox to #2{\hss\texttt{#3}\hss}%
      \vss\vss\vss%
    }}%
  \endgroup
}
\newcommand*\IncludeExample[1]{%
  \begingroup
    \lstinputlisting[style=tudscr]{examples/#1.tex}%
    \tud@file@compile[-output-directory examples]{examples/#1}%
    \tud@file@compile[-output-directory examples]{examples/#1_print}%
    \def\tud@res@a{examples/#1.pdf}%
    \IfFileExists{examples/#1_print.tex}{%
      \ifdefined\tudprintflag\def\tud@res@a{examples/#1_print.pdf}\fi
    }{}%
    \IfFileExists{\tud@res@a}{%
      \edef\tud@res@b{\noexpand\includepdf[%
        pages=-,noautoscale,frame,keepaspectratio,pagecommand={},%
        height=\noexpand\textheight,width=\noexpand\textwidth,offset=5mm 0mm%
      ]}%
      \tud@res@b{\tud@res@a}%
    }{%
      \clearpage%
      \tud@file@stub{\textheight}{\textwidth}{\tud@res@a}%
      \clearpage%
    }%
  \endgroup
}
\lstnewenvironment{Code}[1][]{\lstset{style=tudscr,#1}}{}
\BeforeBeginEnvironment{Code}{\global\let\tud@currentHref\@currentHref}
\AfterEndEnvironment{Code}{\global\let\@currentHref\tud@currentHref}
\NoIndentAfterEnv{Code}
\newcommand*\tud@trace@check@types[3][\@gobble]{%
  \begingroup
    \tud@toks@{}%
    \def\do##1{%
      \ifinlist{##1}{#2}{\addto@hook\tud@toks@{#1{##1}}}{%
        \ClassError{tudscrmanual}{Undefined tracing type `##1'}{%
          Tracing type `##1' unknown, possible values are:\MessageBreak%
          #2%
        }%
      }%
    }%
    \docsvlist{#3}%
    \edef\tud@res@a{\endgroup\the\tud@toks@}%
  \tud@res@a%
}
\newcommand*\tud@trace@lbl@log@sorted{\relax}
\AfterEndDocument{\tud@trace@lbl@log@sorted}
\newcommand*\tud@trace@lbl@types{}
\listadd\tud@trace@lbl@types{created}
\listadd\tud@trace@lbl@types{missing}
\listadd\tud@trace@lbl@types{matched}
\NewDocumentCommand\tracinglabels{s O{missing} d<>}{%
  \newcommand*\tud@trace@lbl@on@line{}%
  \IfBooleanT{#1}{\let\tud@trace@lbl@on@line\on@line}%
  \begingroup
    \def\do##1{%
      \expandafter\newcommand\csname tud@trace@lbl@##1@list\endcsname{}%
      \global\cslet{tud@trace@lbl@##1@list}\relax%
    }%
    \dolistloop{\tud@trace@lbl@types}%
    \tud@if@strempty{#2}{%
      \let\tud@res@a\tud@trace@lbl@types
    }{%
      \let\tud@res@a\@empty
      \tud@trace@check@types[\listadd\tud@res@a]{\tud@trace@lbl@types}{#2}%
    }%
    \def\do##1{\global\cslet{tud@trace@lbl@##1@list}\@empty}%
    \dolistloop{\tud@res@a}%
    \IfValueT{#3}{%
      \tud@if@strempty{#3}{%
        \let\tud@res@b\tud@res@a
      }{%
        \let\tud@res@b\@empty
        \tud@trace@check@types[\listadd\tud@res@b]{\tud@res@a}{#3}%
      }%
      \def\do##1{%
        \gappto\tud@trace@lbl@log@sorted{%
          \ifcsvoid{tud@trace@lbl@##1@list}{%
            \wlog{+++++ no labels ##1 +++++}%
          }{%
            \wlog{+++++ labels ##1 (sorted) +++++}%
            \expandafter\tud@list@sort\expandafter{%
              \csname tud@trace@lbl@##1@list\endcsname%
            }%
            \begingroup
              \let\tud@res@a\@empty%
              \def\do####1{\appto\tud@res@a{####1^^J}}%
              \dolistcsloop{tud@trace@lbl@##1@list}%
              \wlog{\tud@res@a}%
            \endgroup
          }%
        }%
      }%
      \dolistloop{\tud@res@b}%
    }%
  \endgroup
}
\@onlypreamble\tracinglabels
\NewDocumentCommand\tud@trace@lbl@add{m m}{%
  \begingroup
    \def\tud@res@a##1{%
      \ifcsundef{tud@trace@lbl@##1@list}{}{%
        \tud@unique@csxadd{tud@trace@lbl@##1@list}{#2}%
        \wlog{%
          +++++ label ##1\tud@trace@lbl@on@line\space+++++^^J%
          \@spaces#2%
        }%
      }%
    }%
    \tud@trace@check@types[\tud@res@a]{\tud@trace@lbl@types}{#1}%
  \endgroup
}
\newcommand*\tud@trace@ety@types{}
\listadd\tud@trace@ety@types{declared}
\listadd\tud@trace@ety@types{output}
\newcommand*\tud@trace@ety@active{}
\NewDocumentCommand\tracingentities{s O{declared}}{%
  \newcommand*\tud@trace@ety@on@line{}%
  \IfBooleanT{#1}{\let\tud@trace@ety@on@line\on@line}%
  \tud@if@strempty{#2}{%
    \let\tud@trace@ety@active\tud@trace@ety@types
  }{%
    \tud@trace@check@types[\listadd\tud@trace@ety@active]%
      {\tud@trace@ety@types}{#2}%
  }%
}
\@onlypreamble\tracingentities
\NewDocumentCommand\tud@trace@ety@add{m m}{%
  \begingroup
    \def\tud@res@a##1{%
      \ifinlist{##1}{\tud@trace@ety@active}{%
        \protected@edef\tud@res@b{#2}%
        \@onelevel@sanitize\tud@res@b%
        \wlog{%
          +++++ entity ##1\tud@trace@ety@on@line\space+++++^^J%
          \@spaces\tud@res@b%
        }%
      }{}%
    }%
    \tud@trace@check@types[\tud@res@a]{\tud@trace@ety@types}{#1}%
  \endgroup
}
%%%% From File: tudscr-fields.dtx (no git version info was found)
\newcommand*\@chairman{}
\newcommand*\chairman[1]{\tud@trim@field\@chairman{#1}}
\newcommand*\@grade{}
\newcommand*\grade[1]{\tud@trim@field\@grade{#1}}
\newcommand*\@issuedate{}
\newcommand*\issuedate[1]{\tud@printdate{\@issuedate}{#1}}
\newcommand*\@duedate{}
\newcommand*\duedate[1]{\tud@printdate{\@duedate}{#1}}
\newcommand*\@contactperson{}
\newcommand*\contactperson[1]{\tud@trim@field\@contactperson{#1}}
\newcommand*\@office{}
\newrobustcmd*\office[1]{\tud@trim@field\@office{#1}}
\newcommand*\@telephone{}
\newrobustcmd*\telephone[1]{\tud@trim@field\@telephone{#1}}
\newcommand*\@telefax{}
\newrobustcmd*\telefax[1]{\tud@trim@field\@telefax{#1}}
%%%% From File: tudscr-localization.dtx (no git version info was found)
\tud@localization@define{\authorname}
\tud@localization@define{\contactname}
\tud@localization@define{\contactpersonname}
\tud@localization@define{\taskname}
\tud@localization@define{\tasktext}
\tud@localization@define{\namesname}
\tud@localization@define{\issuedatetext}
\tud@localization@define{\duedatetext}
\tud@localization@define{\chairmanname}
\tud@localization@define{\focusname}
\tud@localization@define{\objectivesname}
\tud@localization@define{\evaluationname}
\tud@localization@define{\evaluationtext}
\tud@localization@define{\contentname}
\tud@localization@define{\assessmentname}
\tud@localization@define{\gradetext}
\tud@localization@define{\noticename}
\tud@localization@german{\authorname}{Autor}
\tud@localization@german{\contactname}{Kontakt}
\tud@localization@german{\contactpersonname}{Ansprechpartner}
\tud@localization@german{\taskname}{Aufgabenstellung}
\tud@localization@german{\tasktext}{f\"ur die Anfertigung einer}
\tud@localization@german{\namesname}{Name}
\tud@localization@german{\issuedatetext}{Ausgeh\"andigt am}
\tud@localization@german{\duedatetext}{Einzureichen am}
\tud@localization@german{\chairmanname}{Pr\"ufungsausschussvorsitzender}
\tud@localization@german{\focusname}{Schwerpunkte der Arbeit}
\tud@localization@german{\objectivesname}{Ziele der Arbeit}
\tud@localization@german{\evaluationname}{Gutachten}
\tud@localization@german{\evaluationtext}{f\"ur die}
\tud@localization@german{\contentname}{Inhalt}
\tud@localization@german{\assessmentname}{Bewertung}
\tud@localization@german{\gradetext}{%
  Die Arbeit wird mit der Note \textbf{\@grade} bewertet.%
}
\tud@localization@german{\noticename}{Aushang}
\tud@localization@english{\authorname}{Author}
\tud@localization@english{\contactname}{Contact}
\tud@localization@english{\contactpersonname}{Counterpart}
\tud@localization@english{\taskname}{Task}
\tud@localization@english{\tasktext}{for the preparation of a}
\tud@localization@english{\namesname}{Name}
\tud@localization@english{\issuedatetext}{Issued on}
\tud@localization@english{\duedatetext}{Due date for submission}
\tud@localization@english{\chairmanname}{Chairman of the Audit Committee}
\tud@localization@english{\focusname}{Focus of work}
\tud@localization@english{\objectivesname}{Objectives of work}
\tud@localization@english{\evaluationname}{Evaluation}
\tud@localization@english{\evaluationtext}{for the}
\tud@localization@english{\contentname}{Content}
\tud@localization@english{\assessmentname}{Assessment}
\tud@localization@english{\gradetext}{%
  The thesis is evaluated with a grade of \textbf{\@grade}.%
}
\tud@localization@english{\noticename}{Notice}
%%%% From File: tudscr-texindy.dtx (no git version info was found)
\edef\tud@res@a{\catcode`\noexpand\#=\the\catcode`\#\relax}%
\@makeother\#
\newcommand*\@hashchar{#}
\tud@res@a
\tud@newwrite\tud@xdy@write
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
    "^^J% /open
    \@spaces:close^^J%
    "^^J%
    \string~n\string\end{#2}^^J%
    "^^J% /close
    )^^J%
    (define-location-class "arabic-page-numbers"^^J%
    \@spaces("arabic-numbers")^^J%
    \@spaces:min-range-length 1^^J%
    )^^J%
    (markup-range :sep "--")^^J%
    (merge-rule :eregexp^^J%
    \@spaces"\string\[(.*)\string\]"^^J%
    \@spaces""^^J%
    )^^J%
    (markup-indexentry :depth 3^^J%
    \@spaces:open\space\space%
      "\string~n\string\subsubsubitem\space"^^J%
    )^^J%
    (markup-locclass-list^^J%
    \@spaces:open\space\space%
      "\string\,\string\dotfill\string\,"^^J%
    \@spaces:close\space%
      "\string\relax"^^J%
    )^^J%
    (define-attributes (("!" "default") ("?" "default") ("default")))^^J%
    (markup-attribute-group-list :sep ",\space")^^J%
    (markup-locref :attr "!"^^J%
    \@spaces:open\space\space%
      "\string\textbf\@charlb\string\hyperpage\@charlb"^^J%
    \@spaces:close\space%
      "\@charrb\@charrb"^^J%
    )^^J%
    (markup-locref :attr "?"^^J%
    \@spaces:open\space\space%
      "\string\textit\@charlb\string\hyperpage\@charlb"^^J%
    \@spaces:close\space%
      "\@charrb\@charrb"^^J%
    )^^J%
    (markup-locref :attr "default"^^J%
    \@spaces:open\space\space%
      "\string\hyperpage\@charlb"^^J%
    \@spaces:close\space%
      "\@charrb"^^J%
    )^^J%
    (markup-crossref-list :class "see"^^J%
    \@spaces:open\space\space%
      "\string\cleversee\space"^^J%
    \@spaces:sep\space\space\space%
      ";\space"^^J%
    \@spaces:close\space%
      "\@backslashchar\@backslashchar"^^J%
    )^^J%
    (markup-crossref-list :class "seealso"^^J%
    \@spaces:open\space\space%
      "\string\cleverseealso\space"^^J%
    \@spaces:sep\space\space\space%
      ";\space"^^J%
    \@spaces:close\space%
      "\@backslashchar\@backslashchar"^^J%
    )^^J%
    (define-crossref-class "seeunverified" :unverified)^^J%
    (markup-crossref-list :class "seeunverified"^^J%
    \@spaces:open\space\space%
      "\string\cleversee\space"^^J%
    \@spaces:sep\space\space\space%
      ";\space"^^J%
    \@spaces:close\space%
      "\@backslashchar\@backslashchar"^^J%
    )^^J%
    (define-crossref-class "seeidx" :unverified)^^J%
    (markup-crossref-list :class "seeidx"^^J%
    \@spaces:open\space\space%
      "\string\seeidx\@charlb"^^J%
    \@spaces:sep\space\space\space%
      ";\space"^^J%
    \@spaces:close\space%
      "\@charrb"^^J%
    )^^J%
    (markup-crossref-layer-list :class "see"%
    \@spaces\space:sep\space%
      "\string\seesep\space"%
    )^^J%
    (markup-crossref-layer-list :class "seealso"%
    \space:sep\space%
      "\string\seesep\space"%
    )^^J%
    (define-location-class-order^^J%
    \space\space(^^J%
    \@spaces"see" "seealso"^^J%
    \@spaces"seeidx" "seeunverified"^^J%
    \@spaces"roman-page-numbers" "arabic-page-numbers" "alpha-page-numbers"^^J%
    \@spaces"Roman-page-numbers" "Alpha-page-numbers"^^J%
    \space\space)^^J%
    )^^J%
  }%
  \immediate\closeout\tud@xdy@write%
}
\tud@xdy@create
\endinput
%%
%% End of file `tudscrmanual.cls'.
