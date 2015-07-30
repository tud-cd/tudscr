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
  \@TUDVersion{2015/07/17 v2.05 BETA TUD-KOMA-Script}%
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
  \typeout{+---------------------------------------------------------------}
  \typeout{| The Corporate Design of Technische Universitaet Dresden}
  \typeout{| Class: \TUDClassName}
  \typeout{| Version: \TUDVersion}
  \typeout{| Author: Falk Hanisch (\tudscrmail)}
  \typeout{| Forum: http://latex.wcms-file3.tu-dresden.de/phpBB3/index.php}
  \typeout{+---------------------------------------------------------------}
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
\AfterPackage*{hyperref}{\RequirePackage[babel]{microtype}[2013/05/23]}
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
}
\PassOptionsToPackage{xindy,splitindex}{imakeidx}
\RequirePackage{imakeidx}[2013/07/11]%
\indexsetup{%
  level=\addsec,%
  noclearpage,firstpagestyle=headings,headers={\indexname}{\indexname},%
  othercode={\renewcommand*\subitem{\@idxitem\hspace*{15\p@}}}%
}
\newcommand*\xdyopt{-M tudscrman-temp.xdy -L german-din}

\@ifpackagelater{imakeidx}{2013/07/12}{%
  \ClassWarning%
  {tudscrman}{%
    Package `imakeidx' was updated so the patch for the\MessageBreak%
    environment `theindex' is maybe outdated.%
  }%
}{%
  \ifimki@original\else%
    \renewenvironment{theindex}
      {\imki@maybeaddtotoc%
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
       \imki@othercode}%
      {\ifnum\imki@columns>\@ne\end{multicols}\fi}%
  \fi%
}
\newcommand*\tud@write@i{}
\newwrite\tud@write@i
\openout\tud@write@i=tudscrman-temp.xdy
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
\RequirePackage{enumitem}[2011/09/28]
\setlist{noitemsep}
\AtBeginDocument{
  \RequirePackage{ellipsis}[2004/9/28]
  \let\ellipsispunctuation\relax
}
\RequirePackage{tabularx}[1999/01/07]
\RequirePackage{ragged2e}[2009/05/21]
\RequirePackage{chngcntr}[2009/09/02]
\counterwithout{footnote}{chapter}
\RequirePackage{booktabs}[2005/04/14]
\RequirePackage{varioref}[2011/10/02]%
\renewcommand*\fullref[1]{\hyperref[#1]{\autoref*{#1} \vpageref{#1}}}
\RequirePackage{tikz}[2013/12/13]
\RequirePackage{pdfpages}[2013/08/25]
\RequirePackage{units}[1998/08/04]
\RequirePackage{tudscrsupervisor}[\TUDVersion]
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
    \index[files]{\hypertut{#2}{~{\idxfont(Tutorial)}}\IfValueT{#3}{|#3}}%
  }%
}
\newcommand*\IncludeExample[1]{%
  \lstinputlisting[style=tudscr]{examples/#1}%
  \ifnum\pdfshellescape=\@ne\relax%
    \filemodCmp{examples/#1.pdf}{examples/#1.tex}{}{%
      \immediate\write18{%
        pdflatex -output-directory examples examples/#1.tex
        pdflatex -output-directory examples examples/#1.tex
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
     \@tempswafalse
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
\newrobustcmd*\bsc{\@backslashchar}
\newcommand*\tud@shellescape@wrn{%
  \ClassWarning%
  {tudscrman}{%
    You have to recompile this document with\MessageBreak%
    activated shell escape option%
  }%
  \global\let\tud@shellescape@wrn\relax%
}
\newcommand*\pdfexpandableoutline[1]{%
  \AfterPackage*{hyperref}{\pdfstringdefDisableCommands{\csletcs{#1}{@#1}}}
}
\newcommand*\@TUDScript{TUD-KOMA-Script}
\pdfexpandableoutline{TUDScript}
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
\newcommand*\@CTANLink{}
\let\@CTANLink\relax
\newcommand*\@crossdeclaration{}
\let\@crossdeclaration\relax
\NewDocumentCommand\Application{smd||}{%
  \ifdin{#2}{%
    \mbox{\textsbs{#2}}%
    \CheckIndexFormat{#1}{#3}%
    \IfBooleanF{#1}{%
      \index{\textsbs{#2}~{\idxfont(Anwendungssoftware)}\IfValueT{#3}{|#3}}%
    }%
  }%
}
\DeclareExpandableDocumentCommand\@Application{sm}{#2}
\pdfexpandableoutline{Application}
\NewDocumentCommand\Distribution{smod||}{%
  \ifdin{#2\IfValueT{#3}{~#3}}{%
    \mbox{\textsbn{#2\IfValueT{#3}{~#3}}}%
    \CheckIndexFormat{#1}{#4}%
    \IfBooleanF{#1}{%
      \index{\textsbn{#2}~{\idxfont(Distribution)}\IfValueT{#4}{|#4}}%
    }%
  }%
}
\newrobustcmd*\Path[1]{\mbox{\texttt{#1}}}
\NewDocumentCommand\File{smd||}{%
  \ifdin{#2}{%
    \mbox{\textsbn{#2}}%
    \CheckIndexFormat{#1}{#3}%
    \IfBooleanF{#1}{%
      \index[files]{\textsbn{#2}~{\idxfont(Datei)}\IfValueT{#3}{|#3}}%
    }%
  }%
}
\NewDocumentCommand\Class{smd''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{files}{\protect\sbnfont}{#2}{Klasse}%
  \else%
    \ifdin{#2}{%
      \SetIndexFormat{#1}{#4}%
      \@ProcessOutput{\textsbn{#2}}'#3'%
        {files}[\protect\sbnfont]{#2}[~{\idxfont(Klasse)}]%
    }%
  \fi%
}
\DeclareExpandableDocumentCommand\@Class{sm}{#2}
\pdfexpandableoutline{Class}
\NewDocumentCommand\Package{smd''d()d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{files}{\protect\sbnfont}{#2}{Paket}%
  \else%
    \ifdin{#2}{%
      \IfValueTF{#4}{%
        \ifstr{#4}{}{\let\@CTANLink\relax}{\def\@CTANLink{pkg/#4}}%
      }{\def\@CTANLink{pkg/#2}}%
      \SetIndexFormat{#1}{#5}%
      \@ProcessOutput{\textsbn{#2}}'#3'%
        {files}[\protect\sbnfont]{#2}[~{\idxfont(Paket)}]%
    }%
  \fi%
}
\DeclareExpandableDocumentCommand\@Package{sm}{#2}
\pdfexpandableoutline{Package}
\newcommand*\@TempOption{}
\NewDocumentCommand\Option{smod''D(){\@crossdeclaration}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{options}{\ttfamily}{#2}{Option}%
  \else%
    \IfValueTF{#3}{\gdef\@TempOption{\texttt{=#3}}}{\gdef\@TempOption{}}%
    \SetIndexFormat{#1}{#6}%
    \@ProcessOutput{\texttt{#2}}[\@TempOption]'#4'(#5){options}[\ttfamily]{#2}%
  \fi%
}
\DeclareExpandableDocumentCommand\@Option{sm}{#2}
\pdfexpandableoutline{Option}
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
\DeclareExpandableDocumentCommand\@Environment{sm}{#2}
\pdfexpandableoutline{Environment}%
\NewDocumentCommand\Macro{smd''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{macros}{\ttfamily\bsc}{#2}{Befehl}%
  \else%
    \SetIndexFormat{#1}{#4}%
    \@ProcessOutput{\texttt{\bsc#2}}'#3'{macros}[\ttfamily\bsc]{#2}%
  \fi%
}
\DeclareExpandableDocumentCommand\@Macro{sm}{#2}
\NewDocumentCommand\Length{smd''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{macros}{\ttfamily\bsc}{#2}{L\"ange}%
  \else%
    \SetIndexFormat{#1}{#4}%
    \@ProcessOutput{\texttt{\bsc#2}}[\if@declare~{\idxfont(L\"ange)}\fi]'#3'%
      {macros}[\ttfamily\bsc]{#2}[~{\idxfont(L\"ange)}]%
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
\NewDocumentCommand\Counter{smd''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{macros}{\ttfamily}{#2}{Z\"ahler}%
  \else%
    \SetIndexFormat{#1}{#4}%
    \@ProcessOutput{\texttt{#2}}[\if@declare~{\idxfont(Z\"ahler)}\fi]'#3'%
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
    \setlength\@tempdimc{-.7\baselineskip}%
    \begin{tabularx}{\@tempdima}{lXX}\@TermTable\end{tabularx}%
  }{%
    \setlength\@tempdimc{\z@}%
    \begin{tabular}{lll}\@TermTable\end{tabular}%
  }%
  \newline\null%
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
    \@ProcessOutput{\texttt{#2}\if@declare~{\idxfont(Schriftelement)}\fi}'#3'%
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
\newif\if@declare
\newif\if@stareddeclare
\newif\if@openindex
\newif\if@deprecated
% §§§ Argumente dokumentieren?
\NewDocumentCommand\@ProcessOutput{mod''d()md()omo}{%
  \if@declare%
    \if@openindex%
      \IfValueT{#3}{%
        \ClassWarning{tudscrman}{%
          It is not possible to use any cross-reference\MessageBreak%
          shorthand like '#3' within the arguments of\MessageBreak%
          the environment `Declaration'%
        }%
      }%
      \IfValueTF{#6}{\edef\@tempa{#5:#6:#8}}{\edef\@tempa{#5:#8}}%
      \IfValueT{#4}{%
        \ifx\relax#4\relax\else%
          \IfValueTF{#6}{\edef\@tempa{#4:#5:#6:#8}}{\edef\@tempa{#4:#5:#8}}%
        \fi%
      }%
      \if@deprecated%
        \expandafter\IfBooleanF\expandafter{\@IndexFormat}{%
          \manualhyperdef{\@tempa}%
        }%
      \else%
        \expandafter\IfBooleanTF\expandafter{\@IndexFormat}{%
          \manualhyperdef{\@tempa}%
        }{%
          \ifx\@IndexFormat\@empty\else%
            \ClassWarning{tudscrman}{%
              It is not possible to use any indexing format\MessageBreak%
              like |\@IndexFormat| within the arguments of the\MessageBreak%
              environment `Declaration'%
            }%
          \fi%
          \if@stareddeclare%
            \manualhyperdef'{\@tempa}%
          \else%
            \manualhyperdef{\@tempa}%
          \fi%
          \@HyperIndex{#5}{#6}{#7}{#8}{#9}{(declare}%
        }%
      \fi%
      \if@stareddeclare\else%
        #1\IfValueT{#2}{#2}%
      \fi%
    \else%
      \if@deprecated\else%
        \expandafter\IfBooleanF\expandafter{\@IndexFormat}{%
          \@HyperIndex{#5}{#6}{#7}{#8}{#9}{declare)}%
        }%
      \fi%
    \fi%
  \else%
    \ifx\@IndexFormat\relax%
      \ClassError{tudscrman}{\string\SetIndexFormat\space unused}{%
        It seems you have forgotten to use \string\SetIndexFormat.%
      }%
    \else%
      \expandafter\IfBooleanF\expandafter{\@IndexFormat}{%
        \@HyperIndex{#5}{#6}{#7}{#8}{#9}{\@IndexFormat}%
      }%
    \fi%
    \IfValueTF{#6}{\edef\@tempa{#5:#6:#8}}{\edef\@tempa{#5:#8}}%
    \IfValueT{#4}{%
      \ifx\relax#4\relax\else%
         \ifstr{#4}{main}{}{%
           \IfValueTF{#6}{\edef\@tempa{#4:#5:#6:#8}}{\edef\@tempa{#4:#5:#8}}%
         }%
      \fi%
    }%
    \ifcsdef{r@\@tempa}{%
      \def\@tempb{\mbox{\hyperref{}{\jobname}{\@tempa}{#1}\IfValueT{#2}{#2}}}%
      \let\@tempc\relax%
      \IfValueT{#3}{%
        \def\@tempc{%
          \ClassWarning{tudscrman}{%
            You've used the unknown cross-reference\MessageBreak%
            shorthand '#3'. Only 'auto', 'page'\MessageBreak%
            and 'full' as well as 'none' are valid%
          }%
        }%
        \ifstr{#3}{auto}{\def\@tempc{ in \autoref{\@tempa}}}{}%
        \ifstr{#3}{page}{\def\@tempc{ \vpageref{\@tempa}}}{}%
        \ifstr{#3}{ppage}{\def\@tempc{ \reftextfaraway{\@tempa}}}{}%
        \ifstr{#3}{full}{\def\@tempc{ in \fullref{\@tempa}}}{}%
        \ifstr{#3}{none}{%
          \def\@tempb{\mbox{#1\IfValueT{#2}{#2}}}%
          \let\@tempc\relax%
        }{}%
      }%
      \@tempb\@tempc%
    }{%
      \IfValueTF{#3}{%
        \def\@tempb##1{\ClassWarning{tudscrman}{##1}}%
      }{%
        \def\@tempb##1{\ClassInfo{tudscrman}{##1}}%
      }%
      \@tempb{No cross-reference created, label \@tempa\space is missing}%
% §§§ Ausgabe im Zweifel mit Hinweis auf Klasse/Paket, wenn angegeben?
      \def\@tempc{\mbox{#1\IfValueT{#2}{#2}}}%
      \ifx\@CTANLink\relax%
        \@tempc%
      \else%
        \href{http://www.ctan.org/\@CTANLink}{\@tempc}%
      \fi%
    }%
  \fi%
  \let\@IndexFormat\relax%
  \let\@CTANLink\relax%
}
\newrobustcmd*\hyperidx[2][]{\manualhyperref{#1}{#2}}
% §§§ prüfen/ändern
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
      \index[#1]{%
        #2!\begingroup\expandonce\@tempa#4\endgroup%
        ~{\idxfont(Parameter)}\expandonce\@tempc%
      }%
      \index[keys]{%
        \begingroup\expandonce\@tempa#4\endgroup~{\idxfont(\texttt{#2})}%
        \expandonce\@tempc%
      }%
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
\NewDocumentEnvironment{Declaration*}{om}{%
  \@changedatdeclare{#1}{#2}%
  \@stareddeclaretrue%
  \global\@deprecatedfalse%
  \@declaretrue\@openindextrue#2\@declarefalse%
  \@stareddeclarefalse%
}{%
  \ifx\@changedatdeclarelist\relax\else%
    \ClassError{tudscrman}{\string\printchangedatlist\space is missing}{%
      \string\@changedatdeclarelist\space is not empty. Did you\MessageBreak%
      forget to print this list with \string\printchangedatlist?%
    }%
  \fi%
  \global\@deprecatedfalse%
  \@gobbleparameters%
  \@declaretrue\@openindexfalse#2\@declarefalse%
}
\NewDocumentEnvironment{Declaration!}{om}{%
  \@changedatdeclare{#1}{#2}%
  \@stareddeclaretrue%
  \global\@deprecatedfalse%
  \@declaretrue\@openindextrue#2\@declarefalse%
  \@stareddeclarefalse%
  \ifx\@crossdeclaration\relax%
    \begingroup%
      \let\Class\@firstofone%
      \let\Package\@firstofone%
      \xdef\@crossdeclaration{#2}%
    \endgroup%
  \else%
    \ClassError{tudscrman}{Nested environment `Declaration*'}{%
      It is not possible to nest this environment.%
    }%
  \fi%
}{%
  \ifx\@changedatdeclarelist\relax\else%
    \ClassError{tudscrman}{\string\printchangedatlist\space is missing}{%
      \string\@changedatdeclarelist\space is not empty. Did you\MessageBreak%
      forget to print this list with \string\printchangedatlist?%
    }%
  \fi%
  \global\@deprecatedfalse%
  \@gobbleparameters%
  \@declaretrue\@openindexfalse#2\@declarefalse%
  \global\let\@crossdeclaration\relax%
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
\NewDocumentCommand\tud@item@pkg{od()od''}{%
  \itempackages[{%
    \IfValueT{#1}{%
      \manualhyperdef{files:#1}%
      \IfValueTF{#2}{%
        \def\@tempa{http://www.ctan.org/pkg/#2}%
      }{%
        \def\@tempa{http://www.ctan.org/pkg/#1}%
      }%
      \href{\@tempa}{\Package{#1}'none'|!|}%
      \IfValueT{#3}{%
        \quad(%
        \let\@tempb\relax%
        \@for\@tempa:=#3\do{%
          \@tempb%
          \manualhyperdef{files:\@tempa}%
          \expandafter\Package\expandafter{\@tempa}'none'|!|%
          \def\@tempb{, }%
        }%
        )%
      }%
      \IfValueT{#4}{%
        \quad(%
        \let\@tempb\relax%
        \@for\@tempa:=#4\do{%
          \@tempb%
          \manualhyperdef{files:\@tempa}%
          \href{http://www.ctan.org/pkg/\@tempa}{%
            \expandafter\Package\expandafter{\@tempa}'none'|!|%
          }%
          \def\@tempb{, }%
        }%
        )%
      }%
    }%
  }]%
}
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
\newcommand*\ChangedAt@@Split[3]{%
  \in@{*}{#1}%
  \ifin@%
    \listadd\@changedatdeclarelist{Allgemein!#2}%
  \else%
    \listadd\@changedatdeclarelist{%
      Implementierung!#2!\IfValueTF{#3}{#3}{\@changedatdeclaredefault}!#1%
    }%
  \fi%
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
  \ChangedAt@Process[#1]{#2}[#4]{#3}%
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
        \setbox0\hbox{#3}%
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
      \protected@edef\@tempb{%
        Implementierung!#2!\emph{entf\"allt}|see{#3}!\@tempa%
      }%
      \expandafter\listadd\expandafter\@changedatdeclarelist\expandafter{%
        \@tempb%
      }%
      \IfValueT{#1}{\index[#1]{\@tempa|see{#3}}}%
    \fi\fi%
  }%
}
\NewDocumentCommand\@ProcessChangedAt{mmd()mmm}{%
  \begingroup%
    \let\texttt\@firstofone%
    \let\textsbn\@firstofone%
    \let\textsbs\@firstofone%
    \let\Environment\@firstofone%
    \let\Macro\@firstofone%
% §§§ prüfen/ändern, zusätzliches Argument...
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
\newcommand*\idxfont{}
\let\idxfont\footnotesize
\robustify{\idxfont}
\newcommand*\PrintIndex{%
  \begingroup%
    \@printindex%
    \@printindex[options]%
    \@printindex[macros]%
    \@printindex[keys]%
    \@printindex[terms]%
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
  \ifstr{#1}{*}{\emph{\seename}~#2}{\emph{\seename}~#1}%
  \if@changelog\let\deprecatedhyperpage\@gobble\fi%
}
\renewrobustcmd*\seealso[2]{%
  \ifstr{#1}{*}{\emph{\alsoname}~#2}{\emph{\alsoname}~#1}%
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
  \mbox{D\kern.05em R\kern.05em E\kern.05em S\kern.05em D\kern.05em E\kern.05em
  N\kern.1em-\kern.1em concept}\xspace%
}
\AfterPackage*{babel}{%
  \@expandtwoargs\in@{,english,}{,\bbl@loaded,}%
  \ifin@%
    \renewcommand*\CD{\foreignlanguage{english}{Corporate Design}\xspace}
    \renewcommand*\CDs{\foreignlanguage{english}{Corporate Designs}\xspace}
  \fi
}
\newcommand*\Univers{\textubn{Univers}\xspace}
\newcommand*\DIN{\textdbn{DIN~BOLD}\xspace}
\newcommand*\textsbn{}
\newcommand*\sbnfont{\sffamily\bfseries\upshape}
\DeclareTextFontCommand\textsbn{\sffamily\bfseries\upshape}
\newcommand*\textsbs{}
\newcommand*\sbsfont{\sffamily\bfseries\slshape}
\DeclareTextFontCommand\textsbs{\sffamily\bfseries\slshape}
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
\endinput
%%
%% End of file `tudscrman.cls'.
