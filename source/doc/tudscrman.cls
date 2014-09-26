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
%% ======================================================================
%% 
%% Das Corporate Design der TU Dresden auf Basis der KOMA-Script-Klassen
%% 
%% ======================================================================
%% This work may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, version 1.3c of the license.
%% The latest version of this license is in
%%     http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later and of this work.
%% This work has the LPPL maintenance status "author-maintained".
%% The current maintainer and author of this work is Falk Hanisch.
%% ----------------------------------------------------------------------
%% Dieses Werk darf nach den Bedingungen der LaTeX Project Public Lizenz,
%% Version 1.3c, verteilt und/oder veraendert werden.
%% Die neuste Version dieser Lizenz ist
%%     http://www.latex-project.org/lppl.txt
%% und Version 1.3c ist Teil aller Verteilungen von LaTeX
%% Version 2005/12/01 oder spaeter und dieses Werks.
%% Dieses Werk hat den LPPL-Verwaltungs-Status "author-maintained"
%% (allein durch den Autor verwaltet).
%% Der aktuelle Verwalter und Autor dieses Werkes ist Falk Hanisch.
%% ======================================================================
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
  \@TUDVersion{2014/09/17 v2.02 TUD-KOMA-Script}%
\endgroup%
\providecommand*\tudscrmail{tudscr@gmail.com}
\newcommand*\tudinh@name{tudscrreprt}
%%% From File: tudscr-manual.dtx
\NeedsTeXFormat{LaTeX2e}[2011/06/27]
\ProvidesClass{tudscrman}[%
  2014/09/17 v2.02 TUD-KOMA-Script
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
\newcommand*\tud@item@pkg[1][]{%
  \itempackages[{\DeclarePackage{#1}\texturn{#1}}]%
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
  \IfBooleanTF{#1}{}{%
    \index[files]{\hypertut{#3}{~{\idxfont(Tutorial)}\IfValueTF{#2}{|#2}{}}}%
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
      \IfNoValueTF{#2}{%
        \IfBooleanTF{#1}{\edef\@ToDo{nolist}}{}%
      }{%
        \IfBooleanTF{#1}{\edef\@ToDo{#2,nolist}}{\edef\@ToDo{#2}}%
      }%
      \renewcommand*\marginpar[2][]{\marginnote[##1]{##2}[\dimexpr-1.6ex+1pt]}%
      \vskip.8ex%
      \IfNoValueTF{#4}{}{%
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
\newif\if@openindex
\newcommand*\idxfont{}
\let\idxfont\footnotesize
\robustify{\idxfont}
\newif\if@noindex
\NewDocumentCommand\Application{som}{%
  \ifdin{#3}{%
    \mbox{\texturs{#3}}%
    \IfBooleanTF{#1}{}{%
      \index{\texturs{#3}~{\idxfont(Anwendungssoftware)}\IfValueTF{#2}{|#2}{}}%
    }%
  }%
}
\DeclareExpandableDocumentCommand\@Application{som}{#3}
\NewDocumentCommand\Distribution{somo}{%
  \mbox{\texturn{#3\IfValueTF{#4}{~#4}{}}}%
  \IfBooleanTF{#1}{}{%
    \index{\texturn{#3}~{\idxfont(Distribution)}\IfValueTF{#2}{|#2}{}}%
  }%
}
\newrobustcmd*\Path[1]{\mbox{\texttt{#1}}}
\NewDocumentCommand\File{som}{%
  \mbox{\texturn{#3}}%
  \IfBooleanTF{#1}{}{%
    \index[files]{\texturn{#3}~{\idxfont(Datei)}\IfValueTF{#2}{|#2}{}}%
  }%
}
\newcommand*\@TempClass{}
\NewDocumentCommand\Class{st'om}{%
  \ifdin{#4}{%
    \gdef\@TempClass{~{\idxfont(Klasse)}}%
    \IfBooleanTF{#2}{%
      \@ProcessOutput[#1]{\texturn{#4}}{files}%
        [\protect\univrn]{#4}[\@TempClass]{fullref}%
    }{%
      \@ProcessOutput[#1]{\texturn{#4}}{files}%
        [\protect\univrn]{#4}[\@TempClass]{#3}%
    }%
  }%
}
\DeclareExpandableDocumentCommand\@Class{st'om}{#4}
\NewDocumentCommand\DeclareClass{om}{%
  \IfValueTF{#1}{\ChangedAt@Process{#1!\emph{neu}!\Class{#2}}}{}%
  \Hy@raisedlink{\hyperdef{\jobname}{files:#2}{}}%
  \label{files:#2}%
  \index[files]{\hyperidx[files:#2]{\texturn{#2}~{\idxfont(Klasse)}}|declare}%
}
\newcommand*\@TempPackage{}
\NewDocumentCommand\Package{st'om}{%
  \if@changelog%
    \@ProcessChangedAt{files}[\protect\univrn]{#4}[~{\idxfont(Paket)}]%
  \else%
    \ifdin{#4}{%
      \gdef\@TempPackage{~{\idxfont(Paket)}}%
      \IfBooleanTF{#2}{%
        \@ProcessOutput[#1]{\texturn{#4}}{files}%
          [\protect\univrn]{#4}[\@TempPackage]{fullref}%
      }{%
        \@ProcessOutput[#1]{\texturn{#4}}{files}%
          [\protect\univrn]{#4}[\@TempPackage]{#3}%
      }%
    }%
  \fi%
}
\DeclareExpandableDocumentCommand\@Package{st'om}{#4}
\NewDocumentCommand\DeclarePackage{som}{%
  \IfValueTF{#2}{\ChangedAt@Process{#2!\emph{neu}!\Package{#3}}}{}%
  \IfBooleanTF{#1}{%
    \raisebox{4\baselineskip}[0pt][0pt]{\hyperdef{\jobname}{files:#3}{}}%
    \par\nobreak%
    \vskip\dimexpr-\parskip-\baselineskip%
    \@afterindentfalse\@afterheading%
  }{%
    \Hy@raisedlink{\hyperdef{\jobname}{files:#3}{}}%
  }%
  \label{files:#3}%
  \index[files]{\hyperidx[files:#3]{\texturn{#3}~{\idxfont(Paket)}}|declare}%
}
\newcommand*\@TempOption{}
\NewDocumentCommand\Option{st'omo}{%
  \if@changelog%
    \@ProcessChangedAt{options}[\ttfamily]{#4}[~{\idxfont(Option)}]%
  \else%
    \IfValueTF{#5}{\gdef\@TempOption{\texttt{=#5}}}{\gdef\@TempOption{}}%
    \IfBooleanTF{#2}{%
      \@ProcessOutput[#1]{\texttt{#4}}[\@TempOption]{options}%
        [\ttfamily]{#4}{fullref}%
    }{%
      \@ProcessOutput[#1]{\texttt{#4}}[\@TempOption]{options}%
        [\ttfamily]{#4}{#3}%
    }%
  \fi%
}
\newcommand*\@TempEnvironment{}
\NewDocumentCommand\Environment{st'omo}{%
  \if@changelog%
    \@ProcessChangedAt{macros}[\ttfamily]{#4}[~{\idxfont(Umgebung)}]%
  \else%
    \if@declare%
      \gdef\@TempEnvironment{%
        \texttt{\bsc{}begin\{#4\}\IfValueTF{#5}{#5}{}}\tabularnewline%
        \texttt{\dots}\tabularnewline%
        \texttt{\bsc{}end\{#4\}}%
      }%
    \else%
      \gdef\@TempEnvironment{\texttt{#4}}%
    \fi%
    \IfBooleanTF{#2}{%
      \@ProcessOutput[#1]{\@TempEnvironment}{macros}%
        [\ttfamily]{#4}{fullref}%
    }{%
      \@ProcessOutput[#1]{\@TempEnvironment}{macros}%
        [\ttfamily]{#4}{#3}%
    }%
  \fi%
}
\NewDocumentCommand\Macro{st'om}{%
  \if@changelog%
    \@ProcessChangedAt{macros}[\ttfamily\bsc]{#4}[~{\idxfont(Befehl)}]%
  \else%
    \IfBooleanTF{#2}{%
      \@ProcessOutput[#1]{\texttt{\bsc#4}}{macros}%
        [\ttfamily\bsc]{#4}{fullref}%
    }{%
      \@ProcessOutput[#1]{\texttt{\bsc#4}}{macros}%
        [\ttfamily\bsc]{#4}{#3}%
    }%
  \fi%
}
\newcommand*\@TempKey{}
\NewDocumentCommand\Key{sommo}{%
  \if@changelog%
    \@ProcessChangedAt{macros}(#3)[\ttfamily]{#4}[~{\idxfont(Parameter)}]%
  \else%
    \begingroup%
    \let\Environment\@firstofone%
    \let\Macro\@firstofone%
    \gdef\@TempKey{\if@declare~{\idxfont(Parameter)}\fi}%
    \IfValueTF{#5}{%
      \@ProcessOutput[#1]{\texttt{#4}}[\texttt{=#5}\@TempKey]{macros}(#3)%
        [\ttfamily]{#4}{#2}%
    }{%
      \@ProcessOutput[#1]{\texttt{#4}}[\@TempKey]{macros}(#3)%
        [\ttfamily]{#4}{#2}%
    }%
    \endgroup%
  \fi%
}
\newcommand*\@TempPageStyle{}
\NewDocumentCommand\PageStyle{st'om}{%
  \if@changelog%
    \@ProcessChangedAt{macros}[\ttfamily]{#4}[~{\idxfont(Seitenstil)}]%
  \else%
    \gdef\@TempPageStyle{%
      \texttt{#4}\if@declare~{\idxfont(Seitenstil)}\fi%
    }%
    \IfBooleanTF{#2}{%
      \@ProcessOutput[#1]{\@TempPageStyle}{macros}%
        [\ttfamily]{#4}[~{\idxfont(Seitenstil)}]{fullref}%
    }{%
      \@ProcessOutput[#1]{\@TempPageStyle}{macros}%
        [\ttfamily]{#4}[~{\idxfont(Seitenstil)}]{#3}%
    }%
  \fi%
}
\newcommand*\@TempLength{}
\NewDocumentCommand\Length{som}{%
  \if@changelog%
    \@ProcessChangedAt{macros}[\ttfamily\bsc]{#3}[~{\idxfont(L\"ange)}]%
  \else%
    \gdef\@TempLength{\if@declare~{\idxfont(L\"ange)}\fi}%
    \@ProcessOutput[#1]{\texttt{\bsc#3}}[\@TempLength]%
      {macros}[\ttfamily\bsc]{#3}[~{\idxfont(L\"ange)}]{#2}%
  \fi%
}
\newcommand*\@TempCounter{}
\NewDocumentCommand\Counter{som}{%
  \if@changelog%
    \@ProcessChangedAt{macros}[\ttfamily]{#3}[~{\idxfont(Z\"ahler)}]%
  \else%
    \gdef\@TempCounter{\if@declare~{\idxfont(Z\"ahler)}\fi}%
    \@ProcessOutput[#1]{\texttt{#3}}[\@TempCounter]{macros}%
      [\ttfamily]{#3}[~{\idxfont(Z\"ahler)}]{#2}%
  \fi%
}
\newcommand*\@TempTerm{}
\NewDocumentCommand\Term{som}{%
  \if@changelog%
    \@ProcessChangedAt{terms}[\ttfamily\bsc]{#3}[~{\idxfont(Bezeichner)}]%
  \else%
    \gdef\@TempTerm{\if@declare~{\idxfont(Bezeichner)}\fi}%
    \@ProcessOutput[#1]{\texttt{\bsc#3}}[\@TempTerm]{terms}%
      [\ttfamily\bsc]{#3}{#2}%
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
\newcommand*\@TempFont{}
\NewDocumentCommand\Font{som}{%
  \if@changelog%
    \IfBooleanTF{#1}{%
      \@ProcessChangedAt{fonts}[\ttfamily]{#3}%
    }{%
      \@ProcessChangedAt{fonts}[\ttfamily]{#3}[~{\idxfont(Schriftelement)}]%
    }%
  \else%
    \gdef\@TempFont{%
      \texttt{#3}\if@declare~{\idxfont(Schriftelement)}\fi%
    }%
    \@ProcessOutput[#1]{\@TempFont}{fonts}[\ttfamily]{#3}{#2}%
  \fi%
}
\newcommand*\@TempColor{}
\NewDocumentCommand\Color{somo}{%
  \if@changelog%
    \@ProcessChangedAt{colors}[\ttfamily]{#3}[~{\idxfont(Farbe)}]%
  \else%
    \gdef\@TempColor{%
      \IfValueTF{#4}{~\texttt{(#4)}}{}%
      \if@declare~{\idxfont(Farbe)}\fi%
    }%
    \@ProcessOutput[#1]{\texttt{#3}}[\@TempColor]{colors}[\ttfamily]{#3}{#2}%
  \fi%
}
\NewDocumentCommand\@ProcessOutput{omomd()omom}{%
  \if@declare%
    \if@openindex%
      \if@noindex\else%
        \IfValueTF{#5}%
          {\edef\@tempa{#4:#5:#7}}%
          {\edef\@tempa{#4:#7}}%
        \Hy@raisedlink{\hyperdef{\jobname}{\@tempa}{}}%
        \label{\@tempa}%
        \@HyperIndex{#4}{#5}{#6}{#7}{#8}[(declare]%
      \fi%
      #2\IfValueTF{#3}{#3}{}%
    \else%
      \if@noindex\else%
        \@HyperIndex{#4}{#5}{#6}{#7}{#8}[declare)]%
      \fi%
    \fi%
  \else%
    \IfBooleanTF{#1}{}{%
      \@tempswafalse%
      \ifstr{#9}{autoref}{\@tempswatrue}{}%
      \ifstr{#9}{pageref}{\@tempswatrue}{}%
      \ifstr{#9}{fullref}{\@tempswatrue}{}%
      \if@tempswa%
        \@HyperIndex{#4}{#5}{#6}{#7}{#8}%
      \else%
        \@HyperIndex{#4}{#5}{#6}{#7}{#8}[#9]%
      \fi%
    }%
    \IfValueTF{#5}{\edef\@tempa{#4:#5:#7}}{\edef\@tempa{#4:#7}}%
    \ifcsdef{r@\@tempa}{%
      \let\@tempb\relax%
      \ifstr{#9}{autoref}{\def\@tempb{ in \autoref{\@tempa}}}{}%
      \ifstr{#9}{pageref}{\def\@tempb{ \vpageref{\@tempa}}}{}%
      \ifstr{#9}{fullref}{\def\@tempb{ in \fullref{\@tempa}}}{}%
      \mbox{\hyperref{}{\jobname}{\@tempa}{#2}\IfValueTF{#3}{#3}{}}\@tempb%
    }{\mbox{#2\IfValueTF{#3}{#3}{}}}%
  \fi%
}
\newrobustcmd*\hyperidx[2][]{\hyperref{}{\jobname}{#1}{#2}}
\NewDocumentCommand\@HyperIndex{mmmmmo}{%
  \IfValueTF{#3}{\def\@tempa{#3}}{\def\@tempa{}}%
  \IfValueTF{#5}{\def\@tempb{#5}}{\def\@tempb{}}%
  \IfValueTF{#6}{\def\@tempc{|#6}}{\def\@tempc{}}%
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
\newcommand*\@changedatdeclarelist{}
\let\@changedatdeclarelist\relax
\NewDocumentEnvironment{Declaration}{omoog}{%
  \listadd\@declarationlist{#2}%
  \IfValueTF{#1}{%
    \@for\@tempa:=#1\do{%
      \@expandtwoargs\in@{!}{\@tempa}
      \ifin@
        \expandafter\listadd\expandafter\@changedatdeclarelist%
          \expandafter{\@tempa!#2}%
      \else
        \expandafter\listadd\expandafter\@changedatdeclarelist%
          \expandafter{\@tempa!\emph{neu}!#2}%
      \fi
    }%
  }{}%
  \IfNoValueTF{#3}{%
    \listadd\@presetlist{\relax}%
  }{%
    \@presetlisttrue%
    \IfNoValueTF{#4}{%
      \listadd\@presetlist{preset:\,#3}%
    }{%
      \def\@tempa[##1:##2]{##1:\,##2}%
      \listeadd\@presetlist{preset:\,#3\,|\,\expandonce{\@tempa[#4]}}%
    }%
  }%
  \IfNoValueTF{#5}{%
    \listadd\@additionallist{\relax}%
  }{%
    \@additionallisttrue%
    \listadd\@additionallist{\hspace*{\tabcolsep}\small(#5)}%
    \in@{\Environment}{#2}%
    \ifin@ \listadd\@additionallist{\tabularnewline}\fi%
  }%
}{%
  \ifx\@declarationlist\relax\else%
    \ClassError{\tudclsname}{\string\printdeclarationlist\space is missing}{%
      \string\@declarationlist\space is not empty. Did you forget\MessageBreak%
      to print this list with \string\printdeclarationlist?%
    }%
  \fi%
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
  \vskip-\lastskip%
  \@declaretrue\@openindexfalse#2\@declarefalse%
  \pagebreak[0]%
}
\NewDocumentCommand\printdeclarationlist{sd()}{%
  \ifx\@declarationlist\relax\else%
    \ifvmode\else\par\fi%
    \addpenalty{\@beginparpenalty}%
    \addvspace{1.5\baselineskipglue}%
    \IfBooleanTF{#1}{\global\@noindextrue}{\global\@noindexfalse}%
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
    \setlength\changedatmarginskip{\dimexpr.5\baselineskip-.5\ht0-.5\dp0\relax}%
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
    \ifx\@changedatdeclarelist\relax\else%
      \ChangedAt@Process{\@changedatdeclarelist}%
    \fi%
    \setlength{\changedatmarginskip}{\z@}%
    \global\let\@declarationlist\relax%
    \global\let\@presetlist\relax%
    \global\@presetlistfalse%
    \global\let\@additionallist\relax%
    \global\@additionallistfalse%
    \global\let\@changedatdeclarelist\relax%
    \IfValueTF{#2}{#2}{}%
    \par\nobreak%
    \vskip 1.5\baselineskipglue%
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
  \IfNoValueTF{#3}{%
    \IfValueTF{#2}{\ChangedAt@@@Process{#1}{#2}}{}%
  }{%
    \begingroup%
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
      \xdef\ChangedAt@Default{#3}%
    \endgroup%
    \ChangedAt@@@Process{#1}{\ChangedAt@Default: #2}%
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
\NewDocumentCommand\@ProcessChangedAt{md()omo}{%
  \begingroup%
    \let\texttt\@firstofone%
    \let\texturn\@firstofone%
    \let\Environment\@firstofone%
    \let\Macro\@firstofone%
    \IfValueTF{#2}{\xdef\@tempa{#1:#2:#4}}{\xdef\@tempa{#1:#4}}%
  \endgroup%
  \IfValueTF{#3}{%
    \def\@tempb{\begingroup#3#4\endgroup\IfValueTF{#5}{#5}{}}%
  }{%
    \def\@tempb{\begingroup#4\endgroup\IfValueTF{#5}{#5}{}}%
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
