%%
%% This is file `tudscrmanual.cls',
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
  2015/10/06 v2.05 BETA TUD-KOMA-Script
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
\TUD@ProvidesWrapperClass{tudscrmanual}{tudscrreprt}{manual class}
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
\AtEndPreamble{%
  \ifdef{\tudfinalflag}{%
    \TUDoptions{ToDo=false}%
    \TUD@key{ToDo}{}%
  }{}%
  \ifdef{\tudprintflag}{%
    \TUDoptions{cd=true}%
    \TUD@key{cd}{}%
    \ifdef{\hypersetup}{\hypersetup{hidelinks}}{}%
  }{}%
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
\newif\if@tud@todo
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
      \ifstr{##1##2##3}{not}{%
        \if\relax##4\relax\else%
          \listeadd\tud@todo@type@neg{##4}%
        \fi%
      }{%
        \if\relax##1\relax\else%
          \listeadd\tud@todo@type@pos{##1##2##3##4}%
        \fi%
      }%
    }%
    \edef\@tempb{not\trim@spaces{#1}}%
    \expandafter\@tempa\@tempb\relax\@empty\@empty\@nil%
    \@tud@todotrue%
    \FamilyKeyStateProcessed%
  \fi%
}
%%% From File: tudscr-misc.dtx
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\TUDClassName@Parent}}
\TUDProcessOptions\relax
\LoadClass{\TUDClassName@Parent}
%%% From File: tudscr-manual.dtx
\RequirePackage{scrhack}[2014/02/27]
\RequirePackage{babel}[2014/03/24]
\PassOptionsToPackage{log-declarations=false}{xparse}
\RequirePackage{xparse}[2013/12/31]
\PassOptionsToPackage{quiet}{marginnote}
\RequirePackage{marginnote}[2012/03/29]
\reversemarginpar
\RequirePackage{xspace}[2009/10/20]
\xspaceaddexceptions{"=}
\newcommand*\vTUDScript{}
\def\@tempb#1 #2 #3\relax#4\relax{\def\vTUDScript{#2}}%
\edef\@tempa{\TUDVersion}%
\expandafter\@tempb\@tempa\relax? ? \relax\relax%
\newcommand*\vKOMAScript{v3.17\xspace}
\newtoks\tud@toks@
\newcommand*\eaddto@hook[2]{%
  \expandafter\addto@hook\expandafter#1\expandafter{#2}%
}
\newcommand*\tud@replace[3]{%
  \begingroup%
    \toks@{\def\@tempa##1}%
    \eaddto@hook\toks@{\detokenize{#2}}%
    \addto@hook\toks@{##2\@nil{\@tempb{##1}{##2}}}%
    \the\toks@%
    \def\@tempb##1##2{%
      \if\relax\detokenize{##2}\relax%
        \appto#1{##1}%
        \let\@tempc\relax%
      \else%
        \appto#1{##1#3}%
        \def\@tempc{\@tempa##2\@nil}%
      \fi%
      \@tempc%
    }%
    \toks@{\@tempa}%
    \edef\@tempc{\expandafter\detokenize\expandafter{#1}}%
    \eaddto@hook\toks@{\@tempc}%
    \eaddto@hook\toks@{\detokenize{#2}\@nil}%
    \def#1{}%
    \the\toks@%
    \edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand#1{#1}%
    }%
  \tud@reserved%
}
\newcommand*\@templist{}
\let\@templist\relax%
\newcommand*\sortlist[1]{%
  \ifdefvoid{#1}{%
    \ClassWarning{tudscrmanual}{%
      The given list \string#1\space\MessageBreak%
      is empty, nothing to sort here%
    }%
  }{%
    \let\tud@reserved#1%
    \let\@templist\relax%
    \forlistloop\@sortlist{\tud@reserved}%
    \let\tud@reserved\relax%
    \@for\@tempa:=\@templist\do{\listeadd\tud@reserved{\@tempa}}%
    \let#1\tud@reserved%
  }%
}
\newif\if@sorted@list
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
\newcommand*\tud@trace@lbl@created[1]{}
\newcommand*\tud@trace@lbl@missing[1]{}
\NewDocumentCommand\tracinglabels{sO{missing}}{%
  \newcommand*\tud@trace@lbl@list@created{}%
  \newcommand*\tud@trace@lbl@list@missing{}%
  \@tempswafalse%
  \ifstr{#2}{created}{\@tempswatrue}{}%
  \ifstr{#2}{all}{\@tempswatrue}{}%
  \if@tempswa%
    \renewcommand*\tud@trace@lbl@created[1]{%
      \typeout{%
        +++++ label created: ##1 on page \thepage%
      }%
      \xifinlist{##1}{\tud@trace@lbl@list@created}{}{%
        \listxadd\tud@trace@lbl@list@created{##1}%
      }%
    }%
    \IfBooleanF{#1}{%
      \AfterEndDocument{%
        \typeout{+++++ labels created (sorted) +++++}%
        \sortlist\tud@trace@lbl@list@created%
        \forlistloop\typeout{\tud@trace@lbl@list@created}%
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
      \xifinlist{##1}{\tud@trace@lbl@list@missing}{}{%
        \listxadd\tud@trace@lbl@list@missing{##1}%
      }%
    }%
    \IfBooleanF{#1}{%
      \AfterEndDocument{%
        \typeout{+++++ labels missing (sorted) +++++}%
        \sortlist\tud@trace@lbl@list@missing%
        \forlistloop\typeout{\tud@trace@lbl@list@missing}%
      }%
    }%
  \fi%
}
\@onlypreamble\tracinglabels
\newcommand*\tud@trace@markup[2]{}
\newcommand*\tracingmarkup{%
  \renewcommand*\tud@trace@markup[2]{%
    \typeout{+++++ markup ##1 on page \thepage^^J##2}%
  }%
}
\@onlypreamble\tracingmarkup
\newcommand*\tud@trace@bundle[1]{}
\newcommand*\tud@trace@bundle@list{}
\newcommand*\tracingbundle{%
  \renewcommand*\tud@trace@bundle[1]{%
    \begingroup%
      \def\Class####1{class:####1}%
      \def\Package####1{package:####1}%
      \xifinlist{##1}{\tud@trace@bundle@list}{}{%
        \listxadd\tud@trace@bundle@list{##1}%
      }%
    \endgroup%
  }%
  \AfterEndDocument{%
    \typeout{+++++ bundle list +++++}%
    \forlistloop\typeout{\tud@trace@bundle@list}%
  }%
}
\@onlypreamble\tracingbundle
\PassOptionsToPackage{hyperindex=false,colorlinks,linkcolor=blue}{hyperref}
\PassOptionsToPackage{open,openlevel=0}{bookmark}
\AfterPackage*{hyperref}{%
  \renewcaptionname{ngerman}{\sectionautorefname}{Unterkapitel}%
  \renewcaptionname{ngerman}{\subsectionautorefname}{Abschnitt}%
  \renewcaptionname{ngerman}{\subsubsectionautorefname}{Unterabschnitt}%
  \newcommand*\Email[1]{\href{mailto:#1}{\nolinkurl{#1}}}%
  \NewDocumentCommand\tudhyperdef{sm}{%
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
  \newcommand*\tudhyperref[2]{\hyperref{}{\jobname}{#1}{#2}}%
  \newcommand*\autorefname[1][current]{%
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
\TUD@UnwindPackage{hyperref}{%
  \ClassWarning{tudscrmanual}%
  {%
    It is strongly recommended to load package `hyperref'.\MessageBreak%
    Nevertheless, essential commands are rudimentarily\MessageBreak%
    defined. At least the package `url' is loaded.
  }%
  \RequirePackage{url}[2013/09/16]%
  \providecommand*\hypersetup[1]{}%
  \providecommand*\hyperdef[3]{\label{#1.#2}#3}%
  \providerobustcmd*\hyperref{\@ifnextchar[{\tud@hyperref}{\tud@@hyperref}}
  \newcommand*\tud@hyperref[2][]{#2}
  \newcommand*\tud@@hyperref[4]{#4}
  \providecommand*\href[3][]{#3}%
  \providecommand*\hyperpage[1]{#1}%
  \providecommand*\autoref{??\xspace\@ifstar{\ref}{\ref}}%
  \providecommand*\phantomsection{}%
  \providecommand*\texorpdfstring[2]{#1}%
  \tud@locale@german{\partautorefname}{Teil}%
  \tud@locale@german{\chapterautorefname}{Kapitel}%
  \tud@locale@german{\sectionautorefname}{Unterkapitel}%
  \tud@locale@german{\subsectionautorefname}{Abschnitt}%
  \tud@locale@german{\subsubsectionautorefname}{Unterabschnitt}%
  \tud@locale@english{\partautorefname}{Part}%
  \tud@locale@english{\chapterautorefname}{chapter}%
  \tud@locale@english{\sectionautorefname}{section}%
  \tud@locale@english{\subsectionautorefname}{subsection}%
  \tud@locale@english{\subsubsectionautorefname}{subsubsection}%
  \providecommand*\Email[1]{\mbox{#1}}%
  \ProvideDocumentCommand\tudhyperdef{sm}{\label{#2}}%
  \providecommand*\tudhyperref[2]{#2}%
  \providecommand*\autorefname[1][]{??\xspace}%
}
\RequirePackage{varioref}[2011/10/02]
\renewcommand*\fullref[1]{\hyperref[#1]{\autoref*{#1} \vpageref{#1}}}
\newcommand*\hrfn[2]{%
  \href{#1}{\trim@spaces{#2}}%
  \footnote{%
    \scalebox{0.95}{%
      \def\_{_}%
      \edef\@tempa{#1}%
      \strut\expandafter\url\expandafter{\@tempa}%
    }%
  }%
}
\AfterPackage*{hyperref}{%
  \patchcmd{\pdfstringdef}{\csname HyPsd@babel@}{%
    \let\bbl@info\@gobble\csname HyPsd@babel@%
  }{}{\tud@patch@wrn{pdfstringdef}}%
}
\AfterPackage*{hyperref}{\RequirePackage[babel]{microtype}[2013/05/23]}
\TUD@UnwindPackage{hyperref}{\RequirePackage[babel]{microtype}[2013/05/23]}
\newif\if@declare
\newif\if@openindex
\newcommand*\tud@declare@type{0}
\newcommand*\list@declaration{}
\let\list@declaration\relax
\NewDocumentEnvironment{Declaration}{omoog}{%
  \listadd\list@declaration{#2}%
  \tud@declare@start[#1]{#2}{#3}{#4}{#5}%
}{%
  \tud@declare@end{#2}{\printdeclarationlist}%
}
\newif\if@obsolete
\NewDocumentEnvironment{Obsolete}{momoog}{%
  \@obsoletetrue%
  \ifstr{#1}{}{%
    \listadd\list@declaration{%
      \def\tud@declare@type{1}%
      #3%
      \def\tud@declare@type{0}%
    }%
    \tud@declare@start{#3}{#4}{#5}{#6}%
  }{%
    \listadd\list@declaration{#3}%
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
        \def\@tempb##1:##2\@nil{%
          \if\relax\detokenize{##2}\relax\else%
            \def\@tempa{\seeref{##2'page'}}%
          \fi%
        }%
        \@tempb#1\@nil%
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
\newcommand*\list@preset{}
\let\list@preset\relax
\newif\if@preset@list
\newcommand*\list@additional{}
\let\list@additional\relax
\newif\if@additional@list
\NewDocumentCommand\tud@declare@start{ommmm}{%
  \@ChangedAt@CreateList[#2]{#1}%
  \IfValueTF{#3}{%
    \@preset@listtrue%
    \def\@tempa{Voreinstellung: \PValue{#3}}%
    \IfValueT{#4}{%
      \def\@tempb[##1:##2]{##1: \PValue{##2}}%
      \eappto\@tempa{ | \expandonce{\@tempb[#4]}}%
    }%
    \listeadd\list@preset{\expandonce\@tempa}%
  }{%
    \listadd\list@preset{\relax}%
  }%
  \IfValueTF{#5}{%
    \@additional@listtrue%
    \listadd\list@additional{(#5)}%
    \in@{\Environment}{#2}%
    \ifin@\listadd\list@additional{\tabularnewline}\fi%
  }{%
    \listadd\list@additional{\relax}%
    \in@{\Environment}{#2}%
    \ifin@\listadd\list@additional{\relax}\listadd\list@additional{\relax}\fi%
  }%
}
\newcommand*\tud@declare@end[2]{%
  \ifx\list@declaration\relax\else%
    \ClassError{tudscrmanual}{\string#2\space is missing}{%
      \string\list@declaration\space is not empty. Did you forget\MessageBreak%
      to print this list with \string#2?%
    }%
  \fi%
  \vskip-\lastskip%
  \@declaretrue\@openindexfalse#1\@declarefalse%
  \pagebreak[1]%
}
\NewDocumentEnvironment{Declaration*}{om}{%
  \tud@declare@special@start[#1]{#2}{2}%
}{%
  \tud@declare@special@end{#2}%
}
\NewDocumentEnvironment{Bundle!}{om}{%
  \tud@declare@special@start[#1]{#2}{3}%
  \Bundle{#2}%
}{%
  \endBundle%
  \tud@declare@special@end{#2}%
}
\newenvironment{Bundle}[1]{%
  \tud@ifbundle{%
    \ClassError{tudscrmanual}{Nested environment `Bundle'}{%
      It is not possible to nest this environment, when\MessageBreak%
      a cross-label was given before.%
    }%
  }{%
    \gdef\@bundle{#1}%
  }%
  \ignorespaces%
}{\global\let\@bundle\@bundledefault\aftergroup\ignorespaces}
\newcommand*\@bundle{}
\newcommand*\@bundledefault{tudscr}
\let\@bundle\@bundledefault
\newcommand*\tud@ifbundle[2]{\ifstr{\@bundle}{\@bundledefault}{#2}{#1}}
\NewDocumentCommand\tud@declare@special@start{omm}{%
  \@ChangedAt@CreateList(#2){#1}%
  \def\tud@declare@type{#3}%
  \@declaretrue\@openindextrue#2\@declarefalse%
  \def\tud@declare@type{0}%
}
\newcommand*\tud@declare@special@end[1]{%
  \ifx\list@ChangedAt\relax\else%
    \ClassError{tudscrmanual}{\string\printchangedatlist\space is missing}{%
      \string\list@ChangedAt\space is not empty. Did you\MessageBreak%
      forget to print this list with \string\printchangedatlist?%
    }%
  \fi%
  \@declaretrue\@openindexfalse#1\@declarefalse%
}
\newskip\tud@lastskip
\pretocmd{\index}{\tud@lastskip=\lastskip}{}{\tud@patch@wrn{index}}
\pretocmd{\label}{\tud@lastskip=\lastskip}{}{\tud@patch@wrn{label}}
\NewDocumentCommand\printdeclarationlist{sd()}{%
  \ifx\list@declaration\relax\else%
    \ifhmode%
      \vskip\medskipamount%
    \else%
      \@tempskipa=\glueexpr\medskipamount-\tud@lastskip\relax%
      \ifdim\@tempskipa>\z@%
        \addpenalty{\@beginparpenalty}%
        \addvspace{\@tempskipa}%
      \fi%
    \fi%
    \global\tud@lastskip=\z@%
    \@afterindentfalse\@afterheading%
    \@declaretrue\@openindextrue%
    \def\@tempa##1{\ignorespaces##1\tabularnewline}%
    \edef\HyperRaiseLinkDefault{\the\baselineskip}%
    \sbox\z@{%
      \begin{tabular}{|l|}%
        \hline%
        \forlistloop\@tempa{\list@declaration}%
        \hline%
      \end{tabular}%
    }\usebox\z@%
    \@declarefalse%
    \ifboolexpr{bool {@preset@list} or bool {@additional@list}}{%
      \def\@tempa##1{\small\ignorespaces##1\tabularnewline}%
      \qquad%
      \if@preset@list%
        \begin{tabular}{@{}l@{}}%
          \forlistloop\@tempa{\list@preset}%
        \end{tabular}%
        \hspace{\tabcolsep}%
      \fi%
      \if@additional@list%
        \begin{tabular}{@{}l@{}}%
          \forlistloop\@tempa{\list@additional}%
        \end{tabular}%
      \fi%
    }{}%
    \global\let\list@declaration\relax%
    \global\let\list@preset\relax%
    \global\let\list@additional\relax%
    \global\@preset@listfalse%
    \global\@additional@listfalse%
    \@printchangedatlist{#1}{%
      \dimexpr.5\ht\strutbox+.5\dp\strutbox-.5\ht0-.5\dp0\relax%
    }%
    \IfValueT{#2}{#2}%
    \par\nobreak%
    \vskip\medskipamount%
    \@afterindentfalse\@afterheading%
  \fi%
}
\newcommand*\printobsoletelist{%
  \@obsoletetrue%
  \printdeclarationlist*%
  \@obsoletefalse%
}
\NewDocumentCommand\printchangedatlist{sO{\z@}}{%
  \@printchangedatlist{#1}{#2}%
}
\newrobustcmd*\bsc{\@backslashchar}
\newrobustcmd*\suffix[1]{\begingroup~\footnotesize(#1)\endgroup}
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
  \ClassError{tudscrmanual}%
    {Wrong usage of optional argument for value}%
    {There are two optional arguments for a value given!}%
}
\NewExpandableDocumentCommand\@Application{sm}{#2}
\NewDocumentCommand\Application{smd||}{%
  \@SetMarkupFormat{\sbsfont}%
  \@ProcessMarkup{\Application{#2}}%
  \@ProcessIndex{#1}{\Application{#2}}[Anwendungssoftware]|#3|%
}
\NewExpandableDocumentCommand\@Distribution{sm}{#2}
\NewDocumentCommand\Distribution{smod||}{%
  \@SetMarkupFormat{\sbnfont}%
  \IfValueTF{#3}{%
    \@ProcessMarkup{\Distribution{#2}}[~#3]%
  }{%
    \@ProcessMarkup{\Distribution{#2}}%
  }%
  \@ProcessIndex{#1}{\Distribution{#2}}[Distribution]|#4|%
}
\NewExpandableDocumentCommand\@Engine{sm}{#2}
\NewDocumentCommand\Engine{smd||}{%
  \@SetMarkupFormat{\sbnfont}%
  \@ProcessMarkup{\Engine{\hologo{#2}}}%
  \@ProcessIndex{#1}{\Engine{#2}}[Textsatzsystem]|#3|%
}
\NewExpandableDocumentCommand\@File{sm}{#2}
\NewDocumentCommand\File{smd||}{%
  \@SetMarkupFormat{\sbnfont}%
  \@ProcessMarkup{\File{#2}}%
  \@ProcessIndex{#1}{\File{#2}}[Datei]|#3|%
}
\NewExpandableDocumentCommand\@Class{sm}{#2}
\NewDocumentCommand\Class{smd''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Class{#2}}[Klasse]%
  \else%
    \@SetMarkupFormat{\sbnfont}%
    \@ProcessMarkup{\Class{#2}}'#3'%
    \@ProcessIndex{#1}{\Class{#2}}[Klasse]|#4|%
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
    \@ProcessIndex{#1}{\Package{#2}}[Paket]|#5|%
  \fi%
}
\NewExpandableDocumentCommand\@Option{sm}{#2}
\NewDocumentCommand\Option{s>{\ProcessorKeyVal}md==d()d''d||}{%
  \Option@Value{#1}#2=#3=(#4)'#5'|#6|%
}
\NewDocumentCommand\Option@Value{mmd==d==d()d''d||}{%
  \IfValueT{#4}{\tud@keyval@error}%
  \if@changedat%
    \@ProcessChangedAt{\Option{#2}}=#3=[Option](#5)%
  \else%
    \@SetMarkupFormat{\ttfamily}%
    \@ProcessMarkup{\Option{#2}}=#3=(#5)'#6'%
    \@ProcessIndex{#1}{\Option{#2}}=#3=(#5)|#7|%
  \fi%
}
\NewExpandableDocumentCommand\@Environment{sm}{#2}
\NewDocumentCommand\Environment{smod()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Environment{#2}}[Umgebung](#4)%
  \else%
    \@SetMarkupFormat{\ttfamily}(%
      \ttfamily\bsc{}begin\{#2\}\IfValueT{#3}{#3}\tabularnewline%
      \ttfamily\dots\tabularnewline%
      \ttfamily\bsc{}end\{#2\}%
    )%
    \@ProcessMarkup{\Environment{#2}}[#3](#4)'#5'%
    \@ProcessIndex{#1}{\Environment{#2}}[Umgebung](#4)|#6|%
  \fi%
}
\NewExpandableDocumentCommand\@Macro{sm}{#2}
\NewDocumentCommand\Macro{smod()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Macro{#2}}[Befehl](#4)%
  \else%
    \@SetMarkupFormat{\ttfamily\bsc}%
    \@ProcessMarkup{\Macro{#2}}[#3](#4)'#5'%
    \@ProcessIndex{#1}{\Macro{#2}}(#4)|#6|%
  \fi%
}
\NewExpandableDocumentCommand\@Length{sm}{#2}
\NewDocumentCommand\Length{smd()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Length{#2}}[L\"ange](#3)%
  \else%
    \@SetMarkupFormat{\ttfamily\bsc}[L\"ange]%
    \@ProcessMarkup{\Length{#2}}(#3)'#4'%
    \@ProcessIndex{#1}{\Length{#2}}[L\"ange](#3)|#5|%
  \fi%
}
\NewExpandableDocumentCommand\@Counter{sm}{#2}
\NewDocumentCommand\Counter{smd()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Counter{#2}}[Z\"ahler](#3)%
  \else%
    \@SetMarkupFormat{\ttfamily}[Z\"ahler]%
    \@ProcessMarkup{\Counter{#2}}(#3)'#4'%
    \@ProcessIndex{#1}{\Counter{#2}}[Z\"ahler](#3)|#5|%
  \fi%
}
\NewExpandableDocumentCommand\@Key{smm}{#2!#3}
\NewDocumentCommand\Key{sm>{\ProcessorKeyVal}md==d()d''d||}{%
  \Key@Value{#1}{#2}#3=#4=(#5)'#6'|#7|%
}
\NewDocumentCommand\Key@Value{mmmd==d==d()d''d||}{%
  \IfValueT{#5}{\tud@keyval@error}%
  \if@changedat%
    \@ProcessChangedAt{\Key{#2}{#3}}=#4=[Parameter](#6)%
  \else%
    \@SetMarkupFormat{\ttfamily}[Parameter]%
    \@ProcessMarkup{\Key{#2}{#3}}=#4=(#6)'#7'%
    \@ProcessIndex{#1}{\Key{#2}{#3}}=#4=(#6)|#8|%
  \fi%
}
\NewExpandableDocumentCommand\@Term{sm}{#2}
\NewDocumentCommand\Term{smd()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Term{#2}}[Bezeichner](#3)%
  \else%
    \@SetMarkupFormat{\ttfamily\bsc}[Bezeichner]%
    \@ProcessMarkup{\Term{#2}}(#3)'#4'%
    \@ProcessIndex{#1}{\Term{#2}}(#3)|#5|%
  \fi%
}
\NewExpandableDocumentCommand\@PageStyle{sm}{#2}
\NewDocumentCommand\PageStyle{smd()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\PageStyle{#2}}[Seitenstil](#3)%
  \else%
    \@SetMarkupFormat{\ttfamily}[Seitenstil]%
    \@ProcessMarkup{\PageStyle{#2}}(#3)'#4'%
    \@ProcessIndex{#1}{\PageStyle{#2}}[Seitenstil](#3)|#5|%
  \fi%
}
\NewExpandableDocumentCommand\@Font{sm}{#2}
\NewDocumentCommand\Font{smd()d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Font{#2}}[Schriftelement](#3)%
  \else%
    \@SetMarkupFormat{\ttfamily}[Schriftelement]%
    \@ProcessMarkup{\Font{#2}}(#3)'#4'%
    \@ProcessIndex{#1}{\Font{#2}}[Schriftelement](#3)|#5|%
  \fi%
}
\NewExpandableDocumentCommand\@Color{sm}{#2}
\NewDocumentCommand\Color{smoD(){\Package{tudscrcolor}}d''d||}{%
  \if@changedat%
    \@ProcessChangedAt{\Color{#2}}[Farbe](#4)%
  \else%
    \@SetMarkupFormat{\ttfamily}[Farbe](%
      \begingroup\ttfamily{#2\IfValueT{#3}{~(#3)}}\endgroup%
    )%
    \@ProcessMarkup{\Color{#2}}[#3](#4)'#5'%
    \@ProcessIndex{#1}{\Color{#2}}[Farbe](#4)|#5|%
  \fi%
}
\NewDocumentCommand\@getattribution{smm}{%
  \begingroup%
    \def\@tempa##1##2##3{%
      \def##1####1{%
        \edef\@tempb{\IfBooleanTF{#1}{##2}{##3}}%
      }%
    }%
    \@tempa\Application{\jobname}{app}%
    \@tempa\Distribution{\jobname}{dst}%
    \@tempa\Engine{\jobname}{eng}%
    \@tempa\File{files}{fle}%
    \@tempa\Class{files}{cls}%
    \@tempa\Package{files}{pkg}%
    \@tempa\Option{options}{opt}%
    \@tempa\Environment{macros}{env}%
    \@tempa\Macro{macros}{cmd}%
    \@tempa\Length{misc}{len}%
    \@tempa\Counter{misc}{cnt}%
    \def\Key##1##2{%
      \edef\@tempb{\IfBooleanTF{#1}{macros}{key}}%
    }%
    \@tempa\Term{terms}{term}%
    \@tempa\PageStyle{elements}{pgs}%
    \@tempa\Font{elements}{font}%
    \@tempa\Color{elements}{clr}%
    #3%
    \edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand#2{\@tempb}%
    }%
  \tud@reserved%
}
\newrobustcmd*\Path[1]{\mbox{\texttt{#1}}}
\newrobustcmd*\PValue[1]{\mbox{\texttt{#1}}}
\newrobustcmd*\PName[1]{\PValue{\textsl{<#1>}}}
\newrobustcmd*\PValueName[1]{\PName{#1}}
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
\newrobustcmd*\textOR{\PValue{\,\textbardbl\,}}
\newcommand*\@onlyPValue{%
  \let\PValue\@firstofone%
  \let\PName\@gobble%
  \let\PValueName\@firstofone%
  \let\PSet\@empty%
  \let\PBoolean\@empty%
  \let\PBName\@gobble%
  \let\Parameter\@gobble%
  \let\OParameter\@gobble%
  \let\LParameter\@empty%
  \let\OLParameter\@gobble%
  \let\PParameter\@gobble%
  \let\POParameter\@gobble%
  \let\textOR\relax%
  \let\emph\@firstofone%
}
\newcommand*\@TUDScript{TUD-KOMA-Script}
\NewDocumentCommand\@gobblemarkup{s}{%
  \let\Application\@Application%
  \let\Distribution\@Distribution%
  \let\Engine\@Engine%
  \let\File\@File%
  \let\Class\@Class%
  \let\Package\@Package%
  \let\Option\@Option%
  \let\Environment\@Environment%
  \let\Macro\@Macro%
  \let\Length\@Length%
  \let\Counter\@Counter%
  \let\Key\@Key%
  \let\Term\@Term%
  \let\PageStyle\@PageStyle%
  \let\Font\@Font%
  \let\Color\@Color%
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
    \let\textOR\relax%
    \let\hologoRobust\@firstofone%
    \let\TUDScript\@TUDScript%
    \def\_{-}%
    \protected\def~{~}%
  }%
}
\AfterPackage*{hyperref}{%
  \expandafter\pdfstringdefDisableCommands\expandafter{\@gobblemarkup}%
}
\newcommand*\@templabel{}
\newcommand*\@formatlabel{%
  \def~{-}%
  \let\IeC\@firstofone%
  \def\"##1{##1e}%
  \def\ss{ss}%
  \let\NoCaseChange\@firstofone%
}
\NewDocumentCommand\@getlabel{sm>{\@Label}>{\SplitArgument{2}{:}}md==}{%
  \@@getlabel#2{#3}=#4=%
  \IfBooleanF{#1}{%
    \@tempswafalse%
    \tud@iflabelexists{#2}{%
      \@tempswatrue%
    }{%
      \IfValueT{#4}{%
        \@@getlabel\tud@reserved{#3}%
        \tud@iflabelexists{\tud@reserved}{%
          \let#2\tud@reserved%
          \@tempswatrue%
        }{}%
      }%
    }%
    \if@tempswa\else%
      \tud@ifbundle{\@getdefaultlabel#2{#3}=#4=}{}%
    \fi%
  }%
}
\NewDocumentCommand\@@getlabel{mmd==}{%
  \def#1{#2}%
  \IfValueT{#3}{%
    \begingroup%
      \@onlyPValue%
      \@formatlabel%
      \ifstr{#3}{}{%
        \def\tud@reserved{\endgroup}%
      }{%
        \protected@edef\tud@reserved{%
          \noexpand\endgroup%
          \appto\noexpand#1{=#3}%
        }%
      }%
    \tud@reserved%
  }%
}
\NewDocumentCommand\@getdefaultlabel{m>{\SplitArgument{2}{:}}mr==}{%
  \@@getdefaultlabel{#1}#2=#3=%
}
\NewDocumentCommand\@@getdefaultlabel{mmmmr==}{%
  \edef\tud@reserved{\expandafter\detokenize\expandafter{\@bundledefault}}%
  \ifstr{\tud@reserved}{#2}{}{%
    \@getlabel#1{\@bundledefault:#3:#4}=#5=%
  }%
}
\NewDocumentCommand\tud@iflabelexists{>{\@Label}>{\SplitArgument{2}{:}}m}{%
  \ifcsdef{r@#1}{%
    \expandafter\@firstoftwo%
  }{%
    \expandafter\@secondoftwo%
  }%
}
\NewDocumentCommand\@Label{m}{%
  \@@Label#1%
}
\NewDocumentCommand\@@Label{mmm}{%
  \begingroup%
    \@gobblemarkup%
    \@formatlabel%
    \IfValueTF{#3}{%
      \edef\@tempa{#1:#2:#3}%
    }{%
      \IfValueTF{#2}{%
        \@getattribution\@tempb{#2}%
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
      \def\noexpand\ProcessedArgument{%
        \expandafter\detokenize\expandafter{\@tempa}%
      }%
    }%
  \@tempc%
}
\newcommand*\@suppressmarkup{\let\@ProcessMarkup\@SuppressMarkup}
\NewDocumentCommand\@SuppressMarkup{md==od()d<>d''}{}%
\NewDocumentCommand\@ProcessMarkup{md==od()d<>d''}{%
  \if@declare%
    \tud@toks@{\ProcessMarkup@Declare}%
    \@getlabel*\@templabel{\@bundle:#1}=#2=%
  \else%
    \tud@toks@{\ProcessMarkup@Inline}%
    \@getlabel\@templabel{#4:#1}=#2=%
  \fi%
  \eaddto@hook\tud@toks@{\expandafter{\@templabel}}%
  \begingroup%
    \@gobblemarkup*%
    \protected@edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand\tud@reserved{#1}%
    }%
  \tud@reserved%
  \eaddto@hook\tud@toks@{\expandafter{\tud@reserved}}%
  \IfValueT{#2}{\addto@hook\tud@toks@{=#2=}}%
  \IfValueT{#3}{\addto@hook\tud@toks@{[#3]}}%
  \if@declare%
    \if@openindex%
      \IfValueT{#6}{%
        \ClassWarning{tudscrmanual}{%
          It is not possible to use any cross-reference\MessageBreak%
          shorthand like '#6' within the arguments of\MessageBreak%
          the environment `Declaration'%
        }%
      }%
      \tud@trace@markup{declare}{\the\tud@toks@}%
      \the\tud@toks@%
    \fi%
  \else%
    \if@tud@index\else%
      \IfValueT{#5}{%
        \ifstr{#5}{}{}{\addto@hook\tud@toks@{<http://www.ctan.org/pkg/#5>}}%
      }%
      \IfValueT{#6}{\addto@hook\tud@toks@{'#6'}}%
    \fi%
    \tud@trace@markup{output}{\the\tud@toks@}%
    \the\tud@toks@%
  \fi%
  \IfValueT{#4}{%
    \ifstr{#4}{}{}{%
      \tud@trace@bundle{#4}%
      \tud@iflabelexists{\@templabel}{}{%
        \ClassWarning{tudscrmanual}{No existing label \@templabel\space for #4}%
      }%
    }%
  }%
}
\NewDocumentCommand\ProcessMarkup@Declare{mmd==o}{%
  \@CheckMarkupFormat%
  \ifcase\tud@declare@type%
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
\NewDocumentCommand\ProcessMarkup@Inline{mmd==od<>d''}{%
  \@CheckMarkupFormat%
  \begingroup%
    \def\@tempc{\@MarkupOutput{#2}=#3=[#4]}%
    \tud@iflabelexists{#1}{%
      \def\@tempa{\hyperref{}{\jobname}{#1}{\@tempc}}%
      \let\@tempb\relax%
      \IfValueT{#6}{%
        \def\@tempb{%
          \ClassWarning{tudscrmanual}{%
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
            \ClassWarning{tudscrmanual}{%
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
\newcommand*\@MarkupInline[1]{\mbox{\@MarkupFormat{#1}}}
\newcommand*\@MarkupDeclare{}
\newcommand*\@MarkupDeclare@Default[1]{%
  \begingroup\@MarkupFormat{#1}\endgroup\@MarkupSuffix%
}
\newcommand*\@MarkupFormat{}
\newcommand*\@MarkupSuffix{}
\NewDocumentCommand\@SetMarkupFormat{mod()}{%
  \def\@MarkupFormat{\ifdin{\MakeTextUppercase}{#1}}%
  \IfValueT{#2}{\def\@MarkupSuffix{\suffix{#2}}}%
  \IfValueT{#3}{\renewcommand*\@MarkupDeclare[1]{#3\@MarkupSuffix}}%
}
\robustify\NoCaseChange
\appto\tud@uclcnotmath{%
  \@nonchangecase\Application%
  \@nonchangecase\Distribution%
  \@nonchangecase\Engine%
  \@nonchangecase\File%
  \@nonchangecase\Class%
  \@nonchangecase\Package%
  \@nonchangecase\Option%
  \@nonchangecase\Environment%
  \@nonchangecase\Macro%
  \@nonchangecase\Length%
  \@nonchangecase\Counter%
  \def\Key#1#2{\NoCaseChange{\Key{#1}{#2}}}%
  \@nonchangecase\Term%
  \@nonchangecase\PageStyle%
  \@nonchangecase\Font%
  \@nonchangecase\Color%
}
\newcommand*\@ClearMarkupFormat{%
  \let\@MarkupFormat\relax%
  \let\@MarkupDeclare\@MarkupDeclare@Default%
  \let\@MarkupSuffix\relax%
}
\@ClearMarkupFormat
\newcommand*\@CheckMarkupFormat{%
  \ifx\@MarkupFormat\relax%
    \ClassError{tudscrmanual}{\string\@SetMarkupFormat\space unused}{%
      It seems you have forgotten to use \string\@SetMarkupFormat.%
    }%
  \fi%
}
\PassOptionsToPackage{xindy,splitindex}{imakeidx}
\RequirePackage{imakeidx}[2013/07/11]
\indexsetup{%
  level=\addsec,%
  noclearpage,firstpagestyle=headings,headers={\indexname}{\indexname},%
  othercode={\renewcommand*\subitem{\@idxitem\hspace*{15\p@}}}%
}
\@ifpackagelater{imakeidx}{2013/07/12}{%
  \ClassWarning{tudscrmanual}%
  {%
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
\newrobustcmd*\cleversee{\@cleversee{\seename}}
\newrobustcmd*\cleverseealso{\@cleversee{\alsoname}}
\newcommand*\@cleversee{}
\def\@cleversee#1#2#3\relax{%
  \if\relax\detokenize{#3}\relax%
    \emph{#1}\space#2%
  \else%
    #3, \emph{\alsoname}\space#2%
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
)^^J%
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
(markup-crossref-list^^J%
\space\space :class "see"^^J%
\space\space :open "\string\cleversee{" :sep "; " :close "}"^^J%
)^^J%
(markup-crossref-list^^J%
\space\space :class "seealso"^^J%
\space\space :open "\string\cleverseealso{" :sep "; " :close "}"^^J%
)^^J%
(markup-crossref-layer-list^^J%
\space\space :class "see" ^^J%
\space\space :sep "\string\,\string\textbar\string\,"^^J%
)^^J%
(markup-crossref-layer-list^^J%
\space\space :class "seealso" ^^J%
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
(markup-indexentry :open "~n \string\subsubsubitem " :depth 3)^^J%
(markup-indexentry :open "~n \string\subsubsubsubitem " :depth 4)^^J%
}
\closeout\tud@write@i
\NewDocumentCommand\makexindyindex{somo}{%
  \let\@tempb\@empty%
  \IfBooleanT{#1}{%
    \def\@tempc{\jobname-#4-declare.idx}%
    \makeindex[name={#4-declare}]%
    \IfFileExists{\@tempc}{%
      \edef\@tempb{-o \jobname-#4.ind \@tempc}%
    }{%
      \ClassWarning{tudscrmanual}%
        {File \@tempc\space not found}%
    }%
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
\makexindyindex*{Klassen- und Paketoptionen}[options]
\makexindyindex*{Befehle und Umgebungen mit dazugeh\"origen Parametern}[macros]
\makexindyindex*{Sprachabh\"angige Bezeichner}[terms]
\makexindyindex*{Seitenstile, Schriftelemente und Farben}[elements]
\makexindyindex*{L\"angen und Z\"ahler}[misc]
\makexindyindex*{Klassen, Pakete und Dateien}[files]
\makexindyindex[columns=1]{\"Anderungsliste}[changelog]
\undef\makexindyindex
\newif\if@tud@index
\addtoeachtocfile{\protect\@tud@indextrue}%
\newcommand*\@idxkey{}
\newcommand*\@idxformat{}
\newcommand*\@idxentry{}
\newcommand*\@idxbundle{}
\NewDocumentCommand\@getindex{smmmmd==r[]r()d!!}{%
  \begingroup%
    \let#4\@empty%
    \in@{\Key}{#5}%
    \ifin@%
      \@suppressmarkup%
      \let\Key\@firstoftwo%
      #5%
      \def#4{%
        \expandonce#2\IfValueT{#9}{: #9}@%
        \expandonce#3\IfValueT{#9}{: #9}!%
      }%
    \fi%
    \@gobblemarkup%
    \let\Key\@secondoftwo%
    \edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand#2{#5}%
      \def\noexpand#4{#4}%
    }%
  \tud@reserved%
  \def#3{#5}%
  \tud@replace#2{@}{"@}%
  \tud@replace#3{@}{"@}%
  \let\@idxbundle\@bundledefault%
  \IfValueTF{#8}{%
    \def\@idxbundle{#8}%
  }{%
    \tud@ifbundle{%
      \tud@iflabelexists{\@bundle:#5}{%
        \edef\@idxbundle{\expandonce\@bundle}%
      }{}%
    }{}%
  }%
}
      \if@deprecated%
        \expandafter\IfBooleanF\expandafter{\@MarkupFormat}{%
          \tudhyperdef{\@templabel}%
        }%
      \else%
        \expandafter\IfBooleanTF\expandafter{\@MarkupFormat}{%
          \tudhyperdef{\@templabel}%
        }{%
          \ifx\@MarkupFormat\@empty\else%
            \ClassWarning{tudscrmanual}{%
              It is not possible to use any indexing format\MessageBreak%
              like |\@MarkupFormat| within the arguments of the\MessageBreak%
              environment `Declaration'%
            }%
          \fi%
          \if@stareddeclare%
            \tudhyperdef'{\@templabel}%
          \else%
            \tudhyperdef{\@templabel}%
          \fi%
          \@HyperIndex{#5}{#6}{#7}{#8}{#9}{#4}{(declare}%
        }%
      \fi%
      \if@stareddeclare\else%
        #1\IfValueT{#2}{#2}%
      \fi%
    \else%
      \if@deprecated\else%
        \expandafter\IfBooleanF\expandafter{\@MarkupFormat}{%
          \@HyperIndex{#5}{#6}{#7}{#8}{#9}{#4}{declare)}%
        }%
      \fi%
\NewDocumentCommand\@HyperIndex{mmmmmmm}{%
  \IfValueTF{#3}{\def\@tempa{#3}}{\def\@tempa{}}%
  \IfValueTF{#5}{\def\@tempb{#5}}{\def\@tempb{}}%
  \IfValueTF{#7}{\edef\@tempc{|#7}}{\def\@tempc{}}%
  \IfValueTF{#2}{%
    \@getlabel\@templabel{#1:#2:#4}{#6}%
    \@getindex\@idxentry{%
      \begingroup\expandonce\@tempa#4\endgroup\expandonce\@tempb%
    }{#6}%
    \@getindex\@idxkeyentry{%
      \begingroup\expandonce\@tempa#4\endgroup%
      \noexpand\nobreakspace{\idxfont(#2)}%
    }{#6}%
    \ifcsdef{r@\@templabel}{%
      \index[#1]{%
        #2!\hyperidx[\@templabel]{\expandonce\@idxentry}\expandonce\@tempc%
      }%
      \index[keys]{%
        \hyperidx[\@templabel]{\expandonce\@idxkeyentry}\expandonce\@tempc%
      }%
    }{%
      \index[#1]{#2!\expandonce\@idxentry\expandonce\@tempc}%
      \index[keys]{\expandonce\@idxkeyentry\expandonce\@tempc}%
    }%
  }{%
    \@getlabel\@templabel{#1:#4}{#6}%
    \@getindex\@idxentry{%
      \begingroup\expandonce\@tempa#4\endgroup\expandonce\@tempb%
    }{#6}%
    \ifcsdef{r@\@templabel}{%
      \index[#1]{%
        \hyperidx[\@templabel]{\expandonce\@idxentry}\expandonce\@tempc%
      }%
    }{%
      \index[#1]{\expandonce\@idxentry\expandonce\@tempc}%
    }%
  }%
}
\NewDocumentCommand\CrossIndex{smom}{%
  \def\@tempa##1##2##3{%
    \index{%
      \IfBooleanTF{#1}{##3@##3}{##3!"|@}%
      \,\textrightarrow\,%
      \tudhyperref{idx:##2}{\IfValueTF{##1}{##1}{Index der ##3}}|seeidx{##2}%
    }%
  }%
  \forcsvlist{\@tempa{#3}{#4}}{#2}%
}
\newcommand*\SeeRef[2]{%
  \sbox\z@{%
    \let\@idxformat\relax%
    #2%
    \ifx\@idxformat\relax%
      \gdef\@tempa{#2}%
    \else%
      \global\let\@tempa\@idxformat%
    \fi%
  }%
  \index{#1!#2|see{\@tempa}}%
}
\newcommand*\tud@indexprologue{}
\newcommand*\PrintIndex{%
  \begingroup%
    \renewcommand\tud@indexprologue{%
      Die im Folgenden aufgelisteten Schlagworte sollen f\"ur den Umgang mit
      \hologo{LaTeXe} im Allgemeinen sowie dem \TUDScript-Bundle im Speziellen
      sowohl Antworten bei generellen Fragen liefern als auch L\"osungen f\"ur
      typische Probleme bereitstellen. Falls ein gesuchter Begriff hier nicht
      auftaucht oder trotz vorhander Hinweise kein zufriedenstellendes Ergebnis
      erzielt werden kann, sollte das \Forum erster Anlaufpunkt sein, um
      weitere Hilfe bei der Nutzung von \TUDScript zu erhalten.
    }%
    \@printindex%
    \clearpage%
    \renewcommand\tud@indexprologue{%
      Dies ist der Index aller im Handbuch erl\"auterten sowie erw\"ahnten
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
\newcommand*\@printindex[1][]{%
  \pagebreak[3]%
  \@tud@indextrue%
  \ifblank{#1}{%
    \def\tud@reserved{\tudhyperdef*{idx:main}}%
  }{%
    \def\tud@reserved{\tudhyperdef*{idx:#1}}%
  }%
  \ifx\tud@indexprologue\@empty%
    \indexprologue[\@printindexskip]{\tud@reserved}%
  \else%
    \indexprologue{%
      \tud@reserved%
      \tud@indexprologue%
      \@printindexskip%
    }%
  \fi%
  \ifblank{#1}{\printindex}{\printindex[#1]}%
  \let\tud@indexprologue\@empty%
}
\newif\if@changedat
\NewDocumentCommand\@ProcessChangedAt{md()md!!mmm}{%
  \IfValueTF{#4}{%
    \@getlabel\@templabel{#3:#4:#6}{#2}%
  }{%
    \@getlabel\@templabel{#3:#6}{#2}%
  }%
  \IfBooleanTF{#1}{%
    \def\@tempa{\begingroup#5#6\endgroup}%
  }{%
    \def\@tempa{\begingroup#5#6\endgroup\nobreakspace{\idxfont(#7)}}%
  }%
  \ifcsdef{r@\@templabel}{\hyperidx[\@templabel]{\@tempa}}{\@tempa}%
}
\newlength\changedatskip
\NewDocumentCommand\ChangedAt{sO{\changedatskip}mO{Allgemein}}{%
  \tud@ifbundle{\@bundle}{%
    \@ChangedAt@CreateList[#1]{#2}[#4\nobreakspace\@bundle]{#3}%
  }{%
    \@ChangedAt@CreateList[#1]{#2}[#4]{#3}%
  }%
}
\newcommand*\list@ChangedAt{}
\let\list@ChangedAt\relax
\newcommand*\@changedatlist{}
\NewDocumentCommand\@ChangedAt@CreateList{omom}{%
  \let\@changedatlist\relax%
  \let\@templist\relax%
  \@for\@tempa:=#4\do{%
    \ifx\@tempa\@empty\else\ifx\@tempa\space\else%
      \IfValueT{#3}{\preto\@tempa{#3!}}%
      \listeadd{\@changedatlist}{\expandonce\@tempa}%
    \fi\fi%
  }%
  \forlistloop\@ChangedAt@CreateEntry{\@changedatlist}%
}
\newcommand*\@ChangedAt@@CreateList[2]{%
  \IfValueT{#1}{%
    \@for\@tempa:=#1\do{%
      \ifx\@tempa\@empty\else\ifx\@tempa\space\else%
        \preto{\@tempa}{#2!}%
        \expandafter\@ChangedAt@@@CreateList\expandafter{\@tempa}%
      \fi\fi%
    }%
  }%
}
\NewDocumentCommand\@ChangedAt@@@CreateList{>{\SplitArgument{2}{!}}m}{%
  \@ChangedAt@@@@CreateList#1%
}
\newcommand*\@changedatdeclaredefault{\emph{neu}}
\newcommand*\@ChangedAt@@@@CreateList[3]{%
  \in@{*}{#1}%
  \ifin@%
    \tud@ifbundle{\@bundle}{%
      \protected@edef\@tempa{Allgemein\nobreakspace\@bundle!#2}%
    }{%
      \protected@edef\@tempa{Allgemein!#2}%
    }%
  \else%
    \tud@ifbundle{\@bundle}{%
      \protected@edef\@tempa{%
        Implementierung\nobreakspace\@bundle!#2!%
        \IfValueTF{#3}{#3}{\noexpand\@changedatdeclaredefault}!%
        #1(\@bundle)%
      }%
    }{%
      \protected@edef\@tempa{%
        Implementierung!#2!%
        \IfValueTF{#3}{#3}{\noexpand\@changedatdeclaredefault}!#1%
      }%
    }%
  \fi%
  \listeadd\list@ChangedAt{\expandonce\@tempa}%
}
\newcommand*\ChangedAt@Default{}
\NewDocumentCommand\@ChangedAt@CreateEntry{>{\SplitArgument{4}{!}}m}{%
  \@ChangedAt@@CreateEntry#1%
}
\newcommand*\@ChangedAt@@CreateEntry[4]{%
  \IfValueTF{#4}{%
    \begingroup%
      \@onlyPValue%
      \xdef\ChangedAt@Default{#4}%
    \endgroup%
    \ChangedAt@@@Process{#2}{#1}{\ChangedAt@Default: #3}%
  }{%
    \IfValueT{#3}{\ChangedAt@@@Process{#2}{#1}{#3}}%
  }%
  \xifinlist{#2}{\@templist}{}{\listeadd\@templist{#2}}%
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
        \setbox\z@\hbox{#3}%
      \endgroup%
      \index[changelog]{%
        #1\tudhyperdef*{#1}!\tudhyperdef*{#1:#2}#2!\@TempKey\ #3%
      }%
    \else%
      \index[changelog]{%
        #1\tudhyperdef*{#1}!\tudhyperdef*{#1:#2}#2!#3%
      }%
    \fi%
  \endgroup%
}
\newcommand*\PrintChangelog{%
  \begingroup%
    \clearpage%
    \@printindex[changelog]%
  \endgroup%
}
\NewDocumentCommand\@printchangedatlist{mm}{%
  \ifx\list@ChangedAt\relax\else%
    \@ChangedAt@CreateList{#2}{\list@ChangedAt}%
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
\RequirePackage{enumitem}[2011/09/28]
\setlist{noitemsep}
\newcommand*\stditem{}
\newcommand*\before@item[1]{%
  \ifdefvoid{\stditem}{%
    \let\stditem\item%
    \letcs\item{tud@item@#1}%
    \setlength\changedatskip{-\baselineskip}%
  }{}%
}
\newcommand*\tud@values{}
\NewDocumentEnvironment{values}{mo}{%
  \def\tud@values{#1}%
  \IfValueTF{#2}{\@values[#2]}{\@values}%
}{%
  \end@values%
}
\newlist{@values}{description}{1}
\setlist[@values]{%
  topsep=\smallskipamount,labelwidth=\linewidth,labelsep=0pt,%
  font=\normalfont,parsep=\parskip,listparindent=\parindent,%
  before=\before@item{values}%
}
\DeclareListParser*{\forslashlist}{/}%
\NewDocumentCommand\tud@item@values{sood()}{%
  \IfValueTF{#2}{%
    \let\@tempc\@empty%
    \def\tud@reserved##1{%
      \if@tempswa%
        \appto\@tempb{/##1}%
      \else%
        \@tempswatrue%
        \let\@tempb\@empty%
        \def\@tempc{##1}%
      \fi%
    }%
    \@tempswafalse%
    \forslashlist{\tud@reserved}{#2}%
    \edef\@tempa{\expandonce\tud@values}%
    \protected@eappto\@tempa{%
      =\IfBooleanTF{#1}{\noexpand\emph}{\@firstofone}{\@tempc}=%
    }%
    \appto\@tempa{'none'|declare|}%
    \edef\@tempb{%
      \IfBooleanTF{#1}{\noexpand\emph}{\@firstofone}{%
        \noexpand\PValue{\@tempb}%
      }%
    }%
    \IfBooleanTF{#1}{%
      \appto\@tempb{\suffix{S\"aumniswert}}%
    }{%
      \IfValueT{#3}{\appto\@tempb{\suffix{S\"aumniswert f\"ur #3}}}%
    }%
    \IfValueT{#4}{\appto\@tempb{\suffix{#4}}}%
    \@getlabel*\@templabel{\@bundle:\tud@values}=\@tempc=%
    \stditem[\tudhyperdef{\@templabel}\@tempa\@tempb]%
  }{%
    \stditem%
  }%
}
\NewDocumentCommand\itemtrue{sood()}{\item@bool{#1}{true/on/yes}[#2][#3](#4)}
\NewDocumentCommand\itemfalse{sood()}{\item@bool{#1}{false/off/no}[#2][#3](#4)}
\NewDocumentCommand\item@bool{mmr[]r[]r()}{%
  \toks@{\item}%
  \IfBooleanT{#1}{\addto@hook\toks@{*}}%
  \protected@edef\@tempa{#2\IfValueT{#3}{/#3}}%
  \eaddto@hook\toks@{\expandafter[\@tempa]}%
  \IfValueT{#4}{\addto@hook\toks@{[#4]}}%
  \IfValueT{#5}{\addto@hook\toks@{(#5)}}%
  \the\toks@%
}
\newlist{packages}{description}{2}
\setlist[packages]{%
  topsep=\smallskipamount,labelwidth=\linewidth,labelsep=0pt,%
  font=\normalfont,parsep=\parskip,listparindent=\parindent,%
  before=\before@item{packages}%
}
\NewDocumentCommand\tud@item@packages{od<>d()}{%
  \def\@tempa##1{%
    \@tempb%
    \@getlabel*\@templabel{\@bundle:\Package{##1}}%
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
        \@getlabel*\@templabel{\@bundle:\Package{#3}}%
        \quad(\tudhyperdef{\@templabel}\Package{#3}'none'|!|)%
      }%
    }%
  }]%
}
\newlength\tempdim
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
\RequirePackage{tabularx}[1999/01/07]
\NewDocumentCommand\TermTable{smg}{%
  \let\@templist\relax%
  \forcsvlist{\listadd\@templist}{#2}%
  \ifhmode\par\fi%
  \vskip\medskipamount%
  \@afterindentfalse\@afterheading%
  \IfBooleanTF{#1}{%
    \IfValueTF{#3}{\setlength\@tempdima{#3}}{\setlength\@tempdima{\linewidth}}%
    \setlength\@tempdimc{-.7\baselineskip}%
    \begin{tabularx}{\@tempdima}{lXX}\@TermTable\end{tabularx}%
  }{%
    \setlength\@tempdimc{\z@}%
    \begin{tabular}{lll}\@TermTable\end{tabular}%
  }%
  \par\addvspace{\medskipamount}%
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
\newcommand*\Attention[1]{\marginnote{\fbox{Achtung!}}\emph{\trim@spaces{#1}}}
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
\RequirePackage{listings}[2014/03/04]
\lstdefinestyle{tudscr}{%
  basicstyle=\ttfamily\ifdef{\setstretch}{\setstretch{1}}{},%
  keywordstyle=,%
  columns=fullflexible,keepspaces,%
  aboveskip=\smallskipamount,%
  belowskip=\smallskipamount,%
  language=[LaTeX]TeX,%
  texcl,%
}
\lstnewenvironment{Code}[1][]{\lstset{style=tudscr,#1}}{}
\newcommand*\tud@currentHref{}
\BeforeBeginEnvironment{Code}{\global\let\tud@currentHref\@currentHref}
\AfterEndEnvironment{Code}{\global\let\@currentHref\tud@currentHref}
\RequirePackage{filemod}[2011/09/19]
\RequirePackage{ifplatform}[2010/10/22]
\newcommand*\tud@shellescape@wrn{%
  \ClassWarning{tudscrmanual}%
  {%
    You have to recompile this document with\MessageBreak%
    activated shell escape option%
  }%
  \global\let\tud@shellescape@wrn\relax%
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
\RequirePackage{ifpdf}[2011/01/30]
\ifpdf
  \PassOptionsToPackage{obeyFinal}{todonotes}
  \ifdef{\tudprintflag}{%
    \PassOptionsToPackage{color=white}{todonotes}%
  }{%
    \PassOptionsToPackage{colorinlistoftodos,color=HKS92!10}{todonotes}%
  }
  \RequirePackage{todonotes}[2012/07/25]
  \TUDoptions{ToDo=true}
\else
  \TUDoptions{final=true}
\fi
\AfterPackage*{todonotes}{%
  \newcommand*\tud@todo@type@color[2]{%
    \define@boolkey{todonotes}{#1}[true]{%
      \ifdef{\tudprintflag}{}{%
        \ifbool{KV@todonotes@#1}{\setkeys{todonotes}{color=#2}}{}%
      }%
    }%
  }%
  \tud@todo@type@color{doc}{HKS41!30}%
  \tud@todo@type@color{rls}{HKS44!50}%
  \tud@todo@type@color{imp}{HKS57!50}%
  \tud@todo@type@color{urg}{HKS07!50}%
  \tud@todo@type@color{nxt}{HKS92!30}%
  \undef\tud@todo@type@color%
  \NewDocumentCommand\ToDo{somo}{%
    \ifbool{@tud@todo}{%
      \global\let\tud@currentHref\@currentHref%
      \begingroup%
        \let\@tempa\@empty%
        \IfValueT{#4}{%
          \def\@tempa{\@ifnextchar v{\@tempb}{\@tempb v}}%
          \def\@tempb v##1\@nil{\def\@tempc{##1}}%
          \@tempa #4\@nil%
          \ifcsdef{tud@v@\@tempc}{%
            \let\@templist\relax%
            \listeadd\@templist{\@tempc}%
            \expandafter\@tempa\vTUDScript\@nil%
            \listeadd\@templist{\@tempc}%
            \sortlist\@templist
            \def\do##1{%
              \ifstr{##1}{\@tempc}{\let\@tempa\@empty}{\def\@tempa{urg}}%
              \listbreak%
            }%
            \dolistloop{\@templist}%
          }{%
            \def\@tempa##1.##2##3##4\@nil{##1##2##3}%
            \edef\@tempc{\expandafter\@tempa\@tempc.000\@nil}%
            \ifxnumber{\@tempc}{\def\@tempa{nxt}}{\let\@tempa\@empty}%
          }%
        }%
        \IfValueT{#2}{\preto\@tempa{#2,}}%
        \@tempswafalse%
        \ifx\tud@todo@type@pos\relax\@tempswatrue\fi%
        \toks@{\forcsvlist{\@tempb}}%
        \eaddto@hook\toks@{\expandafter{\@tempa}}%
        \let\@tempa\@empty%
        \def\@tempb##1{%
          \eappto\@tempa{##1,}%
          \ifinlist{##1}{\tud@todo@type@pos}{\@tempswatrue}{}%
          \ifinlist{##1}{\tud@todo@type@neg}{\@tempswafalse}{}%
        }%
        \the\toks@%
        \if@tempswa%
          \ifhmode\par\fi%
          \let\par\relax%
          \vskip\medskipamount%
          \noindent%
          \toks@\expandafter{\@tempa inline}%
          \IfBooleanT{#1}{\addto@hook\toks@{,nolist}}%
          \sbox\z@{%
            \expandafter\todo\expandafter[\the\toks@]{\trim@spaces{#3}\strut}%
          }\usebox\z@%
          \renewcommand*\marginpar[2][]{%
            \marginnote[##1]{##2}[\dimexpr-\ht\z@+1.6ex+1.75pt\relax]%
          }%
          \toks@\expandafter{\@tempa noline,nolist}%
          \IfValueTF{#4}{%
            \def\@tempb{\trim@spaces{#4}\strut}%
          }{%
            \def\@tempb{ToDo\strut}%
          }%
          \settowidth\marginparwidth{\@tempb}%
          \addtolength\marginparwidth{\dimexpr1.6ex+1pt\relax}%
          \expandafter\todo\expandafter[\the\toks@]{\@tempb}%
          \aftergroup\par\aftergroup\noindent%
        \fi%
      \endgroup%
      \global\let\@currentHref\tud@currentHref%
    }{}%
    \ignorespaces%
  }%
  \newcommand*\ListOfToDo{\if@tud@todo\clearpage\listoftodos\fi}%
}
\TUD@UnwindPackage{todonotes}{%
  \NewDocumentCommand\ToDo{somo}{}%
  \newcommand*\ListOfToDo{}%
}
\RequirePackage{textcomp}[2005/09/27]
\RequirePackage{setspace}[2011/12/19]
\setstretch{1.1}
\AfterPackage*{inputenc}{\RequirePackage{csquotes}[2011/10/22]}
\TUD@UnwindPackage{csquotes}{%
  \ClassWarning{tudscrmanual}%
    {Package `csquotes' not loaded}%
  \providecommand\enquote[1]{\glqg#1\grqq{}}%
}
\PassOptionsToPackage{vskip=\smallskipamount}{quoting}
\RequirePackage{quoting}[2014/01/28]
\RequirePackage{isodate}[2010/01/03]
\RequirePackage{hologo}[2012/04/26]
\RequirePackage{ragged2e}[2009/05/21]
\RequirePackage{chngcntr}[2009/09/02]
\counterwithout{footnote}{chapter}
\RequirePackage{booktabs}[2005/04/14]
\RequirePackage{tikz}[2013/12/13]
\RequirePackage{pdfpages}[2013/08/25]
\RequirePackage{units}[1998/08/04]
\AtEndPreamble{%
  \RequirePackage{ellipsis}[2004/9/28]%
  \let\ellipsispunctuation\relax%
}
\newcommand*\CD{Corporate Design\xspace}
\newcommand*\CDs{Corporate Designs\xspace}
\newcommand*\TUD{Technische Universit\"at Dresden\xspace}
\newcommand*\TnUD{Technischen Universit\"at Dresden\xspace}
\newcommand*\TUDCD{\CD der \TnUD}
\newcommand*\TUDCDs{\CDs der \TnUD}
\AfterPackage*{babel}{%
  \@expandtwoargs\in@{,english,}{,\bbl@loaded,}%
  \ifin@%
    \renewcommand*\CD{\foreignlanguage{english}{Corporate Design}\xspace}%
    \renewcommand*\CDs{\foreignlanguage{english}{Corporate Designs}\xspace}%
  \fi%
}
\newrobustcmd*\DDC{%
  \mbox{%
    D\kern.05em R\kern.05em E\kern.05em S\kern.05em %
    D\kern.05em E\kern.05em N\kern.1em-\kern.1em concept%
  }\xspace%
}
\newcommand*\Univers{\textubn{Univers}\xspace}
\newcommand*\DIN{\textdbn{DIN~BOLD}\xspace}
\newcommand*\textsbn{}
\newrobustcmd*\sbnfont{\sffamily\bfseries\upshape}
\DeclareTextFontCommand\textsbn{\sbnfont}
\newcommand*\textsbs{}
\newrobustcmd*\sbsfont{\sffamily\bfseries\slshape}
\DeclareTextFontCommand\textsbs{\sbsfont}
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
%% End of file `tudscrmanual.cls'.
