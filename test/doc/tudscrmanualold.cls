%%
%% This is file `tudscrmanual.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tudscr-version.dtx  (with options: `class,manual,identify,inherit')
%% tudscr-manual.dtx  (with options: `class,manual')
%% tudscr-base.dtx  (with options: `class,manual,inherit,load')
%% tudscr-manual.dtx  (with options: `class,manual,option')
%% tudscr-misc.dtx  (with options: `class,manual,inherit,execute')
%% tudscr-manual.dtx  (with options: `class,manual,body')
%% tudscr-fields.dtx  (with options: `class,manual,body')
%% tudscr-localization.dtx  (with options: `class,manual,body')
%% tudscr-texindy.dtx  (with options: `class,manual')
%% 
%% TUD-Script -- Corporate Design of Technische Universitaet Dresden
%% 
%%   2019/09/26 v2.06e TUD-Script
%% 
%% Copyright (C) Falk Hanisch <hanisch.latex@outlook.com>, 2012-2019
%% 
%% This file was generated from file(s) of the TUD-Script bundle.
%% ----------------------------------------------------------------------------
%% 
%% This work may be distributed and/or modified under the conditions
%% of the LaTeX Project Public License, version 1.3c of the license.
%% The latest version of this license is in
%%     http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of
%% LaTeX 2005/12/01 or later and of this work.
%% 
%% This work has the LPPL maintenance status "author-maintained".
%% 
%% The current maintainer and author of this work is Falk Hanisch.
%% 
%%% From File: tudscr-version.dtx
\NeedsTeXFormat{LaTeX2e}
\begingroup
  \catcode`\@11\relax%
  \ifx\TUD@Version\@undefined%
    \newcommand*\TUD@Version@Check[2]{%
      \gdef\TUD@Version{#1}%
      \gdef\TUD@KOMAVersion{#2}%
    }%
  \else%
    \newcommand*\TUD@Version@Check[2]{%
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
  \TUD@Version@Check%
    {2019/09/26 v2.06e TUD-Script}%
    {2018/03/30 v3.25 KOMA-Script}%
  \ifx\TUDScriptVersion\@undefined%
    \xdef\TUDScriptVersion{\TUD@Version}%
    \def\@tempa#1 v#2 #3\relax#4\relax#5{\gdef#5{#2}}%
    \expandafter\@tempa\TUD@Version ? ?\relax\relax{\TUDScriptVersionNumber}%
    \expandafter\@tempa\TUD@KOMAVersion ? ?\relax\relax{\TUD@KOMAVersionNumber}%
  \fi%
\endgroup
\@ifundefined{TUDScript}{%
  \DeclareRobustCommand\TUDScript{%
    \textsf{%
      T\kern.05em U\kern.05em D\kern.1em-\kern.1em Script%
    }%
    \ifcsname xspace\endcsname\xspace\fi%
  }%
}{}
\providecommand*\TUDScriptContact{hanisch.latex@outlook.com}
\newcommand*\TUD@ProvidesWrapperClass[3]
{%
  \ProvidesClass{#1}[%
  2019/09/26 v2.06e TUD-Script
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
  \typeout{| Repository: https://github.com/tud-cd/tudscr}%
  \typeout{| Forum:      https://latex.wcms-file3.tu-dresden.de}%
  \typeout{+------------------------------------------------------------------}%
}
\TUD@ProvidesWrapperClass{tudscrmanual}{tudscrreprt}{manual class}
%%% From File: tudscr-manual.dtx
%%% From File: tudscr-base.dtx
\RequirePackage{tudscrbase}[%
  2019/09/26 v2.06e TUD-Script
]
\renewcommand*\TUD@KOMAoptions[1]{\PassOptionsToClass{#1}{\TUD@Class@Parent}}
\AfterClass{\TUD@Class@Parent}{\let\TUD@KOMAoptions\KOMAoptions}
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
    \TUD@key{ToDo}{\FamilyKeyStateProcessed}%
  }{%
    \KOMAoptions{overfullrule}%
  }%
  \ifdef{\tudprintflag}{%
    \ifnum\tud@cd@num>\z@\relax%
      \TUDoptions{cd=true}%
    \fi%
    \TUD@key{cd}{\FamilyKeyStateProcessed}%
    \ifundef{\hypersetup}{}{\hypersetup{hidelinks}}%
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
}{\TUD@Class@Parent}
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
\TUDExecuteOptions{ToDo=true}
%%% From File: tudscr-misc.dtx
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\TUD@Class@Parent}}
\TUDProcessOptions\relax
\PassOptionsToClass{ttfont=roboto}{\TUD@Class@Parent}
\LoadClass{\TUD@Class@Parent}[
  2019/09/26 v2.06e TUD-Script
]
%%% From File: tudscr-manual.dtx
\PassOptionsToPackage{log-declarations=false}{xparse}
\RequirePackage{xparse}[2013/12/31]
\RequirePackage{scrhack}[%
  2018/03/30 v3.25 KOMA-Script
]
\RequirePackage{babel}[2014/03/24]
\PassOptionsToPackage{quiet}{marginnote}
\RequirePackage{marginnote}[2012/03/29]
\reversemarginpar
\RequirePackage{xspace}[2009/10/20]
\xspaceaddexceptions{"=}
\@ifpackagelater{geometry}{2018/04/17}{%
  \ClassWarning{\TUD@Class@Name}{%
    Package `geometry' was updated so some patches\MessageBreak%
    are maybe outdated%
  }%
}{}%
\newcommand*\vTUDScript{v\TUDScriptVersionNumber}
\newcommand*\vKOMAScript{v\TUD@KOMAVersionNumber}
\newcommand*\tud@english[1]{#1}
\AtBeginDocument{%
  \iflanguageloaded{english}{%
    \renewcommand*\tud@english[1]{\foreignlanguage{english}{#1}}%
  }{}%
}
\RequirePackage{shellesc}[2016/06/07]
\RequirePackage{pdftexcmds}[2016/05/21]
\newif\if@tud@list@sorted
\newcommand*\tud@list@sorted{}
\newcommand*\tud@list@sort[1]{%
  \ifdefvoid{#1}{%
    \ClassWarning{tudscrmanual}{%
      The given list \string#1\space\MessageBreak%
      is empty, nothing to sort here%
    }%
  }{%
    \begingroup%
      \let\tud@list@sorted\@empty%
      \forlistloop\tud@list@@sort{#1}%
      \edef\tud@res@c{%
        \endgroup%
        \def\noexpand#1{\expandonce\tud@list@sorted}%
      }%
    \tud@res@c%
  }%
}
\newcommand*\tud@list@@sort[1]{%
  \@tud@list@sortedfalse%
  \let\tud@res@a\@empty%
  \def\tud@res@b##1{%
    \if@tud@list@sorted%
      \listadd\tud@res@a{##1}%
    \else%
      \ifnum\pdf@strcmp{#1}{##1}<\z@\relax%
        \listadd\tud@res@a{#1}%
        \listadd\tud@res@a{##1}%
        \@tud@list@sortedtrue%
      \else%
        \listadd\tud@res@a{##1}%
      \fi%
    \fi%
  }%
  \forlistloop\tud@res@b{\tud@list@sorted}%
  \if@tud@list@sorted\else%
    \listadd\tud@res@a{#1}%
  \fi%
  \let\tud@list@sorted\tud@res@a%
}
\newcommand*\tud@templist{}
\let\tud@templist\relax
\newcommand*\tud@trace@lbl@types{}
\listadd\tud@trace@lbl@types{created}%
\listadd\tud@trace@lbl@types{matched}%
\listadd\tud@trace@lbl@types{unused}%
\listadd\tud@trace@lbl@types{ignored}%
\listadd\tud@trace@lbl@types{missing}%
\listadd\tud@trace@lbl@types{url}%
\def\tud@res@a#1{%
  \expandafter\newcommand\csname tud@trace@lbl@#1@list\endcsname{}%
  \expandafter\newcommand\csname tud@trace@lbl@#1@add\endcsname[1]{}%
}
\forlistloop{\tud@res@a}{\tud@trace@lbl@types}%
\NewDocumentCommand\tracinglabels{!s !O{missing}}{%
  \let\tud@res@b\@empty%
  \let\tud@res@c\@empty%
  \@for\tud@res@a:=#2\do{\listeadd\tud@res@b{\tud@res@a}}%
  \ifinlist{all}{\tud@res@b}{%
    \let\tud@res@c\tud@trace@lbl@types%
  }{%
    \def\tud@res@a##1{\xifinlist{##1}{\tud@res@b}{\listeadd\tud@res@c{##1}}{}}%
    \forlistloop{\tud@res@a}{\tud@trace@lbl@types}%
  }%
  \def\tud@res@a##1{%
    \csdef{tud@trace@lbl@##1@add}####1{\tud@trace@lbl@add{##1}{####1}}%
    \IfBooleanF{#1}{%
      \appto\tud@trace@lbl@wlog{%
        \ifcsvoid{tud@trace@lbl@##1@list}{%
          \wlog{+++++ no labels ##1 +++++}%
        }{%
          \wlog{+++++ labels ##1 (sorted) +++++}%
          \expandafter\tud@list@sort\csname tud@trace@lbl@##1@list\endcsname%
          \let\tud@res@b\@empty%
          \def\tud@res@a####1{\appto\tud@res@b{####1^^J}}%
          \forlistcsloop\tud@res@a{tud@trace@lbl@##1@list}%
          \wlog{\tud@res@b}%
        }%
      }%
    }%
  }%
  \def\tud@trace@lbl@wlog{\relax}%
  \forlistloop{\tud@res@a}{\tud@res@c}%
}
\@onlypreamble\tracinglabels
\newcommand*\tud@trace@lbl@add[2]{%
  \if@tud@index\else%
    \begingroup%
      \edef\tud@res@a{#2}%
      \@onelevel@sanitize\tud@res@a%
      \wlog{+++++ label #1: \tud@res@a\space on page \thepage}%
      \xifinlistcs{\tud@res@a}{tud@trace@lbl@#1@list}{}{%
        \listcsxadd{tud@trace@lbl@#1@list}{\tud@res@a}%
      }%
    \endgroup%
  \fi%
}
\newcommand*\tud@trace@lbl@wlog{\relax}
\AfterEndDocument{\tud@trace@lbl@wlog}
\newcommand*\tud@trace@markup[2]{}
\newcommand*\tracingmarkup{%
  \renewcommand*\tud@trace@markup[2]{%
    \wlog{+++++ markup ##1 on page \thepage^^J##2}%
  }%
}
\@onlypreamble\tracingmarkup
\newcommand*\tud@trace@bdl@add[1]{}
\newcommand*\tud@trace@bdl@list{}
\newcommand*\tracingbundle{%
  \renewcommand*\tud@trace@bdl@add[1]{%
    \begingroup%
      \def\Class####1{class:####1}%
      \def\Package####1{package:####1}%
      \xifinlist{##1}{\tud@trace@bdl@list}{}{%
        \listxadd\tud@trace@bdl@list{##1}%
      }%
    \endgroup%
  }%
  \AfterEndDocument{%
    \wlog{+++++ bundle list +++++}%
    \tud@list@sort\tud@trace@bdl@list%
    \forlistloop\wlog{\tud@trace@bdl@list}%
  }%
}
\@onlypreamble\tracingbundle
\PassOptionsToPackage{hyperindex=false,colorlinks,linkcolor=blue}{hyperref}
\PassOptionsToPackage{open,openlevel=0}{bookmark}
\AfterPackage*{hyperref}{%
  \renewcaptionname{ngerman}{\sectionautorefname}{Unterkapitel}%
  \renewcaptionname{ngerman}{\subsectionautorefname}{Abschnitt}%
  \renewcaptionname{ngerman}{\subsubsectionautorefname}{Unterabschnitt}%
  \newcommand*\autorefname[1][current]{%
    \ifstr{#1}{current}{%
      \expandafter\HyPsd@@autorefname\@currentHref\@nil%
    }{%
      \auto@refname\HyPsd@@autorefname{#1}%
    }%
    \unskip\xspace%
  }%
  \newcommand*\auto@refname[2]{%
    \expandafter\ifx\csname r@#2\endcsname\relax%
      ??%
    \else%
      \expandafter\expandafter\expandafter\auto@@refname%
          \csname r@#2\endcsname{}{}{}{}\@nil#1\@nil%
    \fi%
  }%
  \newcommand*\auto@@refname{}%
  \def\auto@@refname#1#2#3#4#5\@nil#6\@nil{#6#4.\@nil}%
}
\TUD@UnwindPackage{hyperref}{%
  \ClassWarningNoLine{tudscrmanual}%
  {%
    It is strongly recommended to load package `hyperref'. \MessageBreak%
    Nevertheless, essential commands are rudimentarily\MessageBreak%
    defined. At least the package `url' is loaded%
  }%
  \providecommand*\hypersetup[1]{}%
  \providecommand*\href[3][]{#3}%
  \providecommand*\phantomsection{}%
  \providecommand*\texorpdfstring[2]{#1}%
  \RequirePackage{url}[2013/09/16]%
  \providecommand*\nolinkurl[1]{\url{#1}}%
  \providecommand*\hyperpage[1]{#1}%
  \providecommand*\autoref{??\xspace\kernel@ifstar{\ref}{\ref}}%
  \providecommand*\autorefname[1][]{??\xspace}%
  \providecommand*\hyperdef[3]{\label{#1.#2}#3}%
  \providerobustcmd*\hyperref{%
    \kernel@ifnextchar[{\tud@hyperref@a}{\tud@hyperref@b}%
  }%
  \newcommand*\tud@hyperref@a[2][]{#2}%
  \newcommand*\tud@hyperref@b[4]{#4}%
  \providecommand\Hy@raisedlink[1]{#1}%
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
\newcommand*\tud@manualname{tudscr}%
\NewDocumentCommand\tudhyperdef{s t' m}{%
  \@tempswafalse%
  \IfBooleanT{#1}{\@tempswatrue\setlength\@tempdima{3\baselineskip}}%
  \IfBooleanT{#2}{\@tempswatrue\setlength\@tempdima{15\baselineskip}}%
  \if@tempswa%
    \raisebox{\@tempdima}[0pt][0pt]{\hyperdef{\tud@manualname}{#3}{}}%
    \par\nobreak\vskip\dimexpr-\parskip-\baselineskip\relax%
    \@afterindentfalse\@afterheading%
  \else%
    \Hy@raisedlink{\hyperdef{\tud@manualname}{#3}{}}\ignorespaces%
  \fi%
  \label{#3}%
  \tud@trace@lbl@created@add{#3}%
}%
\newrobustcmd*\tudhyperref[2]{\hyperref{}{\tud@manualname}{#1}{#2}}%
\newcommand*\hrfn[2]{%
  \href{#1}{\trim@spaces{#2}}%
  \footnote{%
    \begingroup%
      \def\_{_}%
      \edef\@tempa{#1}%
      \strut\expandafter\url\expandafter{\@tempa}%
    \endgroup%
  }%
}
\newrobustcmd*\mailto[1]{\mbox{\href{mailto:#1}{\nolinkurl{#1}}}}%
\AfterPackage*{hyperref}{%
  \patchcmd{\pdfstringdef}{\csname HyPsd@babel@}{%
    \let\bbl@info\@gobble\csname HyPsd@babel@%
  }{}{\tud@patch@wrn{pdfstringdef}}%
}
\RequirePackage{varioref}[2011/10/02]
\renewcommand*\fullref[1]{\hyperref[#1]{\autoref*{#1}\space\vpageref{#1}}}
\AfterPackage*{hyperref}{\RequirePackage[babel]{microtype}[2013/05/23]}
\TUD@UnwindPackage{hyperref}{\RequirePackage[babel]{microtype}[2013/05/23]}
\newcommand*\tud@lbl@tmp{}
\newcommand*\tud@lbl@fmt{%
  \def~{-}%
  \let\IeC\@firstofone%
  \def\"##1{##1e}%
  \def\ss{ss}%
  \def\dots{...}%
  \let\NoCaseChange\@firstofone%
}
\NewDocumentCommand\tud@lbl@get@curr{%
  s m >{\tud@lbl@create}>{\SplitArgument{2}{:}}m d==%
}{%
  \tud@lbl@get@@curr#2{#3}=#4=%
  \IfBooleanF{#1}{%
    \@tempswafalse%
    \tud@if@lbl@exists{#2}{%
      \@tempswatrue%
    }{%
      \IfValueT{#4}{%
        \tud@lbl@get@@curr\tud@reserved{#3}%
        \tud@if@lbl@exists{\tud@reserved}{%
          \let#2\tud@reserved%
          \@tempswatrue%
        }{}%
      }%
    }%
    \if@tempswa\else%
      \tud@if@bdl{\tud@lbl@get@dflt#2{#3}=#4=}{}%
    \fi%
  }%
}
\NewDocumentCommand\tud@lbl@get@@curr{m m d==}{%
  \def#1{#2}%
  \tud@doifPValue[\tud@lbl@fmt]{#3}{\noexpand\appto\noexpand#1{=#3}}%
}
\NewDocumentCommand\tud@lbl@get@dflt{m >{\SplitArgument{2}{:}}m r==}{%
  \tud@lbl@get@@dflt{#1}#2=#3=%
}
\NewDocumentCommand\tud@lbl@get@@dflt{m m m m r==}{%
  \edef\tud@reserved{\expandafter\detokenize\expandafter{\tud@bdl@dflt}}%
  \ifstr{\tud@reserved}{#2}{}{%
    \tud@lbl@get@curr#1{\tud@bdl@dflt:#3:#4}=#5=%
  }%
}
\NewDocumentCommand\tud@if@lbl@exists{%
  >{\tud@lbl@create}>{\SplitArgument{2}{:}}m%
}{%
  \ifcsdef{r@#1}{%
    \expandafter\@firstoftwo%
  }{%
    \expandafter\@secondoftwo%
  }%
}
\NewDocumentCommand\tud@lbl@create{m}{\tud@lbl@@create#1}
\NewDocumentCommand\tud@lbl@@create{m m m}{%
  \begingroup%
    \Markup@Gobble%
    \tud@lbl@fmt%
    \IfValueTF{#3}{%
      \edef\@tempa{#1:#2:#3}%
    }{%
      \IfValueTF{#2}{%
        \tud@attr@get\@tempb{#2}%
        \IfValueTF{#1}{%
          \ifxblank{#1}{%
            \edef\@tempa{\tud@bdl@dflt:\@tempb:#2}%
          }{%
            \edef\@tempa{#1:\@tempb:#2}%
          }%
        }{%
          \edef\@tempa{\tud@bdl@curr:\@tempb:#2}%
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
\newcommand*\tud@bdl@dflt{tudscr}
\newcommand*\tud@bdl@curr{}
\let\tud@bdl@curr\tud@bdl@dflt
\newcommand*\tud@if@bdl[2]{\ifstr{\tud@bdl@curr}{\tud@bdl@dflt}{#2}{#1}}
\newenvironment{Bundle}[1]{%
  \tud@if@bdl{%
    \ClassError{tudscrmanual}%
      {Nested environment `Bundle'}{%
      It is not possible to nest this environment, when\MessageBreak%
      a cross-label was given before.%
    }%
  }{%
    \tud@trace@bdl@add{#1}%
    \gdef\tud@bdl@curr{#1}%
  }%
  \ignorespaces%
}{%
  \global\let\tud@bdl@curr\tud@bdl@dflt%
  \aftergroup\ignorespaces%
}
\newif\if@tud@declare
\newif\if@tud@subdeclare
\newif\if@tud@openindex
\newcommand*\tud@declare@num{0}
\newcommand*\tud@declaration@list{}
\let\tud@declaration@list\relax
\NewDocumentEnvironment{Declaration}{o m !o !o !d()}{%
  \listadd\tud@declaration@list{#2}%
  \tud@declare@start[#1]{#2}[#3][#4]{#5}%
}{%
  \tud@declare@end{#2}{\printdeclarationlist}%
}
\newif\if@tud@obsolete
\NewDocumentEnvironment{Obsolete}{m o m !o !o !d()}{%
  \@tud@obsoletetrue%
  \ifxblank{#1}{%
    \listadd\tud@declaration@list{%
      \def\tud@declare@num{1}%
      #3%
      \def\tud@declare@num{0}%
    }%
    \tud@declare@start{#3}[#4][#5]{#6}%
  }{%
    \listadd\tud@declaration@list{#3}%
    \IfValueTF{#2}{%
      \Changed@At@CreateList[#2]{#1!#3}%
    }{%
      \Changed@At@CreateList[#3]{#1}%
    }%
    \IfValueTF{#6}{%
      \tud@declare@start{#3}[#4][#5]{#6}%
    }{%
      \toks@{\tud@declare@start{#3}[#4][#5]}%
      \def\@tempa{\emph{entf\"allt}}%
      \in@{:}{#1}%
      \ifin@%
        \def\@tempb##1:##2\@nil{%
          \IfArgIsEmpty{##2}{}{%
            \def\@tempa{\seeref{##2'page'}}%
          }%
        }%
        \@tempb#1\@nil%
      \fi%
      \eaddto@hook\toks@{\expandafter{\@tempa}}%
      \the\toks@%
    }%
  }%
  \@tud@obsoletefalse%
}{%
  \@tud@obsoletetrue%
  \tud@declare@end{#3}{\printobsoletelist}%
  \@tud@obsoletefalse%
}
\newcommand*\tud@preset@list{}
\let\tud@preset@list\relax
\newif\if@tud@preset@list
\newcommand*\tud@additional@list{}
\let\tud@additional@list\relax
\newif\if@tud@additional@list
\NewDocumentCommand\tud@declare@start{o m r[] r[] m}{%
  \Changed@At@CreateList[#2]{#1}%
  \IfValueTF{#3}{%
    \@tud@preset@listtrue%
    \def\@tempa{Voreinstellung\IfArgIsEmpty{#3}{}{: \PValue{#3}}}%
    \IfValueT{#4}{%
      \def\@tempb[##1:##2]{##1: \PValue{##2}}%
      \eappto\@tempa{ | \expandonce{\@tempb[#4]}}%
    }%
    \listeadd\tud@preset@list{\expandonce\@tempa}%
  }{%
    \listadd\tud@preset@list{\relax}%
  }%
  \IfValueTF{#5}{%
    \@tud@additional@listtrue%
    \listadd\tud@additional@list{(#5)}%
    \in@{\Environment}{#2}%
    \ifin@\listadd\tud@additional@list{\tabularnewline}\fi%
  }{%
    \listadd\tud@additional@list{\relax}%
    \in@{\Environment}{#2}%
    \ifin@%
      \listadd\tud@additional@list{\relax}%
      \listadd\tud@additional@list{\relax}%
    \fi%
  }%
}
\newcommand*\tud@declare@end[2]{%
  \ifx\tud@declaration@list\relax\else%
    \ClassError{tudscrmanual}{\string#2\space is missing}{%
      \string\tud@declaration@list\space is not empty. Did you\MessageBreak%
      forget to print this list with\MessageBreak%
      \string#2?%
    }%
  \fi%
  \vskip-\lastskip%
  \@tud@declaretrue\@tud@openindexfalse#1\@tud@declarefalse%
  \pagebreak[1]%
}
\NewDocumentCommand\InlineDeclaration{s o m}{%
  \IfBooleanTF{#1}{\@tud@subdeclaretrue}{\@tud@subdeclarefalse}%
  \tud@declare@special@start[#2]{#3}{0}%
  \tud@declare@special@end{#3}%
  \@tud@subdeclarefalse%
}
\NewDocumentEnvironment{Declaration*}{o m}{%
  \tud@declare@special@start[#1]{#2}{2}%
}{%
  \tud@declare@special@end{#2}%
}
\NewDocumentEnvironment{Bundle*}{o m}{%
  \tud@declare@special@start[#1]{#2}{3}%
  \Bundle{#2}%
}{%
  \endBundle%
  \tud@declare@special@end{#2}%
}
\NewDocumentCommand\tud@declare@special@start{o m m}{%
  \Changed@At@CreateList(#2){#1}%
  \def\tud@declare@num{#3}%
  \@tud@declaretrue\@tud@openindextrue#2\@tud@declarefalse%
  \def\tud@declare@num{0}%
}
\newcommand*\tud@declare@special@end[1]{%
  \ifx\tud@changedat@list\relax\else%
    \ClassError{tudscrmanual}{\string\printchangedatlist\space is missing}{%
      \string\tud@changedat@list\space is not empty. Did you\MessageBreak%
      forget to print this list with \string\printchangedatlist?%
    }%
  \fi%
  \@tud@declaretrue\@tud@openindexfalse#1\@tud@declarefalse%
}
\newskip\tud@lastskip
\pretocmd{\index}{\tud@lastskip=\lastskip}{}{\tud@patch@wrn{index}}
\pretocmd{\label}{\tud@lastskip=\lastskip}{}{\tud@patch@wrn{label}}
\NewDocumentCommand\printdeclarationlist{!s !d()}{%
  \ifx\tud@declaration@list\relax\else%
    \ifhmode%
      \vskip\medskipamount%
    \else%
      \@tempskipa=\glueexpr\medskipamount-\tud@lastskip\relax%
      \ifdim\@tempskipa>\z@\relax%
        \addpenalty{\@beginparpenalty}%
        \addvspace{\@tempskipa}%
      \fi%
    \fi%
    \global\tud@lastskip=\z@%
    \@afterindentfalse\@afterheading%
    \@tud@declaretrue\@tud@openindextrue%
    \def\@tempa##1{\ignorespaces##1\tabularnewline}%
    \edef\HyperRaiseLinkDefault{\the\baselineskip}%
    \sbox\z@{%
      \begin{tabular}{|l|}%
        \hline%
        \forlistloop\@tempa{\tud@declaration@list}%
        \hline%
      \end{tabular}%
    }\usebox\z@%
    \@tud@declarefalse%
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
      \dimexpr.5\ht\strutbox+.5\dp\strutbox-.5\ht0-.5\dp0\relax%
    }%
    \IfValueT{#2}{#2}%
    \par\nobreak%
    \vskip\medskipamount%
    \@afterindentfalse\@afterheading%
  \fi%
}
\newcommand*\printobsoletelist{%
  \@tud@obsoletetrue%
  \printdeclarationlist*%
  \@tud@obsoletefalse%
}
\NewDocumentCommand\printchangedatlist{!s !O{\z@}}{%
  \print@changedatlist{#1}{#2}%
}
\newrobustcmd*\bsc{\@backslashchar}
\newrobustcmd*\suffix[1]{\begingroup~\scriptsize(#1)\endgroup}
\providecommand*\NewExpandableDocumentCommand[3]{%
  \NewDocumentCommand#1{#2}{}%
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
\NewExpandableDocumentCommand\@Application{s m}{#2}
\NewDocumentCommand\Application{s m !d() !d<> !d||}{%
  \Markup@SetFormat{\sbsfont}%
  \Process@Markup{\Application{#2}}(#3)<#4>%
  \Process@Index{#1}{\Application{#2}}[Anwendungssoftware](#3)|#5|%
}
\NewExpandableDocumentCommand\@Distribution{s m}{#2}
\NewDocumentCommand\Distribution{s m !o !d() !d||}{%
  \Markup@SetFormat{\sbnfont}%
  \IfValueTF{#3}{%
    \Process@Markup{\Distribution{#2}}[~#3](#4)%
  }{%
    \Process@Markup{\Distribution{#2}}(#4)%
  }%
  \Process@Index{#1}{\Distribution{#2}}[Distribution](#4)|#5|%
}
\NewExpandableDocumentCommand\@Engine{s m}{#2}
\NewDocumentCommand\Engine{s m !d() !d||}{%
  \Markup@SetFormat{\sbnfont}%
  \Process@Markup{\Engine{\hologo{#2}}}(#3)%
  \Process@Index{#1}{\Engine{#2}}[Textsatzsystem](#3)|#4|%
}
\newrobustcmd*\Path[1]{\mbox{\texttt{#1}}}
\NewExpandableDocumentCommand\@File{s m}{#2}
\NewDocumentCommand\File{s m !d() !d||}{%
  \Markup@SetFormat{\sbnfont}%
  \Process@Markup{\File{#2}}(#3)%
  \Process@Index{#1}{\File{#2}}[Datei](#3)|#4|%
}
\NewExpandableDocumentCommand\@Class{s m}{#2}
\NewDocumentCommand\Class{s m !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Class{#2}}[Klasse]%
  \else%
    \Markup@SetFormat{\sbnfont}%
    \Process@Markup{\Class{#2}}(#3)'#4'%
    \Process@Index{#1}{\Class{#2}}[Klasse](#3)|#5|%
  \fi%
}
\NewExpandableDocumentCommand\@Package{s m}{#2}
\NewDocumentCommand\Package{s m !d() !d<> !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Package{#2}}[Paket]%
  \else%
    \Markup@SetFormat{\sbnfont}%
    \IfValueTF{#4}{%
      \Process@Markup{\Package{#2}}(#3)<#4>'#5'%
    }{%
      \Process@Markup{\Package{#2}}(#3)<#2>'#5'%
    }%
    \Process@Index{#1}{\Package{#2}}[Paket](#3)|#6|%
  \fi%
}
\NewExpandableDocumentCommand\@Option{s m}{#2}
\NewDocumentCommand\Option{s >{\ProcessorKeyVal}m !d== !d() !d'' !d||}{%
  \Option@Value{#1}#2=#3=(#4)'#5'|#6|%
}
\NewDocumentCommand\Option@Value{m m d== d== d() d'' d||}{%
  \IfValueT{#4}{\tud@keyval@error}%
  \if@tud@changedat%
    \Process@ChangedAt{\Option{#2}}=#3=[Option](#5)%
  \else%
    \Markup@SetFormat{\ttfamily}%
    \Process@Markup{\Option{#2}}=#3=(#5)'#6'%
    \Process@Index{#1}{\Option{#2}}=#3=(#5)|#7|%
  \fi%
}
\NewExpandableDocumentCommand\@Environment{s m}{#2}
\NewDocumentCommand\Environment{s m !o !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Environment{#2}}[Umgebung](#4)%
  \else%
    \Markup@SetFormat{\ttfamily}(%
      \ttfamily\bsc{}begin\textbraceleft#2\textbraceright\IfValueT{#3}{#3}%
      \tabularnewline\ttfamily\dots%
      \tabularnewline\ttfamily\bsc{}end\textbraceleft#2\textbraceright%
    )%
    \Process@Markup{\Environment{#2}}[#3](#4)'#5'%
    \Process@Index{#1}{\Environment{#2}}[Umgebung](#4)|#6|%
  \fi%
}
\NewExpandableDocumentCommand\@Macro{s m}{#2}
\NewDocumentCommand\Macro{s m !o !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Macro{#2}}[Befehl](#4)%
  \else%
    \Markup@SetFormat[\bsc]{\ttfamily}%
    \Process@Markup{\Macro{#2}}[#3](#4)'#5'%
    \Process@Index{#1}{\Macro{#2}}(#4)|#6|%
  \fi%
}
\NewExpandableDocumentCommand\@Length{s m}{#2}
\NewDocumentCommand\Length{s m !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Length{#2}}[L\"ange](#3)%
  \else%
    \Markup@SetFormat[\bsc]{\ttfamily}[L\"ange]%
    \Process@Markup{\Length{#2}}(#3)'#4'%
    \Process@Index{#1}{\Length{#2}}[L\"ange](#3)|#5|%
  \fi%
}
\NewExpandableDocumentCommand\@Counter{s m}{#2}
\NewDocumentCommand\Counter{s m !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Counter{#2}}[Z\"ahler](#3)%
  \else%
    \Markup@SetFormat{\ttfamily}[Z\"ahler]%
    \Process@Markup{\Counter{#2}}(#3)'#4'%
    \Process@Index{#1}{\Counter{#2}}[Z\"ahler](#3)|#5|%
  \fi%
}
\NewExpandableDocumentCommand\@Key{s m m}{#2!#3}
\NewDocumentCommand\Key{s m >{\ProcessorKeyVal}m !d== !d() !d'' !d||}{%
  \Key@Value{#1}{#2}#3=#4=(#5)'#6'|#7|%
}
\NewDocumentCommand\Key@Value{m m m d== d== d() d'' d||}{%
  \IfValueT{#5}{\tud@keyval@error}%
  \if@tud@changedat%
    \Process@ChangedAt{\Key{#2}{#3}}=#4=[Parameter](#6)%
  \else%
    \Markup@SetFormat{\ttfamily}[Parameter]%
    \Process@Markup{\Key{#2}{#3}}=#4=(#6)'#7'%
    \Process@Index{#1}{\Key{#2}{#3}}=#4=(#6)|#8|%
  \fi%
}
\NewExpandableDocumentCommand\@Term{s m}{#2}
\NewDocumentCommand\Term{s m !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Term{#2}}[Bezeichner](#3)%
  \else%
    \Markup@SetFormat[\bsc]{\ttfamily}[Bezeichner]%
    \Process@Markup{\Term{#2}}(#3)'#4'%
    \Process@Index{#1}{\Term{#2}}(#3)|#5|%
  \fi%
}
\NewExpandableDocumentCommand\@PageStyle{s m}{#2}
\NewDocumentCommand\PageStyle{s m !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\PageStyle{#2}}[Seitenstil](#3)%
  \else%
    \Markup@SetFormat{\ttfamily}[Seitenstil]%
    \Process@Markup{\PageStyle{#2}}(#3)'#4'%
    \Process@Index{#1}{\PageStyle{#2}}[Seitenstil](#3)|#5|%
  \fi%
}
\NewExpandableDocumentCommand\@Font{s m}{#2}
\NewDocumentCommand\Font{s m !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Font{#2}}[Schriftelement](#3)%
  \else%
    \Markup@SetFormat{\ttfamily}[Schriftelement]%
    \Process@Markup{\Font{#2}}(#3)'#4'%
    \Process@Index{#1}{\Font{#2}}[Schriftelement](#3)|#5|%
  \fi%
}
\NewExpandableDocumentCommand\@Color{s m}{#2}
\NewDocumentCommand\Color{s m !o !D(){\Package{tudscrcolor}} !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Color{#2}}[Farbe](#4)%
  \else%
    \Markup@SetFormat{\ttfamily}[Farbe](%
      \begingroup\ttfamily{#2\IfValueT{#3}{~(#3)}}\endgroup%
    )%
    \Process@Markup{\Color{#2}}[#3](#4)'#5'%
    \Process@Index{#1}{\Color{#2}}[Farbe](#4)|#6|%
  \fi%
}
\NewDocumentCommand\tud@attr@get{s m m}{%
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
\newrobustcmd*\PValue[1]{\mbox{\texttt{#1}}}
\newrobustcmd*\PName[1]{\PValue{\textsl{<#1>}}}
\newrobustcmd*\PValueName[1]{\PName{#1}}
\newrobustcmd*\PSet{\PName{Einstellung}}
\newrobustcmd*\PBoolean{\PName{Ein-Aus-Wert}}
\newrobustcmd*\PBName[1]{\PBoolean\textOR\PName{#1}}
\newrobustcmd*\Parameter[1]{%
  \mbox{\texttt{\textbraceleft}\PName{#1}\texttt{\textbraceright}}%
}
\newrobustcmd*\OParameter[1]{\mbox{\texttt{[}\PName{#1}\texttt{]}}}
\newrobustcmd*\LParameter{\mbox{\texttt{[}\PName{Parameterliste}\texttt{]}}}
\newrobustcmd*\OLParameter[1]{%
  \mbox{\texttt{[}\PName{#1}\textOR\PName{Parameterliste}\texttt{]}}%
}
\newrobustcmd*\PParameter[1]{\mbox{\texttt{\textbraceleft#1\textbraceright}}}
\newrobustcmd*\POParameter[1]{\mbox{\texttt{[#1]}}}
\newrobustcmd*\textOR{\PValue{\,\textbardbl\,}}
\newcommand*\tud@doifPValue[3][]{%
  \IfValueT{#2}{%
    \begingroup%
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
      #1%
      \ifxblank{#2}{%
        \def\tud@reserved{\endgroup}%
      }{%
        \protected@edef\tud@reserved{\endgroup#3}%
      }%
    \tud@reserved%
  }%
}
\NewDocumentCommand\Markup@Gobble{s}{%
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
    \def\_{-}%
    \protected\def~{~}%
  }%
}
\AfterPackage*{hyperref}{%
  \expandafter\pdfstringdefDisableCommands\expandafter{\Markup@Gobble}%
}
\newcommand*\Markup@Suppress{\let\Process@Markup\Markup@@Suppress}
\NewDocumentCommand\Markup@@Suppress{m d== o d() d<> d''}{}
\NewDocumentCommand\Process@Markup{m d== o d() d<> d''}{%
  \if@tud@declare%
    \tud@toks@{\Process@@MarkupDeclare}%
    \IfValueTF{#4}{%
      \tud@lbl@get@curr*\tud@lbl@tmp{#4:#1}=#2=%
    }{%
      \tud@lbl@get@curr*\tud@lbl@tmp{\tud@bdl@curr:#1}=#2=%
    }%
  \else%
    \tud@toks@{\Process@@MarkupInline}%
    \tud@lbl@get@curr\tud@lbl@tmp{#4:#1}=#2=%
  \fi%
  \eaddto@hook\tud@toks@{\expandafter{\tud@lbl@tmp}}%
  \begingroup%
    \Markup@Gobble*%
    \protected@edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand\tud@reserved{#1}%
    }%
  \tud@reserved%
  \eaddto@hook\tud@toks@{\expandafter{\tud@reserved}}%
  \IfValueT{#2}{\addto@hook\tud@toks@{=#2=}}%
  \IfValueT{#3}{\addto@hook\tud@toks@{[#3]}}%
  \if@tud@declare%
    \if@tud@openindex%
      \IfValueT{#6}{%
        \ClassWarning{tudscrmanual}{%
          It is not possible to use any cross-reference\MessageBreak%
          shorthand like '#6' within the arguments\MessageBreak%
          of the environment `Declaration'%
        }%
      }%
      \tud@trace@markup{declare}{\the\tud@toks@}%
    \else%
      \tud@toks@{\relax}%
    \fi%
  \else%
    \if@tud@index\else%
      \IfValueT{#5}{%
        \ifxblank{#5}{}{\addto@hook\tud@toks@{<http://www.ctan.org/pkg/#5>}}%
      }%
      \IfValueT{#6}{\addto@hook\tud@toks@{'#6'}}%
    \fi%
    \tud@trace@markup{output}{\the\tud@toks@}%
  \fi%
  \if@tud@index\else%
    \IfValueT{#4}{%
      \ifxblank{#4}{}{%
        \tud@trace@bdl@add{#4}%
      }%
    }%
  \fi%
  \the\tud@toks@%
}
\NewDocumentCommand\Process@@MarkupDeclare{m m d== o}{%
  \Markup@CheckFormat%
  \ifcase\tud@declare@num\relax%
    \tudhyperdef{#1}%
    \Markup@Output{#2}=#3=[#4]%
  \or%
    \Markup@Output{#2}=#3=[#4]%
  \or%
    \tudhyperdef{#1}%
  \or%
    \tudhyperdef*{#1}%
    \def\@tempa##1:##2:##3\@nil{\tudhyperdef*{##3:##2:##3}}%
    \@tempa#1\@nil%
  \fi%
  \Markup@ClearFormat%
}
\NewDocumentCommand\Process@@MarkupInline{m m d== o d<> d''}{%
  \Markup@CheckFormat%
  \begingroup%
    \def\@tempc{\Markup@Output{#2}=#3=[#4]}%
    \tud@if@lbl@exists{#1}{%
      \def\@tempa{\tudhyperref{#1}{\@tempc}}%
      \let\@tempb\relax%
      \IfValueT{#6}{%
        \def\@tempb{%
          \ClassWarning{tudscrmanual}%
          {%
            You've used the unknown cross-reference\MessageBreak%
            shorthand '#6'. Only 'auto', 'page' and 'full'\MessageBreak%
            as well as 'none' \IfValueT{#5}{or 'url' }are valid%
          }%
        }%
        \ifstr{#6}{auto}{\def\@tempb{ in \autoref{#1}}}{%
        \ifstr{#6}{page}{\def\@tempb{ \vpageref{#1}}}{%
        \ifstr{#6}{ppage}{\def\@tempb{ \reftextfaraway{#1}}}{%
        \ifstr{#6}{full}{\def\@tempb{ in \fullref{#1}}}{%
        \ifstr{#6}{none}{%
          \let\tud@trace@lbl@matched@add\tud@trace@lbl@unused@add%
          \let\@tempa\@tempc\let\@tempb\relax%#
        }{%
        \ifstr{#6}{silent}{%
          \let\tud@trace@lbl@matched@add\@gobble%
          \let\@tempa\@tempc\let\@tempb\relax%#
        }{}%
        }}}}}%
        \IfValueT{#5}{%
          \ifstr{#6}{url}{\def\@tempa{\href{#5}{\@tempc}}\let\@tempb\relax}{}%
        }%
      }%
      \tud@trace@lbl@matched@add{#1}%
    }{%
      \let\@tempa\@tempc%
      \IfValueT{#5}{\def\@tempa{\href{#5}{\@tempc}}}%
      \let\@tempb\relax%
      \IfValueT{#6}{%
        \ifstr{#6}{none}{%
          \let\tud@trace@lbl@missing@add\tud@trace@lbl@ignored@add%
          \let\@tempa\@tempc%
        }{%
          \def\@tempb{%
            \ClassWarning{tudscrmanual}%
            {%
              Label #1\MessageBreak%
              is missing, no cross-reference created%
            }%
          }%
        }%
      }%
      %\tud@trace@lbl@missing@add{#1}%
      \def\foo##1=##2\@nil{\def\tud@lbl@tmp{##1}}%
      \def\tud@lbl@tmp{#1}%
      \expandafter\foo\tud@lbl@tmp=\@nil%
      \expandafter\tud@trace@lbl@missing@add\expandafter{\tud@lbl@tmp}%
    }%
    \ifdisposition{\@tempc}{\@tempa\@tempb}%
  \endgroup%
  \Markup@ClearFormat%
}
\newif\if@tud@disposition
\newcommand*\ifdisposition{%
  \if@tud@disposition%
    \expandafter\@firstoftwo%
  \else%
    \expandafter\@secondoftwo%
  \fi%
}
\pretocmd{\tud@sec@format}%
  {\@tud@dispositiontrue}{}{\tud@patch@wrn{tud@sec@format}}
\NewDocumentCommand\Markup@Output{>{\SplitArgument{1}{!}}m r== r[]}{%
  \Markup@@Output#1=#2=[#3]%
}
\NewDocumentCommand\Markup@@Output{m m r== r[]}{%
  \if@tud@declare%
    \tud@toks@{\Markup@Declare}%
  \else%
    \tud@toks@{\Markup@Inline}%
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
\newcommand*\Markup@Inline[1]{\mbox{\Markup@Format{#1}}}
\newcommand*\Markup@Declare{}
\newcommand*\Markup@@Declare[1]{\Markup@Format{#1}\Markup@Suffix}
\newcommand*\Markup@Format{}
\undef\Markup@Format
\newcommand*\Markup@Suffix{}
\NewDocumentCommand\Markup@SetFormat{o m o d()}{%
  \def\Markup@Format##1{%
    \def\tud@res@a{#2}%
    \tud@ifdin{\let\tud@res@a\tud@sec@format}{}%
    \begingroup\tud@res@a{\IfValueT{#1}{#1}##1}\endgroup%
  }%
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
\ifundef{\tud@x@textcase@uclcnotmath}{}{%
  \NewDocumentCommand\tud@nonchangecase{m}{%
    \DeclareExpandableDocumentCommand#1{s m}{%
      \IfBooleanT{##1}{\noexpand\@tud@indextrue}%
      \NoCaseChange{#1{##2}}%
    }%
  }%
  \apptocmd{\tud@x@textcase@uclcnotmath}{%
    \tud@nonchangecase\Application%
    \tud@nonchangecase\Distribution%
    \tud@nonchangecase\Engine%
    \tud@nonchangecase\File%
    \tud@nonchangecase\Class%
    \tud@nonchangecase\Package%
    \tud@nonchangecase\Option%
    \tud@nonchangecase\Environment%
    \tud@nonchangecase\Macro%
    \tud@nonchangecase\Length%
    \tud@nonchangecase\Counter%
    \DeclareExpandableDocumentCommand\Key{s m m}{%
      \IfBooleanT{##1}{\noexpand\@tud@indextrue}%
      \NoCaseChange{#1{##2}{##3}}%
    }%
    \tud@nonchangecase\Term%
    \tud@nonchangecase\PageStyle%
    \tud@nonchangecase\Font%
    \tud@nonchangecase\Color%
  }{}{\tud@patch@wrn{tud@x@textcase@uclcnotmath}}%
}
\PassOptionsToPackage{xindy,splitindex}{imakeidx}
\RequirePackage{imakeidx}[2013/07/11]
\indexsetup{%
  level=\addsec,%
  noclearpage,firstpagestyle=headings,headers={\indexname}{\indexname},%
  othercode={\renewcommand*\subitem{\@idxitem\hspace*{15\p@}}}%
}
\ifimki@original\else%
  \CheckCommand\theindex{%
    \imki@maybeaddtotoc
    \imki@indexlevel{\indexname}\imki@indexheaders
    \thispagestyle{\imki@firstpagestyle}%
    \ifnum\imki@columns>\@ne
      \columnsep \imki@columnsep
      \ifx\imki@idxprologue\relax
        \begin{multicols}{\imki@columns}
      \else
        \begin{multicols}{\imki@columns}[\imki@idxprologue]
      \fi
    \else
      \imki@idxprologue
    \fi
    \global\let\imki@idxprologue\relax
    \parindent\z@
    \parskip\z@ \@plus .3\p@\relax
    \columnseprule \ifKV@imki@columnseprule.4\p@\else\z@\fi
    \raggedright
    \let\item\@idxitem
    \imki@othercode%
  }%
  \patchcmd{\theindex}{%
    \imki@indexlevel{\indexname}\imki@indexheaders%
  }{%
    \imki@indexheaders%
  }{}{\tud@patch@wrn{theindex}}%
  \patchcmd{\theindex}{%
    \ifnum\imki@columns>\@ne
      \columnsep \imki@columnsep
      \ifx\imki@idxprologue\relax
        \begin{multicols}{\imki@columns}
      \else
        \begin{multicols}{\imki@columns}[\imki@idxprologue]
      \fi
    \else
      \imki@idxprologue
    \fi
  }{%
    \ifnum\imki@columns>\@ne\relax%
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
  }{}{\tud@patch@wrn{theindex}}%
\fi%
\NewDocumentCommand\makexdyindex{s o m !o}{%
  \let\@tempb\@empty%
  \IfBooleanT{#1}{%
    \def\@tempc{\jobname-#4-declare.idx}%
    \makeindex[name={#4-declare}]%
    \IfFileExists{\@tempc}{%
      \edef\@tempb{-o \jobname-#4.ind \@tempc}%
    }{%
      \ClassWarningNoLine{tudscrmanual}{File \@tempc\space not found}%
    }%
  }%
  \protected@edef\@tempa{%
    title={#3},%
    columnsep=\noexpand\f@size\noexpand\p@,%
    \IfValueTF{#4}{%
      name={#4},%
      options={-M \@currname-ind.xdy -L german-din -t \jobname-#4.xlg \@tempb},%
    }{%
      options={-M \@currname-ind.xdy -L german-din -t \jobname.xlg},%
    }%
    \IfValueT{#2}{#2}%
  }%
  \expandafter\makeindex\expandafter[\@tempa]%
}
\makexdyindex{Allgemeiner Index}
\makexdyindex*{Klassen- und Paketoptionen}[options]
\makexdyindex*{Befehle und Umgebungen mit zugeh\"origen Parametern}[macros]
\makexdyindex*{Sprachabh\"angige Bezeichner}[terms]
\makexdyindex*{Seitenstile, Schriftelemente und Farben}[elements]
\makexdyindex{L\"angen und Z\"ahler}[misc]
\makexdyindex*{Klassen, Pakete und Dateien}[files]
\makexdyindex[columns=1]{\"Anderungsliste}[changelog]
\undef\makexdyindex
\newif\if@tud@index
\addtoeachtocfile{\protect\@tud@indextrue}
\newcommand*\tud@idx@key{}
\newcommand*\tud@idx@fmt{}
\newcommand*\tud@idx@val{}
\newcommand*\tud@idx@bdl{}
\NewDocumentCommand\tud@idx@get{s m m m m r== r[] r() d||}{%
  \begingroup%
    \begingroup%
      \let#4\@empty%
      \in@{\Key}{#5}%
      \ifin@%
        \Markup@Suppress%
        \let\Key\@firstoftwo%
        #5%
        \let\@tempa\@empty%
        \IfBooleanT{#1}{\def\@tempa{: Parameter angepasst}}%
        \def#4{%
          \expandonce#2\expandonce\@tempa{}@%
          \expandonce#3\expandonce\@tempa{}!%
        }%
      \fi%
      \Markup@Gobble%
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
    \let\tud@idx@bdl\tud@bdl@dflt%
    \IfValueTF{#8}{%
      \def\tud@idx@bdl{#8}%
    }{%
      \tud@if@bdl{%
        \tud@if@lbl@exists{\tud@bdl@curr:#5}{%
          \edef\tud@idx@bdl{\expandonce\tud@bdl@curr}%
          \def\tud@reserved{#5}%
          \ifx\tud@reserved\tud@idx@bdl%
            \let\tud@idx@bdl\tud@bdl@dflt%
          \fi%
        }{}%
      }{}%
    }%
    \let\@tempa\@empty%
    \let\@tempb\@empty%
    \let\@tempc\@empty%
    \@tempswatrue%
    \ifx\tud@idx@bdl\tud@bdl@dflt%
      \@tempswafalse%
    \else%
      \in@{\Key}{#5}\ifin@\@tempswafalse\fi%
      \IfBooleanT{#1}{\@tempswafalse}%
      \edef\@tempb{(\expandonce\tud@idx@bdl)}%
    \fi%
    \let\@tempc\@tempb%
    \IfValueT{#7}{%
      \appto\@tempa{ #7}%
      \appto\@tempb{\suffix{#7}}%
    }%
    \if@tempswa%
      \begingroup%
        \Markup@Gobble%
        \edef\tud@reserved{%
          \noexpand\endgroup%
          \noexpand\appto\noexpand\@tempa{ \tud@idx@bdl}%
        }%
      \tud@reserved%
      \eappto\@tempb{\suffix{\expandonce\tud@idx@bdl}}%
    \fi%
    \@tempswafalse%
    \IfBooleanT{#1}{\@tempswatrue}%
    \IfValueT{#9}{%
      \ifstr{#9}{declare}{\@tempswatrue}{}%
      \ifstr{#9}{default}{\@tempswatrue}{}%
    }%
    \if@tempswa%
      \protected@eappto#2{\expandonce\@tempa}%
      \tud@doifPValue{#6}{\noexpand\appto\noexpand#2{=#6}}%
      \protected@eappto#3{\IfValueT{#6}{=#6=}\expandonce\@tempb}%
    \else%
      \tud@doifPValue{#6}{\noexpand\@tempswatrue}%
      \if@tempswa%
        \eappto#4{%
          \expandonce#2\expandonce\@tempa{}@%
          \expandonce#3\expandonce\@tempb{}!%
        }%
        \appto#2{=#6}%
        \appto#3{=#6=}%
        \protected@eappto#3{\expandonce\@tempc}%
      \else%
        \protected@eappto#2{\expandonce\@tempa}%
        \protected@eappto#3{\expandonce\@tempb}%
      \fi%
    \fi%
    \let\emph\@firstofone%
    \protected@edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand#2{#2}%
      \def\noexpand#3{#3}%
      \def\noexpand#4{#4}%
    }%
  \tud@reserved%
}
\newrobustcmd*\cleversee{\tud@cleversee{\seename}}
\newrobustcmd*\cleverseealso{%
  \ClassWarning{tudscrmanual}%
    {You should use `|see' instead of `|seealso'}%
  \tud@cleversee{\alsoname}%
}
\newcommand*\tud@cleversee{}
\def\tud@cleversee#1#2#3\relax{%
  \IfArgIsEmpty{#3}{%
    \emph{#1}\space#2%
  }{%
    \begingroup%
      \def\@tempa, ##1\@nil{##1,\space\emph{\alsoname}\space#2}%
      \@tempa#3\@nil%
    \endgroup%
  }%
}
\NewDocumentCommand\seeref{s m}{%
  \emph{\IfBooleanTF{#1}{\alsoname}{\seename}}\space#2%
}
\newcommand*\seeidx[2]{\pageref{idx:#1}}
\NewDocumentCommand\Process@Index{m m d== o d() d||}{%
  \ifboolexpr{%
    bool {@tud@index} or bool {@tud@obsolete}%
  }{}{%
    \IfBooleanTF{#1}{%
      \IfValueT{#6}{%
        \ClassWarning{tudscrmanual}%
        {%
          You've used the starred version. No index entry\MessageBreak%
          for #2 is created. The\MessageBreak%
          optional argument |#6| will be ignored%
        }%
      }%
    }{%
      \Process@@Index{#2}=#3=[#4](#5)|#6|%
    }%
  }%
}
\NewDocumentCommand\Process@@Index{m r== r[] r() r||}{%
  \if@tud@declare%
    \tud@idx@get\tud@idx@key\tud@idx@fmt\tud@idx@val{#1}=#2=[#3](#4)|declare|%
  \else%
    \tud@idx@get\tud@idx@key\tud@idx@fmt\tud@idx@val{#1}=#2=[#3](#4)|#5|%
  \fi%
  \tud@attr@get*\tud@lbl@tmp{#1}%
  \if@tud@declare%
    \if@tud@openindex%
      \IfValueT{#5}{%
        \ClassWarning{tudscrmanual}{%
          It is not possible to use any indexing format\MessageBreak%
          like |#5| within the arguments of the\MessageBreak%
          environments `Declaration' or `Declaration*'%
        }%
      }%
      \index[\tud@lbl@tmp-declare]{%
        \tud@idx@val\tud@idx@key{}@\tud@idx@fmt|(declare%
      }%
    \else%
      \index[\tud@lbl@tmp-declare]{\tud@idx@val\tud@idx@key|declare)}%
    \fi%
  \else%
    \IfValueT{#5}{%
      \ifstr{#5}{declare}{%
        \appto\tud@lbl@tmp{-declare}%
        \appto\tud@idx@fmt{|declare}%
      }{%
        \appto\tud@idx@fmt{|#5}%
      }%
    }%
    \index[\tud@lbl@tmp]{\tud@idx@val\tud@idx@key{}@\tud@idx@fmt}%
  \fi%
}
\NewDocumentCommand\CrossIndex{s m o m}{%
  \def\@tempa##1##2##3{%
    \index{%
      \IfBooleanTF{#1}{##3@##3}{##3!"|@}%
      \,\textrightarrow\,%
      \tudhyperref{idx:##2}{\IfValueTF{##1}{##1}{Index der ##3}}|seeidx{##2}%
    }%
  }%
  \forcsvlist{\@tempa{#3}{#4}}{#2}%
}
\NewDocumentCommand\SeeRef{s m m}{%
  \sbox\z@{%
    \let\tud@idx@fmt\relax%
    #3%
    \ifx\tud@idx@fmt\relax%
      \gdef\tud@reserved{#3}%
    \else%
      \global\let\tud@reserved\tud@idx@fmt%
    \fi%
  }%
  \IfBooleanTF{#1}{\def\tud@idx@fmt{seeunverified}}{\def\tud@idx@fmt{see}}%
  \index{#2!#3|\tud@idx@fmt{\tud@reserved}}%
}
\newcommand*\tud@indexprologue{}
\newcommand*\PrintIndex{%
  \begingroup%
    \providecommand*\lettergroup[1]{%
      \par\textbf{\textsf{##1}}\par%
      \nopagebreak%
    }%
    \renewcommand\tud@indexprologue{%
      Die im Folgenden aufgelisteten Schlagworte sollen f\"ur den Umgang mit %
      \hologo{LaTeXe} im Allgemeinen sowie dem \TUDScript-Bundle im Speziellen %
      sowohl Antworten bei generellen Fragen liefern als auch L\"osungen f\"ur %
      typische Probleme bereitstellen. Falls ein gesuchter Begriff hier nicht %
      zu finden ist oder trotz vorhandener Hinweise kein zufriedenstellendes %
      Ergebnis erzielt werden kann, sollte das \Forum* erster Anlaufpunkt %
      sein, um weitere Hilfe bei der Nutzung von \TUDScript zu erhalten.%
    }%
    \print@index%
    \clearpage%
    \renewcommand\tud@indexprologue{%
      Dies ist der Index aller im Handbuch erl\"auterten sowie erw\"ahnten %
      Optionen, wobei bei den meisten auch Untereintr\"age mit Seitenangaben %
      f\"ur spezielle Wertzuweisungen existieren.%
    }%
    \print@index[options]%
    \renewcommand\tud@indexprologue{%
      Dies ist eine Auflistung aller zuvor erl\"auterten sowie erw\"ahnten %
      Befehle und Umgebungen. Bei einigen sind zus\"atzliche Untereintr\"age %
      f\"ur Schl\"ussel-Wert-Parameter zu finden, die im optionalen Argument %
      der jeweiligen Anweisung verwendet werden k\"onnen. Gegebenenfalls sind %
      f\"ur explizite Wertzuweisungen an diese Parameter Seitenverweise zu %
      finden.%
    }%
    \print@index[macros]%
    \renewcommand\tud@indexprologue{%
      Dies sind die von \TUDScript definierten, sprachabh\"angigen Bezeichner. %
      Informationen zur Verwendung sowie den Anpassungsm\"oglichkeiten sind in %
      \autoref{sec:localization} zu finden.%
    }%
    \print@index[terms]%
    \print@index[elements]%
    \print@index[misc]%
    \print@index[files]%
  \endgroup%
}
\newcommand*\tud@idx@skip{%
  \ifnum\imki@columns>\@ne\relax\vspace{-\multicolsep}\fi%
}
\newcommand*\print@index[1][]{%
  \pagebreak[3]%
  \@tud@indextrue%
  \ifblank{#1}{%
    \def\tud@reserved{\tudhyperdef*{idx:main}}%
  }{%
    \def\tud@reserved{\tudhyperdef*{idx:#1}}%
  }%
  \ifx\tud@indexprologue\@empty%
    \indexprologue[\tud@idx@skip]{\tud@reserved}%
  \else%
    \indexprologue{%
      \tud@reserved%
      \tud@indexprologue%
      \tud@idx@skip%
    }%
  \fi%
  \ifblank{#1}{\printindex}{\printindex[#1]}%
  \ifnum\imki@columns>\@ne\relax\vspace{-\multicolsep}\fi%
  \let\tud@indexprologue\@empty%
}
\newif\if@tud@changedat
\NewDocumentCommand\Process@ChangedAt{m d== o d()}{%
  \tud@idx@get*\tud@idx@key\tud@idx@fmt\tud@idx@val{#1}=#2=[#3](#4)%
}
\newlength\changedatskip
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
\BeforeStartingTOC{\let\ChangedAt\@ChangedAt}
\newcommand*\tud@changedat@list{}
\let\tud@changedat@list\relax
\DeclareListParser*{\forssvlist}{;}
\NewDocumentCommand\Changed@At@CreateList{o d() m}{%
  \IfValueT{#3}{\forssvlist{\Changed@At@@CreateList[#1](#2)}{#3}}%
}
\NewDocumentCommand\Changed@At@@CreateList{r[] r() >{\SplitArgument{1}{:}}m}{%
  \Changed@At@@@CreateList[#1](#2)#3%
}
\NewDocumentCommand\Changed@At@@@CreateList{%
  r[] r() >{\SplitArgument{1}{!}}m m%
}{%
  \Changed@At@@@@CreateList[#1](#2)#3{#4}%
}
\NewDocumentCommand\Changed@At@@@@CreateList{r[] r() m m m}{%
  \def\@tempa##1{%
    \sbox\z@{%
      \let\tud@idx@fmt\relax%
      \@tud@changedattrue%
      ##1%
      \@tud@changedatfalse%
      \ifx\tud@idx@fmt\relax%
        \gdef\@tempb{##1}%
      \else%
        \global\let\@tempb\tud@idx@fmt%
      \fi%
    }%
  }%
  \let\@tempb\@empty%
  \IfValueTF{#2}{%
    \@tempa{#2}%
  }{%
    \tud@if@bdl{\@tempa{\tud@bdl@curr}}{}%
  }%
  \IfValueTF{#1}{%
    \toks@{#3!Implementierung }%
    \eaddto@hook\toks@{\@tempb}%
    \addto@hook\toks@{!#1!}%
    \IfValueT{#4}{\addto@hook\toks@{#4}}%
    \addto@hook\toks@{!}%
    \if@tud@obsolete\else%
      \IfValueT{#5}{\addto@hook\toks@{#5}}%
    \fi%
  }{%
    \toks@{#3!Allgemein }%
    \IfValueTF{#2}{%
      \addto@hook\toks@{!}%
      \eaddto@hook\toks@{\@tempb:\space}%
      \IfValueTF{#5}{%
        \addto@hook\toks@{#5}%
      }{%
        \addto@hook\toks@{\emph{neu}}%
      }%
    }{%
      \eaddto@hook\toks@{\@tempb}%
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
\NewDocumentCommand\Changed@At@CreateEntry{>{\SplitArgument{4}{!}}m}{%
  \Changed@At@@CreateEntry#1%
}
\newcommand*\Changed@At@@CreateEntry[5]{%
  \IfValueT{#3}{%
    \IfValueTF{#4}{%
      \@tud@changedattrue#3\@tud@changedatfalse%
      \ifxblank{#4}{}{%
        \eappto\tud@idx@val{%
          \expandonce\tud@idx@key: Werte angepasst@%
          \expandonce\tud@idx@fmt: Werte angepasst!%
        }%
        \begingroup%
          \@tud@changedattrue%
          #4%
          \@tud@changedatfalse%
          \let\suffix\@gobble%
          \protected@edef\tud@reserved{%
            \noexpand\endgroup%
            \def\noexpand\tud@idx@key{\tud@idx@key}%
            \def\noexpand\tud@idx@fmt{\tud@idx@fmt}%
          }%
        \tud@reserved%
      }%
      \ifxblank{#5}{%
        \if@tud@obsolete%
          \appto\tud@idx@fmt{: \emph{entf\"allt}}%
        \else%
          \appto\tud@idx@fmt{: \emph{neu}}%
        \fi%
      }{%
        \appto\tud@idx@key{: #5}%
        \appto\tud@idx@fmt{: #5}%
      }%
      \index[changelog]{#1!#2!\tud@idx@val\tud@idx@key @\tud@idx@fmt}%
    }{%
      \index[changelog]{#1!#2!#3}%
    }%
  }%
  \ifinlist{#1}{\tud@templist}{}{\listadd\tud@templist{#1}}%
}
\newcommand*\PrintChangelog{%
  \begingroup%
    \let\lettergroup\@gobble%
    \apptocmd{\theindex}{%
      \let\subsubsubitem\subsubitem%
      \let\subsubitem\subitem%
      \let\subitem\item%
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
        \expandafter\endgroup%
        \expandafter\def\csname\string\item\endcsname##1~%
      }{%
        \endgroup%
        \let\@tempb\@firstofone%
        \if@tud@cdoldfont@active\def\@tempb##1{\NoCaseChange{##1}}\fi%
        \addsec[##1]{\TUDScript \@tempb{##1}}%
        \tudhyperdef*{idx:changelog:##1}%
        \def\@tempa{\indexname: \TUDScript \@tempb{##1}}%
        \@mkboth{\@tempa}{\@tempa}%
      }%
    }{}{\tud@patch@wrn{theindex}}%
    \clearpage%
    \def\imki@indexlevel{\addchap}%
    \print@index[changelog]%
  \endgroup%
}
\NewDocumentCommand\print@changedatlist{m m}{%
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
          \tudhyperref{idx:changelog:####1}{####1}%
          \tabularnewline%
        }%
        \begin{tabular}{|l|}%
          \hline%
          \forlistloop\@tempa{\tud@templist}%
          \hline%
        \end{tabular}%
      }[#2]%
      \ignorespaces%
    }%
  \fi%
}
\RequirePackage{enumitem}[2011/09/28]
\setlist{before*={\endgraf\tud@RaggedRight},partopsep=0pt,noitemsep}
\newcommand*\stditem{}
\newcommand*\tud@before@item[1]{%
  \ifdefvoid{\stditem}{%
    \let\stditem\item%
    \letcs\item{tud@item@#1}%
    \setlength\changedatskip{-\baselineskip}%
  }{}%
}
\newcommand*\tud@values{}
\NewDocumentEnvironment{values}{m !o}{%
  \def\tud@values{#1}%
  \IfValueTF{#2}{\@values[#2]}{\@values}%
}{%
  \end@values%
}
\newlist{@values}{description}{1}
\setlist[@values]{%
  topsep=\smallskipamount,labelwidth=\linewidth,labelsep=0pt,%
  font=\normalfont,parsep=\parskip,listparindent=\parindent,%
  before=\tud@before@item{values}%
}
\DeclareListParser*{\forslashlist}{/}
\NewDocumentCommand\tud@item@values{s o o d()}{%
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
    \forslashlist\tud@reserved{#2}%
    \edef\@tempa{\expandonce\tud@values}%
    \protected@eappto\@tempa{%
      =\IfBooleanTF{#1}{\noexpand\emph}{\@firstofone}{\@tempc}=%
    }%
    \appto\@tempa{'silent'|!|}%
    \edef\@tempb{%
      \IfBooleanTF{#1}{\noexpand\emph}{\@firstofone}{\noexpand\PValue{\@tempb}}%
    }%
    \IfBooleanTF{#1}{%
      \appto\@tempb{\suffix{S\"aumniswert}}%
    }{%
      \IfValueT{#3}{\appto\@tempb{\suffix{S\"aumniswert f\"ur #3}}}%
    }%
    \IfValueT{#4}{\appto\@tempb{\suffix{#4}}}%
    \tud@lbl@get@curr*\tud@lbl@tmp{\tud@bdl@curr:\tud@values}=\@tempc=%
    \stditem[\tudhyperdef{\tud@lbl@tmp}\@tempa\@tempb]%
  }{%
    \stditem%
  }%
}
\NewDocumentCommand\itemtrue{!s !o !o !d()}{%
  \item@bool{#1}{true/on/yes}[#2][#3](#4)%
}
\NewDocumentCommand\itemfalse{!s !o !o !d()}{%
  \item@bool{#1}{false/off/no}[#2][#3](#4)%
}
\NewDocumentCommand\item@bool{m m r[] r[] r()}{%
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
  before=\tud@before@item{packages}%
}
\NewDocumentCommand\tud@item@packages{o d<> d()}{%
  \def\@tempa##1{%
    \@tempc%
    \tud@lbl@get@curr*\tud@lbl@tmp{\tud@bdl@curr:\Package{##1}}%
    \tudhyperdef{\tud@lbl@tmp}%
    \begingroup%
      \Package{##1}<#2>'url'|!|%
    \endgroup%
    \def\@tempc{, }%
  }%
  \stditem[{%
    \IfValueT{#1}{%
      \let\@tempc\relax%
      \forcsvlist\@tempa{#1}%
      \IfValueT{#3}{%
        \tud@lbl@get@curr*\tud@lbl@tmp{\tud@bdl@curr:\Package{#3}}%
        \quad(\tudhyperdef{\tud@lbl@tmp}\Package{#3}'none'|!|)%
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
  \let\allcolumnpar\tabularm@allcolumnpar%
  \begin{tabular}{*{#1}l}\BODY\end{tabular}%
}
\newcommand*\tabularm@allcolumnpar[1]{%
  \multicolumn{\tabularm@num}{@{}p{\tabularm@wd}@{}}{#1}%
}
\RequirePackage{tabularx}[1999/01/07]
\NewDocumentCommand\TermTable{s m O{\linewidth}}{%
  \let\tud@templist\relax%
  \forcsvlist{\listadd\tud@templist}{#2}%
  \ifhmode\par\fi%
  \vskip\medskipamount%
  \@afterindentfalse\@afterheading%
  \IfBooleanTF{#1}{%
    \setlength\@tempdima{#3}%
    \setlength\@tempdimc{-.7\baselineskip}%
    \begin{tabularx}{\@tempdima}{lXX}\Term@Table\end{tabularx}%
  }{%
    \setlength\@tempdimc{\z@}%
    \begin{tabular}{lll}\Term@Table\end{tabular}%
  }%
  \par\addvspace{\medskipamount}%
}
\newcommand*\Term@Table{%
  \toprule%
  \textbf{Bezeichner} & \textbf{Deutsch} & \textbf{Englisch}\tabularnewline%
  \midrule%
  \forlistloop\Term@@Table{\tud@templist}%
  \bottomrule%
}
\newcommand*\Term@@Table[1]{%
  \Term{#1}'none' & %
  \ifstr{\csuse{#1}}{}{\PName{leer}}{\csuse{#1}} & %
  \selectlanguage{english}\vspace*{\@tempdimc}%
  \ifstr{\csuse{#1}}{}{\PName{empty}}{\csuse{#1}}\tabularnewline%
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
\newcommand*\tud@write@a{}
\newwrite\tud@write@a
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
\newcommand*\tud@shellescape@wrn[1]{%
  \ClassWarning{tudscrmanual}%
  {%
    File `#1' is missing!\MessageBreak%
    You have to recompile this document with\MessageBreak%
    activated shell escape option%
  }%
}
\newcommand*\tud@latex@ext{}
\ifpdftex%
  {\def\tud@latex@ext{pdflatex\space}}%
  {\def\tud@latex@ext{lualatex\space}}%
\newrobustcmd*\hypertut[2]{%
  \hyperref{tutorials/#1.pdf}{#1}{tutorials:#1}{\File*{#1.pdf}#2}%
}
\NewDocumentCommand\Tutorial{s m !d||}{%
  \ifnum\pdf@shellescape=\@ne\relax%
    \filemodCmp{tutorials/#2.pdf}{tutorials/#2.tex}{}{%
      \let\@tempa\@empty%
      \ifdef{\tudfinalflag}{\appto\@tempa{\def\noexpand\tudfinalflag{}}}{}%
      \ifdef{\tudprintflag}{\appto\@tempa{\def\noexpand\tudprintflag{}}}{}%
      \appto\@tempa{\noexpand\input{#2.tex}}%
      \immediate\openout\tud@write@a=tutorials.sh\relax%
      \def\@tempb##1{\immediate\write\tud@write@a{##1}}%
      \@tempb{cd tutorials}%
      \@tempb{\tud@latex@ext -shell-escape "\@tempa"}%
      \ifwindows%
        \@tempb{if exist #2.bcf biber #2}%
      \else%
        \@tempb{[ -f #2.bcf ] && biber #2}%
      \fi%
      \@tempb{\tud@latex@ext "\@tempa"}%
      \@tempb{\tud@latex@ext -shell-escape "\@tempa"}%
      \@tempb{\tud@latex@ext -shell-escape "\@tempa"}%
      \immediate\closeout\tud@write@a%
      \ifwindows%
        \ShellEscape{rename tutorials.sh tutorials.bat}%
        \ShellEscape{tutorials.bat}%
        \ShellEscape{del tutorials.bat}%
      \else%
        \ShellEscape{bash tutorials.sh}%
        \ShellEscape{rm tutorials.sh}%
      \fi%
    }%
  \fi%
  \IfFileExists{tutorials/#2.pdf}{%
    \hypertut{#2}{}%
  }{%
    \File*{#2.pdf}%
    \tud@shellescape@wrn{tutorials/#2.pdf}%
  }%
  \IfBooleanF{#1}{%
    \index[files]{\hypertut{#2}{\suffix{Tutorial}}\IfValueT{#3}{|#3}}%
  }%
}
\newcommand*\IncludeExample[1]{%
  \lstinputlisting[style=tudscr]{examples/#1}%
  \ifnum\pdf@shellescape=\@ne\relax%
    \filemodCmp{examples/#1.pdf}{examples/#1.tex}{}{%
      \edef\@tempa{\tud@latex@ext -output-directory examples examples/#1.tex}%
      \ShellEscape{\@tempa}%
      \ShellEscape{\@tempa}%
    }%
    \filemodCmp{examples/#1_print.pdf}{examples/#1_print.tex}{}{%
      \edef\@tempa{%
        \tud@latex@ext -output-directory examples examples/#1_print.tex%
      }%
      \ShellEscape{\@tempa}%
      \ShellEscape{\@tempa}%
    }%
  \fi%
  \def\@tempa{examples/#1.pdf}%
  \ifdef{\tudprintflag}{%
    \IfFileExists{examples/#1_print.pdf}{\def\@tempa{examples/#1_print.pdf}}{}%
  }{}%
  \IfFileExists{\@tempa}{%
    \edef\@tempa{%
      \noexpand\includepdf[%
        pages=-,noautoscale,frame,keepaspectratio,pagecommand={},%
        height=\noexpand\textheight,width=\noexpand\textwidth,offset=5mm 0mm%
      ]{\@tempa}%
    }%
    \@tempa%
  }{%
    \tud@shellescape@wrn{\@tempa}%
  }%
}
\PassOptionsToPackage{obeyFinal}{todonotes}
\ifdef{\tudprintflag}{%
  \PassOptionsToPackage{color=white}{todonotes}%
}{%
  \PassOptionsToPackage{colorinlistoftodos,color=HKS92!10}{todonotes}%
}
\RequirePackage{todonotes}[2012/07/25]
\AtEndPreamble{%
  \ifdim\marginparwidth<2cm\relax%
    \setlength\marginparwidth{2cm}%
  \fi%
}
\AfterPackage*{todonotes}{%
  \newcommand*\tud@todo@type@use{}%
  \NewDocumentCommand\ToDo{s o m !o}{%
    \ifbool{@tud@todo}{%
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
                \ifnumber{\tud@res@b}{%
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
            \marginnote[##1]{##2}[\dimexpr-\ht\z@+1.6ex+1.75pt\relax]%
          }%
          \toks@\expandafter{\tud@res@a noline,nolist}%
          \settowidth\marginparwidth{\tud@res@c}%
          \addtolength\marginparwidth{\dimexpr1.6ex+1pt\relax}%
          \expandafter\todo\expandafter[\the\toks@]{\tud@res@c\strut}%
          \aftergroup\par\aftergroup\noindent%
          \listremove{\tud@todo@type@use}{rls}%
          \listremove{\tud@todo@type@use}{imp}%
          \listremove{\tud@todo@type@use}{doc}%
          \ifx\tud@todo@type@use\@empty\else%
            \begingroup%
              \let\tud@res@c\@empty%
              \renewcommand*{\do}[1]{%
                \appto\tud@res@c{,##1}%
              }%
              \dolistloop{\tud@todo@type@use}%
              \edef\tud@res@c{%
                \endgroup%
                \edef\noexpand\tud@res@c{\expandafter\@gobble\tud@res@c}%
              }%
            \tud@res@c%
            \ClassWarning{tudscrmanual}{%
              Unknown key(s) `\string\ToDo[\tud@res@c]'%
            }%
          \fi%
        \fi%
      \endgroup%
      \global\let\@currentHref\tud@currentHref%
    }{}%
    \ignorespaces%
  }%
  \newcommand*\ListOfToDo{\if@tud@todo\clearpage\listoftodos\fi}%
}
\TUD@UnwindPackage{todonotes}{%
  \NewDocumentCommand\ToDo{s o m !o}{}%
  \newcommand*\ListOfToDo{}%
}
\RequirePackage{csquotes}[2011/10/22]
\RequirePackage{textcomp}[2005/09/27]
\RequirePackage{setspace}[2011/12/19]
\setstretch{1.1}
\PassOptionsToPackage{vskip=\smallskipamount}{quoting}
\RequirePackage{quoting}[2014/01/28]
\RequirePackage{isodate}[2010/01/03]
\RequirePackage{hologo}[2012/04/26]
\RequirePackage{ragged2e}[2009/05/21]
\@removefromreset{footnote}{chapter}
\renewcommand*\raggedfootnote{\tud@RaggedRight}%
\RequirePackage{booktabs}[2005/04/14]
\RequirePackage{caption}[2015/09/17]
\RequirePackage{floatrow}[2008/08/02]
\DeclareCaptionSubType[alph]{figure}
\DeclareCaptionSubType[alph]{table}
\captionsetup{font=sf,labelfont=bf,labelsep=space}
\captionsetup{singlelinecheck=off,format=hang,justification=raggedright}
\captionsetup[subfloat]{labelformat=brace,list=off}
\KOMAoption{captions}{tableheading,figuresignature}
\floatsetup[table]{style=plaintop}
\RequirePackage{tikz}[2013/12/13]
\RequirePackage{pdfpages}[2013/08/25]
\RequirePackage{units}[1998/08/04]
\AtEndPreamble{%
  \RequirePackage{ellipsis}[2004/9/28]%
  \let\ellipsispunctuation\relax%
}
\newcommand*\tud@replace[3]{%
  \begingroup%
    \toks@{\def\@tempa##1}%
    \eaddto@hook\toks@{\detokenize{#2}}%
    \addto@hook\toks@{##2\@nil{\@tempb{##1}{##2}}}%
    \the\toks@%
    \def\@tempb##1##2{%
      \IfArgIsEmpty{##2}{%
        \appto#1{##1}%
        \let\@tempc\relax%
      }{%
        \appto#1{##1#3}%
        \def\@tempc{\@tempa##2\@nil}%
      }%
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
\newcommand*\Attention[2][\z@]{%
  \marginnote{%
    \setlength\fboxsep{0.25em}%
    \fbox{Achtung!}%
  }[#1]%
  \emph{\trim@spaces{#2}}%
}
\NewDocumentCommand\Forum{!s !t'}{%
  \IfBooleanTF{#1}{\toks@{\href}}{\toks@{\hrfn}}%
  \IfBooleanT{#2}{\toks@{\url}}%
  \addto@hook\toks@{{http://latex.wcms-file3.tu-dresden.de/}}%
  \IfBooleanF{#2}{\addto@hook\toks@{{TUD-\LaTeX-Forum}}}%
  \the\toks@\xspace%
}
\NewDocumentCommand\CTAN{!s !o !d()}{%
  \IfBooleanTF{#1}{\toks@{\href}}{\toks@{\hrfn}}%
  \addto@hook\toks@{{http://www.ctan.org/\IfValueT{#2}{#2}}}%
  \addto@hook\toks@{%
    {\tud@english{Comprehensive TeX Archive Network (CTAN\IfValueT{#3}{~#3})}}%
  }%
  \the\toks@\xspace%
}
\newcommand*\tud@github@baseurl{https://github.com/tud-cd}
\NewDocumentCommand\GitHubRepo{s t' m !O{releases}}{%
  \IfBooleanTF{#1}{\toks@{\href}}{\toks@{\hrfn}}%
  \IfBooleanT{#2}{\toks@{\url}}%
  \addto@hook\toks@{{\tud@github@baseurl/#3/#4}}%
  \IfBooleanF{#2}{%
    \addto@hook\toks@{{\tud@english{GitHub-Repository~\sbnfont{#3}}}}%
  }%
  \the\toks@\xspace%
}
\newcommand*\Download[1]{\tud@github@baseurl/tudscr/releases/download/#1}
\newcommand*\notudscrartcl{%
  F\"ur die Klassen \Class{tudscrartcl} sowie \Class{tudscrposter} ist diese %
  Option nicht verf\"ugbar.%
}
\NewDocumentCommand\scrguide{!s !O{\KOMAScript-Handbuch}}{%
  \IfBooleanTF{#1}{\toks@{\href}}{\toks@{\hrfn}}%
  \addto@hook\toks@{%
    {http://mirrors.ctan.org/macros/latex/contrib/koma-script/doc/scrguide.pdf}%
  }%
  \addto@hook\toks@{{#2}}%
  \the\toks@\xspace%
}
\newrobustcmd*\TUDScriptContactNote{%
  \footnote{\scriptsize\expandafter\mailto\expandafter{\TUDScriptContact}}%
}
\newrobustcmd*\TUDScriptContactTitle{%
  \ifundef{\emailaddress}{\TUDScriptContactNote}{%
    \expandafter\emailaddress\expandafter{\TUDScriptContact}%
  }%
}
\AfterPackage*{hyperref}{%
  \pdfstringdefDisableCommands{%
    \let\TUDScriptContactNote\relax%
    \let\TUDScriptContactTitle\relax%
  }%
}
\newcommand*\CD{\tud@english{Corporate Design}\xspace}
\newcommand*\CDs{\tud@english{Corporate Designs}\xspace}
\newcommand*\TUD{Technische Universit\"at Dresden\xspace}
\newcommand*\TnUD{Technischen Universit\"at Dresden\xspace}
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
    \def\DDC{DRESDEN-concept}%
    \def\TUDScript{TUD-Script}%
    \def\KOMAScript{KOMA-Script}%
  }%
}
\newrobustcmd*\OpenSans{%
  \texorpdfstring{\textcdbn{Open~Sans}}{Open Sans}\xspace%
}
\newrobustcmd*\Univers{\texorpdfstring{\textcdbi{Univers}}{Univers}\xspace}
\newrobustcmd*\DIN{\texorpdfstring{\textcdbi{DIN~Bold}}{DIN Bold}\xspace}
\renewcommand*\@pnumwidth{2.1em}%
\renewcommand*\@tocrmarg{3.1em}%
\newcommand*\textsbn{}
\newrobustcmd*\sbnfont{\sffamily\bfseries\upshape}
\DeclareTextFontCommand\textsbn{\sbnfont}
\newcommand*\textsbs{}
\newrobustcmd*\sbsfont{\sffamily\bfseries\slshape}
\DeclareTextFontCommand\textsbs{\sbsfont}
%%% From File: tudscr-fields.dtx
\newcommand*\@chairman{}
\newcommand*\chairman[1]{\gdef\@chairman{#1}}
\newcommand*\@grade{}
\newcommand*\grade[1]{\gdef\@grade{#1}}
\newcommand*\@headline{}
\newcommand*\@issuedate{}
\newcommand*\issuedate[1]{\tud@printdate{\@issuedate}{#1}}
\newcommand*\@duedate{}
\newcommand*\duedate[1]{\tud@printdate{\@duedate}{#1}}
\newcommand*\@contactperson{}
\newcommand*\contactperson[1]{\gdef\@contactperson{#1}}
\newcommand*\@office{}
\newrobustcmd*\office[1]{\gdef\@office{#1}}
\newcommand*\@telephone{}
\newrobustcmd*\telephone[1]{\gdef\@telephone{#1}}
\newcommand*\@telefax{}
\newrobustcmd*\telefax[1]{\gdef\@telefax{#1}}
%%% From File: tudscr-localization.dtx
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
%%% From File: tudscr-texindy.dtx
\begingroup
\newcommand*\tud@write@xdy{}
\newwrite\tud@write@xdy
\newif\if@tud@xdy@glo
\newcommand*\tud@xdy@create[2][theindex]{%
  \IfFileExists{\@currname-#2.xdy}{}{%
  \ifstr{#1}{theglossary}{\@tud@xdy@glotrue}{\@tud@xdy@glofalse}%
  \openout\tud@write@xdy=\@currname-#2.xdy\relax%
  \write\tud@write@xdy{(require "texindy.xdy")}%
  \write\tud@write@xdy{%
    (define-location-class^^J%
    \space\space"arabic-page-numbers" ("arabic-numbers")%
    \space:min-range-length 1^^J%
    )^^J%
    (markup-range :sep "--")%
  }%
  \write\tud@write@xdy{%
    (merge-rule "\@backslashchar[(.*)\@backslashchar]" "" :eregexp)%
  }%
  \write\tud@write@xdy{%
    (markup-indexentry :open "~n \string\subsubsubitem " :depth 3)%
  }%
  \write\tud@write@xdy{%
    (markup-locclass-list%
    \space:open "\string\,\string\dotfill\string\,"%
    \space:close "\string\relax"%
    \space:sep ",\space"%
    )%
  }%
  \write\tud@write@xdy{%
    (define-attributes (("declare" "!" "important" "?" "default")))^^J%
    (markup-locref%
    \space:attr "declare"\space\space%
    \space:open "\string\textbf{\string\hyperpage{"%
    \space:close "}}"%
    )^^J%
    (markup-locref%
    \space:attr "!"\@spaces\@spaces%
    \space:open "\string\textbf{\string\hyperpage{"%
    \space:close "}}"%
    )^^J%
    (markup-locref%
    \space:attr "important"%
    \space:open "\string\textsl{\string\hyperpage{"%
    \space:close "}}"%
    )^^J%
    (markup-locref%
    \space:attr "?"\@spaces\@spaces%
    \space:open "\string\textsl{\string\hyperpage{"%
    \space:close "}}"%
    )^^J%
    (markup-locref%
    \space:attr "default"\space\space%
    \space:open "\string\hyperpage{"\@spaces\@spaces%
    \space:close "}"%
    )%
  }%
  \write\tud@write@xdy{%
    (markup-crossref-list :class "see"^^J%
    \space\space:open "\string\cleversee{" \@spaces:sep "; " :close "}"^^J%
    )^^J%
    (markup-crossref-list :class "seealso"^^J%
    \space\space:open "\string\cleverseealso{" :sep "; " :close "}"^^J%
    )%
  }%
  \write\tud@write@xdy{%
    (define-crossref-class "seeunverified" :unverified)^^J%
    (markup-crossref-list :class "seeunverified"^^J%
    \space\space:open "\string\cleversee{" \@spaces:sep "; " :close "}"^^J%
    )%
  }%
  \write\tud@write@xdy{%
    (define-crossref-class "seeidx" :unverified)^^J%
    (markup-crossref-list :class "seeidx"^^J%
    \space\space:open "\string\seeidx{"\@spaces\@spaces:sep "; "%
    \space:close "}{}"^^J%
    )%
  }%
  \write\tud@write@xdy{%
    (define-location-class-order^^J%
    \space\space(^^J%
    \@spaces"see" "seealso" "seeidx" "seeunverified"^^J%
    \@spaces"roman-page-numbers" "arabic-page-numbers" "alpha-page-numbers"^^J%
    \@spaces"Roman-page-numbers" "Alpha-page-numbers"^^J%
    \space\space)^^J%
    )%
  }%
  \write\tud@write@xdy{%
    (markup-crossref-layer-list :class "see"%
    \@spaces\space:sep "\string\,\string\textbar\string\,"%
    )^^J%
    (markup-crossref-layer-list :class "seealso"%
    \space:sep "\string\,\string\textbar\string\,"%
    )%
  }%
  \closeout\tud@write@xdy%
  }%
}
\tud@xdy@create{ind}
\endgroup
\endinput
%%
%% End of file `tudscrmanual.cls'.
