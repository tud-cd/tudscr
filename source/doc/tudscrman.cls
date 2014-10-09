%%
%% This is file `tudscrman.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tudscr-version.dtx  (with options: `class,inherit')
%% tudscr-manual.dtx  (with options: `class,identify')
%% tudscr-base.dtx  (with options: `load')
%% tudscr-manual.dtx  (with options: `class,option')
%% tudscr-base.dtx  (with options: `execute,inherit')
%% tudscr-manual.dtx  (with options: `class,body')
%% tudscr-misc.dtx  (with options: `class,manual')
%% 
%% ============================================================================
%% 
%%  TUD-KOMA-Script
%%  Copyright (c) Falk Hanisch <tudscr[at]gmail.com>, 2012-2014
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
%%  Dieses Werk darf nach den Bedingungen der LaTeX Project Public Lizenz,
%%  Version 1.3c, verteilt und/oder ver^^e4ndert werden. Die neuste Version
%%  dieser Lizenz ist http://www.latex-project.org/lppl.txt und Version 1.3c
%%  ist Teil aller Verteilungen von LaTeX 2005/12/01 oder sp^^e4ter und dieses
%%  Werks. Dieses Werk hat den LPPL-Verwaltungs-Status "author-maintained",
%%  wird somit allein durch den Autor verwaltet. Der aktuelle Verwalter und
%%  Autor dieses Werkes ist Falk Hanisch.
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
  \@TUDVersion{2014/09/30 v2.02 TUD-KOMA-Script}%
\endgroup%
\providecommand*\tudscrmail{tudscr@gmail.com}
\newcommand*\tudinh@name{tudscrreprt}
%%% From File: tudscr-manual.dtx
\NeedsTeXFormat{LaTeX2e}[2011/06/27]
\ProvidesClass{tudscrman}[%
  2014/09/30 v2.02 TUD-KOMA-Script
  class (internal manual)%
]
%%% From File: tudscr-base.dtx
\RequirePackage{tudscrbase}[\TUDVersion]
%%% From File: tudscr-manual.dtx
\newif\if@tud@todo
\@tud@todotrue
\TUD@ifkey{ToDo}{@tud@todo}
\PassOptionsToClass{%
  cdfoot=true,%
  chapterpage=true,%
  chapterprefix=true,%
  headings=optiontoheadandtoc,%
  captions=tableheading,%
  numbers=noenddot,%
  color=true,%
}{\tudinh@name}
\PassOptionsToPackage{automark}{scrlayer-scrpage}
\DeclareOption{final}{\let\tudfinalflag\relax}
\DeclareOption{print}{\let\tudprintflag\relax}
%%% From File: tudscr-base.dtx
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\tudinh@name}}
\TUDProcessOptions\relax
\LoadClass{\tudinh@name}
%%% From File: tudscr-manual.dtx
\newlength\baselineskipglue
\setlength\baselineskipglue{%
  .5\baselineskip plus .5\baselineskip minus .25\baselineskip%
}
\RequirePackage{xparse}[2013/12/31]
\RequirePackage{microtype}[2013/05/23]
\RequirePackage{textcomp}[2005/09/27]
\RequirePackage{fixltx2e}[2014/06/10]
\RequirePackage{setspace}[2011/12/19]
\setstretch{1.1}\recalctypearea
\RequirePackage{babel}[2014/03/24]
\AtEndPreamble{\RequirePackage{csquotes}[2011/10/22]}
\RequirePackage{quoting}[2014/01/28]
\RequirePackage{isodate}[2010/01/03]
\RequirePackage{hologo}[2012/04/26]
\RequirePackage{marginnote}[2012/03/29]
\RequirePackage{enumitem}[2011/09/28]
\setlist{noitemsep}
\RequirePackage{tabularx}[1999/01/07]
\RequirePackage{ragged2e}[2009/05/21]
\RequirePackage{chngcntr}[2009/09/02]
\counterwithout{footnote}{chapter}
\RequirePackage{booktabs}[2005/04/14]
\RequirePackage{varioref}[2011/10/02]%
\renewcommand*\fullref[1]{\hyperref[#1]{\autoref*{#1} \vpageref{#1}}}
\RequirePackage{tikz}[2013/12/13]
\RequirePackage{units}[1998/08/04]
\RequirePackage{tudscrsupervisor}[\TUDVersion]
\newlist{values}{description}{1}
\setlist[values]{%
  topsep=.5\baselineskipglue,labelwidth=\columnwidth,labelsep=0pt,%
  font=\normalfont\ttfamily,before*=\before@values%
}
\newcommand*\before@values{%
  \let\item@values\item%
  \let\item\tud@item%
}
\newcommand*\itemfalse{\def\tud@item@val{false/off/no}\item}
\newcommand*\itemtrue{\def\tud@item@val{true/on/yes}\item}
\newcommand*\item@values{}
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
  \ifstrempty{#1}%
    {\edef\@tempa{\tud@item@val}}%
    {\ifstr{\tud@item@val}{}%
      {\edef\@tempa{#1}}%
      {\edef\@tempa{\tud@item@val/#1}}%
    }%
  \def\tud@item@val{}%
  \ifstr{\@tempa}{}{\item@values}{\tud@@@item}%
}
\newcommand*\tud@@@item[1][]{%
  \ifstrempty{#1}{}{%
    \ifx\tud@item@add\relax%
      \def\tud@item@add{#1}%
    \else%
      \apptocmd{\tud@item@add}{~#1}{}{}%
    \fi%
  }%
  \item@values[%
    \tud@item@format{\@tempa:}%
    \ifx\tud@item@add\relax\else\textuln{\space\footnotesize\tud@item@add}\fi%
  ]%
}
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
  }{}%
}
\NewDocumentCommand\tud@item@pkg{od()}{%
  \itempackages[{%
    \IfValueT{#1}{%
      \Hy@raisedlink{\hyperdef{\jobname}{files:#1}{}}%
      \label{files:#1}%
      \IfValueTF{#2}{%
        \def\@tempa{http://www.ctan.org/pkg/#2}%
      }{%
        \def\@tempa{http://www.ctan.org/pkg/#1}%
      }%
      \href{\@tempa}{\Package{#1}'none'|!|}%
    }%
  }]%
}
\newcommand*\tud@write@file{}
\newcommand*\tud@write@option{}
\RequirePackage{filemod}[2011/09/19]
\RequirePackage{pdfpages}[2013/08/25]
\newcommand*\includeexample[1]{%
  \IfFileExists{#1}{%
    \edef\tud@write@file{#1}%
    \edef\tud@write@option{}%
  }{%
    \edef\tud@write@file{examples/#1}%
    \edef\tud@write@option{-output-directory examples }%
  }%
  \lstinputlisting[style=tudscr]{\tud@write@file}%
  \filemodCmp{./\tud@write@file.pdf}{./\tud@write@file.tex}{}{%
    \immediate\write18{%
      pdflatex \tud@write@option \tud@write@file.tex
      pdflatex \tud@write@option \tud@write@file.tex
      pdflatex \tud@write@option \tud@write@file.tex
    }%
  }%
  \IfFileExists{\tud@write@file.pdf}{%
    \includepdf[%
      pages=-,noautoscale,frame,keepaspectratio,pagecommand={},%
      height=\textheight,width=\textwidth, offset=5mm 0mm%
    ]{\tud@write@file.pdf}%
  }{}%
}
\newenvironment{Example}{\@nameuse{Example*}}{%
  \@nameuse{endExample*}%
  \vspace{-\topsep}%
}
\newenvironment{Example*}{%
  \labeling{{\usekomafont{disposition}Beispiel:\ }}%
  \item[{\usekomafont{disposition}Beispiel:\ }]%
}{%
  \endlabeling%
}
\RequirePackage{listings}[2014/03/04]
\lstnewenvironment{Code}[1][]{\lstset{style=tudscr,#1}}{}
\lstdefinestyle{tudscr}{%
  basicstyle=\ttfamily\setstretch{1},%
  keywordstyle=,%
  columns=fullflexible,keepspaces,%
  aboveskip=.5\baselineskipglue,%
  belowskip=.5\baselineskipglue,%
  language=[LaTeX]TeX,%
  texcl,%
}
\newcommand*\tud@currentHref{}
\BeforeBeginEnvironment{Code}{\global\let\tud@currentHref\@currentHref}
\AfterEndEnvironment{Code}{\global\let\@currentHref\tud@currentHref}
\newrobustcmd*\hypertut[2]{%
  \hyperref{tutorials/#1.pdf}{\jobname}{tutorials:#1}{\texturn{#1.pdf}#2}%
}
\NewDocumentCommand\Tutorial{som}{%
  \IfFileExists{#3}{%
    \edef\tud@write@file{#3}%
    \edef\tud@write@option{}%
  }{%
    \edef\tud@write@file{tutorials/#3}%
    \edef\tud@write@option{-output-directory tutorials }%
  }%
  \filemodCmp{./\tud@write@file.pdf}{./\tud@write@file.tex}{}{%
    \immediate\write18{%
      pdflatex -shell-escape \tud@write@option \tud@write@file.tex
    }%
    \immediate\write18{%
      pdflatex \tud@write@option \tud@write@file.tex
      pdflatex \tud@write@option \tud@write@file.tex
    }%
  }%
  \IfFileExists{tutorials/#3.pdf}{\hypertut{#3}{}}{\texturn{#3.pdf}}%
  \IfBooleanF{#1}{%
    \index[files]{\hypertut{#3}{~{\idxfont(Tutorial)}\IfValueT{#2}{|#2}}}%
  }%
}
%%\newread\pin@file
%%\newcommand\pin@accu{}
%%\newcommand\pin@line{}
%%\newcounter{pin@lineno}
%%\newcommand*\pin@[2]{%
%%  \IfFileExists{#2}{%
%%    \in@{-}{#1}%
%%    \ifin@%
%%      \def\@tempa[####1-####2]{%
%%        \@tempcnta=####1\relax%
%%        \@tempcntb=####2\relax%
%%      }%
%%    \else%
%%      \def\@tempa[####1]{%
%%        \@tempcnta=####1\relax%
%%        \@tempcntb=####1\relax%
%%      }%
%%    \fi%
%%    \@tempa[#1]%
%%    \openin\pin@file #2%
%%    \setcounter{pin@lineno}{1}%
%%    \@whilenum\value{pin@lineno}<\@tempcnta \do{%
%%      \read\pin@file to\pin@line%
%%      \stepcounter{pin@lineno}%
%%    }%
%%    \addtocounter{pin@lineno}{-1}%
%%    \let\pin@accu\empty%
%%    \begingroup%
%%    \endlinechar\newlinechar%
%%    \@whilenum\value{pin@lineno}<\@tempcntb \do{%
%%      \readline\pin@file to\pin@line%
%%      \edef\pin@accu{\pin@accu\pin@line}%
%%      \stepcounter{pin@lineno}%
%%    }%
%%    \closein\pin@file%
%%    \expandafter\endgroup%
%%    \scantokens\expandafter{\pin@accu}%
%%  }{%
%%    \errmessage{File `#2' doesn't exist!}%
%%  }%
%%}
\PassOptionsToPackage{colorinlistoftodos,obeyFinal,color=HKS92!10}{todonotes}
\RequirePackage{todonotes}[2012/07/25]
\newcommand*\@ToDo{}
\NewDocumentCommand\ToDo{somo}{%
  \ifbool{@tud@todo}{%
    \begingroup%
      \define@boolkey{todonotes}{doc}[true]{%
        \ifbool{KV@todonotes@doc}{\setkeys{todonotes}{color=HKS41!30}}{}%
      }%
      \define@boolkey{todonotes}{man}[true]{%
        \ifbool{KV@todonotes@man}{\setkeys{todonotes}{color=HKS41!10}}{}%
      }%
      \define@boolkey{todonotes}{imp}[true]{%
        \ifbool{KV@todonotes@imp}{\setkeys{todonotes}{color=HKS07!50}}{}%
      }%
      \define@boolkey{todonotes}{nxt}[true]{%
        \ifbool{KV@todonotes@nxt}{\setkeys{todonotes}{color=HKS57!30}}{}%
      }%
      \def\@ToDo{}%
      \IfValueTF{#2}{%
        \IfBooleanTF{#1}{\edef\@ToDo{#2,nolist}}{\edef\@ToDo{#2}}%
      }{%
        \IfBooleanT{#1}{\edef\@ToDo{nolist}}%
      }%
      \renewcommand*\marginpar[2][]{\marginnote[##1]{##2}[\dimexpr-1.6ex+1pt]}%
      \vskip.8ex%
      \IfValueT{#4}{%
        \settowidth\marginparwidth{#4}%
        \addtolength\marginparwidth{\dimexpr1.6ex+1pt}%
        \let\par\relax\noindent%
        \edef\@tempa{\noexpand\todo[\@ToDo,noline,nolist]}%
        \@tempa{#4}%
      }%
      \edef\@tempa{\noexpand\todo[\@ToDo,inline]}%
      \@tempa{#3}%
    \endgroup%
    \par\noindent%
  }{}%
  \ignorespaces%
}
\newcommand*\ListOfToDo{\if@tud@todo\listoftodos\fi}
\reversemarginpar
\PassOptionsToPackage{xindy,splitindex}{imakeidx}
\RequirePackage{imakeidx}[2013/07/11]%
\indexsetup{%
  level=\addsec,noclearpage,%
  firstpagestyle=headings,headers={\indexname}{\indexname}%
}
\newcommand*\xdyopt{-M tudscrman.xdy -L german-din}%
\makeindex[title={Allgemeiner Index},options=\xdyopt]%
\makeindex[title={Klassen- und Paketoptionen},name=options,options=\xdyopt]%
\makeindex[%
  title={Umgebungen, Befehle und Seitenstile},name=macros,options=\xdyopt%
]%
\makeindex[title={Umgebungs- und Befehlsparameter},name=keys,options=\xdyopt]%
\makeindex[title={Sprachabh\"angige Bezeichner},name=terms,options=\xdyopt]%
\makeindex[title={Schriftelemente},name=fonts,options=\xdyopt]%
\makeindex[title={Farben},name=colors,options=\xdyopt]%
\makeindex[title={Klassen, Pakete und Dateien},name=files,options=\xdyopt]%
\makeindex[title={\"Anderungsliste},name=changelog,columns=1,options=\xdyopt]%
\newcommand*\PrintIndex{%
  \begingroup%
    \@printindex%
    \@printindex[options]%
    \@printindex[macros]%
    \@printindex[keys]%
    \@printindex[terms]%
    \begingroup%
      \let\lettergroup\@gobble%
      \let\indexspace\par%
      \@printindex[fonts]%
      \@printindex[colors]%
    \endgroup%
    \@printindex[files]%
  \endgroup%
}
\newcommand*\PrintIndexPrologue[1]{\long\gdef\@printindexprologue{#1}}
\newcommand*\@printindexprologue{}
\newcommand*\@printindexskip{\ifnum\imki@columns>\@ne\vspace{-\multicolsep}\fi}
\newcommand*\@printindex[1][]{%
  \pagebreak[3]%
  \apptocmd{\prepare@multicols}{\hbadness10000}{}{}%
  \ifblank{#1}{%
    \ifx\@printindexprologue\@empty%
      \indexprologue[\@printindexskip]{\label{idx:main}}%
    \else%
      \indexprologue{%
        \label{idx:main}%
        \@afterindentfalse\@afterheading%
        \@printindexprologue%
      }%
    \fi%
    \printindex\@printindexskip%
    \let\@printindexprologue\@empty%
  }{%
    \indexprologue[\@printindexskip]{\label{idx:#1}}%
    \printindex[#1]\@printindexskip%
  }%
}
\newcommand*\seeidx[2]{\pageref{idx:#1}}
\NewDocumentCommand\Index{mom}{%
  \index{%
    #1!\textrightarrow{}\space%
    \hyperref[idx:#3]{Index der \IfValueTF{#2}{#2}{#1}}|seeidx{#3}%
  }%
}
\newif\if@changelog
\newcommand*\PrintChangelog{%
  \begingroup%
    \let\lettergroup\@gobble%
    \@changelogtrue%
    \@printindex[changelog]%
  \endgroup%
}
\NewDocumentCommand\Changelog{m}{%
  \index{%
    #1!\textrightarrow{}\space%
    \hyperref[idx:changelog]{\"Anderungsliste}|seeidx{changelog}%
  }%
}
\PassOptionsToPackage{hyperindex=false}{hyperref}
\RequirePackage{hyperref}[2012/11/06]
\hypersetup{colorlinks,linkcolor=blue}
\pdfstringdefDisableCommands{%
  \let\Application\@Application%
  \let\Class\@Class%
  \let\Package\@Package%
  \let\TUDScript\@TUDScript%
  \let\NoCaseChange\@firstofone%
}
\newrobustcmd*\bsc{\@backslashchar}
\newcommand*\Email[1]{\href{mailto:#1}{\nolinkurl{#1}}}%
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
\PassOptionsToPackage{open,openlevel=0}{bookmark}
\RequirePackage{bookmark}[2011/12/02]
\newif\if@declare
\newif\if@stareddeclare
\newif\if@openindex
\newcommand*\idxfont{}
\let\idxfont\footnotesize
\robustify{\idxfont}
\newif\if@noindex
\newcommand*\@IndexFormat{}
\let\@IndexFormat\relax
\newcommand*\CheckIndexFormat[2]{%
  \IfBooleanT{#1}{%
    \IfValueT{#2}{%
      \ClassWarning{\tudcls@name}{%
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
\NewDocumentCommand\Application{smd||}{%
  \ifdin{#2}{%
    \mbox{\texturs{#2}}%
    \CheckIndexFormat{#1}{#3}%
    \IfBooleanF{#1}{%
      \index{\texturs{#2}~{\idxfont(Anwendungssoftware)}\IfValueT{#3}{|#3}}%
    }%
  }%
}
\DeclareExpandableDocumentCommand\@Application{sm}{#2}
\NewDocumentCommand\Distribution{smod||}{%
  \ifdin{#2\IfValueT{#3}{~#3}}{%
    \mbox{\texturn{#2\IfValueT{#3}{~#3}}}%
    \CheckIndexFormat{#1}{#4}%
    \IfBooleanF{#1}{%
      \index{\texturn{#2}~{\idxfont(Distribution)}\IfValueT{#4}{|#4}}%
    }%
  }%
}
\newrobustcmd*\Path[1]{\mbox{\texttt{#1}}}
\NewDocumentCommand\File{smd||}{%
  \ifdin{#2}{%
    \mbox{\texturn{#2}}%
    \CheckIndexFormat{#1}{#3}%
    \IfBooleanF{#1}{%
      \index[files]{\texturn{#2}~{\idxfont(Datei)}\IfValueT{#3}{|#3}}%
    }%
  }%
}
\NewDocumentCommand\Class{smd''d||}{%
  \ifdin{#2}{%
    \SetIndexFormat{#1}{#4}%
    \@ProcessOutput{\texturn{#2}}'#3'%
      {files}[\protect\univrn]{#2}[~{\idxfont(Klasse)}]%
  }%
}
\DeclareExpandableDocumentCommand\@Class{sm}{#2}
\NewDocumentCommand\Package{smd''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{files}{\protect\univrn}{#2}{Paket}%
  \else%
    \ifdin{#2}{%
      \SetIndexFormat{#1}{#4}%
      \@ProcessOutput{\texturn{#2}}'#3'%
        {files}[\protect\univrn]{#2}[~{\idxfont(Paket)}]%
    }%
  \fi%
}
\DeclareExpandableDocumentCommand\@Package{sm}{#2}
\newcommand*\@TempOption{}
\NewDocumentCommand\Option{smod''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{options}{\ttfamily}{#2}{Option}%
  \else%
    \IfValueTF{#3}{\gdef\@TempOption{\texttt{=#3}}}{\gdef\@TempOption{}}%
    \SetIndexFormat{#1}{#5}%
    \@ProcessOutput{\texttt{#2}}[\@TempOption]'#4'{options}[\ttfamily]{#2}%
  \fi%
}
\newcommand*\@TempEnvironment{}
\NewDocumentCommand\Environment{smod''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{macros}{\ttfamily}{#2}{Umgebung}%
  \else%
    \if@declare%
      \gdef\@TempEnvironment{%
        \texttt{\bsc{}begin\{#2\}\IfValueT{#3}{#3}}\tabularnewline%
        \texttt{\dots}\tabularnewline%
        \texttt{\bsc{}end\{#2\}}%
      }%
    \else%
      \gdef\@TempEnvironment{\texttt{#2}}%
    \fi%
    \SetIndexFormat{#1}{#5}%
    \@ProcessOutput{\@TempEnvironment}'#4'{macros}[\ttfamily]{#2}%
  \fi%
}
\NewDocumentCommand\Macro{smd''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{macros}{\ttfamily\bsc}{#2}{Befehl}%
  \else%
    \SetIndexFormat{#1}{#4}%
    \@ProcessOutput{\texttt{\bsc#2}}'#3'{macros}[\ttfamily\bsc]{#2}%
  \fi%
}
\newcommand*\@TempKey{}
\NewDocumentCommand\Key{smmod''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{macros}(#2){\ttfamily}{#3}{Parameter}%
  \else%
    \begingroup%
      \let\Environment\@firstofone%
      \let\Macro\@firstofone%
      \IfValueTF{#4}{%
        \gdef\@TempKey{\texttt{=#4}\if@declare~{\idxfont(Parameter)}\fi}%
      }{%
        \gdef\@TempKey{\if@declare~{\idxfont(Parameter)}\fi}%
      }%
      \SetIndexFormat{#1}{#6}%
      \@ProcessOutput{\texttt{#3}}[\@TempKey]'#5'{macros}(#2)[\ttfamily]{#3}%
    \endgroup%
  \fi%
}
\NewDocumentCommand\PageStyle{smd''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{macros}{\ttfamily}{#2}{Seitenstil}%
  \else%
    \SetIndexFormat{#1}{#4}%
    \@ProcessOutput{\texttt{#2}\if@declare~{\idxfont(Seitenstil)}\fi}'#3'%
      {macros}[\ttfamily]{#2}[~{\idxfont(Seitenstil)}]%
  \fi%
}
\NewDocumentCommand\Length{smd''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{macros}{\ttfamily\bsc}{#2}{L\"ange}%
  \else%
    \SetIndexFormat{#1}{#4}%
    \@ProcessOutput{\texttt{\bsc#2}}[\if@declare~{\idxfont(L\"ange)}\fi]'#3'%
      {macros}[\ttfamily\bsc]{#2}[~{\idxfont(L\"ange)}]%
  \fi%
}
\NewDocumentCommand\Counter{smd''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{macros}{\ttfamily}{#2}{Z\"ahler}%
  \else%
    \SetIndexFormat{#1}{#4}%
    \@ProcessOutput{\texttt{#2}}[\if@declare~{\idxfont(Z\"ahler)}\fi]%
      {macros}[\ttfamily]{#2}[~{\idxfont(Z\"ahler)}]%
  \fi%
}
\NewDocumentCommand\Term{smd''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{terms}{\ttfamily\bsc}{#2}{Bezeichner}%
  \else%
    \SetIndexFormat{#1}{#4}%
    \@ProcessOutput{\texttt{\bsc#2}}[\if@declare~{\idxfont(Bezeichner)}\fi]'#3'%
      {terms}[\ttfamily\bsc]{#2}%
  \fi%
}
\newcommand\@termlist{}
\let\@termlist\relax
\NewDocumentCommand\TermTable{smg}{%
  \forcsvlist{\listadd\@termlist}{#2}%
  \ifvmode\else\par\fi%
  \vskip\baselineskipglue%
  \@afterindentfalse\@afterheading%
  \IfBooleanTF{#1}{%
    \IfValueTF{#3}{\setlength\@tempdima{#3}}{\setlength\@tempdima{\linewidth}}%
    \setlength{\@tempdimc}{-.7\baselineskip}%
    \begin{tabularx}{\@tempdima}{lXX}\@TermTable\end{tabularx}%
  }{%
    \setlength{\@tempdimc}{\z@}%
    \begin{tabular}{lll}\@TermTable\end{tabular}%
  }%
  \let\@termlist\relax%
}
\newcommand*\@TermTable{%
  \toprule%
  \textbf{Bezeichner} & \textbf{Deutsch} & \textbf{Englisch}\tabularnewline%
  \midrule%
  \forlistloop\@@TermTable{\@termlist}%
  \bottomrule%
}
\newcommand*\@@TermTable[1]{%
  \Term{#1} & %
  \ifstr{\@nameuse{#1}}{}{\PName{leer}}{\@nameuse{#1}} & %
  \selectlanguage{english}\vspace*{\@tempdimc}%
  \ifstr{\@nameuse{#1}}{}{\PName{empty}}{\@nameuse{#1}}\tabularnewline%
}
\NewDocumentCommand\Font{smd''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{fonts}{\ttfamily}{#2}{Schriftelement}%
  \else%
    \SetIndexFormat{#1}{#4}%
    \@ProcessOutput{\texttt{#2}\if@declare~{\idxfont(Schriftelement)}\fi}%
      {fonts}[\ttfamily]{#2}%
  \fi%
}
\NewDocumentCommand\Color{smod''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{colors}{\ttfamily}{#2}{Farbe}%
  \else%
    \SetIndexFormat{#1}{#5}%
    \@ProcessOutput{\texttt{#2}}[%
      \IfValueT{#3}{~\texttt{(#3)}}\if@declare~{\idxfont(Farbe)}\fi%
    ]'#4'{colors}[\ttfamily]{#2}%
  \fi%
}
\NewDocumentCommand\@ProcessOutput{mod''md()omo}{%
  \if@declare%
    \if@openindex%
      \IfValueT{#3}{%
        \ClassWarning{\tudcls@name}{%
          It is not possible to use any cross-reference\MessageBreak%
          shorthand like '#3' within the arguments of\MessageBreak%
          the environment `Declaration'%
        }%
      }%
      \ifx\@IndexFormat\@empty\else%
        \ClassWarning{\tudcls@name}{%
            It is not possible to use any indexing format\MessageBreak%
            like |\@IndexFormat| within the arguments of the\MessageBreak%
            environment `Declaration'%
        }%
      \fi%
      \if@noindex\else%
        \IfValueTF{#5}{\edef\@tempa{#4:#5:#7}}{\edef\@tempa{#4:#7}}%
        \if@stareddeclare%
          \raisebox{4\baselineskip}[0pt][0pt]{\hyperdef{\jobname}{\@tempa}{}}%
          \par\nobreak\vskip\dimexpr-\parskip-\baselineskip%
          \@afterindentfalse\@afterheading%
        \else%
          \Hy@raisedlink{\hyperdef{\jobname}{\@tempa}{}}%
        \fi%
        \label{\@tempa}%
        \@HyperIndex{#4}{#5}{#6}{#7}{#8}{(declare}%
      \fi%
      \if@stareddeclare\else%
        #1\IfValueT{#2}{#2}%
      \fi%
    \else%
      \if@noindex\else%
        \@HyperIndex{#4}{#5}{#6}{#7}{#8}{declare)}%
      \fi%
    \fi%
  \else%
    \ifx\@IndexFormat\relax%
      \ClassError{\tudcls@name}{\string\SetIndexFormat\space unused}{%
        It seems you have forgotten to use \string\SetIndexFormat%
      }%
    \else%
      \expandafter\IfBooleanF\expandafter{\@IndexFormat}{%
        \@HyperIndex{#4}{#5}{#6}{#7}{#8}{\@IndexFormat}%
      }%
    \fi%
    \IfValueTF{#5}{\edef\@tempa{#4:#5:#7}}{\edef\@tempa{#4:#7}}%
    \ifcsdef{r@\@tempa}{%
      \let\@tempb\relax%
      \def\@tempc{\mbox{\hyperref{}{\jobname}{\@tempa}{#1}\IfValueT{#2}{#2}}}%
      \IfValueT{#3}{%
        \def\@tempb{%
          \ClassWarning{\tudcls@name}{%
            You've used the unknown cross-reference\MessageBreak%
            shorthand '#3'. Only 'auto', 'page'\MessageBreak%
            and 'full' as well as 'none' are valid%
          }%
        }%
        \ifstr{#3}{auto}{\def\@tempb{ in \autoref{\@tempa}}}{}%
        \ifstr{#3}{page}{\def\@tempb{ \vpageref{\@tempa}}}{}%
        \ifstr{#3}{full}{\def\@tempb{ in \fullref{\@tempa}}}{}%
        \ifstr{#3}{none}{%
          \let\@tempb\relax%
          \def\@tempc{\mbox{#1\IfValueT{#2}{#2}}}%
        }{}%
      }%
      \@tempc\@tempb%
    }{%
      \IfValueT{#3}{%
        \ClassWarning{\tudcls@name}{%
          No cross-reference created, label \@tempa\space is missing%
        }%
      }%
      \mbox{#1\IfValueT{#2}{#2}}%
    }%
  \fi%
  \let\@IndexFormat\relax%
}
\newrobustcmd*\hyperidx[2][]{\hyperref{}{\jobname}{#1}{#2}}
\NewDocumentCommand\@HyperIndex{mmmmmm}{%
  \IfValueTF{#3}{\def\@tempa{#3}}{\def\@tempa{}}%
  \IfValueTF{#5}{\def\@tempb{#5}}{\def\@tempb{}}%
  \IfValueTF{#6}{\edef\@tempc{|#6}}{\def\@tempc{}}%
  \IfValueTF{#2}{%
    \ifcsdef{r@#1:#2:#4}{%
      \edef\@tempb{#1:#2:#4}%
      \index[#1]{%
        #2!\hyperidx[\@tempb]{\begingroup\expandonce\@tempa#4\endgroup}%
        ~{\idxfont(Parameter)}\expandonce\@tempc%
      }%
      \begingroup%
      \let\Environment\@firstofone%
      \def\Macro##1{\bsc##1}%
      \index[keys]{%
        \hyperidx[\@tempb]{%
          \begingroup\expandonce\@tempa#4\endgroup~{\idxfont(\texttt{#2})}%
        }%
        \expandonce\@tempc%
      }%
      \endgroup%
    }{%
      \index[#1]{#2!\begingroup\expandonce\@tempa#4\endgroup\expandonce\@tempb}%
    }%
  }{%
    \ifcsdef{r@#1:#4}{%
      \index[#1]{%
        \hyperidx[#1:#4]{%
          \begingroup\expandonce\@tempa#4\endgroup\expandonce\@tempb%
        }%
        \expandonce\@tempc%
      }%
    }{%
      \index[#1]{%
        \begingroup\expandonce\@tempa#4\endgroup%
        \expandonce\@tempb\expandonce\@tempc%
      }%
    }%
  }%
}
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
  \let\PBoolean\relax%
  \let\PSet\relax%
  \let\PValue\@gobble%
  \let\Parameter\@gobble%
  \let\OParameter\@gobble%
  \let\LParameter\relax%
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
    \in@{\Environment}{#2}%
    \ifin@ \listadd\@additionallist{\tabularnewline}\fi%
  }{%
    \listadd\@additionallist{\relax}%
  }%
}{%
  \ifx\@declarationlist\relax\else%
    \ClassError{\tudcls@name}{\string\printdeclarationlist\space is missing}{%
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
      \global\@noindextrue%
      \renewcommand*\@changedatdeclaredefault{\emph{entf\"allt}}%
    }{%
      \global\@noindexfalse%
    }%
    \IfValueT{#2}{\renewcommand*\@changedatdeclaredefault{\emph{#2}}}%
    \@declaretrue\@openindextrue%
    \@afterindentfalse\@afterheading%
    \def\@tempa##1{\ignorespaces##1\tabularnewline}%
    \edef\HyperRaiseLinkDefault{\the\baselineskip}%
    \setbox0\hbox{%
      \begin{tabular}{|l|}%
        \hline%
        \forlistloop\@tempa{\@declarationlist}%
        \hline%
      \end{tabular}%
    }\usebox0%
    \@declarefalse%
    \ifboolexpr{bool {@presetlist} or bool {@additionallist}}{%
      \if@presetlist%
        \qquad%
        \texttt{%
          \begin{tabular}{l}%
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
    \printchangedatlist[\dimexpr.5\baselineskip-.5\ht0-.5\dp0\relax]%
    \IfValueT{#3}{#3}%
    \par\nobreak%
    \vskip 1.5\baselineskipglue%
    \@afterindentfalse\@afterheading%
  \fi%
}
\NewDocumentEnvironment{Declaration*}{om}{%
  \@changedatdeclare{#1}{#2}%
  \@stareddeclaretrue%
  \global\@noindexfalse%
  \@declaretrue\@openindextrue#2\@declarefalse%
  \@stareddeclarefalse%
}{%
  \ifx\@changedatdeclarelist\relax\else%
    \ClassError{\tudcls@name}{\string\printchangedatlist\space is missing}{%
      \string\@changedatdeclarelist\space is not empty. Did you\MessageBreak%
      forget to print this list with \string\printchangedatlist?%
    }%
  \fi%
  \@gobbleparameters%
  \@declaretrue\@openindexfalse#2\@declarefalse%
}
\newcommand*\@changedatdeclarelist{}
\let\@changedatdeclarelist\relax
\newcommand*\@changedatdeclaredefault{\emph{neu}}
\newcommand*\@changedatdeclare[2]{%
  \IfValueT{#1}{%
    \@for\@tempa:=#1\do{%
      \@expandtwoargs\in@{!}{\@tempa}%
      \ifin@%
        \expandafter\listadd\expandafter\@changedatdeclarelist%
          \expandafter{\@tempa!#2}%
      \else%
        \expandafter\listadd\expandafter\@changedatdeclarelist%
          \expandafter{\@tempa!\@changedatdeclaredefault!#2}%
      \fi%
    }%
  }%
}
\newcommand*\printchangedatlist[1][.2\baselineskip]{%
    \ifx\@changedatdeclarelist\relax\else%
      \setlength\changedatmarginskip{#1}%
      \ChangedAt@Process{\@changedatdeclarelist}%
      \setlength{\changedatmarginskip}{\z@}%
      \global\let\@changedatdeclarelist\relax%
      \@afterindentfalse\@afterheading%
    \fi%
}
\newcommand*\ChangedAt[1]{\strut\ChangedAt@Process{#1}\ignorespaces}
\newcommand*\@changedatlist{}
\newcommand*\ChangedAt@Default{}
\newlength{\changedatmarginskip}
\newcommand*\@changedatversionlist{}
\let\@changedatversionlist\relax
\newcommand*\ChangedAt@Process[1]{%
  \let\@changedatlist\relax%
  \let\@changedatversionlist\relax%
  \@for\@tempa:=#1\do{\listeadd{\@changedatlist}{\expandonce\@tempa}}%
  \forlistloop\ChangedAt@Split{\@changedatlist}%
  \sortlist{\@changedatversionlist}%
  \marginnote{%
    \def\@tempa####1{%
      \ignorespaces\hyperref[idx:changelog]{####1}\tabularnewline%
    }%
    \begin{tabular}{|l|}%
      \hline{\footnotesize\rule{0pt}{.8\baselineskip}}%
      \forlistloop\@tempa{\@changedatversionlist}%
      \hline%
    \end{tabular}%
  }[\changedatmarginskip]%
  \setlength{\changedatmarginskip}{\z@}%
}
\NewDocumentCommand\ChangedAt@Split{>{\SplitArgument{2}{!}}m}{%
  \ChangedAt@@Process#1%
}
\newcommand*\ChangedAt@@Process[3]{%
  \IfValueTF{#3}{%
    \begingroup%
      \@gobbleparameters%
      \xdef\ChangedAt@Default{#3}%
    \endgroup%
    \ChangedAt@@@Process{#1}{\ChangedAt@Default: #2}%
  }{%
    \IfValueT{#2}{\ChangedAt@@@Process{#1}{#2}}%
  }%
  \xifinlist{#1}{\@changedatversionlist}{}{\listeadd\@changedatversionlist{#1}}%
}
\newcommand*\ChangedAt@@@Process[2]{%
  \begingroup%
    \def\@tempa{#2}%
    \in@{\ChangedAt@Default}{#2}%
    \ifin@%
      \expandafter\def\expandafter\@tempa\expandafter{\ChangedAt@Default}%
    \fi%
    \expandafter\in@\expandafter\Key\expandafter{\@tempa}%
    \ifin@%
      \begingroup%
        \RenewDocumentCommand\Key{sommo}{\xdef\@TempKey{##3:}}%
        \setbox0\vtop{#2}%
      \endgroup%
      \index[changelog]{#1!\@TempKey\ #2}%
    \else%
      \index[changelog]{#1!#2}%
    \fi%
  \endgroup%
}
\newcommand*\Rename[4][]{%
  \ChangedAt@@@Process{#2}{#3: \emph{umbenannt}~\textrightarrow~siehe #4}%
  \ChangedAt@@@Process{#2}{#4: \emph{neu}~\textrightarrow~ersetzt #3}%
  \listeadd\@changedatdeclarelist{#2}%
  \index[#1]{#3|see{#4}}%
}
\NewDocumentCommand\@ProcessChangedAt{mmd()mmm}{%
  \begingroup%
    \let\texttt\@firstofone%
    \let\texturn\@firstofone%
    \let\Environment\@firstofone%
    \let\Macro\@firstofone%
    \IfValueTF{#3}{\xdef\@tempa{#2:#3:#5}}{\xdef\@tempa{#2:#5}}%
  \endgroup%
  \IfBooleanTF{#1}{%
    \def\@tempb{\begingroup#4#5\endgroup}%
  }{%
    \def\@tempb{\begingroup#4#5\endgroup~{\idxfont(#6)}}%
  }%
  \ifcsdef{r@\@tempa}{\hyperidx[\@tempa]{\@tempb}}{\@tempb}%
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
        \expandafter\ifnum\pdfstrcmp{#1}{\@tempa}<0\relax%
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
  \setlength{\tabularm@wd}{\wd\tabularm@box}%
  \def\tabularm@num{#1}%
  \let\allcolumnpar\@allcolumnpar%
  \begin{tabular}{*{#1}l}\BODY\end{tabular}%
}
\newcommand*\@allcolumnpar[1]{%
  \multicolumn{\tabularm@num}{@{}p{\tabularm@wd}@{}}{#1}%
}
\AtBeginDocument{%
  \addtokomafont{section}{\strut\ignorespaces}% derber Hack!
  \addtokomafont{subsection}{\strut\ignorespaces}% derber Hack!
  \ifdef{\tudfinalflag}{\TUDoptions{ToDo=false}}{}%
  \ifdef{\tudprintflag}{\hypersetup{hidelinks}\TUDoptions{color=no}}{}%
}
\newrobustcmd*\PName[1]{\texttt{\textsl{<#1>}}}
\newrobustcmd*\PBoolean{\PName{Ein-Aus-Wert}}
\newrobustcmd*\PSet{\PName{Einstellung}}
\newrobustcmd*\Parameter[1]{\texttt{\{}\PName{#1}\texttt{\}}}
\newrobustcmd*\OParameter[1]{\texttt{[}\PName{#1}\texttt{]}}
\newrobustcmd*\LParameter{\texttt{[}\PName{Parameterliste}\texttt{]}}
\newrobustcmd*\OLParameter[1]{%
  \texttt{[}\PName{#1}|\PName{Parameterliste}\texttt{]}%
}
\newrobustcmd*\PValue[1]{\texttt{#1}}
\newrobustcmd*\PParameter[1]{\texttt{\{#1\}}}
\newrobustcmd*\POParameter[1]{\texttt{[#1]}}
%%% From File: tudscr-misc.dtx
\RequirePackage{xspace}[2009/10/20]
\xspaceaddexceptions{"=}
\newcommand*\vTUDScript{}
\AtBeginDocument{%
  \def\@tempb#1 #2 #3\relax#4\relax{\def\vTUDScript{#2}}%
  \edef\@tempa{\TUDVersion}%
  \expandafter\@tempb\@tempa\relax? ? \relax\relax%
}
\newcommand*\vKOMAScript{v3.12\xspace}
\DeclareRobustCommand\TUDScript{%
  \ifdin{\MakeTextUppercase{\@TUDScript}}{%
    \textsf{T\kern.05em U\kern.05em D\kern.1em-\kern.1em}\KOMAScript%
  }\xspace%
}
\newcommand*\@TUDScript{TUD-KOMA-Script}
\RequirePackage{scrhack}[2014/07/07]
\newcommand*\Attention[1]{\marginnote{\fbox{Achtung!}}\emph{#1}}
\NewDocumentCommand\Forum{s}{%
  \IfBooleanTF{#1}{%
    \url{http://latex.wcms-file3.tu-dresden.de/phpBB3/}%
  }{%
    \hrfn{http://latex.wcms-file3.tu-dresden.de/phpBB3/}{Forum}%
  }%
  \xspace%
}
\newcommand*\notudscrartcl{%
  F\"ur die Klasse \Class{tudscrartcl} ist diese Einstellung nicht verf\"ugbar.
}
\newlength{\tempdim}
\newcommand*\hrfn[2]{\href{#1}{#2}\footnote{\scriptsize\url{#1}}}
\NewDocumentCommand\scrguide{s}{%
  \def\@tempc{%
    http://mirrors.ctan.org/macros/latex/contrib/koma-script/doc/scrguide.pdf%
  }%
  \IfBooleanTF{#1}{%
    \href{\@tempc}{\File{scrguide.pdf}}%
  }{%
    \hrfn{\@tempc}{\File{scrguide.pdf}}%
  }%
  \xspace%
}
\newcommand*\CD{Corporate Design\xspace}
\newcommand*\CDs{Corporate Designs\xspace}
\newcommand*\TUD{Technische Universit\"at Dresden\xspace}
\newcommand*\TnUD{Technischen Universit\"at Dresden\xspace}
\newcommand*\DDC{\mbox{DRESDEN-concept}\xspace}
\AfterPackage{babel}{%
  \@expandtwoargs\in@{,english,}{,\bbl@loaded,}%
  \ifin@%
    \renewcommand*\CD{\foreignlanguage{english}{Corporate Design}\xspace}
    \renewcommand*\CDs{\foreignlanguage{english}{Corporate Designs}\xspace}
  \fi
}
\newcommand*\Univers{\textubn{Univers}\xspace}
\newcommand*\DIN{\textdbn{DIN~BOLD}\xspace}
\endinput
%%
%% End of file `tudscrman.cls'.
