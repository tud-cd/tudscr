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
  \ifx\FamilyKeyState\FamilyKeyStateProcessed\else%
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
\PassOptionsToPackage{log-declarations=false}{xparse}
\RequirePackage{xparse}[2013/12/31]
\newtoks\tud@toks@
\newcommand*\eaddto@hook[2]{%
  \expandafter\addto@hook\expandafter#1\expandafter{#2}%
}
\newcommand*\tud@replace[3]{%
  \begingroup%
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
\newcommand*\@templist{}
\let\@templist\relax%
\newcommand*\sortlist[1]{%
  \ifdefvoid{#1}{%
    \ClassWarning{tudscrman}{%
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
  \ClassWarning{tudscrman}{%
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
\RequirePackage{babel}[2014/03/24]
\AfterPackage*{hyperref}{%
  \patchcmd{\pdfstringdef}{\csname HyPsd@babel@}{%
    \let\bbl@info\@gobble\csname HyPsd@babel@%
  }{}{\tud@patch@wrn{pdfstringdef}}%
}
\AfterPackage*{hyperref}{\RequirePackage[babel]{microtype}[2013/05/23]}
\TUD@UnwindPackage{hyperref}{\RequirePackage[babel]{microtype}[2013/05/23]}
\newif\if@declare
\newif\if@openindex
\newcommand*\tud@declare{0}
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
      \def\tud@declare{1}%
      #3%
      \def\tud@declare{0}%
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
    \ClassError{tudscrman}{\string#2\space is missing}{%
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
    \ClassError{tudscrman}{Nested environment `Bundle'}{%
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
  \def\tud@declare{#3}%
  \@declaretrue\@openindextrue#2\@declarefalse%
  \def\tud@declare{0}%
}
\newcommand*\tud@declare@special@end[1]{%
  \ifx\list@ChangedAt\relax\else%
    \ClassError{tudscrman}{\string\printchangedatlist\space is missing}{%
      \string\list@ChangedAt\space is not empty. Did you\MessageBreak%
      forget to print this list with \string\printchangedatlist?%
    }%
  \fi%
  \@declaretrue\@openindexfalse#1\@declarefalse%
}
\newskip\tud@lastskip
\pretocmd\index{\tud@lastskip=\lastskip}{}{\tud@patch@wrn{index}}
\pretocmd\label{\tud@lastskip=\lastskip}{}{\tud@patch@wrn{label}}
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
\newcommand*\pdfexpandableoutline[1]{%
  \AfterPackage*{hyperref}{\pdfstringdefDisableCommands{\csletcs{#1}{@#1}}}%
}
\NewExpandableDocumentCommand\@Application{sm}{#2}
\NewDocumentCommand\Application{smd||}{%
  \ifdin{#2}{%
    \mbox{\textsbs{#2}}%
    \CheckIndexFormat{#1}{#3}%
    \IfBooleanF{#1}{%
      \index{%
        \textsbs{#2}\nobreakspace{\idxfont(Anwendungssoftware)}%
        \IfValueT{#3}{|#3}%
      }%
    }%
  }%
}
\NewExpandableDocumentCommand\@Distribution{sm}{#2}
\NewDocumentCommand\Distribution{smod||}{%
  \ifdin{#2\IfValueT{#3}{\nobreakspace#3}}{%
    \mbox{\textsbn{#2\IfValueT{#3}{\nobreakspace#3}}}%
    \CheckIndexFormat{#1}{#4}%
    \IfBooleanF{#1}{%
      \index{%
        \textsbn{#2}\nobreakspace{\idxfont(Distribution)}%
        \IfValueT{#4}{|#4}%
      }%
    }%
  }%
}
\NewExpandableDocumentCommand\@File{sm}{#2}
\NewDocumentCommand\File{smd||}{%
  \ifdin{#2}{%
    \mbox{\textsbn{#2}}%
    \CheckIndexFormat{#1}{#3}%
    \IfBooleanF{#1}{%
      \index[files]{%
        \textsbn{#2}\nobreakspace{\idxfont(Datei)}%
        \IfValueT{#3}{|#3}%
      }%
    }%
  }%
}
\NewExpandableDocumentCommand\@Class{sm}{#2}
\NewDocumentCommand\Class{smd''d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{files}{\protect\sbnfont}{#2}{Klasse}%
  \else%
    \ifdin{#2}{%
      \SetIndexFormat{#1}{#4}%
      \@ProcessOutput{\textsbn{#2}}'#3'%
        {files}[\protect\sbnfont]{#2}[\nobreakspace{\idxfont(Klasse)}]%
    }%
  \fi%
}
\NewExpandableDocumentCommand\@Package{sm}{#2}
\newcommand*\@CTANLink{}
\let\@CTANLink\relax
\NewDocumentCommand\Package{smd''d<>d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}{files}{\protect\sbnfont}{#2}{Paket}%
  \else%
    \ifdin{#2}{%
      \IfValueTF{#4}{%
        \ifstr{#4}{}{\let\@CTANLink\relax}{\def\@CTANLink{pkg/#4}}%
      }{\def\@CTANLink{pkg/#2}}%
      \SetIndexFormat{#1}{#5}%
      \@ProcessOutput{\textsbn{#2}}'#3'%
        {files}[\protect\sbnfont]{#2}[\nobreakspace{\idxfont(Paket)}]%
    }%
  \fi%
}
\NewExpandableDocumentCommand\@Option{sm}{#2}
\NewDocumentCommand\Option{smod''D(){\@bundle}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#5){options}{\ttfamily}{#2}{Option}%
  \else%
    \IfValueTF{#3}{\gdef\@TempOption{\texttt{=#3}}}{\gdef\@TempOption{}}%
    \SetIndexFormat{#1}{#6}%
    \@ProcessOutput{\texttt{#2}}[\@TempOption]'#4'(#5){options}[\ttfamily]{#2}%
  \fi%
}
\NewExpandableDocumentCommand\@Environment{sm}{#2}
\NewDocumentCommand\Environment{smod''D(){\@bundle}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#5){macros}{\ttfamily}{#2}{Umgebung}%
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
    \SetIndexFormat{#1}{#6}%
    \@ProcessOutput{\@TempEnvironment}'#4'(#5){macros}[\ttfamily]{#2}%
  \fi%
}
\NewExpandableDocumentCommand\@Macro{sm}{#2}
\NewDocumentCommand\Macro{smd''D(){\@bundle}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#4){macros}{\ttfamily\bsc}{#2}{Befehl}%
  \else%
    \SetIndexFormat{#1}{#5}%
    \@ProcessOutput{\texttt{\bsc#2}}'#3'(#4){macros}[\ttfamily\bsc]{#2}%
  \fi%
}
\NewExpandableDocumentCommand\@Key{smm}{#3}
\NewDocumentCommand\Key{smmod''D(){\@bundle}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#6){macros}!#2!{\ttfamily}{#3}{Parameter}%
  \else%
    \IfValueTF{#4}{%
      \gdef\@TempKey{%
        \texttt{=#4}\if@declare\nobreakspace{\idxfont(Parameter)}\fi%
      }%
    }{%
      \gdef\@TempKey{\if@declare\nobreakspace{\idxfont(Parameter)}\fi}%
    }%
    \SetIndexFormat{#1}{#7}%
    \@ProcessOutput{\texttt{#3}}[\@TempKey]'#5'(#6)%
      {macros}!#2![\ttfamily]{#3}[\nobreakspace{\idxfont(Parameter)}]%
  \fi%
}
\NewExpandableDocumentCommand\@Term{sm}{#2}
\NewDocumentCommand\Term{smd''D(){\@bundle}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#4){terms}{\ttfamily\bsc}{#2}{Bezeichner}%
  \else%
    \SetIndexFormat{#1}{#5}%
    \@ProcessOutput{\texttt{\bsc#2}}[%
      \if@declare\nobreakspace{\idxfont(Bezeichner)}\fi%
    ]'#3'(#4){terms}[\ttfamily\bsc]{#2}%
  \fi%
}
\NewExpandableDocumentCommand\@PageStyle{sm}{#2}
\NewDocumentCommand\PageStyle{smd''D(){\@bundle}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#4){macros}{\ttfamily}{#2}{Seitenstil}%
  \else%
    \SetIndexFormat{#1}{#5}%
    \@ProcessOutput{\texttt{#2}}[%
      \if@declare\nobreakspace{\idxfont(Seitenstil)}\fi%
    ]'#3'(#4){macros}[\ttfamily]{#2}[\nobreakspace{\idxfont(Seitenstil)}]%
  \fi%
}
\NewExpandableDocumentCommand\@Font{sm}{#2}
\NewDocumentCommand\Font{smd''D(){\@bundle}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#4){fonts}{\ttfamily}{#2}{Schriftelement}%
  \else%
    \SetIndexFormat{#1}{#5}%
    \@ProcessOutput{\texttt{#2}}[%
      \if@declare\nobreakspace{\idxfont(Schriftelement)}\fi%
    ]'#3'(#4){fonts}[\ttfamily]{#2}%
  \fi%
}
\NewExpandableDocumentCommand\@Color{sm}{#2}
\NewDocumentCommand\Color{smod''D(){\@bundle}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#5){colors}{\ttfamily}{#2}{Farbe}%
  \else%
    \SetIndexFormat{#1}{#6}%
    \@ProcessOutput{\texttt{#2}}[%
      \IfValueT{#3}{\nobreakspace\texttt{(#3)}}%
      \if@declare\nobreakspace{\idxfont(Farbe)}\fi%
    ]'#4'(#5){colors}[\ttfamily]{#2}%
  \fi%
}
\NewExpandableDocumentCommand\@Length{sm}{#2}
\NewDocumentCommand\Length{smd''D(){\@bundle}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#4){macros}{\ttfamily\bsc}{#2}{L\"ange}%
  \else%
    \SetIndexFormat{#1}{#5}%
    \@ProcessOutput{\texttt{\bsc#2}}[%
      \if@declare\nobreakspace{\idxfont(L\"ange)}\fi%
    ]'#3'(#4){macros}[\ttfamily\bsc]{#2}[\nobreakspace{\idxfont(L\"ange)}]%
  \fi%
}
\NewExpandableDocumentCommand\@Counter{sm}{#2}
\NewDocumentCommand\Counter{smd''D(){\@bundle}d||}{%
  \if@changelog%
    \@ProcessChangedAt{#1}(#4){macros}{\ttfamily}{#2}{Z\"ahler}%
  \else%
    \SetIndexFormat{#1}{#5}%
    \@ProcessOutput{\texttt{#2}}[%
      \if@declare\nobreakspace{\idxfont(Z\"ahler)}\fi%
    ]'#3'(#4){macros}[\ttfamily]{#2}[\nobreakspace{\idxfont(Z\"ahler)}]%
  \fi%
}
\newcommand*\@TUDScript{TUD-KOMA-Script}
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
\newcommand*\@onlyPValue{%
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
\makexindyindex*{Klassen- und Paketoptionen}[options]
\makexindyindex*{Befehle und Umgebungen mit dazugeh\"origen Parametern}[macros]
\makexindyindex{Sprachabh\"angige Bezeichner}[terms]
\makexindyindex{Seitenstile, Schriftelemente und Farben}[fonts]
\makexindyindex{L\"angen und Z\"ahler}[misc]
\makexindyindex*{Klassen, Pakete und Dateien}[files]
\makexindyindex{\"Anderungsliste}[changelog,columns=1]
\undef\makexindyindex
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
\newcommand*\@templabel{}
\newcommand*\@createlabel[3]{%
  \begingroup%
    \let\Class\@firstofone%
    \let\Package\@firstofone%
    \let\Environment\@firstofone%
    \let\Macro\@firstofone%
    \let\texttt\@firstofone%
    \let\textsbn\@firstofone%
    \let\textsbs\@firstofone%
    \tud@ifbundle{#3}{%
      \edef\@tempa{%
        \noexpand\endgroup%
        \noexpand\edef\noexpand#1{#3:#2}%
      }%
    }{%
      \edef\@tempa{%
        \noexpand\endgroup%
        \noexpand\edef\noexpand#1{#2}%
      }%
    }%
  \@tempa%
}
\NewDocumentCommand\@ProcessOutput{mod''d()md!!omo}{%
  \IfValueTF{#6}{%
    \@createlabel\@templabel{#5:#6:#8}{#4}%
  }{%
    \@createlabel\@templabel{#5:#8}{#4}%
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
      \if@deprecated%
        \expandafter\IfBooleanF\expandafter{\@IndexFormat}{%
          \tudhyperdef{\@templabel}%
        }%
      \else%
        \expandafter\IfBooleanTF\expandafter{\@IndexFormat}{%
          \tudhyperdef{\@templabel}%
        }{%
          \ifx\@IndexFormat\@empty\else%
            \ClassWarning{tudscrman}{%
              It is not possible to use any indexing format\MessageBreak%
              like |\@IndexFormat| within the arguments of the\MessageBreak%
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
        \expandafter\IfBooleanF\expandafter{\@IndexFormat}{%
          \@HyperIndex{#5}{#6}{#7}{#8}{#9}{#4}{declare)}%
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
        \@HyperIndex{#5}{#6}{#7}{#8}{#9}{#4}{\@IndexFormat}%
      }%
    \fi%
    \ifcsdef{r@\@templabel}{%
      \def\@tempa{%
        \mbox{\hyperref{}{\jobname}{\@templabel}{#1}\IfValueT{#2}{#2}}%
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
          \def\@tempa{\mbox{#1\IfValueT{#2}{#2}}}%
          \let\@tempb\relax%
        }{}%
      }%
      \@tempa\@tempb%
    }{%
      \def\@tempa{\mbox{#1\IfValueT{#2}{#2}}}%
      \IfValueTF{#3}{%
        \def\@tempb##1{\ClassWarning{tudscrman}{##1}}%
      }{%
        \def\@tempb##1{\ClassInfo{tudscrman}{##1}}%
      }%
      \@tempb{%
        No cross-reference created, label \@templabel\MessageBreak%
        is missing%
      }%
      \ifx\@CTANLink\relax%
        \@tempa%
      \else%
        \href{http://www.ctan.org/\@CTANLink}{\@tempa}%
      \fi%
    }%
  \fi%
  \let\@IndexFormat\relax%
  \let\@CTANLink\relax%
}
\newrobustcmd*\hyperidx[2][]{\tudhyperref{#1}{#2}}
\newcommand*\@tempentry{}
\newcommand*\@tempkeyentry{}
\newcommand*\@createentry[3]{%
  \tud@ifbundle{#3}{%
    \edef#1{#2\noexpand\nobreakspace{\idxfont(#3)}}%
  }{%
    \edef#1{#2}%
  }%
}
\NewDocumentCommand\@HyperIndex{mmmmmmm}{%
  \IfValueTF{#3}{\def\@tempa{#3}}{\def\@tempa{}}%
  \IfValueTF{#5}{\def\@tempb{#5}}{\def\@tempb{}}%
  \IfValueTF{#7}{\edef\@tempc{|#7}}{\def\@tempc{}}%
  \IfValueTF{#2}{%
    \@createlabel\@templabel{#1:#2:#4}{#6}%
    \@createentry\@tempentry{%
      \begingroup\expandonce\@tempa#4\endgroup\expandonce\@tempb%
    }{#6}%
    \@createentry\@tempkeyentry{%
      \begingroup\expandonce\@tempa#4\endgroup%
      \noexpand\nobreakspace{\idxfont(#2)}%
    }{#6}%
    \ifcsdef{r@\@templabel}{%
      \index[#1]{%
        #2!\hyperidx[\@templabel]{\expandonce\@tempentry}\expandonce\@tempc%
      }%
      \index[keys]{%
        \hyperidx[\@templabel]{\expandonce\@tempkeyentry}\expandonce\@tempc%
      }%
    }{%
      \index[#1]{#2!\expandonce\@tempentry\expandonce\@tempc}%
      \index[keys]{\expandonce\@tempkeyentry\expandonce\@tempc}%
    }%
  }{%
    \@createlabel\@templabel{#1:#4}{#6}%
    \@createentry\@tempentry{%
      \begingroup\expandonce\@tempa#4\endgroup\expandonce\@tempb%
    }{#6}%
    \ifcsdef{r@\@templabel}{%
      \index[#1]{%
        \hyperidx[\@templabel]{\expandonce\@tempentry}\expandonce\@tempc%
      }%
    }{%
      \index[#1]{\expandonce\@tempentry\expandonce\@tempc}%
    }%
  }%
}
\NewDocumentCommand\@ProcessChangedAt{md()md!!mmm}{%
  \IfValueTF{#4}{%
    \@createlabel\@templabel{#3:#4:#6}{#2}%
  }{%
    \@createlabel\@templabel{#3:#6}{#2}%
  }%
  \IfBooleanTF{#1}{%
    \def\@tempa{\begingroup#5#6\endgroup}%
  }{%
    \def\@tempa{\begingroup#5#6\endgroup\nobreakspace{\idxfont(#7)}}%
  }%
  \ifcsdef{r@\@templabel}{\hyperidx[\@templabel]{\@tempa}}{\@tempa}%
}
\newcommand*\list@ChangedAt{}
\let\list@ChangedAt\relax
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
\NewDocumentCommand\printchangedatlist{sO{\z@}}{%
  \ifx\list@ChangedAt\relax\else%
    \if@deprecated%
      \ChangedAt@Process[#1]{#2}{\list@ChangedAt}%
    \else%
      \ChangedAt@Process{#2}{\list@ChangedAt}%
    \fi%
    \global\let\list@ChangedAt\relax%
    \IfBooleanF{#1}{%
      \par\nobreak\vskip\dimexpr-\parskip-\baselineskip\relax%
      \@afterindentfalse\@afterheading%
    }%
  \fi%
}
\newlength\changedatskip
\NewDocumentCommand\ChangedAt{sO{\changedatskip}mO{Allgemein}}{%
  \tud@ifbundle{\@bundle}{%
    \ChangedAt@Process[#1]{#2}[#4\nobreakspace\@bundle]{#3}%
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
        \ignorespaces\tudhyperref{####1}{####1}\tabularnewline%
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
      \@onlyPValue%
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
\NewDocumentCommand\Replace{ommm}{%
  \@for\@tempa:={,#4}\do{%
    \ifx\@tempa\@empty\else\ifx\@tempa\space\else%
      \protected@edef\@tempb{%
        Implementierung!#2!\emph{entf\"allt}|see{#3}!\@tempa%
      }%
      \expandafter\listadd\expandafter\list@ChangedAt\expandafter{%
        \@tempb%
      }%
      \IfValueT{#1}{\index[#1]{\@tempa|see{#3}}}%
    \fi\fi%
  }%
}
\RequirePackage{tabularx}[1999/01/07]
\newcommand\@termlist{}
\let\@termlist\relax
\NewDocumentCommand\TermTable{smg}{%
  \forcsvlist{\listadd\@termlist}{#2}%
  \ifvmode\else\par\fi%
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
  \let\@termlist\relax%
  \par\addvspace{\medskipamount}%
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
\RequirePackage{enumitem}[2011/09/28]
\setlist{noitemsep}
\newlist{values}{description}{1}
\setlist[values]{%
  topsep=\smallskipamount,labelwidth=\columnwidth,labelsep=0pt,%
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
      \appto\tud@item@add{\nobreakspace#1}%
    \fi%
  }%
  \itemvalues[%
    \tud@item@format{\@tempa:}%
    \ifx\tud@item@add\relax\else%
      {\normalfont\space\footnotesize\tud@item@add}%
    \fi%
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
    \setlength\changedatskip{-\baselineskip}%
  }{}%
}
\NewDocumentCommand\tud@item@pkg{od<>d()}{%
  \itempackages[{%
    \IfValueT{#1}{%
      \let\@tempb\relax%
      \@for\@tempa:=#1\do{%
        \ifx\@tempa\@empty\else\ifx\@tempa\space\else%
          \@tempb%
          \tudhyperdef{files:\@tempa}%
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
          \tudhyperdef{files:\@tempa}%
          \expandafter\Package\expandafter{\@tempa}'none'|!|%
          \def\@tempb{, }%
        }%
        )%
      }%
    }%
  }]%
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
\RequirePackage{filemod}[2011/09/19]
\RequirePackage{ifplatform}[2010/10/22]
\newcommand*\tud@shellescape@wrn{%
  \ClassWarning%
  {tudscrman}{%
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
    \index[files]{%
      \hypertut{#2}{\nobreakspace{\idxfont(Tutorial)}}\IfValueT{#3}{|#3}%
    }%
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
\PassOptionsToPackage{quiet}{marginnote}
\RequirePackage{marginnote}[2012/03/29]
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
\newcommand*\ListOfToDo{\if@tud@todo\clearpage\listoftodos\fi}
\reversemarginpar
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
  F\"ur die Klasse \Class{tudscrartcl} ist diese Option nicht verf\"ugbar.
}
\newlength\tempdim
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
      \indexprologue[\@printindexskip]{\tudhyperdef'{idx:main}}%
    \else%
      \indexprologue{%
        \tudhyperdef'{idx:main}%
        \@printindexprologue%
      }%
    \fi%
    \printindex\@printindexskip%
    \let\@printindexprologue\@empty%
  }{%
    \indexprologue[\@printindexskip]{\tudhyperdef'{idx:#1}}%
    \printindex[#1]\@printindexskip%
  }%
}
\newcommand*\seeidx[2]{\pageref{idx:#1}}
\NewDocumentCommand\CrossIndex{mom}{%
  \def\@tempa##1##2##3{%
    \index{%
      ##3!\textrightarrow{}\space%
      \tudhyperref{idx:##1}{Index der \IfValueTF{##2}{##2}{##3}}|seeidx{##1}%
    }%
  }%
  \forcsvlist{\@tempa{#1}{#2}}{#3}%
}
\newcommand*\hyperpagedeprecated{}
\newif\if@changelog
\NewDocumentCommand\Changelog{m}{%
  \def\@tempa##1{%
    \index{%
      ##1!\textrightarrow{}\space%
      \tudhyperref{idx:changelog}{\"Anderungsliste}|seeidx{changelog}%
    }%
  }%
  \forcsvlist\@tempa{#1}%
}
\newcommand*\PrintChangelog{%
  \begingroup%
    \let\lettergroup\@gobble%
    \@changelogtrue%
    \let\hyperpagedeprecated\hyperpage%
    \preto\item{\let\hyperpagedeprecated\hyperpage}%
    \preto\subitem{\let\hyperpagedeprecated\hyperpage}%
    \preto\subsubitem{\let\hyperpagedeprecated\hyperpage}%
    \@printindex[changelog]%
  \endgroup%
}
\renewrobustcmd*\see[2]{%
  \ifstr{#1}{*}%
    {\emph{\seename}\nobreakspace#2}%
    {\emph{\seename}\nobreakspace#1}%
  \if@changelog\let\hyperpagedeprecated\@gobble\fi%
}
\renewrobustcmd*\seealso[2]{%
  \ifstr{#1}{*}%
    {\emph{\alsoname}\nobreakspace#2}%
    {\emph{\alsoname}\nobreakspace#1}%
}
\RequirePackage{textcomp}[2005/09/27]
\RequirePackage{setspace}[2011/12/19]
\setstretch{1.1}
\AfterPackage*{inputenc}{\RequirePackage{csquotes}[2011/10/22]}
\TUD@UnwindPackage{csquotes}{%
  \ClassWarning%
    {tudscrman}{Package `csquotes' not loaded}%
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
\newrobustcmd*\DDC%
{%
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
%% End of file `tudscrman.cls'.
