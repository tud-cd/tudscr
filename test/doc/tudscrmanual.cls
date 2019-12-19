%%
%% This is file `tudscrmanual.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tudscr-version.dtx  (with options: `class,manual,identify,inherit')
%% tudscr-base.dtx  (with options: `class,manual,inherit,load')
%% tudscr-manual.dtx  (with options: `class,manual,option')
%% tudscr-misc.dtx  (with options: `class,manual,inherit,execute')
%% tudscr-manual.dtx  (with options: `class,manual,body')
%% tudscr-fields.dtx  (with options: `class,manual,body')
%% tudscr-localization.dtx  (with options: `class,manual,body')
%% tudscr-texindy.dtx  (with options: `class,manual')
%% 
%% TUD-Script -- Corporate Design of Technische Universitaet Dresden
%%               2019/10/24 v2.06f TUD-Script
%% 
%% Copyright (C) Falk Hanisch <hanisch.latex@outlook.com>, 2012-2019
%%               https://github.com/tud-cd/tudscr
%%               https://latex.wcms-file3.tu-dresden.de/phpBB3/
%% 
%% This file was generated from file(s) of the TUD-Script bundle.
%% ----------------------------------------------------------------------------
%% 
%% This work may be distributed and/or modified under the conditions
%% of the LaTeX Project Public License, version 1.3c of the license.
%% The latest version of this license is in
%%               https://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of
%% LaTeX 2005/12/01 or later and of this work.
%% 
%% This work has the LPPL maintenance status "author-maintained".
%% 
%% The current maintainer and author of this work is Falk Hanisch.
%% 
%%%% From File: tudscr-version.dtx 2019/11/08 00:00:00 5a8858a
\NeedsTeXFormat{LaTeX2e}[2019/10/01]
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
  \TUD@@Version{2019/10/24 v2.06f TUD-Script}{2018/03/30 v3.25 KOMA-Script}%
  \ifx\TUDScriptVersion\@undefined%
    \xdef\TUDScriptVersion{\TUD@Version}%
    \def\@tempa#1 v#2 #3\relax#4\relax#5{\gdef#5{#2}}%
    \expandafter\@tempa\TUD@Version ? ?\relax\relax{\TUDScriptVersionNumber}%
    \expandafter\@tempa\TUD@KOMAVersion ? ?\relax\relax{\TUD@KOMAVersionNumber}%
  \fi%
\endgroup
\@ifundefined{TUDScript}{%
  \DeclareRobustCommand\TUDScript{%
    \mbox{%
      \textsf{%
        T\kern.05em U\kern.05em D\kern.1em-\kern.1em Script%
      }%
    }\ifcsname xspace\endcsname\xspace\fi%
  }%
}{}
\providecommand*\TUDScriptContact{hanisch.latex@outlook.com}
\providecommand*\TUDScriptRepository{https://github.com/tud-cd/tudscr}
\providecommand*\TUDScriptForum{https://latex.wcms-file3.tu-dresden.de/phpBB3/}
\newcommand*\TUD@ProvidesWrapperClass[3]
{%
  \ProvidesClass{#1}[%
  2019/10/24 v2.06f TUD-Script
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
  \typeout{| Forum:      \TUDScriptForum}%
  \typeout{+------------------------------------------------------------------}%
}
\TUD@ProvidesWrapperClass{tudscrmanual}{tudscrreprt}{manual class}
%%%% From File: tudscr-base.dtx 2019/11/29 01:36:52 c9a9b7b
\RequirePackage{tudscrbase}[%
  2019/10/24 v2.06f TUD-Script
]
\renewcommand*\TUD@KOMAoptions[1]{\PassOptionsToClass{#1}{\TUD@Class@Parent}}
\AfterClass{\TUD@Class@Parent}{\let\TUD@KOMAoptions\KOMAoptions}
%%%% From File: tudscr-manual.dtx 2019/11/29 01:36:52 c9a9b7b
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
%%%% From File: tudscr-misc.dtx 2019/11/29 01:36:52 c9a9b7b
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\TUD@Class@Parent}}
\TUDProcessOptions\relax
\PassOptionsToClass{ttfont=roboto}{\TUD@Class@Parent}
\LoadClass{\TUD@Class@Parent}[
  2019/10/24 v2.06f TUD-Script
]
%%%% From File: tudscr-manual.dtx 2019/11/29 01:36:52 c9a9b7b
\PassOptionsToPackage{log-declarations=false}{xparse}
\RequirePackage{xparse}[2019/10/11]
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
  \ClassWarning{tudscrmanual}{%
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
\tud@newif\if@tud@list@sorted
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
\newcommand*\tud@trace@lbl@types{}
\listadd\tud@trace@lbl@types{created}%
\listadd\tud@trace@lbl@types{matched}%
\listadd\tud@trace@lbl@types{unused}%
\listadd\tud@trace@lbl@types{ignored}%
\listadd\tud@trace@lbl@types{missing}%
\listadd\tud@trace@lbl@types{url}%
\def\tud@res@a#1{%
  \expandafter\newcommand\csname tud@trace@lbl@#1@list\endcsname{}%
  \expandafter\let\csname tud@trace@lbl@#1@list\endcsname\relax%
}
\forlistloop{\tud@res@a}{\tud@trace@lbl@types}%
\NewDocumentCommand\tracinglabels{!s !O{missing}}{%
  \def\tud@res@a##1{%
    \expandafter\let\csname tud@trace@lbl@##1@list\endcsname\relax%
  }%
  \forlistloop{\tud@res@a}{\tud@trace@lbl@types}%
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
    \expandafter\let\csname tud@trace@lbl@##1@list\endcsname\@empty%
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
  \begingroup%
    \ifcsundef{tud@trace@lbl@#1@list}{%
      \ifinlist{#1}{\tud@trace@lbl@types}{}{%
        \ClassError{tudscrmanual}{Undefined label type `#1'}{%
          The given tracing type was never defined.%
        }%
      }%
    }{%
      \protected@edef\tud@res@a{#2}%
      \@onelevel@sanitize\tud@res@a%
      \wlog{+++++ label #1: \tud@res@a\space on page \thepage\on@line}%
      \xifinlistcs{\tud@res@a}{tud@trace@lbl@#1@list}{}{%
        \listcsxadd{tud@trace@lbl@#1@list}{\tud@res@a}%
      }%
    }%
  \endgroup%
}
\newcommand*\tud@trace@lbl@wlog{\relax}
\AfterEndDocument{\tud@trace@lbl@wlog}
\newcommand*\tud@trace@markup@types{}
\listadd\tud@trace@markup@types{declare}%
\listadd\tud@trace@markup@types{output}%
\listadd\tud@trace@markup@types{temp}%
\def\tud@res@a#1{%
  \expandafter\newcommand\csname tud@trace@markup@#1@list\endcsname{}%
  \expandafter\let\csname tud@trace@markup@#1@list\endcsname\relax%
}
\forlistloop{\tud@res@a}{\tud@trace@markup@types}%
\NewDocumentCommand\tracingmarkup{!s !O{all}}{%
  \def\tud@res@a##1{%
    \expandafter\let\csname tud@trace@markup@##1@list\endcsname\relax%
  }%
  \forlistloop{\tud@res@a}{\tud@trace@markup@types}%
  \let\tud@res@b\@empty%
  \let\tud@res@c\@empty%
  \@for\tud@res@a:=#2\do{\listeadd\tud@res@b{\tud@res@a}}%
  \ifinlist{all}{\tud@res@b}{%
    \let\tud@res@c\tud@trace@markup@types%
  }{%
    \def\tud@res@a##1{\xifinlist{##1}{\tud@res@b}{\listeadd\tud@res@c{##1}}{}}%
    \forlistloop{\tud@res@a}{\tud@trace@markup@types}%
  }%
  \def\tud@res@a##1{%
    \expandafter\let\csname tud@trace@markup@##1@list\endcsname\@empty%
    \IfBooleanF{#1}{%
      \appto\tud@trace@markup@wlog{%
        \wlog{+++++ markup ##1 (sorted) +++++}%
        \expandafter\tud@list@sort\csname tud@trace@markup@##1@list\endcsname%
        \let\tud@res@b\@empty%
        \def\tud@res@a####1{\appto\tud@res@b{####1^^J}}%
        \forlistcsloop\tud@res@a{tud@trace@markup@##1@list}%
        \wlog{\tud@res@b}%
      }%
    }%
  }%
  \def\tud@trace@markup@wlog{\relax}%
  \forlistloop{\tud@res@a}{\tud@res@c}%
}
\@onlypreamble\tracingmarkup
\newcommand*\tud@trace@markup@add[2]{%
  \begingroup%
    \ifcsundef{tud@trace@markup@#1@list}{%
      \ifinlist{#1}{\tud@trace@markup@types}{}{%
        \ClassError{tudscrmanual}{Undefined markup type `#1'}{%
          The given tracing type was never defined.%
        }%
      }%
    }{%
      \protected@edef\tud@res@a{#2}%
      \@onelevel@sanitize\tud@res@a%
      \wlog{+++++ markup #1 on page \thepage\on@line^^J\tud@res@a}%
      \xifinlistcs{\tud@res@a}{tud@trace@markup@#1@list}{}{%
        \listcsxadd{tud@trace@markup@#1@list}{\tud@res@a}%
      }%
    }%
  \endgroup%
}
\newcommand*\tud@trace@markup@wlog{\relax}
\AfterEndDocument{\tud@trace@markup@wlog}
\newcommand*\tud@trace@bdl@add[1]{}
\newcommand*\tud@trace@bdl@list{}
\newcommand*\tracingbundle{%
  % TODO use \@onelevel@sanitize, comma separated list
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
\NewDocumentCommand\tud@auxlist@register{o m !O{\@firstofone}}{%
  \expandafter\newcommand\expandafter*\csname#2@auxlist\endcsname{}%
  \expandafter\newcommand\expandafter*\csname#2@auxlist@positive\endcsname{}%
  \expandafter\newcommand\expandafter*\csname#2@auxlist@negative\endcsname{}%
  \expandafter\newcommand\expandafter*\csname#2@auxlist@handler\endcsname{#3}%
  \BeforeClosingMainAux{%
    \forlistcsloop{\listcsremove{#2@auxlist@positive}}{#2@auxlist@negative}%
    \tud@auxlist@export{#2}%
  }%
  \AtBeginDocument{\tud@auxlist@import{#1}{#2}}%
}
\newcommand*\tud@auxlist@export[1]{%
  \if@filesw%
    \let\tud@res@a\@empty%
    \def\tud@res@b##1{\eappto\tud@res@a{{##1}}}%
    \forlistcsloop\tud@res@b{#1@auxlist@positive}%
    \immediate\write\@mainaux{%
      \string\gdef\expandafter\string\csname #1@auxlist\endcsname%
        {\expandonce\tud@res@a}%
    }%
  \fi%
}
\newcommand*\tud@auxlist@import[2]{%
  \begingroup%
    \edef\tud@res@a{%
      \unexpanded{\@tfor\tud@res@c:=}%
      \expandafter\expandonce\csname #2@auxlist\endcsname%
    }%
    \letcs\tud@res@b{#2@auxlist@handler}%
    \global\cslet{#2@auxlist}\@empty%
    \IfValueT{#1}{%
      \edef\tud@res@c{\tud@res@b{#1}}%
      \listcsxadd{#2@auxlist}{\expandonce\tud@res@c}%
    }%
    \tud@res@a\do{%
      \edef\tud@res@c{\tud@res@b{\tud@res@c}}%
      \listcsxadd{#2@auxlist}{\expandonce\tud@res@c}%
    }%
  \endgroup%
}
\newcommand*\tud@auxlist@add[2]{%
  \begingroup%
    \protected@edef\tud@res@a{#2}%
    \edef\tud@res@a{\detokenize\expandafter{\tud@res@a}}%
    \xifinlistcs{\tud@res@a}{#1@auxlist@positive}{}{%
      \listcsxadd{#1@auxlist@positive}{\tud@res@a}%
    }%
  \endgroup%
}
\newcommand*\tud@auxlist@remove[2]{%
  \begingroup%
    \protected@edef\tud@res@a{#2}%
    \edef\tud@res@a{\detokenize\expandafter{\tud@res@a}}%
    \xifinlistcs{\tud@res@a}{#1@auxlist@negative}{}{%
      \listcsxadd{#1@auxlist@negative}{\tud@res@a}%
    }%
  \endgroup%
}
\newcommand*\tud@auxlist@ifin[2]{%
  \begingroup%
    \protected@edef\tud@res@a{#1}%
    \letcs\tud@res@b{#2@auxlist@handler}%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\ifinlistcs{\tud@res@b{\tud@res@a}}{#2@auxlist}%
    }%
  \tud@res@a%
}
\newcommand*\tud@auxlist@forloop[2]{\forlistcsloop#1{#2@auxlist}}
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
    \kernel@ifnextchar[%]
      {\tud@hyperref@a}%
      {\tud@hyperref@b}%
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
\tud@auxlist@register{tud@label@alias}[\detokenize\expandafter]%
\NewDocumentCommand\tudhyperdef{s m !d==}{%
  \begingroup%
    \IfBooleanTF{#1}{%
      \raisebox{\tud@hyperdefvskip@dim}[0pt][0pt]{\tud@hyperdef{#2}}%
      \par\nobreak\vskip\glueexpr-\parskip-\baselineskip\relax%
      \@afterindentfalse\@afterheading%
    }{%
      \Hy@raisedlink{\tud@hyperdef{#2}}\ignorespaces%
    }%
    \label{#2}%
    \tud@trace@lbl@add{created}{#2}%
    \tud@auxlist@remove{tud@label@alias}{#2}%
    \edef\tud@res@a{#2}%
    \def\tud@res@c##1=##2\@nil{\def\tud@res@a{##1}}%
    \expandafter\tud@res@c\tud@res@a==\@nil%
    \let\tud@res@b\@empty%
    \expandafter\tud@if@nil\expandafter{\tud@alias@values}{}{%
      \@for\tud@res@c:=\tud@alias@values\do{%
        \trim@spaces@in\tud@res@c%
        \ifx\tud@res@c\@empty\else%
          \listeadd\tud@res@b{\tud@res@c}%
          \tudhyper@alias@values{\tud@res@a=\tud@res@c}%
        \fi%
      }%
    }%
    \IfValueT{#3}{%
      \listadd\tud@res@b{#3}%
      \ifstrequal{\PBoolean}{#3}{%
        \tudhyper@alias@values{\tud@res@a=true}%
        \tudhyper@alias@values{\tud@res@a=false}%
      }{}%
      % TODO typeout --> welche Optionen sind ggf. betroffen? eher wieder rein!
%      \in@{\PName}{#3}%
%      \ifin@%
%        \tudhyper@alias@values{\tud@res@a}%
%      \fi%
    }%
    \def\tud@res@c##1{%
      \ifstrbool{##1}{\@tud@res@swatrue}{\@tud@res@swatrue}{\@tud@res@swafalse}%
      \if@tud@res@swa%
        \ifboolexpr{%
          (test {\ifstrequal{##1}{true}} or test {\ifstrequal{##1}{false}})%
        }{\@tud@res@swafalse}{\@tud@res@swatrue}%
        \if@tud@res@swa%
          \ClassWarning{tudscrmanual}{%
            Boolean values should only be referred with\MessageBreak%
            'true/false' but '##1' was used%
          }%
        \fi%
      \fi%
    }%
    \expandafter\forlistloop\expandafter\tud@res@c\expandafter{\tud@res@b}%
  \endgroup%
}
\newcommand*\tud@hyperdef[1]{%
  \begingroup%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\hyperdef{\tud@manualname}{#1}{}%
    }%
  \tud@res@a%
}
\newcommand*\tud@hyperdefvskip@dim{\dimexpr1\baselineskip*3\relax}
\patchcmd{\set@@@@preamble}{%
  \let\phantomsection\relax%
}{%
  \let\phantomsection\relax%
  \renewcommand*\tud@hyperdefvskip@dim{\dimexpr1\baselineskip*15\relax}%
}{}{\tud@patch@wrn{set@@@@preamble}}
\newcommand*\tudhyper@alias@values[1]{%
  \tud@auxlist@add{tud@label@alias}{#1}%
  \tud@auxlist@ifin{#1}{tud@label@alias}{%
    \Hy@raisedlink{\tud@hyperdef{#1}}\ignorespaces%
    \label{#1}%
    \tud@trace@lbl@add{created}{#1\space(alias)}%
  }{}%
}
\newrobustcmd*\tudhyperref[2]{\hyperref{}{\tud@manualname}{#1}{#2}}%
\newcommand*\hrfn[2]{%
  \href{#1}{\trim@spaces{#2}}%
  \footnote{%
    % TODO notwendig? warum nicht url direkt? ansonsten müsste 
    % \_ schon vor href umdefiniert werden
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
\renewcommand*\fullref[1]{\hyperref[{#1}]{\autoref*{#1}\space\vpageref{#1}}}
\AfterPackage*{hyperref}{\RequirePackage[babel]{microtype}[2013/05/23]}
\TUD@UnwindPackage{hyperref}{\RequirePackage[babel]{microtype}[2013/05/23]}
\newcommand*\tud@lbl@tmp{}
\newcommand*\tud@if@lbl@exists[1]{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@if@lbl@@exists{#1}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@if@lbl@@exists{>{\Processor@CreateLabel}m}{%
  \ifcsundef{r@#1}{%
    \expandafter\@secondoftwo%
  }{%
    \expandafter\@firstoftwo%
  }%
}
\newcommand*\Processor@CreateLabel[1]{%
  \in@{:}{#1}%
  \ifin@%
    \begingroup%
      \def\tud@res@c##1=##2=##3\@nil{%
        \def\tud@res@a{\SplitArgument{2}{:}{##1}}%
        \IfArgIsEmpty{##2}{%
          \let\tud@res@b\@empty%
        }{%
          \def\tud@res@b{=##2}%
        }%
      }%
      \tud@res@c#1==\@nil%
      \tud@res@a%
      \edef\tud@res@c{%
        \endgroup%
        \noexpand\Processor@@CreateLabel%
          \expandonce\ProcessedArgument{\expandonce\tud@res@b}%
      }%
    \tud@res@c%
  \else%
    \ClassError{tudscrmanual}%
    {Wrong formatted label}{%
      A label has to be given at least with '<bundle>:<markup>'\MessageBreak%
      but \detokenize{#1} was used.%
    }%
    \def\ProcessedArgument{#1:???:???}%
  \fi%
}
\newcommand*\Processor@@CreateLabel[4]{%
  \begingroup%
    \Markup@Expandable%
    \IfValueTF{#3}{%
      \protected@edef\tud@res@a{#1:#2:#3}%
    }{%
      \tud@attr@get\tud@res@b{#2}%
      \protected@edef\tud@res@a{#1:\tud@res@b:#2}%
    }%
    \protected@edef\tud@res@c{%
      \noexpand\endgroup%
      \def\noexpand\ProcessedArgument{%
        \expandafter\detokenize\expandafter{\tud@res@a#4}%
      }%
    }%
  \tud@res@c%
}
% TODO \relax in #3 > !:...:... für \File etc. bzw. gar kein label?!
\NewDocumentCommand\tud@lbl@get{s m >{\Processor@CreateLabel}m !d++ !d==}{%
  % TODO !#4 -> +#4
  \protected@edef#2{#3\IfValueT{#4}{!#4}}%
  \IfValueT{#5}{%
    \begingroup%
      \Markup@Expandable%
      \protected@edef\tud@res@c{%
        \def\noexpand\tud@res@a{#2}%
        \def\noexpand\tud@res@b{#5}%
        \def\noexpand\tud@res@c{\endgroup}%
      }%
      \tud@res@c%
      \ifxblank{\tud@res@b}{}{%
        \protected@edef\tud@res@c{\tud@res@a=\tud@res@b}%
        \IfBooleanF{#1}{%
          \tud@if@lbl@exists{\tud@res@c}{}{\let\tud@res@c\tud@res@a}%
        }%
        \protected@edef\tud@res@c{\endgroup\def\noexpand#2{\tud@res@c}}%
      }%
    \tud@res@c%
  }%
}
% TODO alle \toks@ > \tud@toks@ ?
\newif\if@tud@declare
\newcount\tud@declare@num
\newif\if@tud@openindex
\newcommand*\tud@declaration@list{}
\let\tud@declaration@list\relax
\newcommand*\tud@declaration@@list{}
\let\tud@declaration@@list\relax
\newcommand*\tud@declaration@add[3]{%
  \listadd\tud@declaration@list{#1#2#3}%
  \listadd\tud@declaration@@list{#2}%
}
\newcommand*\tud@alias@values{\@nil}
\NewDocumentEnvironment{Declaration}{o m !o !o !d() !D<>{\noexpand\@nil}}{%
  \begingroup%
    \tud@toks@{\tud@declaration@add}%
    \edef\tud@res@a{{\gdef\noexpand\tud@alias@values{#6}}}%
    \eaddto@hook\tud@toks@{\tud@res@a}%
    \addto@hook\tud@toks@{{#2}}%
    \addto@hook\tud@toks@{{\gdef\tud@alias@values{\@nil}}}%
    \edef\tud@res@a{\endgroup\the\tud@toks@}%
  \tud@res@a%
  \tud@declare@start[{#1}]{#2}[{#3}][{#4}](#5)%
}{%
  \tud@declare@end{#2}%
}
\newcommand*\tud@preset@list{}
\let\tud@preset@list\relax
\tud@newif\if@tud@preset@list
\newcommand*\tud@additional@list{}
\let\tud@additional@list\relax
\tud@newif\if@tud@additional@list
\NewDocumentCommand\tud@declare@start{o m r[] r[] r()}{%
  \@tud@declaretrue%
  \Changed@At@CreateList{#1}[{#2}]:\emph{neu}:{\BooleanFalse}%
  \@tud@declarefalse%
  \IfValueTF{#3}{%
    \@tud@preset@listtrue%
    \def\tud@res@a{%
      Voreinstellung\IfArgIsEmpty{#3}{}{: \Parameter@Enclose\PValueDefault{#3}}%
    }%
    % TODO geht das auch mit \def\tud@res@b##1:##2\@nil?
    \IfValueT{#4}{%
      \def\tud@res@b[##1:##2]{##1: \Parameter@Enclose\PValueDefault{##2}}%
      \eappto\tud@res@a{ | \expandonce{\tud@res@b[#4]}}%
    }%
    \listeadd\tud@preset@list{\expandonce\tud@res@a}%
  }{%
    \listadd\tud@preset@list{\relax}%
  }%
  % TODO \in@ ist murks, zählen \tabularnewline in DeclareFormat{Environment}
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
\newcommand*\tud@declare@end[1]{%
  \ifx\tud@declaration@list\relax\else%
    \ClassError{tudscrmanual}{\string\printdeclarationlist\space is missing}{%
      \string\tud@declaration@list\space is not empty. Did you\MessageBreak%
      forget to print this list with\MessageBreak%
      \string\printdeclarationlist?%
    }%
  \fi%
  \vskip-\lastskip%
  \@tud@declaretrue\@tud@openindexfalse#1\@tud@declarefalse%
  \pagebreak[1]%
}
\tud@newif\if@tud@obsolete
\NewDocumentEnvironment{Obsolete}{m m !o !o !d() !d''}{%
  \tud@declaration@add{\global\@tud@obsoletetrue}%
    {#2}{\global\@tud@obsoletefalse}%
  % TODO überprüfen, was passiert hier?
  \@tud@declaretrue\@tud@obsoletetrue%
  \Changed@At@CreateList{#1}[{#2}]:\emph{entf\"allt}:{\BooleanTrue}%
  \@tud@obsoletefalse\@tud@declarefalse%
  \IfValueTF{#5}{%
    \def\tud@res@a{#5}%
  }{%
    \def\tud@res@a{entf\"allt}%
  }%
  \IfValueT{#6}{%
    \appto\tud@res@a{, \seeref{\@tud@indextrue#6'page'}}%
  }%
  \toks@{\tud@declare@start{#2}[{#3}][{#4}]}%
  \eaddto@hook\toks@{\expandafter(\tud@res@a)}%
  \the\toks@%
}{%
  \tud@declare@end{%
    \tud@declare@num=\@ne\relax%
    #2%
    \tud@declare@num=\z@\relax%  
  }%
}
\NewDocumentEnvironment{Declaration'}{m !o !o !d()}{%
  \tud@declaration@add{\global\tud@declare@num=\@ne\relax}%
    {#1}{\global\tud@declare@num=\z@\relax}%
  \tud@declare@start{#1}[{#2}][{#3}](#4)%
}{%
  \tud@declare@end{%
    \tud@declare@num=\@ne\relax%
    #1%
    \tud@declare@num=\z@\relax%
  }%
}
\NewDocumentEnvironment{Declaration*}{m}{%
  \tud@declare@special@start{#1}{2}%
}{%
  \tud@declare@special@end{#1}{2}%
}
\NewDocumentCommand\InlineDeclaration{o m !o}{%
  \Inline@Declaration[{#1}]{#2}{-1}[{#3}]%
}
\NewDocumentCommand\Inline@Declaration{o m m !o}{%
  \tud@declare@special@start[{#1}]{#2}{#3}%
  \print@changedatlist%
  \tud@declare@special@end{#2}{-1}%
  \IfValueT{#4}{#4}\xspace%
}
% TODO rename Bundle* to EntityDeclaration and Bundle to Separation
\NewDocumentEnvironment{Bundle*}{o m}{%
  \tud@declare@special@start*[{#1}]{#2}{3}%
  \print@changedatlist%
  \begin{Bundle}{#2}%
}{%
  \end{Bundle}%
  \tud@declare@special@end{#2}{3}%
}
\NewDocumentCommand\tud@declare@special@start{s o m m}{%
  \tud@declare@num=#4\relax%
  \@tud@declaretrue%
  % TODO sonderbehandlung * notwendig? optionales argument :xxx:?
  \IfBooleanTF{#1}{%
    \Changed@At@CreateList{#2}(#3){\BooleanFalse}%
  }{%
    \Changed@At@CreateList{#2}[{#3}]{\BooleanFalse}%
  }%
  \@tud@openindextrue#3%
  \@tud@declarefalse%
  \tud@declare@num=\z@\relax%
  \ignorespaces%
}
\newcommand*\tud@declare@special@end[2]{%
  \ifx\tud@changedat@entry@list\@empty\else%
%    \ClassError{tudscrmanual}{Unprocessed change notes}{%
%      \string\tud@changedat@entry@list\space is not empty%
%    }%
  \fi%
  \tud@declare@num=#2\relax%
  \@tud@declaretrue\@tud@openindexfalse#1\@tud@declarefalse%
  \tud@declare@num=\z@\relax%
  \ignorespaces%
}
\NewDocumentCommand\printdeclarationlist{!d()}{%
  \ifx\tud@declaration@list\relax\else%
    \ifhmode%
      \vskip\medskipamount%
    \else%
      \addpenalty{\@beginparpenalty}%
      \addvspace{\medskipamount}%
    \fi%
    \@afterindentfalse\@afterheading%
    \@tud@declaretrue\@tud@openindextrue%
    \def\tud@res@a##1{\ignorespaces##1\tabularnewline}%
    \edef\HyperRaiseLinkDefault{\the\dimexpr1\baselineskip\relax}%
    \sbox\z@{%
      \begin{tabular}{|l|}%
        \hline%
        \forlistloop\tud@res@a{\tud@declaration@list}%
        \hline%
      \end{tabular}%
    }\usebox\z@%
    \@tud@declarefalse%
    \ifboolexpr{bool {@tud@preset@list} or bool {@tud@additional@list}}{%
      \def\tud@res@a##1{\small\ignorespaces##1\tabularnewline}%
      \hskip1.2em%
      \if@tud@preset@list%
        \begin{tabular}{@{}l@{}}%
          \forlistloop\tud@res@a{\tud@preset@list}%
        \end{tabular}%
        \hspace{\tabcolsep}%
      \fi%
      \if@tud@additional@list%
        \begin{tabular}{@{}l@{}}%
          \forlistloop\tud@res@a{\tud@additional@list}%
        \end{tabular}%
      \fi%
    }{}%
    \global\let\tud@declaration@list\relax%
    \global\let\tud@preset@list\relax%
    \global\let\tud@additional@list\relax%
    \global\@tud@preset@listfalse%
    \global\@tud@additional@listfalse%
    \print@@changedatlist{%
      \dimexpr(\ht\strutbox+\dp\strutbox-\ht0-\dp0)/2\relax%
    }%
    \IfValueT{#1}{#1}%
    \par\nobreak%
    \vskip\medskipamount%
    \@afterindentfalse\@afterheading%
  \fi%
% TODO rein?
%  \strut%
}
% TODO drittes makro \tud@bdl@unknown -> mappen auf alles, was nicht definiert?
% TODO search for both macros
\newcommand*\tud@bdl@dflt{\Package{tudscr}}
\newcommand*\tud@bdl@curr{}
\let\tud@bdl@curr\tud@bdl@dflt
\tud@auxlist@register[\tud@bdl@dflt]{tud@bdl}%
\newcommand*\tud@bdl@add[1]{%
  \begingroup%
    \protected@edef\tud@res@a{#1}%
    \ifx\tud@res@a\tud@bdl@dflt\else%
      \tud@auxlist@add{tud@bdl}{\tud@res@a}%
    \fi%
  \endgroup%
}
% TODO make \LaTeX[e] available bzw. \Bundle{latex} verwenden (auch treatise)
% --> Tutorial: Bundle-Argument pflicht bzw. warnung, wenn nicht? oder dflt 
% lassen und direkten link ins handbuch setzen?
% TODO nur gültige Markupbefehle \Class, \Package, \Bundle zulassen
% TODO rename Bundle to Entity
\newenvironment{Bundle}[1]{%
  \ifx\tud@bdl@curr\tud@bdl@dflt%
    \in@{,}{#1}%
    \ifin@%
      \ClassError{tudscrmanual}{Multiple values for environment `Bundle'}{%
        Multiple elements are prohibited within the argument.%
      }%
    \else%
      \gdef\tud@bdl@curr{#1}%
      \tud@trace@bdl@add{#1}%
    \fi%
  \else%
    \ClassError{tudscrmanual}{Nested environment `Bundle'}{%
      It is not possible to nest several `Bundle' environments%
    }%
  \fi%
  \ignorespaces%
}{%
  \global\let\tud@bdl@curr\tud@bdl@dflt%
  \aftergroup\ignorespaces%
}
\NewDocumentCommand\tud@bdl@get{m m r++ r== d() d''}{%
  \begingroup%
    \tud@bdl@seek\tud@res@a{#2}+#3+=#4=(#5)'#6'%
    \protected@expandtwoargs\in@{,}{\tud@res@a}%
    \ifin@%
      \let\tud@res@c\@empty%
      \@for\tud@res@b:={\tud@res@a}\do{%
        \eappto\tud@res@c{%
          \noexpand\@spaces%
          \expandafter\detokenize\expandafter{\tud@res@b}%
          \noexpand\MessageBreak%
        }%
      }%
      \protected@edef\tud@res@b{#2\IfValueT{#3}{+#3+}\IfValueT{#4}{=#4=}}%
      \ClassWarning{tudscrmanual}{%
        Found multiple matching bundles\MessageBreak%
        \tud@res@c for \detokenize\expandafter{\tud@res@b}%
      }%
      \def\tud@res@b##1,##2\@nil{\def\tud@res@a{##1}}%
      \expandafter\tud@res@b\tud@res@a\@nil%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand#1{\expandonce\tud@res@a}%
    }%
  \tud@res@a%
}
\newcommand*\tud@bdl@@get[1]{%
  \ifx\tud@res@a\relax%
    \def\tud@res@a{#1}%
  \else%
    \edef\tud@res@c{\detokenize{#1}}%
    \xifinlist{\tud@res@c}{\tud@res@b}{}{%
      \listeadd{\tud@res@b}{\tud@res@c}%
    }%
  \fi%
}
\newcommand*\tud@bdl@@seek{}
\newcommand*\tud@bdl@@@seek{}
\def\tud@bdl@@seek#1:#2:#3\@nil#4\@nil{%
  \def\tud@bdl@@@seek##1##2{%
    \tud@lbl@get#4##1{##2:#2:#3}%
  }%
}
\NewDocumentCommand\tud@bdl@seek{m m r++ r== !d() !d''}{%
  \begingroup%
    \let\tud@res@a\@empty%
    \let\tud@res@b\@empty%
    \IfValueTF{#5}{%
      \def\tud@res@c##1,##2\@nil{\def\tud@bdl@curr{##1}}%
      \tud@res@c#5,\@nil%
      \def\tud@res@c{#5}%
      \@for\tud@res@c:=\tud@res@c\do{%
        \tud@lbl@get\tud@lbl@tmp{\tud@res@c:#2}+#3+=#4=%
        \tud@if@lbl@exists{\tud@lbl@tmp}{%
          \expandafter\listadd\expandafter\tud@res@a\expandafter{\tud@res@c}%
          \eappto\tud@res@b{,\expandonce\tud@res@c}%
        }{%
          \expandafter\tud@bdl@trace@lbl\expandafter{\tud@lbl@tmp}'#6'%
        }%
      }%
    }{%
      \tud@lbl@get*\tud@lbl@tmp{\tud@bdl@curr:#2}+#3+=#4=%
      \tud@if@lbl@exists{\tud@lbl@tmp}{}{%
        \def\tud@res@c##1{%
          \tud@bdl@@@seek\tud@lbl@tmp{##1}=#4=%
          \tud@if@lbl@exists{\tud@lbl@tmp}{%
            \listadd\tud@res@a{##1}%
            \appto\tud@res@b{,##1}%
          }{}%
        }%
        % DOC Basislabel ohne Wert
        \tud@lbl@get\tud@lbl@tmp{\tud@bdl@curr:#2}+#3+%
        % DOC exakte Treffer mit ggf. gegebenen Wert
        \expandafter\tud@bdl@@seek\tud@lbl@tmp\@nil*\@nil%
        \tud@auxlist@forloop\tud@res@c{tud@bdl}%
        \IfValueT{#4}{%
          \ifx\tud@res@a\@empty%
            % DOC Basislabel ohne Wert
            \tud@lbl@get\tud@lbl@tmp{\tud@bdl@curr:#2}+#3+%
            % DOC suche Treffer ohne gegebenen Wert (kein Stern)
            \expandafter\tud@bdl@@seek\tud@lbl@tmp\@nil\@nil%
            \tud@auxlist@forloop\tud@res@c{tud@bdl}%
          \fi%
        }%
        \ifx\tud@res@a\@empty%
          \tud@lbl@get\tud@lbl@tmp{\tud@bdl@curr:#2}+#3+%
          \expandafter\tud@bdl@trace@lbl\expandafter{\tud@lbl@tmp}'#6'%
        \fi%
      }%
    }%
    \ifx\tud@res@a\@empty%
      \let\tud@res@b\tud@bdl@curr%
    \else%
      \edef\tud@res@b{%
        \expandafter\expandafter\expandafter\@gobble\expandonce\tud@res@b%
      }%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand#1{\expandonce\tud@res@b}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@bdl@trace@lbl{m r''}{%
  \begingroup%
    \tud@lbl@get\tud@lbl@tmp{#1}%
    \tud@get@crossrefnum\tud@res@a'#2'%
    \ifnum\tud@res@a=\z@\relax%
      \tud@trace@lbl@add{ignored}{\tud@lbl@tmp}%
    \else%
      \tud@trace@lbl@add{missing}{\tud@lbl@tmp}%
    \fi%
  \endgroup%
}
\tud@newif\if@tud@index
\addtoeachtocfile{\protect\@tud@indextrue}
\tud@newif\if@tud@changelog
\newrobustcmd*\bsc{\@backslashchar}
\newrobustcmd*\suffix[1]{\begingroup~\scriptsize(#1)\endgroup}
\newcommand*\Markup@Split[3]{%
  \begingroup%
    \def\tud@res@a##1##2\@nil{%
      \expandafter\def\expandafter\tud@res@b\expandafter{#2{##1}{##2}}%
    }%
    \tud@res@a#3\@nil%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand#1{\expandonce\tud@res@b}%
    }%
  \tud@res@a%
}
\newcommand*\Markup@Get@Name[2]{%
  \Markup@Split#1{\@firstoftwo}{#2}%
  \edef#1{%
    \expandafter\expandafter\expandafter\@gobble\expandafter\string#1%
  }%
}
\newcommand*\Markup@Get@Arguments[2]{\Markup@Split#1{\@secondoftwo}{#2}}
\NewDocumentCommand\Markup@Simple@Format{s m D(){\texttt} m !O{ic}}{%
  \Markup@Get@Name\tud@res@c{#2}%
  \ifcsundef{Markup@Inline@@\tud@res@c}{%
    \Markup@Inline@Format{#2}{%
      #3{%
        \IfBooleanT{#1}{\bsc}##1%
        \IfValueT{##2}{=##2}%
        \IfValueT{##3}{##3}%
      }%
    }%
  }{}%
  \ifcsundef{Markup@Declare@@\tud@res@c}{%
    \Markup@Declare@Format{#2}{%
      #3{%
        \IfBooleanT{#1}{\bsc}##1%
        \IfValueT{##2}{=##2}%
        \IfValueT{##3}{##3}%
      }%
    }%
  }{}%
  \ifcsundef{Markup@Suffix@@\tud@res@c}{%
    \Markup@Suffix@Format{#2}{#5}{\suffix{#4}}%
  }{}%
}
\newcommand*\Markup@Inline@Format[2]{%
  \Markup@Get@Name\tud@res@b{#1}%
  \edef\tud@res@a{Markup@Inline@@\tud@res@b}%
  \expandafter\newcommand\csname\tud@res@a\endcsname{}%
  \@namedef{\tud@res@a}##1=##2=[##3]{\mbox{#2}}%
  \Markup@Suffix@Add{\tud@res@a}{\tud@res@b}%
}
\newcommand*\Markup@Declare@Format[2]{%
  \Markup@Get@Name\tud@res@b{#1}%
  \edef\tud@res@a{Markup@Declare@@\tud@res@b}%
  \expandafter\newcommand\csname\tud@res@a\endcsname{}%
  \@namedef{\tud@res@a}##1=##2=[##3]{#2}%
  \Markup@Suffix@Add{\tud@res@a}{\tud@res@b}%
}
\newcommand*\Markup@Suffix@Format[3]{%
  \Markup@Get@Name\tud@res@a{#1}%
  \edef\tud@res@a{Markup@Suffix@@\tud@res@a}%
  \expandafter\newcommand\csname\tud@res@a\endcsname{}%
  \@namedef{\tud@res@a}{{#2}{#3}}%
}
\newcommand*\Markup@Suffix@Select[1]{%
  \begingroup%
    \if@tud@declare%
      \def\tud@res@a{d}%
    \else%
      \if@tud@changelog%
        \def\tud@res@a{c}%
      \else%
        \if@tud@index%
          \def\tud@res@a{i}%
        \else%
          \def\tud@res@a{n}%
        \fi%
      \fi%
    \fi%
    \expandafter\Markup@Suffix@@Select\expandafter{\tud@res@a}{#1}%
  \endgroup%
}
\newcommand*\Markup@Suffix@@Select[3][\@firstofone]{%
  \begingroup%
    \protected@edef\tud@res@a{\csuse{Markup@Suffix@@#3}}%
    \@expandtwoargs\in@{#2}{\expandafter\@firstoftwo\tud@res@a}%
    \ifin@%
      \protected@edef\tud@res@b{%
        \def\noexpand\tud@res@b{\expandafter\@secondoftwo\tud@res@a}%
      }%
      \tud@res@b%
    \else%
      \let\tud@res@b\@empty%
    \fi%
    \protected@edef\tud@res@c{%
      \endgroup%
      \unexpanded{#1}{\tud@res@b}%
    }%
  \tud@res@c%
}
\newcommand*\Markup@Suffix@Add[2]{%
  \begingroup%
    \edef\tud@res@b{%
      \endgroup%
      \noexpand\apptocmd\expandafter\noexpand\csname#1\endcsname{%
        \noexpand\Markup@Suffix@Select{#2}%
      }{}{\noexpand\tud@patch@wrn{#1}}%
    }%
  \tud@res@b%
}
\newcommand*\Processor@Value[3]{%
  \begingroup%
    \def\tud@res@b##1=##2=##3\@nil{%
      \def\tud@res@a{##1}%
      \IfArgIsEmpty{##2}{%
        \def\tud@res@c{#2}%
      }{%
        \def\tud@res@c{##2}%
        \IfValueT{#2}{%
          \ClassError{tudscrmanual}%
            {Two optional arguments for a value given!}%
            {You did specify `##2' as well as `#2' as a value.}%
        }%
      }%
    }%
    \tud@res@b#3==\@nil%
    \tud@if@nil{#1}{}{%
      \def\tud@res@b##1+##2+##3\@nil{%
        \def\tud@res@a{##1}%
        \IfArgIsEmpty{##2}{%
          \def\tud@res@b{#1}%
        }{%
          \def\tud@res@b{##2}%
          \IfValueT{#1}{%
            \ClassError{tudscrmanual}%
              {Two optional arguments for a parameter given!}%
              {You did specify `##2' as well as `#1' as a parameter.}%
          }%
        }%
      }%
      \expandafter\tud@res@b\tud@res@a++\@nil%
      \protected@expandtwoargs\in@{=}{\tud@res@b}%
      \ifin@%
        \expandafter\IfValueTF\expandafter{\tud@res@c}{%
          \ClassError{tudscrmanual}%
            {Two optional arguments for a value given!}%
            {You did specify `\tud@res@c' as well as `\tud@res@b' as a value.}%
        }{%
          \def\tud@res@c##1=##2\@nil{%
            \def\tud@res@b{##1}%
            \def\tud@res@c{##2}%
          }%
          \expandafter\tud@res@c\tud@res@b\@nil%
        }%
      \fi%
    }%
    \tud@toks@{}%
    \eaddto@hook\tud@toks@{\expandafter{\tud@res@a}}%
    \tud@if@nil{#1}{%
      \let\tud@res@b\@empty%
    }{%
      \eaddto@hook\tud@toks@{\expandafter+\tud@res@b+}%
    }%
    \expandafter\IfValueT\expandafter{\tud@res@c}{%
      \expandafter\IfValueTF\expandafter{\tud@res@b}{%
        % DOC in PValue hüllen, wenn kein Markup
        \protected@edef\tud@res@a{%
          \unexpanded{\Parameter@Enclose[\def\tud@res@c]{\PValue}}{\tud@res@c}%
        }%
        \tud@res@a%
      }{%
        \ClassWarning{tudscrmanual}{%
          The given value `\tud@res@c' is ignored as\MessageBreak%
          no `+<parameter>+' was specified%
        }%
        \let\tud@res@c\tud@res@b%
      }%
    }%
    \eaddto@hook\tud@toks@{\expandafter=\tud@res@c=}%
    \protected@edef\tud@res@a{%
      \endgroup%
      \def\noexpand\ProcessedArgument{\the\tud@toks@}%
    }%
  \tud@res@a%
}
\newcommand*\Processor@WrongValue[1]{%
  \ClassWarning{tudscrmanual}{The given value `#1' is ignored}%
}
% TODO !d() > !D(){???} für \Application, \Distribution, \Engine, \File?
\NewExpandableDocumentCommand\@Application{s m}{#2}
\NewDocumentCommand\Application{%
  s m !>{\Processor@WrongValue}d== !d() !d<> !d||%
}{%
  \Process@Markup{\Application{#2}}<#5>{#1}|#6|%
}
\Markup@Simple@Format\Application(\textsbs){Anwendungssoftware}
\NewExpandableDocumentCommand\@Engine{s m}{#2}
\NewDocumentCommand\Engine{%
  s m !>{\Processor@WrongValue}d== !d() !d||%
}{%
  \Process@Markup{\Engine{#2}}{#1}|#5|%
}
\Markup@Simple@Format\Engine(\sbnfont\hologoRobust){Textsatzsystem}
\NewExpandableDocumentCommand\@Distribution{s m}{#2}
\NewDocumentCommand\Distribution{%
  s m !>{\Processor@WrongValue}d== !o !d() !d||%
}{%
  \tud@toks@{\Process@Markup{\Distribution{#2}}}%
  \IfValueT{#4}{\addto@hook\tud@toks@{[~#4]}}%
  \addto@hook\tud@toks@{{#1}}%
  \IfValueTF{#6}{%
    \addto@hook\tud@toks@{|#6/Distribution|}%
  }{%
    \addto@hook\tud@toks@{|/Distribution|}%
  }%
  \the\tud@toks@%
}
\Markup@Simple@Format\Distribution(\textsbn){Distribution}
\NewExpandableDocumentCommand\@Class{s m}{#2}
\NewDocumentCommand\Class{%
  s m !>{\Processor@WrongValue}d== !d() !d'' !d||%
}{%
  \Process@Markup{\Class{#2}}(#4)'#5'{#1}|#6|%
}
\Markup@Simple@Format\Class(\textsbn){Klasse}
\NewExpandableDocumentCommand\@Package{s m}{#2}
\NewDocumentCommand\Package{%
  s m !>{\Processor@WrongValue}d== !d() !d<> !d'' !d||%
}{%
  \tud@toks@{\Process@Markup{\Package{#2}}(#4)}%
  \IfValueTF{#5}{%
    \addto@hook\tud@toks@{<#5>}%
  }{%
    \addto@hook\tud@toks@{<#2>}%
  }%
  \addto@hook\tud@toks@{'#6'{#1}|#7|}%
  \the\tud@toks@%
}
\Markup@Simple@Format\Package(\textsbn){Paket}
\NewExpandableDocumentCommand\@Option{s m}{#2}
\NewDocumentCommand\Option{%
  s >{\Processor@Value{\@nil}{#3}}m !d== !d() !d'' !d||%
}{%
  \Option@Value{#1}#2(#4)'#5'|#6|%
}
\NewDocumentCommand\Option@Value{m m r== r() r'' r||}{%
  \Process@Markup{\Option{#2}}=#3=(#4)'#5'{#1}|#6|%
}
\Markup@Simple@Format\Option{Option}[c]
\NewExpandableDocumentCommand\@Environment{s m}{#2}
\NewDocumentCommand\Environment{%
  s >{\Processor@Value{#3}{#4}}m !d++ !d== !o !d() !d'' !d||%
}{%
  \Environment@Parameter{#1}#2[#5](#6)'#7'|#8|%
}
\NewDocumentCommand\Environment@Parameter{m m r++ r== r[] r() r'' r||}{%
  \Process@Markup{\Environment{#2}}+#3+=#4=[{#5}](#6)'#7'{#1}|#8|%
}
\Markup@Declare@Format\Environment{%
  \texttt{\bsc{}begin\textbraceleft#1\textbraceright\IfValueT{#3}{#3}}%
  \tabularnewline\texttt{\dots}%
  \tabularnewline\texttt{\bsc{}end\textbraceleft#1\textbraceright}%
}
\Markup@Simple@Format\Environment{Umgebung}
\NewExpandableDocumentCommand\@Macro{s m}{#2}
\NewDocumentCommand\Macro{%
  s >{\Processor@Value{#3}{#4}}m !d++ !d== !o !d() !d'' !d||%
}{%
  \Macro@Parameter{#1}#2[#5](#6)'#7'|#8|%
}
\NewDocumentCommand\Macro@Parameter{m m d++ d== r[] r() r'' r||}{%
  \Process@Markup{\Macro{#2}}+#3+=#4=[{#5}](#6)'#7'{#1}|#8|%
}
\Markup@Simple@Format*\Macro{Befehl}[c]
\NewExpandableDocumentCommand\@Key@Value{s m}{#2}
\NewDocumentCommand\Key@Value{s m}{#2}%
\Markup@Simple@Format\Key@Value{Parameter}[c]
% TODO \Markup@Declare@Format\Key@Value mit Einzug?
%      Markup@Declare@@Key@Value patchen?
\NewExpandableDocumentCommand\@Length{s m}{#2}
\NewDocumentCommand\Length{%
  s m !>{\Processor@WrongValue}d== !d() !d'' !d||%
}{%
  \Process@Markup{\Length{#2}}(#4)'#5'{#1}|#6|%
}
% TODO ndic?
\Markup@Simple@Format*\Length{L\"ange}[dic]
\NewExpandableDocumentCommand\@Counter{s m}{#2}
\NewDocumentCommand\Counter{%
  s m !>{\Processor@WrongValue}d== !d() !d'' !d||%
}{%
  \Process@Markup{\Counter{#2}}(#4)'#5'{#1}|#6|%
}
% TODO ndic?
\Markup@Simple@Format\Counter{Z\"ahler}[dic]
% TODO RAUS!
\NewDocumentCommand\Key{s m m !d== !d() !d'' !d||}{%
%  \ClassWarning{tudscrmanual}{Set new markup!}%
  \begingroup%
    \begingroup%
      \Markup@Get@Name\tud@res@b{#2}%
      \Markup@Expandable%
      \edef\tud@res@c{#2}%
      \edef\tud@res@b{%
        \endgroup%
        \tud@toks@{%
          \expandafter\noexpand\csname\tud@res@b\endcsname%
          \IfBooleanT{#1}{*}{\tud@res@c}%
        }%
      }%
    \tud@res@b%
    \IfValueTF{#4}{%
      \addto@hook\tud@toks@{+#3=#4+}%
    }{%
      \addto@hook\tud@toks@{+#3+}%
    }%
    \addto@hook\tud@toks@{(#5)'#6'|#7|}%
    \edef\tud@res@a{%
      \endgroup%
      \the\tud@toks@%
    }%
  \tud@res@a%
}
\NewExpandableDocumentCommand\@Term{s m}{#2}
\NewDocumentCommand\Term{%
  s m !>{\Processor@WrongValue}d== !d() !d'' !d||%
}{%
  \Process@Markup{\Term{#2}}(#4)'#5'{#1}|#6|%
}
% TODO ndic?
\Markup@Simple@Format*\Term{Bezeichner}[dc]
\NewExpandableDocumentCommand\@PageStyle{s m}{#2}
\NewDocumentCommand\PageStyle{%
  s m !>{\Processor@WrongValue}d== !d() !d'' !d||%
}{%
  \Process@Markup{\PageStyle{#2}}(#4)'#5'{#1}|#6|%
}
% TODO ndic?
\Markup@Simple@Format\PageStyle{Seitenstil}[dic]
\NewExpandableDocumentCommand\@Font{s m}{#2}
\NewDocumentCommand\Font{%
  s m !>{\Processor@WrongValue}d== !d() !d'' !d||%
}{%
  \Process@Markup{\Font{#2}}(#4)'#5'{#1}|#6|%
}
% TODO ndic?
\Markup@Simple@Format\Font{Schriftelement}[dic]
\NewExpandableDocumentCommand\@Color{s m}{#2}
\NewDocumentCommand\Color{%
  s m !>{\Processor@WrongValue}d== !o !D(){\Package{tudscrcolor}} !d'' !d||%
}{%
  \Process@Markup{\Color{#2}}[{#4}](#5)'#6'{#1}|#7|%
}
\Markup@Declare@Format\Color{\texttt{#1\IfValueT{#3}{\,(#3)}}}
\Markup@Simple@Format\Color{Farbe}[dic]
\newcommand*\Processor@Underscore[1]{%
  \begingroup%
    \def\tud@res@a{#1}%
    \tud@replace\tud@res@a{_}{\_}%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand\ProcessedArgument{\expandonce\tud@res@a}%
    }%
  \tud@res@a%
}
\NewExpandableDocumentCommand\@File{s m}{#2}
\NewDocumentCommand\File{%
  s >{\Processor@Underscore}m !>{\Processor@WrongValue}d== !d() !d||%
}{%
  \Process@Markup{\File{#2}}{#1}|#5|%
}
\Markup@Simple@Format\File(\textsbn){Datei}
\NewDocumentCommand\Path{>{\Processor@Underscore}m}{\mbox{\texttt{#1}}}
\NewDocumentCommand\tud@attr@get{s m m}{%
  \begingroup%
    \def\tud@res@a##1##2##3{%
      \def##1####1{%
        \edef\tud@res@b{\IfBooleanTF{#1}{##2}{##3}}%
      }%
    }%
    \tud@res@a\Application{\jobname}{app}%
    \tud@res@a\Engine{\jobname}{eng}%
    \tud@res@a\Distribution{\jobname}{dst}%
    \tud@res@a\Class{files}{cls}%
    \tud@res@a\Package{files}{pkg}%
    \tud@res@a\Option{options}{opt}%
    \tud@res@a\Environment{macros}{env}%
    \tud@res@a\Macro{macros}{cmd}%
    \tud@res@a\Length{misc}{len}%
    \tud@res@a\Counter{misc}{cnt}%
    \tud@res@a\Term{terms}{term}%
    \tud@res@a\PageStyle{elements}{pgs}%
    \tud@res@a\Font{elements}{font}%
    \tud@res@a\Color{elements}{clr}%
    \tud@res@a\File{files}{fle}%
    #3%
    \edef\tud@reserved{%
      \noexpand\endgroup%
      \def\noexpand#2{\tud@res@b}%
    }%
  \tud@reserved%
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
\newrobustcmd*\OpenSans{\textcdbn{Open~Sans}\xspace}
\newrobustcmd*\Univers{\textcdbi{Univers}\xspace}
\newrobustcmd*\DIN{\textcdbi{DIN~Bold}\xspace}
\newcommand*\Markup@@Expandable{%
  \def\TUDScript{TUD-Script\space}%
  \def\KOMAScript{KOMA-Script\space}%
  \def\CD{Corporate Design\space}%
  \def\CDs{Corporate Designs\space}%
  \def\TUD{Technische Universit\"at Dresden\space}%
  \def\TnUD{Technischen Universit\"at Dresden\space}%
  \def\DDC{DRESDEN-concept\space}%
  \def\OpenSans{Open Sans\space}%
  \def\Univers{Univers\space}%
  \def\DIN{DIN Bold\space}%
}
\newrobustcmd*\PValue[1]{\mbox{\texttt{#1}}}
\newrobustcmd*\PValueDefault[1]{\mbox{\texttt{\textsl{#1}}}}
% TODO \PName ohne sl
\newrobustcmd*\PName[1]{\mbox{\texttt{\textsl{<#1>}}}}
% TODO PValueName raus
\newrobustcmd*\PValueName[1]{\PName{#1}}
% TODO Befehlsname überarbeiten -> PPName und PPValue
\newrobustcmd*\Parameter[1]{%
  \mbox{\texttt{\textbraceleft}\PName{#1}\texttt{\textbraceright}}%
}
\newrobustcmd*\PParameter[1]{\mbox{\texttt{\textbraceleft#1\textbraceright}}}
\newrobustcmd*\OParameter[1]{\mbox{\texttt{[}\PName{#1}\texttt{]}}}
\newrobustcmd*\POParameter[1]{\mbox{\texttt{[{#1}]}}}
\newrobustcmd*\LParameter{\mbox{\texttt{[}\PName{Parameterliste}\texttt{]}}}
% TODO \egroup\PValue{\,\textbardbl\,}\bgroup
\newrobustcmd*\OLParameter[1]{%
  \mbox{\texttt{[}\PName{#1}\textOR\PName{Parameterliste}\texttt{]}}%
}
\newrobustcmd*\textOR{\PValue{\,\textbardbl\,}}
\newrobustcmd*\PSet[1]{\PName{#1}}
% TODO \newcommand?!
\newrobustcmd*\PMisc{\PSet{Einstellung}}
% TODO \newcommand?!
\newrobustcmd*\PBoolean{\PSet{Ein-Aus-Wert}}
% TODO \newcommand?!
\newrobustcmd*\PLength{\PSet{L\"ange}}
\NewDocumentCommand\Markup@Expandable{s}{%
  \let\Application\@Application%
  \let\Engine\@Engine%
  \let\Distribution\@Distribution%
  \let\Class\@Class%
  \let\Package\@Package%
  \let\Option\@Option%
  \let\Environment\@Environment%
  \let\Macro\@Macro%
  \let\Key@Value\@Key@Value%
  \let\Length\@Length%
  \let\Counter\@Counter%
  \let\Term\@Term%
  \let\PageStyle\@PageStyle%
  \let\Font\@Font%
  \let\Color\@Color%
  \let\File\@File%
  \IfBooleanF{#1}{%
    \Markup@@Expandable%
    \Parameter@Expandable%
    \let\hologo\@firstofone%
    \let\hologoRobust\@firstofone%
    \def\_{-}%
%    \def~{-}%
    \protected\def~{~}%
    \def\dots{...}%
    % TODO raus?
    \let\emph\@firstofone%
    \let\NoCaseChange\@firstofone%
  }%
}
\newcommand*\Parameter@Expandable{%
  \let\PValue\@firstofone%
  \let\PValueDefault\@firstofone%
  \let\PName\@firstofone%
  \let\PValueName\@firstofone%
  \let\Parameter\@firstofone%
  \let\OParameter\@firstofone%
  \let\LParameter\@empty%
  \let\OLParameter\@firstofone%
  \let\PParameter\@firstofone%
  \let\POParameter\@firstofone%
  \let\textOR\@empty%
  \let\PSet\@gobble%
  \let\PMisc\@empty%
  \let\PBoolean\@empty%
  \let\PLength\@empty%
}
\newcommand*\Parameter@Enclose[3][\@firstofone]{%
  \begingroup%
    \protected@edef\tud@res@a{#3}%
    \Parameter@Expandable%
    \protected@edef\tud@res@b{\tud@res@a}%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{#1}%
      \ifx\tud@res@a\tud@res@b%
        \unexpanded{{#2{#3}}}%
      \else%
        \unexpanded{{#3}}%
      \fi%
    }%
  \tud@res@a%
}
\AfterPackage*{hyperref}{%
  \expandafter\pdfstringdefDisableCommands\expandafter{\Markup@Expandable}%
}
\newcommand*\Processor@Bundle[1]{%
  \begingroup%
    \def\tud@res@a{#1}%
    \trim@spaces@in\tud@res@a%
    \expandafter\ifblank\expandafter{\tud@res@a}{%
      \let\tud@res@a\tud@bdl@dflt%
    }{}%
    \let\tud@res@b\@empty%
    \let\tud@res@c\@empty%
    \@for\tud@res@a:=\tud@res@a\do{%
      \trim@spaces@in\tud@res@a%
      \expandafter\ifblank\expandafter{\tud@res@a}{%
        \let\tud@res@a\tud@bdl@dflt%
      }{%
        \expandafter\ifstrequal\expandafter{\tud@res@a}{*}{%
          \let\tud@res@a\tud@bdl@curr%
        }{}%
      }%
      \xifinlist{\expandafter\detokenize\expandafter{\tud@res@a}}{\tud@res@c}{}{%
        \listeadd{\tud@res@c}{\expandafter\detokenize\expandafter{\tud@res@a}}%
        \eappto\tud@res@b{,\expandonce\tud@res@a}%
      }%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand\ProcessedArgument{%
        \expandafter\expandafter\expandafter\@gobble\expandonce\tud@res@b%
      }%
    }%
  \tud@res@a%
}
\tud@newif\if@tud@changedat
\NewDocumentCommand\Process@Markup{%
  m d++ d== o >{\Processor@Bundle}d() d<> d'' m r||%
}{%
  \if@tud@changedat%
    \Process@ChangedAt{#1}+#2+=#3=[{#4}](#5)%
  \else%
    \Process@Output{#1}+#2+=#3=[{#4}](#5)<#6>'#7'%
    \ifboolexpr{%
      bool {@tud@index} or bool {@tud@obsolete} or 
      ( bool {@tud@declare} and test {\ifnumcomp{\tud@declare@num}{=}{1}} )%
    }{}{%
      \Process@Index{#1}+#2+=#3=(#5){#8}|#9|%
    }%
  \fi%
}
\GetDocumentCommandArgSpec\Process@Markup%
\expandafter\NewDocumentCommand\expandafter\Process@Get@Markup\expandafter{%
  \ArgumentSpecification%
}{%
  \tud@toks@{{#1}}%
  \IfValueT{#2}{\addto@hook\tud@toks@{+#2+}}%
  \addto@hook\tud@toks@{=#3=}%
}
\newcommand*\Markup@Replace@Value[3][\@firstofone]{%
  \begingroup%
    \let\Process@Markup\Process@Get@Markup%
    #2%
    \edef\tud@res@a{\the\tud@toks@}%
    \def\tud@res@b##1=##2=\@nil{%
      \def\tud@res@a{##1=#3=}%
    }%
    \expandafter\tud@res@b\tud@res@a\@nil%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{#1}{\expandonce\tud@res@a}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Process@Output{m r++ r== r[] r() r<> r''}{%
  \IfValueT{#5}{\tud@trace@bdl@add{#5}}%
  \if@tud@declare%
    \tud@toks@{\Process@Output@Declare}%
  \else%
    \tud@toks@{\Process@Output@Inline}%
  \fi%
  \addto@hook\tud@toks@{{#1}+#2+=#3=[{#4}](#5)}%
  \if@tud@index\else%
    \IfValueT{#6}{%
      \ifxblank{#6}{}{\addto@hook\tud@toks@{<http://www.ctan.org/pkg/#6>}}%
    }%
  \fi%
  \if@tud@declare%
    \if@tud@openindex%
      \IfValueT{#7}{%
        \ClassWarning{tudscrmanual}{%
          It is not possible to use any cross-reference\MessageBreak%
          shorthand like '#7' within the arguments\MessageBreak%
          of the environment `Declaration'%
        }%
      }%
      \tud@trace@markup@add{declare}{\the\tud@toks@}%
    \else%
      \tud@toks@{\relax}%
    \fi%
  \else%
    \IfValueT{#7}{\addto@hook\tud@toks@{'#7'}}%
    \tud@trace@markup@add{output}{\the\tud@toks@}%
  \fi%
  \the\tud@toks@%
}
\NewDocumentCommand\Process@Output@Declare{%
  m r++ r== r[] R(){\tud@bdl@curr} !d<>%
}{%
  \begingroup%
    \def\tud@res@c{#5}%
    \@for\tud@res@c:=\tud@res@c\do{%
      \ifx\tud@res@c\tud@bdl@dflt\else%
        \tud@bdl@add{\tud@res@c}%
      \fi%
      \tud@lbl@get*\tud@lbl@tmp{\tud@res@c:#1}+#2+=#3=%
      \ifcase\tud@declare@num\relax%
        \tudhyperdef{\tud@lbl@tmp}=#3=%
      \or\or%
        \tudhyperdef{\tud@lbl@tmp}%
      \or%
        \tudhyperdef*{\tud@lbl@tmp}%
% TODO für tutorials notwendig?, darf keine relevanz für manual haben
%        \def\tud@res@a##1:##2:##3\@nil{\tudhyperdef*{##3:##2:##3}}%
%        \expandafter\tud@res@a\tud@lbl@tmp\@nil%
      \else% <0
        \tudhyperdef{\tud@lbl@tmp}=#3=%
      \fi%
    }%
  \endgroup%
  \ifnum\tud@declare@num<\tw@\relax%
    \Markup@Output{#1}+#2+=#3=[{#4}]<#6>%
  \fi%
}
\NewDocumentCommand\Process@Output@Inline{m r++ r== r[] r() !d<> !d''}{%
  \begingroup%
    \tud@toks@{\Process@Output@@Inline{#1}+#2+=#3=[{#4}]}%
    \tud@bdl@get\tud@res@a{#1}+#2+=#3=(#5)'#7'%
    \eaddto@hook\tud@toks@{\expandafter(\tud@res@a)}%
    \addto@hook\tud@toks@{<#6>'#7'}%
    \edef\tud@res@a{%
      \endgroup%
      \the\tud@toks@%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Process@Output@@Inline{m r++ r== r[] r() r<> r''}{%
  \begingroup%
    \tud@lbl@get\tud@lbl@tmp{#5:#1}+#2+=#3=%
    \def\tud@res@b{\Markup@Output{#1}+#2+=#3=[{#4}]}%
    \let\tud@res@c\tud@res@b%
    \ifdisposition{}{%
      \tud@get@crossrefnum\tud@res@a'#7'%
      \ifcase\tud@res@a\relax\else%
        \@tud@res@swafalse%
        \begingroup%
          \tud@lbl@get*\tud@res@a{#5:#1}+#2+=#3=%
          \ifx\tud@lbl@tmp\tud@res@a\else%
            \IfValueT{#3}{%
              \tud@if@lbl@exists{\tud@lbl@tmp}{\@tud@res@swatrue}{}%
            }%
          \fi%
%          \tud@if@lbl@exists{\tud@lbl@tmp}{}{%
%            \expandafter\ifstrequal\expandafter{\tud@bdl@dflt}{#5}{%
%              \@tud@res@swatrue%
%            }{}%
%          }%
          \if@tud@res@swa%
            \ClassWarning{tudscrmanual}{%
              A \IfValueTF{#3}{specific}{general} value for \detokenize{#5}%
              \MessageBreak with `#1\IfValueT{#2}{+#2+}\IfValueT{#3}{=#3=}'%
              \MessageBreak was given, but there exists no label%
              \MessageBreak `\tud@res@a'%
            }%
          \fi%
        \endgroup%
      \fi%
      \tud@if@lbl@exists{\tud@lbl@tmp}{%
        \def\tud@res@c{\tudhyperref{\tud@lbl@tmp}{\tud@res@b}}%
        \ifcase\tud@res@a\relax% none
          \let\tud@res@c\tud@res@b%
        \or% auto
          \appto\tud@res@c{ in \autoref{\tud@lbl@tmp}}%
        \or% page
          \appto\tud@res@c{ \vpageref{\tud@lbl@tmp}}%
        \or% ppage
          \appto\tud@res@c{ \reftextfaraway{\tud@lbl@tmp}}%
        \or% full
          \appto\tud@res@c{ in \fullref{\tud@lbl@tmp}}%
        \fi%
        \ifcase\tud@res@a\relax%
          \tud@trace@lbl@add{unused}{\tud@lbl@tmp}%
        \else%
          \tud@trace@lbl@add{matched}{\tud@lbl@tmp}%
        \fi%
      }{%
        \ifcase\tud@res@a\relax\else%
          \appto\tud@res@c{<#6>}%
          \ifnum\tud@res@a>\z@\relax%
            \ClassWarning{tudscrmanual}%
            {%
              A cross-reference could not be created\MessageBreak%
              as label \tud@lbl@tmp\MessageBreak%
              doesn't exists%
            }%
          \fi%%
        \fi%
      }%
    }%
    \protected@edef\tud@res@a{%
      \endgroup%
      \tud@res@c%
    }%
  \tud@res@a%
}
\tud@newif\if@tud@disposition
\newcommand*\ifdisposition{%
  \if@tud@disposition%
    \expandafter\@firstoftwo%
  \else%
    \expandafter\@secondoftwo%
  \fi%
}
\pretocmd{\tud@sec@format}{%
  \@tud@dispositiontrue%
}{}{\tud@patch@wrn{tud@sec@format}}
\NewDocumentCommand\tud@get@crossrefnum{m r''}{%
  \begingroup%
    \def\tud@res@a{\m@ne}%
    \IfValueT{#2}{%
      \TUD@set@numkey{}{tud@res@a}{%
        {none}{0},{auto}{1},{page}{2},{ppage}{3},{full}{4}%
      }{#2}%
      \ifx\FamilyKeyState\FamilyKeyStateProcessed\else%
        \ClassWarning{tudscrmanual}%
        {%
          The cross-reference shorthand '#2' is\MessageBreak%
          unknown. Only 'auto', 'page', 'ppage' and 'full'\MessageBreak%
          as well as 'none' are valid%
        }%
        \def\tud@res@a{\z@}%
      \fi%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand#1{\tud@res@a}%
    }%
  \tud@res@a%
}
\newcommand*\Markup@@Output{}
\NewDocumentCommand\Markup@Output{m r++ r== r[] !d<>}{%
  \IfValueTF{#2}{%
    \Markup@Get@Name\tud@res@a{\Key@Value}%
  }{%
    \Markup@Get@Name\tud@res@a{#1}%
  }%
  \if@tud@declare%
    \letcs\Markup@@Output{Markup@Declare@@\tud@res@a}%
  \else%
    \letcs\Markup@@Output{Markup@Inline@@\tud@res@a}%
  \fi%
  \ifundef{\Markup@@Output}{%
    \ClassError{tudscrmanual}{Missing markup definition}{%
      \string\Markup@\if@tud@declare Declare\else Inline\fi @@\tud@res@a%
      \space is missing!%
    }%
    \def\Markup@@Output##1=##2=[##3]{##1=##2[{##3}]}%
  }{}%
  \begingroup%
    \Markup@Expandable*%
    \protected@edef\tud@res@a{%
      \noexpand\Markup@@Output{\IfValueTF{#2}{#2}{#1}}\unexpanded{=#3=[{#4}]}%
    }%
    \IfValueT{#5}{%
      \protected@edef\tud@res@a{%
        \noexpand\href{#5}{\expandonce\tud@res@a}%
      }%
      \tud@trace@lbl@add{url}{#5}%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \expandonce\tud@res@a%
    }%
  \tud@res@a%
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
    \tud@nonchangecase\Engine%
    \tud@nonchangecase\Distribution%
    \tud@nonchangecase\Class%
    \tud@nonchangecase\Package%
    \tud@nonchangecase\Option%
    \tud@nonchangecase\Environment%
    \tud@nonchangecase\Macro%
    \tud@nonchangecase\Key@Value%
    \tud@nonchangecase\Length%
    \tud@nonchangecase\Counter%
    \tud@nonchangecase\Term%
    \tud@nonchangecase\PageStyle%
    \tud@nonchangecase\Font%
    \tud@nonchangecase\Color%
    \tud@nonchangecase\File%
  }{}{\tud@patch@wrn{tud@x@textcase@uclcnotmath}}%
}
\newcommand*\tud@xdy@settings{}
\edef\tud@xdy@settings{-M \@currname-ind.xdy -L german-din}
\NewDocumentCommand\tud@xdy@make{s o m !O{\jobname}}{%
  \IfBooleanT{#1}{\makeindex[name={#4-declare}]}%
  \protected@edef\tud@res@a{%
    title={#3},%
    columnsep=\noexpand\f@size\noexpand\p@,%
    name={#4},%
    options={\tud@xdy@settings\space-t \jobname-#4.xlg},%
    \IfValueT{#2}{#2}%
  }%
  \expandafter\makeindex\expandafter[\tud@res@a]%
}
\newcommand*\tud@idx@mdfive{}%
\AtBeginDocument{%
  \ifundef{\pdf@filemdfivesum}{}{%
    \PassOptionsToPackage{quiet}{imakeidx}%
    \edef\tud@res@a{\pdf@filemdfivesum{\jobname.idx}}%
    \ifnum\pdf@shellescape=\@ne\relax%
      \ifx\tud@idx@mdfive\@empty%
        \ifx\tud@res@a\@empty\else%
          \ShellEscape{splitindex -m \string"\string" \jobname.idx}%
        \fi%
      \fi%
    \fi%
    \ifnum\pdf@strcmp{\tud@res@a}{\tud@idx@mdfive}=\z@\relax%
      \PassOptionsToPackage{noautomatic}{imakeidx}%
    \else%
      \ifnum\pdf@shellescape=\@ne\relax\else%
        \let\tud@res@a\tud@idx@mdfive%
      \fi%
    \fi%
    \immediate\write\@mainaux{\string\gdef\string\tud@idx@mdfive{\tud@res@a}}%
  }%
  \PassOptionsToPackage{xindy,splitindex}{imakeidx}%
  \RequirePackage{imakeidx}[2013/07/11]%
  \indexsetup{%
    level=\addsec,%
    noclearpage,firstpagestyle=headings,headers={\indexname}{\indexname},%
    othercode={%
      \def\@idxitem{%
%        \raggedright%
%        \everypar{\raggedleft\everypar{}}%
        \par\hangindent4em%
      }%
      \let\item\@idxitem%
      \def\subitem{\@idxitem\hspace*{1em}}%
      \def\subsubitem{\@idxitem\hspace*{2em}}%
      \def\subsubsubitem{\@idxitem\hspace*{3em}}%
      \ifundef{\indexspace}{%
        \let\indexspace\relax%
      }{%
        \renewcommand*\indexspace{\par\vskip1em\@plus1ex\@minus.5ex\relax}%
      }%
    }%
  }%
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
  \CheckCommand*\imki@build[1]{%
    \toks@{}%
    \imki@dokey\imki@title
    \imki@dokey\imki@program
    \imki@dokey\imki@options
    \imki@dokey\imki@columns
    \imki@dokey\imki@columnsep
    \ifKV@imki@noautomatic
      \addto@hook\toks@{\KV@imki@noautomatictrue}%
    \else
      \addto@hook\toks@{\KV@imki@noautomaticfalse}%
    \fi
    \ifKV@imki@intoc
      \addto@hook\toks@{\KV@imki@intoctrue}%
    \else
      \addto@hook\toks@{\KV@imki@intocfalse}%
    \fi
    \ifKV@imki@columnseprule
      \addto@hook\toks@{\KV@imki@columnsepruletrue}%
    \else
      \addto@hook\toks@{\KV@imki@columnseprulefalse}%
    \fi
    \expandafter\edef\csname imki@set@#1\endcsname{\the\toks@}%
  }%
  \ifundef{\inputencodingname}{}{%
    \eappto\tud@xdy@settings{\space-C\space\inputencodingname}%
  }%
  \tud@xdy@make{Allgemeiner Index}%
  \tud@xdy@make*{Klassen- und Paketoptionen}[options]%
  \tud@xdy@make*{Befehle und Umgebungen mit zugeh\"origen Parametern}[macros]%
  \tud@xdy@make*{Sprachabh\"angige Bezeichner}[terms]%
  \tud@xdy@make*{Seitenstile, Schriftelemente und Farben}[elements]%
  \tud@xdy@make{L\"angen und Z\"ahler}[misc]%
  \tud@xdy@make*{Klassen, Pakete und Dateien}[files]%
  \tud@xdy@make[columns=1]{\"Anderungsliste}[changelog]%
}
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
      \eappto\tud@res@a{##1}%
      \def\tud@res@b{##2}%
      \trim@spaces@in\tud@res@b%
      \in@{\\}{##2}%
    }%
    \in@true%
    \@whilesw\ifin@\fi{%
      \expandafter\tud@res@c\tud@res@b\@nil%
    }%
    \ifx\tud@res@b\@empty%
      \mbox{\emph{#1}}\space\tud@res@a%
    \else%
      \def\tud@res@c##1 ##2\@nil{%
        ##2##1\space\mbox{\emph{\alsoname}}\space\tud@res@a%
      }%
      \expandafter\tud@res@c\tud@res@b\@nil%
    \fi%
  \endgroup%
}
\NewDocumentCommand\seeref{s m}{%
  \emph{\IfBooleanTF{#1}{\alsoname}{\seename}}\space\begingroup#2\endgroup%
}
\newcommand*\seeidx[2]{\pageref{idx:#1}}
\NewDocumentCommand\Process@Index{m r++ r== r() m r||}{%
  \if@tud@declare%
    \if@tud@openindex%
      \IfBooleanT{#5}{%
        \Markup@Get@Name\tud@res@a{#1}%
        \ClassWarning{tudscrmanual}{%
          Using \@backslashchar\tud@res@a* (starred version)\MessageBreak%
          within a declaration is inept%
        }%
      }%
      \IfValueT{#6}{%
        \ClassWarning{tudscrmanual}{%
          It is not possible to use any indexing format\MessageBreak%
          like |#6| within a declaration%
        }%
      }%
    \fi%
  \fi%
  \IfBooleanTF{#5}{%
    \IfValueT{#6}{%
      \Markup@Get@Name\tud@res@a{#1}%
      \ClassWarning{tudscrmanual}{%
        Using \@backslashchar\tud@res@a* (starred version)\MessageBreak%
        means, no index entry is created. The optional\MessageBreak%
        argument |#6| is ignored%
      }%
    }%
  }{%
    \begingroup%
      \IfValueTF{#4}{%
        \def\tud@res@a{#4}%
      }{%
        \tud@bdl@seek\tud@res@a{#1}+#2+=#3=%
      }%
      \@for\tud@res@a:=\tud@res@a\do{%
        \tud@toks@{\Process@@Index{#1}+#2+=#3=}%
        \eaddto@hook\tud@toks@{\expandafter(\tud@res@a)|#6|}%
        \the\tud@toks@%
      }%
    \endgroup%
  }%
}
\newcommand*\tud@idx@entry{}
\NewDocumentCommand\Process@@Index{m r++ r== r() r||}{%
  \tud@idx@get{#1}+#2+=#3=(#4)%
  \tud@attr@get*\tud@lbl@tmp{#1}%
  \let\tud@res@a\@empty%
  \let\tud@res@b\@empty%
  \if@tud@declare%
  % TODO check
%  ;;(define-attributes (("declare" "!") ("important" "?")("default")))
%  ;;(markup-attribute-group-list :sep ", ")
%  ;;(merge-to "default" "declare")
%  ;;(merge-to "default" "important")
    \appto\tud@lbl@tmp{-declare}%
    \if@tud@openindex%
      \def\tud@res@a{(declare}%
    \else%
      \def\tud@res@a{declare)}%
    \fi%
  \else%
    \IfValueT{#5}{%
      \def\tud@res@c##1/##2/##3\@nil{%
        \ifx\tud@res@a\@empty%
          \def\tud@res@a{##1}%
        \fi%
        \IfArgIsEmpty{##2}{}{\appto\tud@res@b{##2!}}%
        \IfArgIsEmpty{##3}{}{%
          \tud@res@c/##3\@nil%
        }%
      }%
      \tud@res@c#5//\@nil%
      % TODO noch sinnvoll?
      \ifx\tud@res@a\@empty\else%
        \typeout{??? \thepage\on@line}%
      \fi%
      % TODO |declare| und |default| durch InlineDeclartion ersetzen
      % TODO nur noch |!| und |?| zulassen
      \ifstr{\tud@res@a}{declare}{%
        \appto\tud@lbl@tmp{-declare}%
      }{}%
    }%
  \fi%
  % TODO split \tud@idx@entry und jeden Eintrag auch verwenden?
  % falls ja, nur wenn \@tud@declarefalse?
  \index[\tud@lbl@tmp]{%
    \tud@res@b\tud@idx@entry\ifx\tud@res@a\@empty\else|\tud@res@a\fi%
  }%
}
% #1 subentry?
% #2 makro zum hineinexpandieren
% #3 inhalte zur sortierung des eintrags
% #4 inhalte für markup des eintrags
% #5 möglicher Wert für sortierung und markup
% TODO #6 notwendig?
% #6 optionaler Suffix
% #7 bundle für def und markup r()
% TODO mit argumentprocessor direkt auf \suffix{#8} setzen?
% #8 bundle für nicht-markup r()
% #9 suffix für text
\NewDocumentCommand\tud@idx@format@entry{%
  s m m m d== o r() r() d::%
}{%
  \begingroup%
    \IfValueTF{#5}{\def\tud@res@c{#5}}{\let\tud@res@c\@empty}%
    \protected@edef\tud@res@a{#7}%
    \protected@edef\tud@res@b{#8}%
    \ifx\tud@res@a\tud@res@b%
      \@tud@res@swafalse%
    \else%
      \@tud@res@swatrue%
    \fi%
    \begingroup%
      \Markup@Expandable%
      \def\suffix##1{\space##1}%
      \let\emph\@firstofone%
      \protected@edef\tud@res@b{\tud@res@c}%
      \ifx\tud@res@b\@empty%
        \let\tud@res@c\@empty%
      \fi%
      \protected@edef\tud@res@a{%
        \endgroup%
        \unexpanded{\def\tud@res@a}{%
          #3\ifx\tud@res@c\@empty\else=\tud@res@c\fi%
          \IfBooleanF{#1}{#6\if@tud@res@swa\suffix{#7}\fi}%
          \IfValueT{#9}{:\space#9}%
        }%
      }%
    \tud@res@a%
    % TODO kann raus
    \robustify\emph%
    \let\tud@res@b\@empty
    \expandafter\ifstrequal\expandafter{\tud@bdl@dflt}{#7}{}{\def\tud@res@b{(#7)}}%
    % TODO kann raus ENDE
    \protected@edef\tud@res@b{%
      #4\ifx\tud@res@c\@empty\else=\tud@res@c=\fi%
      % TODO immer mit angeben, wenn alles fertig
      \if@tud@res@swa%
      (#7)%
      \else%
        \tud@res@b%
      \fi%
      \IfBooleanF{#1}{#6\if@tud@res@swa\suffix{#7}\fi}%
      \IfValueT{#9}{:\space#9}%
    }%
    \tud@@replace\tud@res@a{@}{"@}%
    \tud@@replace\tud@res@b{@}{"@}%
    \edef\tud@res@c{%
      \endgroup%
      \def\noexpand#2{\expandonce\tud@res@a @\expandonce\tud@res@b}%
    }%
  \tud@res@c%
}
% TODO alles in Makro \tud@res@a bzw an \tud@idx@entry (#1) anhängen!
\newcommand*\tud@idx@entry@a{}
\newcommand*\tud@idx@entry@b{}
\newcommand*\tud@idx@entry@c{}
\newcommand*\Processor@SpecialValue[2]{%
  \begingroup%
    \let\tud@res@a\@empty%
    \let\tud@res@b\@empty%
    \Parameter@Expandable%
    \protected@edef\tud@res@c{#2}%
    \ifx\tud@res@c\@empty%
      \def\tud@res@a{#2}%
    \else%
      \def\tud@res@b{#2}%
    \fi%
    \let\tud@res@c\relax%
    \IfValueT{#1}{%
      \protected@edef\tud@res@c{#1}%
      \ifx\tud@res@c\@empty%
        \ifx\tud@res@a\@empty%
          \def\tud@res@a{#1}%
          \let\tud@res@c\relax%
        \else%
          \def\tud@res@c{special}%
        \fi%
      \else%
        \ifx\tud@res@b\@empty%
          \def\tud@res@b{#1}%
          \let\tud@res@c\relax%
        \else%
          \def\tud@res@c{ordinary}%
        \fi%
      \fi%
    }%
    \edef\tud@res@c{%
      \endgroup%
      \ifx\tud@res@c\relax\else%
        \noexpand\ClassError{tudscrmanual}%
          {Two arguments for a \tud@res@c\space value given!}%
          {You did specify `\detokenize{#1}' and `\detokenize{#2}'.}%
      \fi%
      \def\noexpand\ProcessedArgument{%
        \ifx\tud@res@a\@empty\else!\expandonce\tud@res@a!\fi%
        \ifx\tud@res@b\@empty\else=\expandonce\tud@res@b=\fi%
      }%
    }%
  \tud@res@c%
}
\NewDocumentCommand\tud@idx@get{%
  m r++ >{\Processor@SpecialValue{#5}}r== r() d== D(){\tud@bdl@dflt} d::%
}{%
  \tud@toks@{\tud@idx@@get{#1}+#2+}%
  \IfValueTF{#3}{%
    \addto@hook\tud@toks@{#3}%
  }{%
    \IfValueT{#5}{\addto@hook\tud@toks@{=#5=}}%
  }%
  \addto@hook\tud@toks@{(#4)(#6):#7:}%
  \IfValueTF{#7}{\addto@hook\tud@toks@{c}}{\addto@hook\tud@toks@{i}}%
  \the\tud@toks@%
}
\NewDocumentCommand\tud@idx@@get{m r++ d!! d== r() r() r:: m}{%
  \begingroup%
    \IfValueTF{#7}{\def\tud@res@b{#7}}{\let\tud@res@b\@empty}%
    \IfValueT{#4}{%
      % TODO suppress suffix
      \IfValueTF{#2}{%
        \tud@toks@{\tud@idx@format@entry*\tud@idx@entry@c{#2}{#1+#2+}}%
      }{%
        \tud@toks@{\tud@idx@format@entry*\tud@idx@entry@c{#1}{#1}}%
      }%
      \addto@hook\tud@toks@{=#4=(#5)(#6)}%
      \ifx\tud@res@b\@empty\else%
        \eaddto@hook\tud@toks@{\expandafter:\tud@res@b:}%
        \def\tud@res@b{Werte angepasst}%
      \fi%
      \the\tud@toks@%
    }%
    \IfValueT{#2}{%
      \tud@toks@{\tud@idx@format@entry*\tud@idx@entry@b{#2}{#1+#2+}}%
      \IfValueT{#3}{\addto@hook\tud@toks@{=#3=}}%
      \addto@hook\tud@toks@{(#5)(#6)}%
      \ifx\tud@res@b\@empty\else%
        \eaddto@hook\tud@toks@{\expandafter:\tud@res@b:}%
        \def\tud@res@b{Parameter angepasst}%
      \fi%
      \the\tud@toks@%
    }%
    \Markup@Get@Name\tud@res@c{#1}%
    \Markup@Suffix@@Select[\protected@edef\tud@res@c]{#8}{\tud@res@c}%
    \tud@toks@{\tud@idx@format@entry\tud@idx@entry@a{#1}{#1}}%
    \IfValueF{#2}{\IfValueT{#3}{\addto@hook\tud@toks@{=#3=}}}%
    \eaddto@hook\tud@toks@{\expandafter[\tud@res@c](#5)(#6)}%
    \ifx\tud@res@b\@empty\else%
      \eaddto@hook\tud@toks@{\expandafter:\tud@res@b:}%
    \fi%
    \the\tud@toks@%
    \ifx\tud@idx@entry@b\@empty\else%
      \eappto\tud@idx@entry@a{!\expandonce\tud@idx@entry@b}%
    \fi%
    \ifx\tud@idx@entry@c\@empty\else%
      \eappto\tud@idx@entry@a{!\expandonce\tud@idx@entry@c}%
    \fi%
    \protected@edef\tud@res@a{%
      \endgroup%
      \def\noexpand\tud@idx@entry{\tud@idx@entry@a}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\CrossIndex{m o m}{%
  \begingroup%
    \def\tud@res@a##1##2##3{%
      \def\tud@res@b####1!####2\@nil{%
        \IfArgIsEmpty{####2}{%
          \def\tud@res@b{####1}%
        }{%
          \tud@res@b####2\@nil%
        }%
      }%
      \tud@res@b##3!\@nil
      \index{%
        ##3!"|@\,\textrightarrow\,%
        \tudhyperref{idx:##2}{%
          \IfValueTF{##1}{##1}{Index der \tud@res@b}%
        }|seeidx{##2}%
      }%
    }%
    \forcsvlist{\tud@res@a{#2}{#3}}{#1}%
  \endgroup%
}
\AfterReadingMainAux{%
  \immediate\closeout\@indexfile%
  \ifnum\pdf@strcmp{\pdf@filemdfivesum{\jobname.idx}}{\tud@idx@mdfive}=\z@\else%
    \ClassWarningNoLine{tudscrmanual}{%
      The index file `\jobname.idx' has changed. Run again\MessageBreak%
      with --shell-escape flag enabled%
    }%
  \fi%
}
\newcommand*\PrintIndex{%
  \begingroup%
    \@tud@indextrue%
    \providecommand*\lettergroup[1]{%
      \par\textbf{\textsf{##1}}\par%
      \nopagebreak%
    }%
    \tud@print@index%
    (%
      Die im Folgenden aufgelisteten Schlagworte sollen f\"ur den Umgang mit %
      \hologo{LaTeXe} im Allgemeinen sowie dem \TUDScript-Bundle im Speziellen %
      sowohl Antworten bei generellen Fragen liefern als auch L\"osungen f\"ur %
      typische Probleme bereitstellen. Falls ein gesuchter Begriff hier nicht %
      zu finden ist oder trotz vorhandener Hinweise kein zufriedenstellendes %
      Ergebnis erzielt werden kann, sollte das \Forum* erster Anlaufpunkt %
      sein, um weitere Hilfe bei der Nutzung von \TUDScript zu erhalten.%
    )%
    \clearpage%
    \tud@print@index[options]%
    (%
      Dies ist der Index aller im Handbuch erl\"auterten sowie erw\"ahnten %
      Optionen, wobei bei den meisten auch Untereintr\"age mit Seitenangaben %
      f\"ur spezielle Wertzuweisungen existieren.%
    )%
    \tud@print@index[macros]%
    (%
      Dies ist eine Auflistung aller zuvor erl\"auterten sowie erw\"ahnten %
      Befehle und Umgebungen. Bei einigen sind zus\"atzliche Untereintr\"age %
      f\"ur Schl\"ussel-Wert-Parameter zu finden, die im optionalen Argument %
      der jeweiligen Anweisung verwendet werden k\"onnen. Gegebenenfalls sind %
      f\"ur explizite Wertzuweisungen an diese Parameter Seitenverweise zu %
      finden.%
    )%
    \tud@print@index[terms]%
    (%
      Dies sind die von \TUDScript definierten beziehungsweise erw\"ahnten, %
      sprachabh\"angigen Bezeichner. Informationen zur Verwendung sowie den %
      Anpassungsm\"oglichkeiten sind in \autoref{sec:localization} zu finden.%
    )%
    \tud@print@index[elements]%
    \tud@print@index[misc]%
    \tud@print@index[files]%
  \endgroup%
}
\newcommand*\tud@idx@vskip{%
  \ifnum\imki@columns>\@ne\relax\vspace{-\multicolsep}\fi%
}
\NewDocumentCommand\tud@print@index{!O{\jobname} !+d()}{%
  \IfFileExists{\jobname-#1-declare.idx}{%
    \begingroup%
      \csuse{imki@set@#1}%
      \protected@edef\tud@res@a{%
        \endgroup%
        \noexpand\csappto{imki@set@#1}{%
          \unexpanded{\def\imki@options}{%
            \imki@options\space-o \jobname-#1.ind\space%
            \jobname-#1-declare.idx\space%
          }%
        }%
      }%
    \tud@res@a%
    \IfFileExists{\jobname-#1.idx}{}{%
      \immediate\openout\tud@write@a=\jobname-#1.idx\relax%
      \immediate\closeout\tud@write@a%
    }%
  }{}%
  \IfFileExists{\jobname-#1.idx}{%
    \pagebreak[3]%
    \IfValueTF{#2}{%
      \indexprologue{\tudhyperdef*{idx:#1}#2\tud@idx@vskip}%
    }{%
      \indexprologue[\tud@idx@vskip]{\tudhyperdef*{idx:#1}}%
    }%
    \printindex[{#1}]%
    \IfFileExists{\jobname-#1.ind}{}{%
      \ClassWarning{tudscrmanual}%
      {%
        No processed index file found,\MessageBreak%
        `\jobname-#1.ind' does not exist%
      }%
      \immediate\write\@mainaux{\string\gdef\string\tud@idx@mdfive{}}%
    }%
    \tud@idx@vskip%
  }{%
    \ClassWarning{tudscrmanual}%
    {%
      No index entries found, index file\MessageBreak%
      `\jobname-#1.idx' does not exist%
    }%
  }%
}
\newcommand*\tud@changedat@process@list{}
\NewDocumentCommand\Process@ChangedAt{m r++ r== r[] r()}{%
  \begingroup%
    \IfValueTF{#5}{%
      \def\tud@res@a{#5}%
    }{%
      \tud@bdl@get\tud@res@a{#1}+#2+=#3=%
    }%
    \@for\tud@res@a:=\tud@res@a\do{%
      % TODO pass #4, für oberste ebene in Änderungsliste
      \tud@toks@{{#1}+#2+=#3=}%
      \eaddto@hook\tud@toks@{\expandafter(\tud@res@a)}%
      \listeadd\tud@changedat@process@list{\the\tud@toks@}%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand\tud@changedat@process@list{%
        \expandonce\tud@changedat@process@list%
      }%
    }%
  \tud@res@a%
}
\newcommand*\tud@changedat@entry@list{}
\newcommand*\tud@changedat@version@list{}
\NewDocumentCommand\ChangedAt{s o d() m}{%
  \ifx\tud@changedat@entry@list\@empty\else%
    \ClassError{tudscrmanual}{Unprocessed change notes}{%
      \string\tud@changedat@entry@list\space is not empty%
    }%
  \fi%
  \let\tud@changedat@entry@list\@empty%
  \let\tud@changedat@version@list\@empty%
  \Changed@At@CreateList{#4}[{#2}](#3){#1}%
  \print@changedatlist%
}
% TODO raus, wenn umgebung Values umgesetzt
\tud@newdim\tud@dim@changedatvskip
\newcommand*\print@changedatlist{%
  \print@@changedatlist{\tud@dim@changedatvskip}%
}
\newcommand\print@@changedatlist[1]{%
  \begingroup%
    \ifx\tud@changedat@version@list\@empty\else%
      \tud@list@sort\tud@changedat@version@list%
      \let\tud@res@b\@empty%
      \def\tud@res@c##1{%
        \appto\tud@res@b{%
          \ignorespaces%
          \tudhyperref{idx:changelog:##1}{##1}%
          \tabularnewline%
        }%
      }%
      \forlistloop\tud@res@c{\tud@changedat@version@list}%
      \strut%
      \marginnote{%
        \begin{tabular}{|l|}%
          \hline%
          \tud@res@b%
          \hline%
        \end{tabular}%
      }[{#1}]%
    \fi%
    \ifx\tud@changedat@entry@list\@empty\else%
      \forlistloop\@firstofone{\tud@changedat@entry@list}%
    \fi%
  \endgroup%
  \let\tud@changedat@entry@list\@empty%
  \let\tud@changedat@version@list\@empty%
  \ignorespaces%
}
\NewExpandableDocumentCommand\@ChangedAt{s o d() m}{}
\AfterPackage*{hyperref}{%
  \pdfstringdefDisableCommands{%
    \let\ChangedAt\@ChangedAt%
  }%
}
\BeforeStartingTOC{\let\ChangedAt\@ChangedAt}
\DeclareListParser*{\forssvlist}{;}
% TODO spezialfall \@tud@declaretrue notwendig?
\NewDocumentCommand\Changed@At@CreateList{%
  m o >{\Processor@Bundle}D(){\tud@bdl@curr} d:: m%
}{%
  \IfValueT{#1}{%
    \def\tud@res@a{#3}%
    \@for\tud@res@a:=\tud@res@a\do{%
      \tud@toks@{\Changed@At@@CreateList[{#2}]}%
      \eaddto@hook\tud@toks@{\expandafter(\tud@res@a):#4:{#5}}%
      \forssvlist{\the\tud@toks@}{#1}%
    }%
  }%
}
\NewDocumentCommand\Changed@At@@CreateList{r[] r() r:: m m}{%
  \begingroup%
    % TODO internes Argument für Untereinträge
    \def\tud@res@a##1:##2:##3\@nil{%
      \def\tud@res@b{##1}%
      \def\tud@res@c{##2}%
    }%
    \tud@res@a#5::\@nil%
    \begingroup%
      \def\tud@res@a##1!##2!##3\@nil{%
        \def\tud@res@a{##1}%
        \def\tud@res@b{##2}%
      }%
      \expandafter\tud@res@a\tud@res@b!!\@nil%
      \ifx\tud@res@b\@empty%
        \def\tud@res@a{\endgroup}%
      \else%
        % TODO Warnung!
          \Markup@Expandable
          \def\tud@res@c##1=##2\@nil{%
            \protected@edef\tud@res@a{%
              \endgroup%
              \unexpanded{\def\tud@res@b}{\expandonce\tud@res@a=##2}%
            }%
          }%
          \protected@edef\tud@res@b{\tud@res@b}%
          \expandafter\tud@res@c\tud@res@b\@nil%
      \fi%
    \tud@res@a%
    \def\tud@res@a##1=##2=##3\@nil{%
      % TODO Warnung!
      \def\tud@res@a{##1}%
      \def\tud@res@b{##2}%
    }%
    \expandafter\tud@res@a\tud@res@b==\@nil%
    \ifx\tud@res@c\@empty%
      % TODO als optionales Argument :test: direkt für \Changed@At@CreateList
%      \if@tud@declare%
%        \if@tud@obsolete%
%          \def\tud@res@c{\emph{entf\"allt}}%
%        \else%
%          \def\tud@res@c{\emph{neu}}%
%        \fi%
%      \fi%
    \fi%
    \tud@toks@{\Changed@At@CreateEntry}%
    \eaddto@hook\tud@toks@{\expandafter{\tud@res@a}}%
    \IfValueTF{#1}{%
      \addto@hook\tud@toks@{[{#1}]}%
      \ifx\tud@res@b\@empty\else%
        \protected@edef\tud@res@b{%
          \unexpanded{\Parameter@Enclose[\def\tud@res@b]{\PValue}}{\tud@res@b}%
        }%
        \tud@res@b%
        \eaddto@hook\tud@toks@{\expandafter=\tud@res@b=}%
      \fi%
    }{%
    % TODO optionales Argument von \ChangedAt weglassen, Markup direkt mit ! 
%      \ifx\tud@res@b\@empty\else%
%        \ifx\tud@res@c\@empty%
%         \typeout{!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!}%
%        \fi%
%      \fi%
    }%
    \addto@hook\tud@toks@{(#2)}%
    \trim@spaces@in\tud@res@c%
    \ifx\tud@res@c\@empty%
      \IfValueT{#3}{\addto@hook\tud@toks@{:#3:}}%
    \else%
      \eaddto@hook\tud@toks@{\expandafter:\tud@res@c:}%
    \fi%
    \listeadd\tud@changedat@entry@list{\the\tud@toks@}%
    \IfBooleanF{#4}{%
      \xifinlist{\tud@res@a}{\tud@changedat@version@list}{}{%
        \listeadd\tud@changedat@version@list{\tud@res@a}%
      }%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand\tud@changedat@entry@list{%
        \expandonce\tud@changedat@entry@list%
      }%
      \def\noexpand\tud@changedat@version@list{%
        \expandonce\tud@changedat@version@list%
      }%
    }%
  \tud@res@a%
}
\newcommand*\PrintChangelog{%
  \begingroup%
    \@tud@indextrue%
    \@tud@changelogtrue%
    \let\lettergroup\@gobble%
    \apptocmd{\theindex}{%
      % TODO neuer Stil tudscrmanual-gls.xdy oder tudscrmanual-clg.xdy
      % oder tudscrmanual-changelog.xdy [und tudscrmanual-index.xdy]
      % tudscrdoc beachten
      \let\subsubsubsubitem\subsubsubitem%
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
        \let\tud@res@b\@firstofone%
        \if@tud@cdoldfont@active\def\tud@res@b##1{\NoCaseChange{##1}}\fi%
        \addsec[{##1}]{\TUDScript \tud@res@b{##1}}%
        \tudhyperdef*{idx:changelog:##1}%
        \def\tud@res@a{\indexname: \TUDScript \tud@res@b{##1}}%
        \@mkboth{\tud@res@a}{\tud@res@a}%
      }%
    }{}{\tud@patch@wrn{theindex}}%
    \clearpage%
    \def\imki@indexlevel{\addchap}%
    \tud@print@index[changelog]%
  \endgroup%
}
\NewDocumentCommand\Changed@At@CreateEntry{m o d== r() !d::}{%
  \begingroup%
    \IfValueT{#5}{%
      \protected@edef\tud@res@a{#4}%
      \ifx\tud@res@a\tud@bdl@dflt%
        \let\tud@res@a\@empty%
      \else%
        \def\tud@res@a{\space#4}%
      \fi%
      \IfValueTF{#2}{%
        \let\tud@changedat@process@list\@empty%
        \@tud@changedattrue#2\@tud@changedatfalse%
        \def\tud@res@b##1{%
          \tud@idx@get##1=#3=(#4):#5:%
          \index[changelog]{#1!Implementierung\tud@res@a!\tud@idx@entry}%
        }%
        \forlistloop\tud@res@b{\tud@changedat@process@list}%
      }{%
        \index[changelog]{#1!Allgemein\tud@res@a!#5}%
      }%
    }%
  \endgroup%
}
\RequirePackage{enumitem}[2011/09/28]
\setlist{before*={\endgraf\tud@RaggedRight},partopsep=0pt,noitemsep}
\newcommand*\stditem{}
\newcommand*\tud@before@item[1]{%
  \ifdefvoid{\stditem}{%
    \let\stditem\item%
    \letcs\item{tud@item@#1}%
    % TODO Änderungsnotiz direkt über Makro \item setzen
    \tud@setdim\tud@dim@changedatvskip{-1\baselineskip}%
  }{}%
}
\newcommand*\tud@values{}
% TODO erstes Argument mit Liste (ddc,ddchead,ddcfoot)
% TODO Hauptargument der aktuellen Deklarationen in Liste
\NewDocumentEnvironment{values}{m !o}{%
  \def\tud@values{#1}%
  \IfValueTF{#2}{\@values[{#2}]}{\@values}%
}{%
  \end@values%
}
\newlist{@values}{description}{1}
\setlist[@values]{%
  topsep=\smallskipamount,labelwidth=\linewidth,labelsep=0pt,%
  font=\normalfont,parsep=\parskip,listparindent=\parindent,%
  before=\tud@before@item{values}%
}
\NewDocumentCommand\tud@item@values{s r[] !o !d()}{%
  \begingroup%
    \in@{/}{#2}%
    \ifin@%
      \def\tud@res@a##1/##2\@nil{%
        \def\tud@res@b{##1}%
        \def\tud@res@c{/##2}%
      }%
      \tud@res@a#2\@nil%
    \else%
      \def\tud@res@b{#2}%
      \let\tud@res@c\@empty%
    \fi%
    \IfBooleanTF{#1}{\def\tud@res@a{\PValueDefault}}{\def\tud@res@a{\PValue}}%
    \protected@edef\tud@res@a{%
      \unexpanded{\Parameter@Enclose[\def\tud@res@b]}%
        {\expandonce\tud@res@a}{\tud@res@b}%
      \ifx\tud@res@c\@empty\else%
        \unexpanded{\Parameter@Enclose[\def\tud@res@c]}%
          {\expandonce\tud@res@a}{\tud@res@c}%
      \fi%
    }%
    \tud@res@a%
    \protected@edef\tud@res@a{\tud@values}%
    \eappto\tud@res@a{=\expandonce\tud@res@b=}%
    \let\tud@res@b\@empty%
    \IfBooleanTF{#1}{%
      \appto\tud@res@b{\suffix{S\"aumniswert}}%
    }{%
      \IfValueT{#3}{\appto\tud@res@b{\suffix{S\"aumniswert f\"ur #3}}}%
    }%
    \IfValueT{#4}{\appto\tud@res@b{\suffix{#4}}}%
    \edef\tud@res@a{%
      % TODO doch Sternversion, für Links ohne Output?!
      \noexpand\InlineDeclaration{\expandonce\tud@res@a}%
      \expandonce\tud@res@c\expandonce\tud@res@b%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\stditem[{\expandonce\tud@res@a}]%
    }%
  \tud@res@a%
}
\NewDocumentCommand\itemtrue{!s !o !o !d()}{%
  \item@bool{#1}{true/on/yes}[{#2}][{#3}](#4)%
}
\NewDocumentCommand\itemfalse{!s !o !o !d()}{%
  \item@bool{#1}{false/off/no}[{#2}][{#3}](#4)%
}
\NewDocumentCommand\item@bool{m m r[] r[] r()}{%
  \toks@{\item}%
  \IfBooleanT{#1}{\addto@hook\toks@{*}}%
  \protected@edef\tud@res@a{#2\IfValueT{#3}{/#3}}%
  \eaddto@hook\toks@{\expandafter[\tud@res@a]}%
  \IfValueT{#4}{\addto@hook\toks@{[{#4}]}}%
  \IfValueT{#5}{\addto@hook\toks@{(#5)}}%
  \the\toks@%
}
%
%
%
\newcommand*\itemval{}
\undef\itemval%
\newcommand*\itemvaltrue{}
\undef\itemvaltrue%
\newcommand*\itemvalfalse{}
\undef\itemvalfalse%
\newcommand*\tud@item@val@init[1]{%
  \let\itemval\tud@item@val%
  \let\itemvaltrue\tud@item@val@true%
  \let\itemvalfalse\tud@item@val@false%
}
% TODO erstes Argument mit Liste (ddc,ddchead,ddcfoot)
% TODO Hauptargument der aktuellen Deklarationen in Liste
\newcommand*\tud@list@create[4][]{%
  \newlist{#2}{#3}{#4}
  \setlist[#2]{%
    topsep=\smallskipamount,labelwidth=\linewidth,labelsep=0pt,%
    font=\normalfont,parsep=\parskip,listparindent=\parindent,#1%
  }%
}
\tud@list@create[%
  before=\tud@item@val@init%
]{DeclarationValues}{description}{1}
\NewDocumentCommand\tud@item@val{s d'' o r== !d()}{%
  \begingroup%
    \in@{/}{#4}%
    \ifin@%
      \def\tud@res@c##1/##2\@nil{%
        \def\tud@res@a{##1}%
        \def\tud@res@b{/##2}%
      }%
      \tud@res@c#4\@nil%
    \else%
      \def\tud@res@a{#4}%
      \let\tud@res@b\@empty%
    \fi%
    \IfBooleanTF{#1}{\def\tud@res@c{\PValueDefault}}{\def\tud@res@c{\PValue}}%
    \protected@edef\tud@res@c{%
      \unexpanded{\Parameter@Enclose[\def\tud@res@a]}%
        {\expandonce\tud@res@c}{\tud@res@a}%
      \ifx\tud@res@c\@empty\else%
        \unexpanded{\Parameter@Enclose[\def\tud@res@b]}%
          {\expandonce\tud@res@c}{\tud@res@b}%
      \fi%
    }%
    \tud@res@c%
    \IfBooleanTF{#1}{%
      \appto\tud@res@b{\suffix{S\"aumniswert}}%
    }{%
      \IfValueT{#2}{\appto\tud@res@b{\suffix{S\"aumniswert f\"ur #2}}}%
    }%
    \IfValueT{#5}{\appto\tud@res@b{\suffix{#5}}}%
    \def\tud@res@c##1##2##3{%
      \Markup@Replace@Value[\def\tud@res@b]{##3}{##1}%
      \ifx\tud@res@a\@empty%
        \edef\tud@res@a{%
          \noexpand\InlineDeclaration{\expandonce\tud@res@b}[{##2}]%
        }%
      \else%
        \eappto\tud@res@a{%
          \noexpand\Inline@Declaration{\expandonce\tud@res@b}{2}%
        }%
      \fi%
    }%
    \edef\tud@res@a{%
      \unexpanded{\let\tud@res@a\@empty}%
      \noexpand\forlistloop{%
        \noexpand\tud@res@c{\expandonce\tud@res@a}{\expandonce\tud@res@b}%
      }{\expandonce\tud@declaration@@list}%
    }%
    \tud@res@a%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\item[{\expandonce\tud@res@a}]%
    }%
  \tud@res@a%
  % TODO !!!!!!!!!!! Änderungsnotiz --> Einträge sammlen und einmalig setzen
%      \IfValueT{#3}{%
%        \ChangedAt{#3}%
%      }%
}
\NewDocumentCommand\tud@item@val@true{!s !d'' !o !d== !d()}{%
  \tud@item@val@bool{#1}'#2'[{#3}]{true/on/yes}=#4=(#5)%
}
\NewDocumentCommand\tud@item@val@false{!s !d'' !o !d== !d()}{%
  \tud@item@val@bool{#1}'#2'[{#3}]{false/off/no}=#4=(#5)%
}
\NewDocumentCommand\tud@item@val@bool{m r'' r[] m r== r()}{%
  \toks@{\tud@item@val}%
  \IfBooleanT{#1}{\addto@hook\toks@{*}}%
  \addto@hook\toks@{'#2'[{#3}]}%
  \protected@edef\tud@res@a{#4\IfValueT{#5}{/#5}}%
  \eaddto@hook\toks@{\expandafter=\tud@res@a=}%
  \addto@hook\toks@{(#6)}%
  \the\toks@%
}
%
%
%
% TODO rename to DeclarationPackages
\newlist{packages}{description}{2}
\setlist[packages]{%
  topsep=\smallskipamount,labelwidth=\linewidth,labelsep=0pt,%
  font=\normalfont,parsep=\parskip,listparindent=\parindent,%
  before=\tud@before@item{packages}%
}
\NewDocumentCommand\tud@item@packages{r[] !d() !d<>}{%
  \begingroup%
    \let\tud@res@a\@empty%
    \def\tud@res@b##1{%
      \eappto\tud@res@a{%
        ,\noexpand\space\noexpand\InlineDeclaration{%
          \noexpand\Package{##1}%
          \IfValueT{#2}{\unexpanded{(#2)}}%
          \IfValueT{#3}{<#3>}%
        }%
      }%
    }%
    \forcsvlist\tud@res@b{#1}%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\stditem[{%
        \expandafter\expandafter\expandafter\@gobbletwo\expandonce\tud@res@a%
      }]%
    }%
  \tud@res@a\strut\ignorespaces%
}
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
\RequirePackage{tabularx}[1999/01/07]
\NewDocumentCommand\TermTable{s m !O{\linewidth}}{%
  \ifhmode\par\fi%
  \vskip\medskipamount%
  \@afterindentfalse\@afterheading%
  \begingroup%
    \IfBooleanTF{#1}{%
      \begin{tabularx}{\dimexpr\glueexpr#3\relax\relax}{lXX}%
        \Term@Table{-\ht\strutbox}{#2}%
      \end{tabularx}%
    }{%
      \begin{tabular}{lll}%
        \Term@Table{\z@}{#2}%
      \end{tabular}%
    }%
  \endgroup%
  \par\addvspace{\medskipamount}%
}
\newcommand*\Term@Table[2]{%
  \toprule%
  \textbf{Bezeichner} & \textbf{Deutsch} & \textbf{Englisch}\tabularnewline%
  \midrule%
  \forcsvlist{\Term@@Table{#1}}{#2}%
  \bottomrule%
}
\newcommand*\Term@@Table[2]{%
  \Term{#2}'none' & %
  \ifstr{\csuse{#2}}{}{\PName{leer}}{\csuse{#2}} & %
  \selectlanguage{english}\vspace*{#1}%
  \ifstr{\csuse{#2}}{}{\PName{empty}}{\csuse{#2}}\tabularnewline%
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
\tud@newwrite\tud@write@a
\RequirePackage{listings}[2014/03/04]
\lstdefinestyle{tudscr}{%
  basicstyle=\ttfamily\ifundef{\setstretch}{}{\setstretch{1}},%
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
      \let\tud@res@a\@empty%
      \ifdef{\tudfinalflag}{\appto\tud@res@a{\def\noexpand\tudfinalflag{}}}{}%
      \ifdef{\tudprintflag}{\appto\tud@res@a{\def\noexpand\tudprintflag{}}}{}%
      \appto\tud@res@a{\noexpand\input{#2.tex}}%
      \immediate\openout\tud@write@a=tutorials.sh\relax%
      \def\tud@res@b##1{\immediate\write\tud@write@a{##1}}%
      \tud@res@b{cd tutorials}%
      \tud@res@b{\tud@latex@ext -shell-escape "\tud@res@a"}%
      \ifwindows%
        \tud@res@b{if exist #2.bcf biber #2}%
      \else%
        \tud@res@b{[ -f #2.bcf ] && biber #2}%
      \fi%
      \tud@res@b{\tud@latex@ext "\tud@res@a"}%
      \tud@res@b{\tud@latex@ext -shell-escape "\tud@res@a"}%
      \ifwindows%
        \tud@res@b{if exist #2.ist makeglossaries #2}%
      \else%
        \tud@res@b{[ -f #2.ist ] && makeglossaries #2}%
      \fi%
      \ifwindows%
        \tud@res@b{if exist #2.xdy makeglossaries #2}%
      \else%
        \tud@res@b{[ -f #2.xdy ] && makeglossaries #2}%
      \fi%
      \tud@res@b{\tud@latex@ext "\tud@res@a"}%
      \tud@res@b{\tud@latex@ext -shell-escape "\tud@res@a"}%
      \tud@res@b{\tud@latex@ext -shell-escape "\tud@res@a"}%
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
  % TODO Suffix im Index (Datei) ignorieren
  \IfBooleanF{#1}{%
    \index[files]{\hypertut{#2}{\suffix{Tutorial}}\IfValueT{#3}{|#3}}%
  }%
}
\newcommand*\IncludeExample[1]{%
  \lstinputlisting[style=tudscr]{examples/#1}%
  \ifnum\pdf@shellescape=\@ne\relax%
    \filemodCmp{examples/#1.pdf}{examples/#1.tex}{}{%
      \edef\tud@res@a{%
        \tud@latex@ext -output-directory examples examples/#1.tex%
      }%
      \ShellEscape{\tud@res@a}%
      \ShellEscape{\tud@res@a}%
    }%
    \filemodCmp{examples/#1_print.pdf}{examples/#1_print.tex}{}{%
      \edef\tud@res@a{%
        \tud@latex@ext -output-directory examples examples/#1_print.tex%
      }%
      \ShellEscape{\tud@res@a}%
      \ShellEscape{\tud@res@a}%
    }%
  \fi%
  \def\tud@res@a{examples/#1.pdf}%
  \ifdef{\tudprintflag}{%
    \IfFileExists{examples/#1_print.pdf}{%
      \def\tud@res@a{examples/#1_print.pdf}%
    }{}%
  }{}%
  \IfFileExists{\tud@res@a}{%
    \edef\tud@res@a{%
      \noexpand\includepdf[%
        pages=-,noautoscale,frame,keepaspectratio,pagecommand={},%
        height=\noexpand\textheight,width=\noexpand\textwidth,offset=5mm 0mm%
      ]{\tud@res@a}%
    }%
    \tud@res@a%
  }{%
    \tud@shellescape@wrn{\tud@res@a}%
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
    \tud@setdim\marginparwidth{2cm}%
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
            \marginnote[{##1}]{##2}[\dimexpr-\ht\z@+1.6ex+1.75pt\relax]%
          }%
          \toks@\expandafter{\tud@res@a noline,nolist}%
          \settowidth\marginparwidth{\tud@res@c}%
          \tud@addtodim\marginparwidth{\dimexpr1.6ex+1pt\relax}%
          \expandafter\todo\expandafter[\the\toks@]{\tud@res@c\strut}%
          \aftergroup\par\aftergroup\noindent%
          \listremove{\tud@todo@type@use}{rls}%
          \listremove{\tud@todo@type@use}{imp}%
          \listremove{\tud@todo@type@use}{doc}%
          \ifx\tud@todo@type@use\@empty\else%
            \begingroup%
              \let\tud@res@c\@empty%
              \renewcommand*\do[1]{%
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
    \protected@edef\tud@res@a{#1}%
    \let\tud@res@c\@empty%
    \def\tud@res@b##1#2##2\@nil{%
      \IfArgIsEmpty{##2}{%
        \appto\tud@res@c{##1}%
      }{%
        \appto\tud@res@c{##1#3}%
        \tud@res@b##2\@nil%
      }%
    }%
    \expandafter\tud@res@b\tud@res@a#2\@nil%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand#1{\expandonce{\tud@res@c}}%
    }%
  \tud@res@a%
}
\newcommand*\tud@@replace[3]{%
  \begingroup%
    \protected@edef\tud@res@a{#1}%
    \edef\tud@res@a{\detokenize\expandafter{\tud@res@a}}%
    \edef\tud@res@b{%
      \unexpanded{\tud@replace\tud@res@a}{\detokenize{#2}}{\detokenize{#3}}%
    }%
    \tud@res@b%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand#1{\tud@res@a}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\GitHubRepo{!t' !o !D(){\tud@github@url@base} !d<>}{%
  \begingroup%
    \tud@github@url@normalize\tud@res@b{#3}%
    \IfValueTF{#2}{%
      \def\tud@res@c{#2}%
    }{%
      \expandafter\filename@parse\expandafter{\tud@res@b}%
      \protected@edef\tud@res@c{%
        \mbox{\tud@english{GitHub-Repository~\textsbn{\filename@base}}}%
      }%
    }%
    \IfValueT{#4}{%
      \edef\tud@res@a{\trim@spaces{#4}}%
      \tud@remove@trailing@slashes{\tud@res@a}%
      \ifnumber{\tud@res@a}{%
        \eappto{\tud@res@b}{/issues/\tud@res@a}%
      }{%
        \eappto{\tud@res@b}{/\tud@res@a}%
      }%
    }%
    \IfBooleanTF{#1}{\let\tud@res@a\href}{\let\tud@res@a\hrfn}%
    \tud@res@a{https://github.com/\tud@res@b}{\tud@res@c}%
  \endgroup%
  \xspace%
}
\NewDocumentCommand\GitHubDownload{s t' D(){\tud@github@url@base} d<> m}{%
  \begingroup%
    \tud@github@url@normalize\tud@res@b{#3}%
    \IfValueTF{#4}{%
      \appto\tud@res@b{/releases/download/#4/#5}%
    }{%
      \appto\tud@res@b{/releases/latest/download/#5}%
    }%
    \IfBooleanTF{#2}{\let\tud@res@a\href}{\let\tud@res@a\hrfn}%
    \IfBooleanTF{#1}{\def\tud@res@c{\File*}}{\def\tud@res@c{\File}}%
    \tud@res@a{https://github.com/\tud@res@b}{\tud@res@c{#5}}%
  \endgroup%
  \xspace%
}
\newcommand*\GitHubBase[1]{%
  \tud@github@url@normalize\tud@github@url@base{#1}%
}
\newcommand*\tud@github@url@base{}
\let\tud@github@url@base\relax
\newcommand*\tud@github@url@normalize[2]{%
  \begingroup%
    \def\tud@res@a{#2}%
    \def\tud@res@b{\tud@github@url@base}%
    \ifx\tud@res@a\tud@res@b%
      \ifx\tud@github@url@base\relax%
        \ClassWarning{tudscrmanual}%
        {%
          No GitHub repository was set with `\string\GitHubBase'\MessageBreak%
          so \TUDScriptRepository\space is used%
        }%
        \edef\tud@res@a{\TUDScriptRepository}%
      \fi%
    \else%
      \edef\tud@res@a{\trim@spaces{#2}}%
    \fi%
    \def\tud@res@b##1github.com/##2github.com/##3\@nil{%
      \IfArgIsEmpty{##2}{%
        \def\tud@res@a{##1}%
      }{%
        \def\tud@res@a{##2}%
      }%
    }%
    \expandafter\tud@res@b\tud@res@a github.com/github.com/\@nil%
    \tud@remove@trailing@slashes{\tud@res@a}%
    \edef\tud@res@b{%
      \endgroup%
      \def\noexpand#1{\tud@res@a}%
    }%
  \tud@res@b%
}
\newcommand*\tud@remove@trailing@slashes[1]{%
  \begingroup%
    \edef\tud@res@a{\trim@spaces{#1}}%
    \ifstrstart{\tud@res@a}{/}{%
      \edef\tud@res@a{\expandafter\@gobble\tud@res@a}%
    }{}%
    \let\tud@res@c\@empty%
    \def\tud@res@b##1/##2/\@nil{%
      \IfArgIsEmpty{##2}{%
        \appto\tud@res@c{##1}%
      }{%
        \ifstr{##2}{/}{%
          \appto\tud@res@c{##1}%
        }{%
          \appto\tud@res@c{##1/}%
          \tud@res@b##2/\@nil%
        }%
      }%
    }%
    \expandafter\tud@res@b\tud@res@a//\@nil%
    \edef\tud@res@b{%
      \endgroup%
      \def\noexpand#1{\tud@res@c}%
    }%
  \tud@res@b%
}
\newcommand*\TUDForum{\mbox{TUD-\hologo{LaTeX}-Forum}}
\NewDocumentCommand\Forum{!t' !O{\TUDForum} !d<>}{%
  \begingroup%
    \IfBooleanTF{#1}{\let\tud@res@a\href}{\let\tud@res@a\hrfn}%
    \tud@res@a{\TUDScriptForum\IfValueT{#3}{viewtopic.php?t=#3}}{#2}%
  \endgroup%
  \xspace%
}
\NewDocumentCommand\CTAN{!t' !o}{%
  \begingroup%
    \IfBooleanTF{#1}{\let\tud@res@a\href}{\let\tud@res@a\hrfn}%
    \tud@res@a{http://www.ctan.org\IfValueT{#2}{/#2}}{%
      \tud@english{Comprehensive TeX Archive Network (CTAN)}%
    }%
  \endgroup%
  \xspace%
}
\NewDocumentCommand\scrguide{!t' !O{\KOMAScript-Handbuch}}{%
  \begingroup%
    \IfBooleanTF{#1}{\let\tud@res@a\href}{\let\tud@res@a\hrfn}%
    \tud@res@a{%
      http://mirrors.ctan.org/macros/latex/contrib/koma-script/doc/scrguide.pdf%
    }{#2}%
  \endgroup%
  \xspace%
}
\newcommand*\notudscrartcl{%
  F\"ur die Klassen \Class{tudscrartcl} sowie \Class{tudscrposter} ist diese %
  Option nicht verf\"ugbar.%
}
\newcommand*\Attention[2][\z@]{%
  \marginnote{%
    \tud@setdim\fboxsep{0.25em}%
    \fbox{Achtung!}%
  }[{#1}]%
  \emph{\trim@spaces{#2}}%
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
%\AfterPackage*{hyperref}{%
%  \pdfstringdefDisableCommands{%
%    \def\DDC{DRESDEN-concept}%
%    \def\TUDScript{TUD-Script}%
%    \def\KOMAScript{KOMA-Script}%
%  }%
%}
\renewcommand*\@pnumwidth{2.1em}%
\renewcommand*\@tocrmarg{3.1em}%
\newcommand*\textsbn{}
\newrobustcmd*\sbnfont{\sffamily\bfseries\upshape}
\DeclareTextFontCommand\textsbn{\sbnfont}
\newcommand*\textsbs{}
\newrobustcmd*\sbsfont{\sffamily\bfseries\slshape}
\DeclareTextFontCommand\textsbs{\sbsfont}
%%%% From File: tudscr-fields.dtx 2019/11/29 01:36:52 c9a9b7b
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
%%%% From File: tudscr-localization.dtx 2019/11/27 16:07:19 6567eba
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
%%%% From File: tudscr-texindy.dtx 2019/11/29 01:36:52 c9a9b7b
\begingroup
\tud@newwrite\tud@write@xdy
\tud@newif\if@tud@xdy@glo
% TODO create \@currname-gls.xdy für Änderungsliste
% use markup-indexentry :open and :close
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
    (markup-indexentry%
    \space:open "~n\@spaces\@spaces\string\subsubsubitem\space"%
    \space:depth 3%
    )^^J%
    (markup-indexentry%
    \space:open "~n\@spaces\@spaces\space\space\string\subsubsubsubitem\space"%
    \space:depth 4%
    )%
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
    (define-crossref-class "seeunverified" :unverified)^^J%
    (markup-crossref-list :class "seeunverified"^^J%
    \space\space%
    :open "\string\cleversee\space"\@spaces\space%
    :close "\@backslashchar\@backslashchar"\space%
    :sep "; "^^J%
    )%
  }%
  \write\tud@write@xdy{%
    (markup-crossref-list :class "see"^^J%
    \space\space%
    :open "\string\cleversee\space"\@spaces\space%
    :close "\@backslashchar\@backslashchar"\space%
    :sep "; "^^J%
    )^^J%
    (markup-crossref-list :class "seealso"^^J%
    \space\space%
    :open "\string\cleverseealso\space"\space%
    :close "\@backslashchar\@backslashchar"\space%
    :sep "; "^^J%
    )%
  }%
  \write\tud@write@xdy{%
    (define-crossref-class "seeidx" :unverified)^^J%
    (markup-crossref-list :class "seeidx"^^J%
    \space\space
    :open "\string\seeidx{"\@spaces\@spaces
    :close "}{}"\space%
    :sep "; "^^J%
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
  \write\tud@write@xdy{%
    (define-location-class-order^^J%
    \space\space(^^J%
    \@spaces"see" "seealso" "seeidx" "seeunverified"^^J%
    \@spaces"roman-page-numbers" "arabic-page-numbers" "alpha-page-numbers"^^J%
    \@spaces"Roman-page-numbers" "Alpha-page-numbers"^^J%
    \space\space)^^J%
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
