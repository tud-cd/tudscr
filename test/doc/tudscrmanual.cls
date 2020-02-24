% TODO check delimited arguments (delimiter token) ( |\{)!?(d|r)..( |\})
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
%%               2020/01/22 v2.07 TUD-Script
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
%%%% From File: tudscr-version.dtx 2020/01/14 01:35:36 9fb7125
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
  \TUD@@Version{2020/01/22 v2.07 TUD-Script}{2019/12/23 v3.28 KOMA-Script}%
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
  2020/01/22 v2.07 TUD-Script
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
%%%% From File: tudscr-base.dtx 2020/01/14 17:13:34 e5e3ff2
\RequirePackage{tudscrbase}[%
  2020/01/22 v2.07 TUD-Script
]
\renewcommand*\TUD@KOMAoptions[1]{\PassOptionsToClass{#1}{\TUD@Class@Parent}}
\AfterClass{\TUD@Class@Parent}{\let\TUD@KOMAoptions\KOMAoptions}
%%%% From File: tudscr-manual.dtx 2020/01/14 17:13:34 e5e3ff2
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
      \Ifstr{##1##2##3}{not}{%
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
%%%% From File: tudscr-misc.dtx 2020/01/14 17:13:34 e5e3ff2
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\TUD@Class@Parent}}
\TUDProcessOptions\relax
\PassOptionsToClass{ttfont=roboto}{\TUD@Class@Parent}
\LoadClass{\TUD@Class@Parent}[%
  2020/01/22 v2.07 TUD-Script
]
%%%% From File: tudscr-manual.dtx 2020/01/14 17:13:34 e5e3ff2
\RequirePackage{xparse}[2020/02/14]
\RequirePackage{scrhack}[%
  2019/12/23 v3.28 KOMA-Script
]
\RequirePackage{babel}[2014/03/24]
\PassOptionsToPackage{quiet}{marginnote}
\RequirePackage{marginnote}[2012/03/29]
\reversemarginpar
\RequirePackage{xspace}[2009/10/20]
\xspaceaddexceptions{"=}
\@ifpackagelater{geometry}{2020/01/03}{%
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
        \unexpanded{\def#1}{\expandonce\tud@list@sorted}%
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
\listadd\tud@trace@lbl@types{created}
\listadd\tud@trace@lbl@types{matched}
\listadd\tud@trace@lbl@types{unused}
\listadd\tud@trace@lbl@types{ignored}
\listadd\tud@trace@lbl@types{missing}
\listadd\tud@trace@lbl@types{url}
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
\NewDocumentCommand\tud@trace@lbl@add{m d() d<> m}{%
  \begingroup%
    \ifcsundef{tud@trace@lbl@#1@list}{%
      \ifinlist{#1}{\tud@trace@lbl@types}{}{%
        \ClassError{tudscrmanual}{Undefined label type `#1'}{%
          The given tracing type was never defined.%
        }%
      }%
    }{%
      \protected@edef\tud@res@a{#4}%
      \@onelevel@sanitize\tud@res@a%
      \edef\tud@res@b{\IfValueT{#3}{\space<#3>}\IfValueT{#2}{\space(#2)}}%
      \wlog{+++++ label #1\tud@res@b\on@line\space+++++^^J\tud@res@a}%
      \xifinlistcs{\tud@res@a\tud@res@b}{tud@trace@lbl@#1@list}{}{%
        \listcsxadd{tud@trace@lbl@#1@list}{\tud@res@a\tud@res@b}%
      }%
    }%
  \endgroup%
}
\newcommand*\tud@trace@lbl@wlog{\relax}
\AfterEndDocument{\tud@trace@lbl@wlog}
\newcommand*\tud@trace@markup@types{}
\listadd\tud@trace@markup@types{declare}
\listadd\tud@trace@markup@types{output}
\listadd\tud@trace@markup@types{temp}
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
\PassOptionsToPackage{%
%  destlabel=true,
  pdfview=FitH,hyperindex=false,%
  colorlinks,linkcolor=blue,citecolor=violet%
}{hyperref}
\PassOptionsToPackage{open,openlevel=0}{bookmark}
\AfterPackage*{hyperref}{%
  \renewcaptionname{ngerman}{\sectionautorefname}{Unterkapitel}%
  \renewcaptionname{ngerman}{\subsectionautorefname}{Abschnitt}%
  \renewcaptionname{ngerman}{\subsubsectionautorefname}{Unterabschnitt}%
  \newcommand*\autorefname[1][current]{%
    \Ifstr{#1}{current}{%
      \expandafter\HyPsd@@autorefname\@currentHref\@nil%
    }{%
      \auto@refname\HyPsd@@autorefname{#1}%
    }%
    \unskip\xspace%
  }%
  \newcommand*\auto@refname[2]{%
    \ifcsname r@#2\endcsname%
      \expandafter\expandafter\expandafter\auto@@refname%
          \csname r@#2\endcsname{}{}{}{}\@nil#1\@nil%
    \else%
      ??%
    \fi%
  }%
  \newcommand*\auto@@refname{}%
  \def\auto@@refname#1#2#3#4#5\@nil#6\@nil{#6#4.\@nil}%
  \providecommand*\Url[1]{\detokenize{#1}\endgroup}%
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
  \providecommand*\url[1]{\detokenize{#1}}%
  \providecommand*\nolinkurl[1]{\url{#1}}%
  \providecommand*\hyperpage[1]{#1}%
  \providecommand*\autoref{??\xspace\kernel@ifstar{\ref}{\ref}}%
  \providecommand*\autorefname[1][]{??\xspace}%
  \providecommand*\hyperdef[4][]{\label{#2.#3}#4}%
  \providerobustcmd*\hyperref{%
    \kernel@ifnextchar[%]
      {\tud@x@hyperref@a}%
      {\tud@x@hyperref@b}%
  }%
  \newcommand*\tud@x@hyperref@a[2][]{#2}%
  \newcommand*\tud@x@hyperref@b[4]{#4}%
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
\newcommand*\tud@hypervskip@dim{\dimexpr1\baselineskip*3\relax}
\patchcmd{\set@@@@preamble}{%
  \let\phantomsection\relax%
}{%
  \let\phantomsection\relax%
  \renewcommand*\tud@hypervskip@dim{\dimexpr1\baselineskip*15\relax}%
}{}{\tud@patch@wrn{set@@@@preamble}}
\newcommand*\tud@hyper@category{tudscr}%
% TODO für treatise.tex überarbeiten
% \href[pdfnewwindow]{./test.pdf#sec:general}{text}
\newrobustcmd*\tudhyperref[2]{\hyperref{}{\tud@hyper@category}{#1}{#2}}%
\NewDocumentCommand\tudhyperdef{s m}{\tud@@hyperdef{#1}{#2}}
\NewDocumentCommand\tud@hyperdef{s d<> m}{\tud@@hyperdef{#1}<#2>{#3}}
\NewDocumentCommand\tud@@hyperdef{m d<> m}{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@@@hyperdef{#1}<#2>{#3}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@@@hyperdef{m r<> m}{%
  \begingroup%
    \edef\tud@res@a{\noexpand\hyperdef{\tud@hyper@category}{#3}{}}%
        % TODO warum ist raised notwendig?
        % \hyperdef{bar}{foo}{\subsection{General introduction}}\label{bar}
        % https://tex.stackexchange.com/questions/83795/
        % \hypersetup{destlabel=true}?
    \IfBooleanTF{#1}{%
%      \ClassWarning{tudscrmanual}{remove}%
      \raisebox{\tud@hypervskip@dim}[0pt][0pt]{\tud@res@a}%
      \par\nobreak\vskip\glueexpr-\parskip-\baselineskip\relax%
      % TODO warum? geht auch \noindent?
      \@afterindentfalse\@afterheading%
    }{%
      \Hy@raisedlink{\tud@res@a}\ignorespaces%
    }%
    \label{#3}%
    \IfValueTF{#2}{%
      \tud@trace@lbl@add{created}<#2>{#3}%
    }{%
      \IfBooleanTF{#1}{%
        \tud@trace@lbl@add{created}(raised){#3}%
      }{%
        \tud@trace@lbl@add{created}{#3}%
      }%
    }%
  \endgroup%
}
\newcommand*\hrfn[2]{\href{#1}{\trim@spaces{#2}}\footnote{\url{#1}}}
\newrobustcmd*\mailto[1]{\mbox{\href{mailto:#1}{\nolinkurl{#1}}}}%
\AfterPackage*{hyperref}{%
  \patchcmd{\pdfstringdef}{\csname HyPsd@babel@}{%
    \let\bbl@info\@gobble\csname HyPsd@babel@%
  }{}{\tud@patch@wrn{pdfstringdef}}%
}
\PassOptionsToPackage{nospace}{varioref}
\RequirePackage{varioref}[2019/11/05]
\renewcommand*\fullref[1]{\hyperref[{#1}]{\autoref*{#1}\space\vpageref{#1}}}
\PassOptionsToPackage{babel}{microtype}
\AfterPackage*{hyperref}{\RequirePackage{microtype}[2013/05/23]}
\TUD@UnwindPackage{hyperref}{\RequirePackage{microtype}[2013/05/23]}
\newcommand*\tud@lbl@tmp{}
% TODO identisch zu tud@if@idx@exists...?
\newcommand*\tud@if@lbl@exists[1]{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@if@lbl@@exists{#1}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@if@lbl@@exists{m}{%
  \ifcsundef{r@#1}{%
    \expandafter\@secondoftwo%
  }{%
    \expandafter\@firstoftwo%
  }%
}
\newcommand*\Processor@CreateLabel[2]{%
  \begingroup%
    \def\_{_}%
    \def\dots{...}%
    \protected@edef\tud@res@a{#1}%
    \Markup@Name@Get\tud@res@b{#2}%
    \tud@lowerstring\tud@res@b{\tud@res@b}%
    \protected@edef\tud@res@a{%
      \endgroup%
      \def\noexpand\ProcessedArgument{\tud@res@a:\tud@res@b:#2}%
    }%
  \tud@res@a%
}
% TODO \relax in #3 > general:...:... für \File etc. bzw. gar kein label?!
\NewDocumentCommand\tud@lbl@get{%
  s m >{\Processor@CreateLabel{#7}}m !d// !d== !o !D(){\tud@ety@curr}%
}{%
  \begingroup%
    % TODO Parameter@Expandable
    \Markup@Expandable%
    % TODO sollte nicht mehr notwendig sein, wenn <p:misc>
    % für alle Parameter expandierbare Varianten p:misc, p:##1, v:..., n:...
            \def\PSet##1{special:##1}%
            \def\PMisc{special:misc}%
            \def\PBoolean{special:boolean}%
            \def\PLength{special:length}%
    \protected@edef\tud@res@a{#3}%
    \def\tud@res@b##1=##2=##3\@nil{%
      \def\tud@res@a{##1}%
      \let\tud@res@c\@empty%
      \IfArgIsEmpty{##2}{}{\IfValueF{#4}{\def\tud@res@c{=##2}}}%
      \IfValueT{#5}{\ifxblank{#5}{}{\def\tud@res@c{=#5}}}%
    }%
    \expandafter\tud@res@b\tud@res@a==\@nil%
    \def\tud@res@b##1/##2/##3\@nil{%
      \def\tud@res@a{##1}%
      \let\tud@res@b\@empty%
      \IfArgIsEmpty{##2}{}{\def\tud@res@b{/##2}}%
      \IfValueT{#4}{\def\tud@res@b{/#4}}%
    }%
    \expandafter\tud@res@b\tud@res@a//\@nil%
    \tud@if@strequal{\tud@res@a\tud@res@b\tud@res@c}{#3\tud@res@b\tud@res@c}{}{%
      \tud@if@strequal{\tud@res@a\tud@res@b\tud@res@c}{#3}{}{%
        \tud@if@strequal{\tud@res@a\tud@res@b\tud@res@c}{#3\tud@res@c}{}{%
          \tud@if@strequal{\tud@res@a\tud@res@b\tud@res@c}{#3\tud@res@b}{}{%
            \ClassWarning{tudscrmanual}{%
              The given label `#3' was changed to\MessageBreak%
              `\tud@res@a\tud@res@b\tud@res@c'%
            }%
          }%
        }%
      }%
    }%
    \IfBooleanT{#1}{%
      \IfValueT{#5}{%
        \tud@if@lbl@exists{\tud@res@a\tud@res@b\tud@res@c}{}{%
          \let\tud@res@c\@empty%
        }%
      }%
    }%
    \protected@edef#2{\tud@res@a\tud@res@b\tud@res@c}%
    \edef\tud@res@c{%
      \endgroup%
      \unexpanded{\def#2}{\detokenize\expandafter{#2}}%
    }%
  \tud@res@c%
}
\newcommand*\tud@lbl@alias@values{}
\NewDocumentCommand\tud@declare@open{m d<> m}{%
  \tud@declare@process{#1}%
  \protected@edef\tud@lbl@alias@values{#2}%
  #3%
  \tud@declare@process{0}%
}
\NewDocumentCommand\tud@declare@close{m m}{%
  \tud@declare@process*{#1}%
  #2%
  \tud@declare@process{0}%
}
% TODO \tud@declare@index --> \tud@index@mode (indexmode <0 und >0?)
% TODO unabhängige modi für declare, index, output
% TODO Ausgabe Deklaration und Label in \tud@declare@mode zusammenfassen?
% TODO Unterscheidung von Inlinedeclaration und Declartion doch notwendig?
% TODO DOC%
% \tud@declare@mode:  > 0 start; <0 end; =0 no declaration
% \tud@declare@index: 1 inline index (start); 2 index (start&end); =0 no index
%  1: Deklaration       Index      Label        
%  2: keine Ausgabe     Index      Label        
%  3: Deklaration       Index      kein Label
%  4: keine Ausgabe     Index      kein Label
%  5: Deklaration       inli Index Label        
%  6: keine Ausgabe     inli Index Label     
%  7: Deklaration       inli Index kein Label
%  8: keine Ausgabe     inli Index kein Label
%  9: Deklaration       kein Index Label     
% 10: keine Ausgabe     kein Index Label     
% 11: Deklaration       kein Index kein Label
% 12: keine Ausgabe     kein Index kein Label (sinnfrei)
\tud@newcount\tud@declare@mode
\tud@newcount\tud@declare@index
\tud@newif\if@tud@declare@label
\NewDocumentCommand\tud@declare@process{s m}{%
  \tud@res@cnt=\numexpr#2\relax%
  \@tud@res@swafalse%
  \ifnum\tud@res@cnt<\z@\relax%
    \@tud@res@swatrue%
  \else%
    \ifnum\tud@res@cnt>11\relax%
      \@tud@res@swatrue%
    \fi%
  \fi%
  \if@tud@res@swa%
    \ClassWarning{tudscrmanual}{%
      Only the numerical range 0...11 is valid for\MessageBreak%
      declaration specification. The argument `\the\tud@res@cnt'\MessageBreak%
      is ignored and `1' is used%
    }%
    \tud@res@cnt=\@ne\relax%
  \fi%
  \ifnum\tud@res@cnt=\z@\relax
    \tud@declare@mode=\z@\relax%
    \tud@declare@index=\z@\relax%
    \@tud@declare@labelfalse%
  \else%
    \advance\tud@res@cnt\m@ne%
    \ifodd\tud@res@cnt%
      \tud@declare@mode=\tw@\relax%
    \else%
      \tud@declare@mode=\@ne\relax%
    \fi%
    \IfBooleanT{#1}{\tud@declare@mode=-\tud@declare@mode\relax}%
    \divide\tud@res@cnt\tw@\relax%
    \ifodd\tud@res@cnt\@tud@declare@labelfalse\else\@tud@declare@labeltrue\fi%
    \divide\tud@res@cnt\tw@\relax%
    \tud@declare@index=\numexpr\tw@-\tud@res@cnt\relax%
  \fi%
}
% TODO drittes makro \tud@ety@general -> mappen auf alles, was nicht definiert?
% TODO search for both macros
\newcommand*\tud@ety@dflt{\Bundle{tudscr}}
\newcommand*\tud@ety@curr{}
\let\tud@ety@curr\tud@ety@dflt
\tud@auxlist@register[\tud@ety@dflt]{tud@ety}%
\newcommand*\tud@ety@add[1]{%
  \begingroup%
    \protected@edef\tud@res@a{#1}%
    \ifx\tud@res@a\tud@ety@dflt\else%
      \tud@auxlist@add{tud@ety}{\tud@res@a}%
    \fi%
  \endgroup%
}
% TODO \Bundle{latex-base} verwenden (auch treatise)
% --> Tutorial: Bundle-Argument pflicht bzw. warnung, wenn nicht? oder dflt 
% lassen und direkten link ins handbuch setzen?
% TODO nur gültige Markupbefehle \Class, \Package, \Bundle zulassen
% evtl. ety@level definieren, damit \Package{aaa}(\Package(bbb)) nicht möglich
\newcommand*\tud@ety@entry{}
\NewDocumentEnvironment{Entity}{m}{%
  \ifx\tud@ety@curr\tud@ety@dflt%
    \in@{,}{#1}%
    \ifin@%
      \ClassError{tudscrmanual}{Multiple values for environment `Entity'}{%
        Multiple elements are prohibited within the argument.%
      }%
    \else%
      \gdef\tud@ety@curr{#1}%
      \tud@ety@add{#1}%
    \fi%
  \else%
    \ClassError{tudscrmanual}{Nested environment `Entity'}{%
      It is not possible to nest several `Entity' environments%
    }%
  \fi%
  % TODO changelog und index (Entity* zum Unterdrücken des Index)
  % TODO öffnenden und schließenden Eintrag erzeugen? tud@special@index?
  % TODO für index Modus definieren, der nur Index aber keine Ausgabe erzeugt
%  \Markup@Get\tud@res@a{#1}%
%  \expandafter\tud@lbl@get\expandafter\tud@lbl@tmp\tud@res@a%
%  \tud@toks@{\tud@idx@get\tud@ety@entry}%
%  \eaddto@hook\tud@toks@{\tud@res@a}%
%  \eaddto@hook\tud@toks@{\expandafter'\tud@lbl@tmp'}%
%  \the\tud@toks@%
%  \expandafter\New@Process@Index@Write\expandafter{\tud@ety@entry}{#1}|(|%
  \ignorespaces%
}{%
%  \expandafter\New@Process@Index@Write\expandafter{\tud@ety@entry}{#1}|)|%
  \global\let\tud@ety@curr\tud@ety@dflt%
  \aftergroup\ignorespaces%
}
\NewDocumentCommand\tud@ety@get{m m r// r== d() d''}{%
  \begingroup%
    \tud@ety@seek\tud@res@a\tud@res@b{#2}/#3/=#4=(#5)'#6'%
    \protected@expandtwoargs\in@{,}{\tud@res@a}%
    \ifin@%
      \begingroup%
        \let\tud@res@c\@empty%
        \@for\tud@res@b:={\tud@res@a}\do{%
          \eappto\tud@res@c{%
            \noexpand\@spaces%
            \detokenize\expandafter{\tud@res@b}%
            \noexpand\MessageBreak%
          }%
        }%
        \protected@edef\tud@res@b{#2\IfValueT{#3}{/#3/}\IfValueT{#4}{=#4=}}%
        \ClassWarning{tudscrmanual}{%
          Found multiple matching entities\MessageBreak%
          \tud@res@c for \detokenize\expandafter{\tud@res@b}%
        }%
      \endgroup%
    \fi%
    \ifx\tud@res@a\@empty%
      \ifx\tud@res@b\@empty%
        \let\tud@res@a\tud@ety@curr%
      \else%
        \let\tud@res@a\tud@res@b%
      \fi%
    \else
      \ifx\tud@res@b\@empty\else%
        \eappto\tud@res@a{,\expandonce\tud@res@b}%
      \fi
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@res@a}%
    }%
  \tud@res@a%
}
\newcommand*\tud@ety@@get[1]{%
  \ifx\tud@res@a\relax%
    \def\tud@res@a{#1}%
  \else%
    \edef\tud@res@c{\detokenize{#1}}%
    \xifinlist{\tud@res@c}{\tud@res@b}{}{%
      \listeadd{\tud@res@b}{\tud@res@c}%
    }%
  \fi%
}
\newcommand*\tud@ety@@seek[2]{%
  \begingroup%
    \Markup@Expandable%
    \protected@edef\tud@res@b{#1}%
    \protected@edef\tud@res@a##1:##2\@nil{%
      \endgroup%
      \unexpanded{\def#1}{#2:##2}%
    }%
  \expandafter\tud@res@a\tud@res@b\@nil%
}
\NewDocumentCommand\tud@ety@seek{m m m r// r== !d() !d''}{%
  \begingroup%
    \let\tud@res@a\@empty%
    \let\tud@res@b\@empty%
    \IfValueTF{#6}{%
      \def\tud@res@c{#6}%
      \@for\tud@res@c:=\tud@res@c\do{%
        \tud@lbl@get*\tud@lbl@tmp{#3}/#4/=#5=(\tud@res@c)%
        \tud@if@lbl@exists{\tud@lbl@tmp}{%
          \eappto\tud@res@a{,\expandonce\tud@res@c}%
           \tud@ety@trace@lbl{\tud@lbl@tmp}'#7'{true}%
        }{%
          \eappto\tud@res@b{,\expandonce\tud@res@c}%
           \tud@ety@trace@lbl{\tud@lbl@tmp}'#7'{false}%
        }%
      }%
    }{%
      \tud@lbl@get\tud@lbl@tmp{#3}/#4/=#5=%
      \tud@if@lbl@exists{\tud@lbl@tmp}{%
        \tud@ety@trace@lbl{\tud@lbl@tmp}'#7'{true}%
      }{%
        \def\tud@res@c##1{%
          \tud@ety@@seek\tud@lbl@tmp{##1}%
          \tud@if@lbl@exists{\tud@lbl@tmp}{%
            \appto\tud@res@a{,##1}%
            \tud@ety@trace@lbl{\tud@lbl@tmp}'#7'{true}%
          }{}%
        }%
        % DOC exakte Treffer mit ggf. gegebenen Wert
        \tud@auxlist@forloop\tud@res@c{tud@ety}%
        \ifx\tud@res@a\@empty%
          \IfValueT{#5}{%
            % DOC Basislabel ohne Wert
            \tud@lbl@get\tud@lbl@tmp{#3}/#4/%
            \tud@auxlist@forloop\tud@res@c{tud@ety}%
          }%
        \fi%
        \ifx\tud@res@a\@empty%
          \edef\tud@res@b{,\expandonce\tud@ety@curr}%
          \tud@ety@@seek\tud@lbl@tmp{\tud@ety@curr}%
          \tud@ety@trace@lbl{\tud@lbl@tmp}'#7'{false}%
        \fi%
      }%
    }%
    \ifx\tud@res@a\@empty\else%
      \edef\tud@res@a{%
        \expandafter\expandafter\expandafter\@gobble\expandonce\tud@res@a%
      }%
    \fi%
    \ifx\tud@res@b\@empty\else%
      \edef\tud@res@b{%
        \expandafter\expandafter\expandafter\@gobble\expandonce\tud@res@b%
      }%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@res@a}%
      \unexpanded{\def#2}{\expandonce\tud@res@b}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@ety@trace@lbl{m r'' m}{%
  \begingroup%
    \tud@get@crossrefnum\tud@res@a'#2'%
    \let\tud@res@c\@empty%
    \ifnum\tud@res@a<\z@\relax%
      \ifbool{#3}{%
        \def\tud@res@b{unused}%
      }{%
        \def\tud@res@b{ignored}%
      }%
    \else%
      \ifbool{#3}{%
        \def\tud@res@b{matched}%
      }{%
        \ifnum\tud@res@a>4\relax%
          \def\tud@res@b{url}%
          \def\tud@res@c{(#2)}%
        \else%
          \def\tud@res@b{missing}%
        \fi%
      }%
    \fi%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@trace@lbl@add{\tud@res@b}\tud@res@c{#1}%
    }%
  \tud@res@a%
}
% TODO Unterscheidung zwischen Deklarationen mit und ohne Tabelle!
% Kein gemeinsamer Name! Declaration* in HiddenDeclaration; 
% Könnte HiddenDeclaration anstelle von Entity*' genutzt werden?
% TODO optionales Argument zum parametrieren? [index, label, hidden]?
%      dann müsste changelog mit anderem optionalen Argument erzeugt werden
\newcommand*\tud@declaration@list{}
% TODO Argumente überarbeiten andere Delimiter: 
% o m !o !o !d() !D<>{} --> o d() m D<> o d()?
\NewDocumentEnvironment{Declaration}{o m !o !o !d() !d<>}{%
  % TODO was passiert hier? besser an \tud@declare@open durchreichen?
  \Changed@At@CreateList{#1}[{#2}]:<new>:{\BooleanTrue}%
  \tud@declare@start!1!{#2}[{#3}][{#4}](#5)<#6>%
}{%
  \tud@declare@end!1!{#2}%
}
% TODO sinnvoll? changedat? Wird Index erzeugt?
\NewDocumentEnvironment{Declaration'}{m !o !o !d()}{%
  \tud@declare@start!11!{#1}[{#2}][{#3}](#4)%
}{%
  \tud@declare@end!11!{#1}%
}
% TODO d()d'' -> d''d()
\NewDocumentEnvironment{Obsolete}{m m !o !o !d() !d''}{%
  % TODO was passiert hier? besser an \tud@declare@open durchreichen?
  \Changed@At@CreateList{#1}[{#2}]:<obsolete>:{\BooleanFalse}%
  \def\tud@res@a{entf\"allt}%
  \IfValueT{#5}{\def\tud@res@a{#5}}%
  % TODO |-| nutzen, nicht \@tud@indextrue;
  % TODO 'page' nur setzen, falls nicht gegeben?
  \IfValueT{#6}{\appto\tud@res@a{, \seeref{\@tud@indextrue#6'page'}}}%
  \tud@toks@{\tud@declare@start!11!{#2}[{#3}][{#4}]}%
  \eaddto@hook\tud@toks@{\expandafter(\tud@res@a)}%
  \the\tud@toks@%
}{%
  \tud@declare@end!11!{#2}%
}
% TODO #4 und #5 zusammenfassen in [default|condition:preset]
\NewDocumentCommand\tud@declare@start{r!! m r[] r[] r() !d<>}{%
  \begingroup%
    \let\tud@res@a\@empty%
    \IfValueT{#3}{%
      \edef\tud@res@a{%
        Voreinstellung%
        \IfArgIsEmpty{#3}{}{%
          \unexpanded{:\space\Parameter@Enclose{\PValue*}{#3}}%
        }%
      }%
      \IfValueT{#4}{%
        \def\tud@res@c##1:##2:##3\@nil{%
          \IfArgIsEmpty{##2}{%
            \ClassError{tudscrmanual}{Wrong format of \detokenize{`[#4]'}}{%
              The format `[condition:preset]' has to be given.%
            }%
          }{%
            \appto\tud@res@a{%
               \,\textbar\,##1: \Parameter@Enclose{\PValue*}{##2}%
             }%
          }%
        }%
        \tud@res@c#4::\@nil%
      }%
    }%
    \IfValueTF{#5}{%
      \def\tud@res@b{#5}%
    }{%
      \let\tud@res@b\@empty%
    }%
    \tud@toks@{!#1!<#6>{#2}}%
    \eaddto@hook\tud@toks@{\expandafter[\expandafter{\tud@res@a}]}%
    \eaddto@hook\tud@toks@{\expandafter(\tud@res@b)}%
    \edef\tud@res@c{%
      \endgroup%
      \unexpanded{\listadd\tud@declaration@list}{\the\tud@toks@}%
    }%
  \tud@res@c%
  \let\printdeclarationlist\tud@print@declarationlist%
}
\NewDocumentCommand\tud@declare@end{r!! m}{%
  \tud@declaration@check%
  \gundef\printdeclarationlist%
  \vskip-\lastskip%
  \tud@declare@close{#1}{#2}%
  \pagebreak[1]\par%
}
\newcommand*\printdeclarationlist{}
\AtBeginDocument{\undef\printdeclarationlist}
\newcommand*\tud@declaration@check{%
  \ifundef\printdeclarationlist{}{%
    \ClassError{tudscrmanual}{\string\printdeclarationlist\space is missing}{%
      The command \string\printdeclarationlist\space must\MessageBreak%
      be used for declarations.%
    }%
    \global\let\tud@declaration@list\@empty%
  }%
}
\NewDocumentCommand\tud@print@declarationlist{!d()}{%
  \gundef\printdeclarationlist%
  \ifhmode%
    \vskip\medskipamount%
  \else%
    \addpenalty{\@beginparpenalty}%
    \addvspace{\medskipamount}%
  \fi%
  % TODO warum? geht auch \noindent?
  \@afterindentfalse\@afterheading%
  \begingroup%
    \let\tud@res@b\@empty%
    \let\tud@res@c\@empty%
    \def\tud@res@a!##1!<##2>##3[##4](##5)\@nil{%
      \appto\tud@res@b{\tud@declare@open{##1}<##2>{##3}&}%
      \ifblank{##4}{}{%
        \appto\tud@res@b{\hskip2\tabcolsep\small\ignorespaces##4}%
      }%
      \appto\tud@res@b{&}%
      \ifblank{##5}{}{%
        \appto\tud@res@b{\hskip2\tabcolsep\small\ignorespaces##5}%
      }%
      \appto\tud@res@b{\tabularnewline}%
      \listadd\tud@res@c{##3}%
      % TODO \Changed@At@CreateList hier verwenden
    }%
    \def\do##1{\tud@res@a##1\@nil}%
    \dolistloop{\tud@declaration@list}%
    \edef\HyperRaiseLinkDefault{\the\dimexpr1\baselineskip\relax}%
    \sbox\z@{%
      \begin{tabular}[b]{|l|@{}l@{}l@{}}%
        \cline{1-1}\noalign{\vskip\arrayrulewidth}%
        \tud@res@b%
        \cline{1-1}\noalign{\vskip\arrayrulewidth}%
      \end{tabular}%
    }%
    \edef\tud@res@b{\the\dimexpr\ht\strutbox-\ht\z@\relax}%
    \usebox\z@%
    \IfValueT{#1}{%
      \begin{minipage}[b][\ht\z@][c]{\the\dimexpr\textwidth-\wd\z@}%
      #1%
      \end{minipage}%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@print@changedatlist[\tud@res@b]%
      \unexpanded{\def\tud@declaration@list}{\expandonce\tud@res@c}%
    }%
  \tud@res@a%
  \par\nobreak%
% TODO rein?
%  \strut%
% TODO warum? geht auch \noindent?
  \@afterindentfalse\@afterheading%
}
\NewDocumentEnvironment{Declaration*}{o m}{%
  \tud@declare@special@start!2!{#2}[{#1}]%
  \tud@print@changedatlist%
}{%
  \tud@declare@special@end!2!{#2}%
}
% TODO Argument !#1! sollte fix gesetzt werden, Stern zum unterdrücken Ausgabe?
% TODO sollte \Markup@Inline@Format verwenden, evtl spezielle declare-Variante 
% TODO alias setzen falls Spezialwert gegeben (parskip), intern ohne alias
% TODO #4 muss weg!
\NewDocumentCommand\InlineDeclaration{s d!! m !d() !d<>}{%
  \IfValueT{#2}{\ClassWarning{tudscrmanual}{warning text inline}}%
%  \IfValueT{#4}{\ClassWarning{tudscrmanual}{warning text append}}%
  \IfBooleanTF{#1}{%
    \Inline@Declaration!6!{#3}(#4)<#5>%
  }{%
    \Inline@Declaration!5!{#3}(#4)<#5>%
  }%
}
\NewDocumentCommand\Inline@Declaration{r!! m o d() r<>}{%
  \tud@declare@special@start!#1!{#2}<#5>%
  % TODO Änderungsliste!
%  \tud@print@changedatlist%
  \tud@declare@special@end!#1!{#2}%
  \IfValueTF{#4}{%
%    \ClassWarning{tudscrmanual}{warning text append}%
    #4%
  }{%
    \IfValueTF{#3}{#3}{\null}%
  }%
}
%\NewDocumentCommand\InlineDeclaration{s D!!{-1} m !o !d()}{%
%  \IfValueT{#2}{\ClassWarning{tudscrmanual}{warning text inline}}%
%  \IfValueT{#5}{\ClassWarning{tudscrmanual}{warning text append}}%
%  %TODO Sternvarinate als raisedlink
%  \Inline@Declaration!-1!{#3}[{#4}]%
%}
%\NewDocumentCommand\Inline@Declaration{r!! m !o}{%
%  \tud@declare@special@start!#1!{#2}%
%  \tud@print@changedatlist%
%  \tud@declare@special@end!#1!{#2}%
%  \IfValueTF{#3}{#3}{\null}%
%}
% TODO \tud@declare@special@start nach Entity?
% TODO Änderungseinträge über optionales Argument von Entity?
\NewDocumentEnvironment{Entity*}{o m}{%
  \tud@declare@special@start*!2!{#2}[{#1}]%
  \tud@print@changedatlist%
  \begin{Entity}{#2}%
}{%
  \end{Entity}%
  \tud@declare@special@end!2!{#2}%
}
% TODO sollte raus
\NewDocumentEnvironment{Entity'}{o m}{%
  \tud@declare@special@start*!4!{#2}[{#1}]%
  \tud@print@changedatlist%
  \begin{Entity}{#2}%
}{%
  \end{Entity}%
  \tud@declare@special@end!4!{#2}%
}
\NewDocumentCommand\tud@declare@special@start{s r!! m !o !d<>}{%
  % TODO sonderbehandlung * notwendig? optionales argument :xxx:?
  % direkt erzeugen und durch diesen Befehl
  \IfBooleanTF{#1}{%
    \Changed@At@CreateList{#4}(#3){\BooleanTrue}%
  }{%
    \Changed@At@CreateList{#4}[{#3}]{\BooleanTrue}%
  }%
  % TODO warum fehlt hier \tud@print@changedatlist?
  \tud@declare@open{#2}<#5>{#3}%
  \ignorespaces%
}
\NewDocumentCommand\tud@declare@special@end{r!! m}{%
  \ifx\tud@chg@entry@list\@empty\else%
    \ClassError{tudscrmanual}{Unprocessed change notes}{%
      \string\tud@chg@entry@list\space is not empty%
    }%
  \fi%
  \tud@declare@close{#1}{#2}%
  \ignorespaces%
}
% TODO count idx@mode? trennung Schreiben (ja/nein) und im Index/Changelog!
\tud@newif\if@tud@index
\tud@newif\if@tud@changelog
\newrobustcmd*\bsc{\@backslashchar}
\newrobustcmd*\nbs{\nobreakspace{}}
\NewDocumentCommand\suffix{s t' m}{%
  \begingroup%
    \IfBooleanT{#1}{\let\Markup@Suffix@Select\@gobble}%
    \nbs\scriptsize\IfBooleanTF{#2}{\textlangle#3\textrangle}{(#3)}%
  \endgroup%
}
\NewExpandableDocumentCommand\@suffix{s t' m}{\space#3}%
\newrobustcmd*\idxsuffix{\suffix*'}
% TODO sollte später raus, sobald Markup mit csname umgesetzt
\newcommand*\Markup@Name@Get[2]{%
  \Markup@Split#1{\@firstoftwo}{#2}%
  \edef#1{%
    \expandafter\expandafter\expandafter\@gobble\expandafter\string#1%
  }%
}
\newcommand*\Markup@Split[3]{%
  \begingroup%
    \def\tud@res@a##1##2\@nil{%
      \expandafter\def\expandafter\tud@res@b\expandafter{#2{##1}{##2}}%
    }%
    \tud@res@a#3\@nil%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@res@b}%
    }%
  \tud@res@a%
}
\newcommand*\Markup@Arguments@Get[2]{%
  \Markup@Split#1{\@secondoftwo}{#2}%
  \expandafter\if\expandafter\@car#1\relax\@nil*\else%%
    \begingroup%
      \edef\tud@res@c{\expandonce#1}%
      \def\tud@res@a##1{%
        \kernel@ifnextchar\bgroup%
          {\@tud@res@swafalse\tud@res@b}%
          {\@tud@res@swatrue\tud@res@b}%
        ##1\@nil%
      }%
      \def\tud@res@b##1\@nil{%
        \if@tud@res@swa%
          \def\tud@res@c{{##1}}%
        \fi%
      }%
      \expandafter\tud@res@a\expandafter{\tud@res@c}%
      \edef\tud@res@c{%
        \endgroup%
        \unexpanded{\def#1}{\expandonce\tud@res@c}%
      }%
    \tud@res@c%
  \fi%
}
\NewDocumentCommand\Markup@Simple@Format{s m D(){\texttt} m !O{ic}}{%
  \tud@toks@{}%
  \IfBooleanTF{#1}{\def\tud@res@c{\bsc}}{\let\tud@res@c\@empty}%
  \appto\tud@res@c{##1\IfValueT{##2}{=##2}\IfValueT{##3}{##3}}%
  \edef\tud@res@c{%
    \unexpanded{{#2}}{\unexpanded{#3}{\expandonce\tud@res@c}}%
  }%
  \expandafter\tud@toks@\expandafter{\tud@res@c}%
  \Markup@Name@Get\tud@res@c{#2}%
  \ifcsundef{Markup@Inline@@\tud@res@c}{%
    \expandafter\Markup@Inline@Format\the\tud@toks@%
  }{}%
  \ifcsundef{Markup@Declare@@\tud@res@c}{%
    \expandafter\Markup@Declare@Format\the\tud@toks@%
  }{}%
  \ifcsundef{Markup@Suffix@@\tud@res@c}{%
    \Markup@Suffix@Format{#2}{#5}{\suffix{#4}}%
  }{}%
}
\newcommand*\Markup@Inline@Format[2]{%
  \Markup@Name@Get\tud@res@b{#1}%
  \edef\tud@res@a{Markup@Inline@@\tud@res@b}%
  \expandafter\newcommand\csname\tud@res@a\endcsname{}%
  \@namedef{\tud@res@a}##1=##2=[##3]{\mbox{#2}}%
  \Markup@Suffix@Add{\tud@res@a}{\tud@res@b}%
}
\newcommand*\Markup@Declare@Format[2]{%
  \Markup@Name@Get\tud@res@b{#1}%
  \edef\tud@res@a{Markup@Declare@@\tud@res@b}%
  \expandafter\newcommand\csname\tud@res@a\endcsname{}%
  \@namedef{\tud@res@a}##1=##2=[##3]{\mbox{#2}}%{#2}%
  \Markup@Suffix@Add{\tud@res@a}{\tud@res@b}%
}
\newcommand*\Markup@Suffix@Format[3]{%
  \Markup@Name@Get\tud@res@a{#1}%
  \edef\tud@res@a{Markup@Suffix@@\tud@res@a}%
  \expandafter\newcommand\csname\tud@res@a\endcsname{}%
  \@namedef{\tud@res@a}{{#2}{#3}}%
}
\newcommand*\Markup@Suffix@Select[1]{%
  \begingroup%
    \ifnum\tud@declare@mode=\z@\relax%
      \if@tud@changelog%
        \def\tud@res@a{c}%
      \else%
        \if@tud@index%
          \def\tud@res@a{i}%
        \else%
          \def\tud@res@a{n}%
        \fi%
      \fi%
    \else%
      \def\tud@res@a{d}%
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
      \def\tud@res@b##1/##2/##3\@nil{%
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
      \expandafter\tud@res@b\tud@res@a//\@nil%
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
      \eaddto@hook\tud@toks@{\expandafter/\tud@res@b/}%
    }%
    \expandafter\IfValueT\expandafter{\tud@res@c}{%
      \expandafter\IfValueTF\expandafter{\tud@res@b}{%
        % DOC in PValue hüllen, wenn kein Markup
        \def\tud@res@a{\Parameter@Enclose[\def\tud@res@c]{\PValue}}%
        \eappto\tud@res@a{{\expandonce\tud@res@c}}%
        \tud@res@a%
      }{%
        \ClassWarning{tudscrmanual}{%
          The given value `\tud@res@c' is ignored as\MessageBreak%
          no `/<parameter>/' was specified%
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
% TODO Template NewMarkupCommand für Markup-Befehle
%      key-value Argument für Sepzifikation
% TODO Stern entfernen und R||{} am Ende, alle Warnungen in Processor!
% TODO (intern auch notwendig?, evtl \@Class mit d|| oder so?
%\NewDocumentCommand\Set@Markup@Command{...}{%
%  \NewDocumentCommand#1{s m #2 >{Processor@Index{##1}}!D||{}}{%
%    \Process@Markup{Application}{##2}#3|##6|%
%  }%
%  \Markup@Simple@Format{Application}(\textsbs){Anwendungssoftware}
%  \NewExpandableDocumentCommand\@Application{s m}{#2}% notwendig?
%}
%\Set@Markup@Command\Application{%
%  [s m] !o !d() !d'' [!d||]%
%}{%
%  [~#3](#4)'#5'%
%}%
% TODO Hilfsprocessor für interne Umstellung
\NewDocumentCommand\Processor@NewMarkup{m m}{%
  \begingroup%
    \Markup@Name@Get\tud@res@a{#2}%
    \ifx\tud@res@a\@empty%
      \def\tud@res@a{#2}%
      \IfValueTF{#1}{%
        \def\tud@res@b{#1}%
      }{%
        \ClassError{tudscrmanual}{missing required argument}{%
          There's no argument for markup command \string\#2.%
        }%
        \def\tud@res@b{???}%
      }%
    \else%
      % TODO Warnung rein
%      \ClassWarning{tudscrmanual}{you should change internal commands}%
      \Markup@Arguments@Get\tud@res@b{#2}%
      \def\tud@res@c##1##2\@nil{%
        \def\tud@res@b{##1}%
        \def\tud@res@c{##2}%
      }%
      \expandafter\tud@res@c\tud@res@b\@nil%
      \ifx\tud@res@c\@empty\else%
        \ClassWarning{tudscrmanual}{found trailing \tud@res@c}%
      \fi%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def\ProcessedArgument}{+\tud@res@a+{\expandonce\tud@res@b}}%
    }%
  \tud@res@a%
}
% TODO !d()>!D(){general} für \Application,\Distribution,\Engine,\File,\Bundle?
\NewExpandableDocumentCommand\@Application{s m}{#2}
\NewDocumentCommand\Application{%
  s m !>{\Processor@WrongValue}d== !d() !d'' !d||%
}{%
  \Process@Markup{\Application{#2}}(#4)'#5'{#1}|#6|%
}
\Markup@Simple@Format\Application(\textsbs){Anwendungssoftware}
\NewDocumentCommand\ApplicationRaw{m d() d'' d|| >{\ReverseBoolean}m}{%
  \Process@Markup{\Application{#1}}(#2)'#3'{#5}|#4|%
}
\NewExpandableDocumentCommand\@ApplicationRaw{m d() d'' d|| m}{#1}
\NewExpandableDocumentCommand\@Engine{s m}{#2}
\NewDocumentCommand\Engine{%
  s m !>{\Processor@WrongValue}d== !d() !d'' !d||%
}{%
  \Process@Markup{\Engine{#2}}(#4)'#5'{#1}|#6|%
}
\Markup@Simple@Format\Engine(\sbnfont\hologoRobust){Textsatzsystem}
\NewExpandableDocumentCommand\@Distribution{s m}{#2}
% TODO wie mit IndexPrefix umgehen?
\NewDocumentCommand\Distribution{%
  s m !>{\Processor@WrongValue}d== !o !d() !d'' !d||%
}{%
  \tud@toks@{\Process@Markup{\Distribution{#2}}}%
  \IfValueT{#4}{\addto@hook\tud@toks@{[{\nbs#4}]}}%
  \addto@hook\tud@toks@{'#6'{#1}}%
%  \IfValueTF{#7}{%
%    \addto@hook\tud@toks@{|<Distribution>#7|}%
%  }{%
%    \addto@hook\tud@toks@{|<Distribution>|}%
%  }%
  % TODO Hack Distribution! entfernen 
  \addto@hook\tud@toks@{|#7|}%
  \the\tud@toks@%
}
\Markup@Simple@Format\Distribution(\textsbn){Distribution}
\NewExpandableDocumentCommand\@Bundle{s m}{#2}
\NewDocumentCommand\Bundle{%
  % TODO Warnung für #4? einfach raus, oder general?
  s m !>{\Processor@WrongValue}d== !d() !d'' !d||%
}{%
  \Process@Markup{\Bundle{#2}}(#4)'#5'{#1}|#6|%
}
\Markup@Simple@Format\Bundle(\textsbn){Bundle}
\NewExpandableDocumentCommand\@Class{s m}{#2}
\NewDocumentCommand\Class{%
  s m !>{\Processor@WrongValue}d== !d() !d'' !d||%
}{%
  \Process@Markup{\Class{#2}}(#4)'#5'{#1}|#6|%
}
\Markup@Simple@Format\Class(\textsbn){Klasse}
% TODO wieder raus, wenn zentrale Markupschnittstelle
\NewDocumentCommand\ClassRaw{m d() d'' d|| >{\ReverseBoolean}m}{%
  \Process@Markup{\Class{#1}}(#2)'#3'{#5}|#4|%
}
\NewExpandableDocumentCommand\@ClassRaw{m d() d'' d|| m}{#1}
\NewExpandableDocumentCommand\@Package{s m}{#2}
\NewDocumentCommand\Package{%
  s m !>{\Processor@WrongValue}d== !d() !d<> !d'' !d||%
}{%
  \IfValueT{#5}{%
    \IfArgIsEmpty{#5}{%
      \ClassWarning{tudscrmanual}{2 Use 'none' instead}%
    }{%
      \ClassWarning{tudscrmanual}{2 Use 'CTAN:#5' instead}%
    }%
  }%
  \Process@Markup{\Package{#2}}(#4)'#6'{#1}|#7|%
}
\Markup@Simple@Format\Package(\textsbn){Paket}
% TODO wieder raus, wenn zentrale Markupschnittstelle
\NewDocumentCommand\PackageRaw{m d() d'' d|| >{\ReverseBoolean}m}{%
  \Process@Markup{\Package{#1}}(#2)'#3'{#5}|#4|%
}
\NewExpandableDocumentCommand\@PackageRaw{m d() d'' d|| m}{#1}
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
  s >{\Processor@Value{#3}{#4}}m !d// !d== !o !d() !d'' !d||%
}{%
  \Environment@Parameter{#1}#2[{#5}](#6)'#7'|#8|%
}
\NewDocumentCommand\Environment@Parameter{m m r// r== r[] r() r'' r||}{%
  \Process@Markup{\Environment{#2}}/#3/=#4=[{#5}](#6)'#7'{#1}|#8|%
}
\Markup@Declare@Format\Environment{%
  \begin{tabular}[t]{@{}l@{}}
  \texttt{\bsc{}begin\textbraceleft#1\textbraceright\IfValueT{#3}{#3}}%
  \tabularnewline\texttt{\quad\raisebox{-.3\dp\@arstrutbox}[0pt][0pt]{\vdots}}%
  \tabularnewline\texttt{\bsc{}end\textbraceleft#1\textbraceright}%
  \end{tabular}
}
\Markup@Simple@Format\Environment{Umgebung}
\NewExpandableDocumentCommand\@Macro{s m}{#2}
\NewDocumentCommand\Macro{%
  s >{\Processor@Value{#3}{#4}}m !d// !d== !o !d() !d'' !d||%
}{%
  \Macro@Parameter{#1}#2[{#5}](#6)'#7'|#8|%
}
\NewDocumentCommand\Macro@Parameter{m m d// d== r[] r() r'' r||}{%
  \Process@Markup{\Macro{#2}}/#3/=#4=[{#5}](#6)'#7'{#1}|#8|%
}
\Markup@Simple@Format*\Macro{Befehl}[c]
\NewExpandableDocumentCommand\@Key@Value{s m}{#2}
\NewDocumentCommand\Key@Value{s m}{#2}%
\Markup@Simple@Format\Key@Value(\textttsl){Parameter}[c]
% TODO \Markup@Declare@Format\Key@Value mit Einzug?
%\pretocmd\Markup@Declare@@Key@Value{bbb}{}{}
\NewExpandableDocumentCommand\@Length{s m}{#2}
\NewDocumentCommand\Length{%
  s m !>{\Processor@WrongValue}d== !d() !d'' !d||%
}{%
  \Process@Markup{\Length{#2}}(#4)'#5'{#1}|#6|%
}
\Markup@Simple@Format*\Length{L\"ange}[dic]
\NewExpandableDocumentCommand\@Counter{s m}{#2}
\NewDocumentCommand\Counter{%
  s m !>{\Processor@WrongValue}d== !d() !d'' !d||%
}{%
  \Process@Markup{\Counter{#2}}(#4)'#5'{#1}|#6|%
}
\Markup@Simple@Format\Counter{Z\"ahler}[dic]
% TODO RAUS!
\NewDocumentCommand\Key{s m m !d== !d() !d'' !d||}{%
%  \ClassWarning{tudscrmanual}{Set new markup!}%
  \begingroup%
    \begingroup%
      \Markup@Name@Get\tud@res@b{#2}%
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
      \addto@hook\tud@toks@{/#3=#4/}%
    }{%
      \addto@hook\tud@toks@{/#3/}%
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
\Markup@Simple@Format*\Term{Bezeichner}[dc]
\NewExpandableDocumentCommand\@PageStyle{s m}{#2}
\NewDocumentCommand\PageStyle{%
  s m !>{\Processor@WrongValue}d== !d() !d'' !d||%
}{%
  \Process@Markup{\PageStyle{#2}}(#4)'#5'{#1}|#6|%
}
\Markup@Simple@Format\PageStyle{Seitenstil}[dic]
\NewExpandableDocumentCommand\@Font{s m}{#2}
\NewDocumentCommand\Font{%
  s m !>{\Processor@WrongValue}d== !d() !d'' !d||%
}{%
  \Process@Markup{\Font{#2}}(#4)'#5'{#1}|#6|%
}
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
    \tud@replace@in\tud@res@a{_}{\_}%
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
% TODO in parameter 'subidx' auslagern bei NewMarkupCommand, nur gültige Indexe!
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
    \tud@res@a\Bundle{files}{bdl}%
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
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#2}{\tud@res@b}%
    }%
  \tud@res@a%
}
% TODO NewSimpleMarkupCommand?
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
\newrobustcmd*\OpenSans{\textcdbn{Open\nbs{}Sans}\xspace}
\newrobustcmd*\Univers{\textcdbi{Univers}\xspace}
\newrobustcmd*\DIN{\textcdbi{DIN\nbs{}Bold}\xspace}
\newcommand*\Markup@@Expandable{%
  % TODO use {} instead of \space?
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
\newrobustcmd*\textttsl[1]{\texttt{\textsl{#1}}}
% TODO Makro zur Def. von Parameter (Spezial: \PSet \PMisc \PBoolean \PLength)
% TODO \SMisc etc. für Spezialwerte?
%\newcommand*\tud@param@list{}
%\newcommand*\tud@param@@list{}
%\NewDocumentCommand\Set@Parameter@Command{%
%  s m m m m
%}{%
%  \listeadd\tud@param@list{#2}%
%  \IfBooleanT{#1}{\listeadd\tud@param@@list{#2}}%
%  \edef\tud@res@a{\expandafter\@gobble\string#2}%
%  \NewDocumentCommand#2{#3}{#4}%
%  \expandafter\NewExpandableDocumentCommand\csname\tud@res@a @exp\endcsname%
%    {#3}{#5}%
%}
\NewDocumentCommand\PValue{s m}{%
  \mbox{\IfBooleanTF{#1}{\textttsl}{\texttt}{#2}}%
}
\NewExpandableDocumentCommand\@PValue{s m}{#2}
\newrobustcmd*\PName[1]{\mbox{\texttt{<#1>}}}
\newrobustcmd*\PSet[1]{\PName{#1}}
% TODO Wert statt Einstellung? oder beide Varianten?
\newrobustcmd*\PMisc{\PSet{Einstellung}}
\newrobustcmd*\PBoolean{\PSet{Ein-Aus-Wert}}
\newrobustcmd*\PLength{\PSet{L\"ange}}
% TODO \tud@if@param@special aus expandierbaren Versionen ableiten
\newcommand*\tud@if@param@special[1]{%
  \begingroup%
    \protected@edef\tud@res@b{#1}%
    \def\tud@res@a{<p:special>}%
    \edef\PSet##1{\tud@res@a}%
    \edef\PMisc{\tud@res@a}%
    \edef\PBoolean{\tud@res@a}%
    \edef\PLength{\tud@res@a}%
    \protected@edef\tud@res@b{\tud@res@b}%
    \ifx\tud@res@a\tud@res@b%
      \aftergroup\@firstoftwo
    \else%
      \aftergroup\@secondoftwo%
    \fi%
  \endgroup%
}
% TODO Befehlsnamen überarbeiten, Befehle verschachteln bzw. übergeordneten B.
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
\NewDocumentCommand\Markup@Expandable{s}{%
  \let\Application\@Application%
  \let\Engine\@Engine%
  \let\Distribution\@Distribution%
  \let\Bundle\@Bundle%
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
    \let\suffix\@suffix%
    \let\hologo\@firstofone%
    \let\hologoRobust\@firstofone%
    % TODO raus?
    \def\_{-}%
%    \def~{-}%
    \protected\def~{~}%
    \def\dots{...}%
    \let\NoCaseChange\@firstofone%
    \let\emph\@firstofone%
  }%
}
\newcommand*\Parameter@Expandable{%
  \let\PValue\@PValue%
  \let\PName\@firstofone%
  % TODO wo ist das notwendig (log!)? besser auf neue expandierbare?
  \let\PSet\@gobble%
  \let\PMisc\@empty%
  \let\PBoolean\@empty%
  \let\PLength\@empty%
  \let\Parameter\@firstofone%
  \let\OParameter\@firstofone%
  \let\LParameter\@empty%
  \let\OLParameter\@firstofone%
  \let\PParameter\@firstofone%
  \let\POParameter\@firstofone%
  \let\textOR\@empty%
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
        % TODO if empty?
        \unexpanded{{#2{#3}}}%
      \else%
        \unexpanded{{#3}}%
      \fi%
    }%
  \tud@res@a%
}
\AfterPackage*{hyperref}{%
%  \expandafter\pdfstringdefDisableCommands\expandafter{\Markup@Expandable}%
  \expandafter\pdfstringdefDisableCommands\expandafter{%
    \Markup@@Expandable%
    \let\ApplicationRaw\@ApplicationRaw%
    \let\ClassRaw\@ClassRaw%
    \let\PackageRaw\@PackageRaw%
  }%
}
% TODO enclose in Bundle, if necessary
\newcommand*\Processor@Entity[1]{%
  \begingroup%
    \def\tud@res@a{#1}%
    \trim@spaces@in\tud@res@a%
    \expandafter\ifblank\expandafter{\tud@res@a}{%
      \let\tud@res@a\tud@ety@dflt%
    }{}%
    \let\tud@res@b\@empty%
    \let\tud@res@c\@empty%
    \@for\tud@res@a:=\tud@res@a\do{%
      \trim@spaces@in\tud@res@a%
      \expandafter\ifblank\expandafter{\tud@res@a}{%
        \let\tud@res@a\tud@ety@dflt%
      }{%
        \expandafter\ifstrequal\expandafter{\tud@res@a}{*}{%
          \let\tud@res@a\tud@ety@curr%
        }{}%
      }%
      \xifinlist{\detokenize\expandafter{\tud@res@a}}{\tud@res@c}{}{%
        \listeadd{\tud@res@c}{\detokenize\expandafter{\tud@res@a}}%
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
% TODO prüfen, ob etwas wie =\PMisc aa= angegeben wurde
% (Validierung: expandieren zu <p:...> oder leer?)
% > \Processor@Validate@Value verwenden, wo notwendig!
\NewDocumentCommand\Process@Markup{%
  m d// d== o >{\Processor@Entity}d() d'' m r|| d<>%
}{%
  \begingroup%
%    \IfValueT{#9}{\typeout{???/ \detokenize{#9}\on@line}}%
    \tud@toks@{\Process@@Markup{#1}/#2/=#3=[{#4}]}%
    % TODO in Deklarationen auf oberster ebene nur Spezialwerte in #3 möglich 
    \ifnum\tud@declare@mode=\z@\relax%
    % TODO \@nil als Arg. für \Processor@Entity, und darin \tud@ety@get nutzen?
    % TODO ist das nötig für \Changed@At@CreateList?
      \tud@ety@get\tud@res@a{#1}/#2/=#3=(#5)'#6'%
    \else%
      \IfValueTF{#5}{%
        \def\tud@res@a{#5}%
      }{%
        \let\tud@res@a\tud@ety@curr%
        \def\tud@res@b{#1}%
        \ifx\tud@res@a\tud@res@b%
          \let\tud@res@a\tud@ety@dflt%
        \fi%
      }%
    \fi%
    \eaddto@hook\tud@toks@{\expandafter(\tud@res@a)}%
    \addto@hook\tud@toks@{'#6'{#7}|#8|<#9>}%
    \edef\tud@res@a{%
      \endgroup%
      \the\tud@toks@%
    }%
  \tud@res@a%
}
\GetDocumentCommandArgSpec\Process@Markup%
\expandafter\NewDocumentCommand\expandafter\Process@Simple@Markup\expandafter{%
  \ArgumentSpecification%
}{%
  \Markup@Output{#1}/#2/=#3=[{#4}]%
}
\BeforeStartingTOC{\let\Process@Markup\Process@Simple@Markup}
\NewDocumentCommand\Process@@Markup{%
  m d// d== o r() d'' m r|| r<>%
}{%
  % TODO !!!!!!!!!!!! hier label erstellen und schleife durchlaufen!
%  Schleife über Entity {
%    if@declare
%      lbl = lbl@get*
%      hyper@def{lbl}
%      idx@def (Subebenen! wenn keine, dann auch Eintrag ohne value)
%      write@aux {lbl}{idxentry}
%    else
%     lbl = lbl@get
%     new@idx@get{lbl} (Subebenen!)
%    fi
%    writeindex
%  }
  \begingroup%
    \def\tud@res@a{#5}%
    \@for\tud@res@a:=\tud@res@a\do{%
      \tud@toks@{\Process@@@Markup{#1}/#2/=#3=[{#4}]}%
      \eaddto@hook\tud@toks@{\expandafter(\tud@res@a)}%
      \addto@hook\tud@toks@{'#6'{#7}|#8|<#9>}%
      \the\tud@toks@%
    }%
  \endgroup%
%  
% \ifnum\tud@declare@mode>\z@\relax%
%    \IfBooleanT{#6}{%
%      \Markup@Name@Get\tud@res@a{#1}%
%      \ClassWarning{tudscrmanual}{%
%        Using \@backslashchar\tud@res@a* (starred version)\MessageBreak%
%        within a declaration is inept%
%      }%
%    }%
%  \fi%
%  \IfBooleanTF{#6}{%
%    \IfValueT{#7}{%
%      \Markup@Name@Get\tud@res@a{#1}%
%      \ClassWarning{tudscrmanual}{%
%        Using \@backslashchar\tud@res@a* (starred version)\MessageBreak%
%        means, no index entry is created. The optional\MessageBreak%
%        indexing format |#7| means nothing%
%      }%
%    }%
%  }
%      \IfValueT{#6}{%
%        \ClassWarning{tudscrmanual}{%
%          It is not possible to use any indexing format\MessageBreak%
%          |#6| within a declaration%
%        }%
%      }%
%  
  % TODO  Markup@Output (anstelle von ProcessOutput?)
  % TODO nur aufrufen, falls notwendig
  \Process@Output{#1}/#2/=#3=[{#4}](#5)'#6'%
}
\NewDocumentCommand\Process@@@Markup{%
  m d// d== o r() d'' m r|| r<>%
}{%
  \tud@lbl@get\tud@lbl@tmp{#1}/#2/=#3=(#5)%
  \@tud@res@swatrue%
  \if@tud@index\@tud@res@swafalse\fi%
  \ifnum\tud@declare@mode=\z@\relax\else%
    \ifnum\tud@declare@index=\z@\relax\@tud@res@swafalse\fi%
  \fi%
  \IfBooleanT{#7}{\@tud@res@swafalse}%
  \if@tud@res@swa%
    % TODO vorher auf tud@declare@mode prüfen -> tud@declare@index
    \if@tud@index\else%
      % TODO in Makro \Process@Index überführen
      \tud@toks@{\tud@idx@get}%
      \ifnum\tud@declare@mode>\z@\relax%
        \addto@hook\tud@toks@{*}%
      \fi%
      \addto@hook\tud@toks@{\tud@res@a{#1}/#2/=#3=[{#4}](#5)}%
      \eaddto@hook\tud@toks@{\expandafter'\tud@lbl@tmp'<#9>}%
      \the\tud@toks@%
      \expandafter\New@Process@Index@Write\expandafter{\tud@res@a}{#1}|#8|%
    \fi%
  \fi%
  \ifnum\tud@declare@mode>\z@\relax%
    \tud@ety@add{#5}%
    \if@tud@declare@label%
      \Process@Declare@Label{\tud@lbl@tmp}=#3=%
    \fi%
  \fi%
}
\newrobustcmd*\tud@idx@declare[2]{%
  \ifcsundef{tud@idx@@#1}{}{%
    \ClassWarningNoLine{tudscrmanual}{%
      Index entry for label `#1' was already defined%
    }%
  }%
  \csxdef{tud@idx@@#1}{\detokenize{#2}}%
}
\AtEndDocument{\let\tud@idx@declare\@gobbletwo}
\newcommand*\tud@if@idx@exists[1]{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\ifcsundef{tud@idx@@#1}%
    }%
  \tud@res@a{%
    \expandafter\@secondoftwo%
  }{%
    \expandafter\@firstoftwo%
  }%
}
\newcommand*\tud@idx@read[2]{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \unexpanded{\letcs#1}{tud@idx@@#2}%
    }%
  \tud@res@a%
}
\GetDocumentCommandArgSpec\Process@@Markup%
\expandafter\NewDocumentCommand\expandafter\Markup@@Get\expandafter{%
  \ArgumentSpecification%
}{%
  \tud@toks@{{#1}}%
  \tud@res@b{#2}{\addto@hook\tud@toks@{/#2/}}%
  \tud@res@b{#3}{\addto@hook\tud@toks@{=#3=}}%
  \tud@res@b{#4}{\addto@hook\tud@toks@{[{#4}]}}%
  \tud@res@b{#5}{\addto@hook\tud@toks@{(#5)}}%
}
\NewDocumentCommand\Markup@Get{s m m}{%
  \begingroup%
    \let\Process@@Markup\Markup@@Get%
    \IfBooleanTF{#1}{%
      \let\tud@res@b\IfValueT%
    }{%
      \let\tud@res@b\@secondoftwo%
    }%
    #3%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#2}{\the\tud@toks@}%
    }%
  \tud@res@a%
}
% TODO label als argument an \Process@Output
% TODO entwirren
\NewDocumentCommand\Process@Output{m r// r== r[] r() r''}{%
  \ifnum\tud@declare@mode=\z@\relax%
    \tud@toks@{\Process@Output@Inline}%
  \else%
    \tud@toks@{\Process@Output@Declare}%
  \fi%
  \addto@hook\tud@toks@{{#1}/#2/=#3=[{#4}]}%
  \ifnum\tud@declare@mode=\z@\relax%
    \begingroup%
      \def\tud@res@a##1,##2\@nil{%
        \endgroup%
        \addto@hook\tud@toks@{(##1)}%
      }%
    \tud@res@a#5,\@nil%
  \else%
    \addto@hook\tud@toks@{(#5)}%
  \fi%
  \ifnum\tud@declare@mode=\z@\relax%
    \IfValueT{#6}{\addto@hook\tud@toks@{'#6'}}%
    \tud@trace@markup@add{output}{\the\tud@toks@}%
  \else%
    \ifnum\tud@declare@mode>\z@\relax%
      \tud@trace@markup@add{declare}{\the\tud@toks@}%
    \else%
      \tud@toks@{\relax}%
    \fi%
  \fi%
  \the\tud@toks@%
}
\tud@auxlist@register{tud@label@alias}[\detokenize\expandafter]%
\NewDocumentCommand\Process@Declare@Label{m r==}{%
  \begingroup%
    \let\tud@res@a\relax%
    \let\tud@res@c\@empty%
    \IfValueT{#2}{%
      \tud@if@param@special{#2}{%
        \listadd\tud@res@c{*}%
        \ifstrequal{\PBoolean}{#2}{%
          \listadd\tud@res@c{true}%
          \listadd\tud@res@c{false}%
        }{}%
      }{}%
% TODO typeout --> welche Optionen sind ggf. betroffen? eher wieder rein?
%      \in@{\PName}{#2}%
%      \ifin@%
%        \tudhyper@alias@values{\tud@res@a}{#2}%
%      \fi%
    }%
    \expandafter\IfValueT\expandafter{\tud@lbl@alias@values}{%
      \ifx\tud@lbl@alias@values\@empty%
        \def\tud@lbl@alias@values{*}%
      \fi%
      \@tud@res@swafalse%
      \@for\tud@res@b:=\tud@lbl@alias@values\do{%
        \trim@spaces@in\tud@res@b%
        \ifx\tud@res@b\@empty%
          \def\tud@res@b{*}%
        \fi%
        \tud@if@strequal{\tud@res@b}{!}{\@tud@res@swatrue}{%
          \expandafter\ifinlist\expandafter{\tud@res@b}{\tud@res@c}{}{%
            \expandafter\listadd\expandafter\tud@res@c\expandafter{\tud@res@b}%
          }%
        }%
      }%
      \if@tud@res@swa%
        \listremove\tud@res@c{*}%
      \fi%
    }%
% TODO für tutorials notwendig?, darf keine relevanz für manual haben
%        \def\tud@res@a##1:##2:##3\@nil{\tudhyperdef*{##3:##2:##3}}%
%        \expandafter\tud@res@a\tud@lbl@tmp\@nil%
    \let\@currentlabelname\@empty%
    \tud@hyperdef{#1}%
    \tud@auxlist@remove{tud@label@alias}{#1}%
    \ifx\tud@res@c\@empty\else%
      \def\tud@res@a##1=##2=##3\@nil{%
        \def\tud@res@a{##1}%
        \def\tud@res@b{##2}%
      }%
      \expandafter\tud@res@a#1==\@nil%
      \def\do##1{%
        \tud@if@strequal{##1}{*}{%
          \tud@hyperalias{\tud@res@a}{\tud@res@b}%
        }{%
          \tud@hyperalias{\tud@res@a=##1}{\tud@res@b}%
        }%
      }%
      \dolistloop{\tud@res@c}%
    \fi%
  \endgroup%
}
\newcommand*\tud@hyperalias[2]{%
  \tud@auxlist@add{tud@label@alias}{#1}%
  \tud@auxlist@ifin{#1}{tud@label@alias}{%
    \tud@hyperdef<#2>{#1}%
  }{}%
}
\NewDocumentCommand\Process@Output@Declare{m r// r== r[] r()}{%
  \ifnum\tud@declare@mode=\@ne\relax%
    \Markup@Output{#1}/#2/=#3=[{#4}]%
  \fi%
}
\NewDocumentCommand\Process@Output@Inline{m r// r== r[] r() !d''}{%
  \begingroup%
    % TODO sollte als argument übergeben werden
    \tud@lbl@get*\tud@lbl@tmp{#1}/#2/=#3=(#5)%
    %
    \tud@get@crossrefnum\tud@res@c'#6'%
    % TODO Warnungen in \Process@Output verschieben
    % \tud@get@crossrefnum\tud@res@c'#6'%
    \let\tud@res@a\@empty%
    \if@tud@disposition%
      \def\tud@res@a{for headings}%
    \fi%
    \ifnum\tud@declare@mode>\z@\relax%
      \def\tud@res@a{for markup within declarations}%
    \fi%
    \ifx\tud@res@a\@empty\else%
      \ifnum\tud@res@c>\z@\relax%
        \ClassWarning{tudscrmanual}{%
          It is not possible to use any cross-reference\MessageBreak%
          shorthand like '#6'\MessageBreak\tud@res@a%
        }%
      \fi%
      \def\tud@res@c{-1}%
    \fi%
    \let\tud@res@a\@firstofone%
    \ifnum\tud@res@c<\z@\relax\else%
      \tud@if@lbl@exists{\tud@lbl@tmp}{%
        \edef\tud@lbl@tmp{\tud@lbl@tmp}%
        \def\tud@res@a##1{\tudhyperref{\tud@lbl@tmp}{##1}\tud@res@b}%
        \let\tud@res@b\empty% simple/link
        \ifcase\tud@res@c\relax\or% auto
          \def\tud@res@b{ in \autoref{\tud@lbl@tmp}}%
        \or% page
          \def\tud@res@b{ \vpageref{\tud@lbl@tmp}}%
        \or% ppage
          \def\tud@res@b{ \reftextfaraway{\tud@lbl@tmp}}%
        \or% full
          \def\tud@res@b{ in \fullref{\tud@lbl@tmp}}%
        \else% link
          \ClassWarning{tudscrmanual}{%
            As label `\tud@lbl@tmp' exists, the\MessageBreak%
            given cross-reference '#6'\MessageBreak%
            is ignored%
          }%
        \fi%
      }{%
        \ifnum\tud@res@c=\z@\relax%
          \def\tud@res@b##1##2\@nil{%
            \begingroup%
              \@tud@res@swafalse%
              \ifstrequal{\Package}{##1}{\@tud@res@swatrue}{}%
              \ifstrequal{\Bundle}{##1}{\@tud@res@swatrue}{}%
              \if@tud@res@swa%
                \def\tud@res@a{##2}%
                \IfValueT{#5}{%
                  \def\tud@res@c{#5}%
                  \ifx\tud@res@c\tud@ety@dflt\else%
                    \edef\tud@res@a{\@secondoftwo#5}%
                  \fi%
                }%
              \fi%
              \edef\tud@res@c{%
                \endgroup%
                \if@tud@res@swa%
                  \unexpanded{\def\tud@res@a####1}{%
                    \CTAN@pkg{\tud@res@a}{\unexpanded{####1}}%
                  }%
                \fi%
              }%
            \tud@res@c%
          }%
          \tud@res@b#1\@nil%
        \fi%
        \ifnum\tud@res@c<5\relax% no link
          \ifnum\tud@res@c>\z@\relax%
            \ClassWarning{tudscrmanual}{%
              A cross-reference could not be created\MessageBreak%
              as label \tud@lbl@tmp\MessageBreak%
              doesn't exists%
            }%
          \fi%
        \else%
          \def\tud@res@b##1:##2\@nil{%
            \IfArgIsEmpty{##2}{%
              \expandafter\def\expandafter\tud@res@b\@gobble#1%
            }{%
              \def\tud@res@b{##2}%
            }%
          }%
          \tud@res@b#6\@nil%
          \ifnum\tud@res@c=5\relax% ctan link
            \edef\tud@res@a##1{\noexpand\CTAN@pkg{\expandonce\tud@res@b}{##1}}%
          \else%
            \edef\tud@res@a##1{\noexpand\href{\expandonce\tud@res@b}{##1}}%
          \fi%
       \fi%
      }%
    \fi%
%    TODO Warnungen auch ausgeben, wenn Sternversion mit  
%    TODO label default genutzt wird (\Macro*{blinddocument})
%    \ifcase\tud@res@c\relax\else%
%      \begingroup%
%        \@tud@res@swafalse%
%        \tud@if@lbl@exists{\tud@lbl@tmp}{%
%          \IfValueT{#3}{%
%            \tud@lbl@get\tud@res@a{#1}/#2/=#3=(#5)%
%            \ifx\tud@lbl@tmp\tud@res@a\else%
%              \let\tud@lbl@tmp\tud@res@a%
%              \@tud@res@swatrue
%            \fi%
%          }%
%        }{%
%        % TODO rein!
%        %  \expandafter\ifstrequal\expandafter{\tud@ety@dflt}{#5}{%
%        %    \@tud@res@swatrue%
%        %  }{}%
%        }%
%        \if@tud@res@swa%
%          \ClassWarning{tudscrmanual}{%
%            A \IfValueTF{#3}{specific}{general} value for \detokenize{#5}%
%            \MessageBreak `#1\IfValueT{#2}{/#2/}\IfValueT{#3}{=#3=}'%
%            \MessageBreak was given, but there exists no label%
%            \MessageBreak `\tud@lbl@tmp'%
%          }%
%        \fi%
%      \endgroup%
%    \fi%
%    
          \tud@res@a{\Markup@Output{#1}/#2/=#3=[{#4}]}%
          \endgroup%
%    \def\tud@res@b{\Markup@Output{#1}/#2/=#3=[{#4}]}%
%    \protected@edef\tud@res@a{%
%      \endgroup%
%      \tud@res@b%
%    }%
%  \tud@res@a%
}
\NewDocumentCommand\tud@get@crossrefnum{m r''}{%
  \begingroup%
    \IfValueTF{#2}{%
      \def\tud@res@a##1:##2\@nil{%
        \IfArgIsEmpty{##2}{%
          \def\tud@res@a{#2}%
        }{%
          \def\tud@res@a{##1:}%
        }%
      }%
      \tud@res@a#2:\@nil%
      \TUD@set@numkey{}{tud@res@a}{%
        {auto}{0},{ref}{1},{page}{2},{ppage}{3},{full}{4},%
        {ctan:}{5},{url:}{6},{none}{-1}%
      }{\tud@res@a}%
      \ifx\FamilyKeyState\FamilyKeyStateProcessed\else%
        \ClassWarning{tudscrmanual}%
        {%
          The cross-reference '#2'\MessageBreak%
          is unknown. Only shorthands 'ref', 'page',\MessageBreak%
          'ppage' and 'full' as well as 'auto' and\MessageBreak%
          'none' are valid. Additionally, 'URL:<url>\MessageBreak%
          or 'CTAN:<pkg>' can be used%
        }%
        \def\tud@res@a{-1}%
      \fi%
    }{%
      \def\tud@res@a{0}%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\tud@res@a}%
    }%
  \tud@res@a%
}
% TODO \if@tud@markup@output?!
\newcommand*\Markup@@Output{}
\NewDocumentCommand\Markup@Output{m r// r== r[]}{%
  \IfValueTF{#2}{%
    \Markup@Name@Get\tud@res@a{\Key@Value}%
  }{%
    \Markup@Name@Get\tud@res@a{#1}%
  }%
  \ifnum\tud@declare@mode=\z@\relax%
    \letcs\Markup@@Output{Markup@Inline@@\tud@res@a}%
    \edef\tud@res@b{Markup@Inline@@\tud@res@a}%
  \else%
    \letcs\Markup@@Output{Markup@Declare@@\tud@res@a}%
    \edef\tud@res@b{Markup@Declare@@\tud@res@a}%
  \fi%
  \ifundef{\Markup@@Output}{%
    \ClassError{tudscrmanual}{Missing markup definition}{%
      \@backslashchar\tud@res@b\space is missing!%
    }%
    \def\Markup@@Output##1=##2=[##3]{##1=##2[{##3}]}%
  }{}%
  \begingroup%
    % TODO kein suffix, wenn #3 ohne Spezialwert gegeben
    \Markup@Expandable*%
    \protected@edef\tud@res@a{%
      \noexpand\Markup@@Output{\IfValueTF{#2}{#2}{#1}}\unexpanded{=#3=[{#4}]}%
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
  % TODO aus Markup-Liste
  \apptocmd{\tud@x@textcase@uclcnotmath}{%
    \tud@nonchangecase\Application%
    \tud@nonchangecase\Engine%
    \tud@nonchangecase\Distribution%
    \tud@nonchangecase\Bundle%
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
    % TODO splitindex mit \tud@xdy@make aufrufen
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
  \ifundef{\inputencodingname}{%
    \eappto\tud@xdy@settings{\space-C\space utf8}%
  }{%
    \eappto\tud@xdy@settings{\space-C\space\inputencodingname}%
  }%
  \tud@xdy@make{Allgemeiner Index}%
  \tud@xdy@make*{Klassen- und Paketoptionen}[options]%
  \tud@xdy@make*{Befehle und Umgebungen mit zugeh\"origen Parametern}[macros]%
  \tud@xdy@make*{Sprachabh\"angige Bezeichner}[terms]%
  \tud@xdy@make*{Seitenstile, Schriftelemente und Farben}[elements]%
  \tud@xdy@make*{L\"angen und Z\"ahler}[misc]%
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
\NewDocumentCommand\New@Process@Index@Write{m m r||}{%
  \begingroup%
    \tud@attr@get*\tud@res@a{#2}%
    \let\tud@res@b\@empty%
    \let\tud@res@c\@firstofone%
    % TODO check, falls das klappt, separate declare-Indexe notwendig?
  %  ;;(define-attributes (("declare" "!") ("important" "?")("default")))
  %  ;;(markup-attribute-group-list :sep ", ")
  %  ;;(merge-to "default" "declare")
  %  ;;(merge-to "default" "important")
    \ifnum\tud@declare@mode=\z@\relax%
      \IfValueT{#3}{%
        \def\tud@res@b{#3}%
        % TODO noch sinnvoll?
        \ifx\tud@res@b\@empty\else%
          \typeout{??? \detokenize{#3} \thepage\on@line}%
        \fi%
        % TODO |declare| und |default| durch InlineDeclartion ersetzen
        % TODO nur noch |!| und |?| zulassen
        \Ifstr{\tud@res@b}{declare}{%
          \appto\tud@res@a{-declare}%
        }{}%
      }%
    \else%
      \appto\tud@res@a{-declare}%
      \ifnum\tud@declare@mode>\z@\relax%
        \ifnum\tud@declare@index=\@ne\relax%
          \def\tud@res@b{declare}%
        \else%
          \def\tud@res@b{(declare}%
        \fi%
      \else%
        \ifnum\tud@declare@index=\@ne\relax%
          \let\tud@res@c\@gobble%
        \else%
          \def\tud@res@b{declare)}%
        \fi%
      \fi%
    \fi%
    % TODO split an "!" und jeden Eintrag auch verwenden?
    % falls ja, nur wenn \tud@declare@mode>\z@?
    \tud@res@c{\index[\tud@res@a]{#1\ifx\tud@res@b\@empty\else|\tud@res@b\fi}}%
  \endgroup%
}
\newcommand*\tud@idx@key{}
\newcommand*\tud@idx@fmt{}
\NewDocumentCommand\tud@idx@format@entry{%
  s m d++ >{\Processor@NewMarkup{#3}}m d// d== o r()%
}{%
  \tud@toks@{\tud@aux@idx@format@entry}%
  \IfBooleanT{#1}{\addto@hook\tud@toks@{*}}%
  \addto@hook\tud@toks@{{#2}#4/#5/=#6=[{#7}](#8)}%
  \the\tud@toks@%
}
% TODO remove aux
\NewDocumentCommand\tud@aux@idx@format@entry{%
  s m r++ m d// d== o r()%
}{%
  \begingroup%
    \@tud@res@swatrue%
    \IfBooleanF{#1}{%
      \IfValueT{#5}{\@tud@res@swafalse}%
      \IfValueT{#6}{\@tud@res@swafalse}%
    }%
    % TODO was ist mit Key@Value?
    \Markup@Suffix@@Select[\protected@edef\tud@res@a]{}{#3}%
    \let\tud@res@b\@empty%
    \let\tud@res@c\@empty%
    \IfValueT{#6}{\def\tud@res@b{#6}}%
    \expandafter\ifstrequal\expandafter{\tud@ety@dflt}{#8}{}{%
      \def\tud@res@c{(#8)}%
      % TODO raus
      \def\tud@res@c{#8}%
    }%
    \begingroup%
      \Markup@Expandable%
      % TODO sort key: \PMisc > '={ }special:misc'
      \protected@edef\tud@res@b{\tud@res@b}%
      \protected@edef\tud@res@a{%
        \endgroup%
        \unexpanded{\def\tud@idx@key}{%
          \IfValueTF{#5}{#5}{#4}%
          \ifx\tud@res@b\@empty\else=\tud@res@b\fi%
          \if@tud@res@swa%
            \tud@res@a%
            \ifx\tud@res@c\@empty\else\space\tud@res@c\fi%
          \fi%
        }%
      }%
    \tud@res@a%
    \protected@edef\tud@idx@fmt{%
      \csname #3\endcsname{%
        #4\IfValueT{#5}{/#5}\ifx\tud@res@b\@empty\else=\tud@res@b\fi%
      }%
      % TODO #8 immer mit angeben, wenn alles fertig
      \ifx\tud@res@c\@empty\else%
        (\tud@res@c)%
      \fi%
      \if@tud@res@swa%
        \IfValueT{#7}{#7}%
        \ifx\tud@res@c\@empty\else\idxsuffix{#8}\fi%
      \fi%
    }%
    \tud@replace@@in\tud@idx@key{@}{"@}%
    \tud@replace@@in\tud@idx@key{!}{"!}%
    \tud@replace@@in\tud@idx@key{|}{"|}%
    \tud@replace@@in\tud@idx@fmt{@}{"@}%
    \tud@replace@@in\tud@idx@fmt{!}{"!}%
    \tud@replace@@in\tud@idx@fmt{|}{"|}%
    \edef\tud@res@c{%
      \endgroup%
      \unexpanded{\def#2}{{\expandonce\tud@idx@key}@{\expandonce\tud@idx@fmt}}%
    }%
  \tud@res@c%
}
% TODO label evtl als optionales Argument und ansonsten mit lbl@get?
\NewDocumentCommand\tud@idx@get{%
  s m m r// r== r[] r() r'' d<>%
}{%
  \begingroup%
    \IfBooleanTF{#1}{%
      \let\tud@res@c\@secondoftwo%
    }{%
      \def\tud@res@c{\tud@if@idx@exists{#8}}%
    }%
    \tud@res@c{%
      \tud@idx@read\tud@res@a{#8}%
    }{%
      \def\tud@res@c##1##2##3{%
        \Ifstr{##1}{#8}{##3}{%
          \tud@if@idx@exists{##1}{##2}{%
            \ClassWarning{tudscrmanual}{%
              Index entry for label `##1'\MessageBreak is not defined%
            }%
            ##3%
          }%
        }%
      }%
      \let\tud@res@a\@empty%
      % TODO #9 direkt als label?
      \IfValueT{#9}{%
        % TODO Argument <> verallgemeinern? direkt das label durchreichen?
%        \typeout{???* \detokenize{#9}\on@line}%
%        \typeout{???* \tud@lbl@tmp\space vs. #8}%
        \Markup@Get\tud@res@a{#9}%
        \expandafter\tud@lbl@get\expandafter\tud@lbl@tmp\tud@res@a%
        \tud@res@c{\tud@lbl@tmp}{%
          \tud@idx@read\tud@res@a{\tud@lbl@tmp}%
          \appto\tud@res@a{!}%
        }{%
          \let\tud@res@a\@empty%
        }%
      }%
      \ifx\tud@res@a\@empty%
        \IfValueT{#4}{%
          \tud@lbl@get\tud@lbl@tmp{#3}(#7)%
          \tud@res@c{\tud@lbl@tmp}{%
            \tud@idx@read\tud@res@a{\tud@lbl@tmp}%
          }{%
            \tud@idx@format@entry\tud@res@a{#3}(#7)%
          }%
          \appto\tud@res@a{!}%
        }%
        \IfValueT{#5}{%
          \tud@if@param@special{#5}{}{%
            \tud@lbl@get\tud@lbl@tmp{#3}/#4/(#7)%
            \tud@res@c{\tud@lbl@tmp}{%
              \tud@idx@read\tud@res@a{\tud@lbl@tmp}%
              \let\tud@res@b\@empty%
            }{%
              \tud@idx@format@entry\tud@res@b{#3}/#4/(#7)%
            }%
            \eappto\tud@res@a{\expandonce\tud@res@b!}%
          }%
        }%
      \fi%
      \tud@toks@{\tud@idx@format@entry}%
      \ifx\tud@res@a\@empty%
        \addto@hook\tud@toks@{*}%
      \fi
      \addto@hook\tud@toks@{\tud@res@b{#3}/#4/=#5=(#7)}%
      \the\tud@toks@%
      \eappto\tud@res@a{\expandonce\tud@res@b}%
      % TODO übler Hack, muss in ||
      \Markup@Name@Get\tud@res@c{#3}%
      \expandafter\ifstrequal\expandafter{\tud@res@c}{Distribution}{%
        \preto\tud@res@a{Distribution!}%
      }{}%
      % TODO ENDE Hack
      \IfBooleanT{#1}{%
        \def\tud@res@b##1{%
          \protected@write\@auxout{}{%
            \string\tud@idx@declare{##1}{\tud@res@a}%
          }%
          \global\cslet{tud@idx@@##1}\tud@res@a%
        }%
        \tud@res@b{#8}%
        \IfValueF{#9}{%
          \tud@if@param@special{#5}{%
            \def\tud@res@c##1=##2\@nil{\def\tud@res@c{##1}}%
            \tud@res@c#8\@nil%
            \expandafter\tud@res@b\expandafter{\tud@res@c}%
          }{}%
        }%
      }%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#2}{\tud@res@a}%
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
      Ergebnis erzielt werden kann, sollte das \Forum' erster Anlaufpunkt %
      sein, um weitere Hilfe zu erhalten.%
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
    % TODO in \tud@xdy@make erledigen
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
\NewDocumentCommand\Process@ChangedAt{m r// r== r[] r() m}{%
  \begingroup%
    \let\tud@res@b\@empty%
    \def\tud@res@a{#5}%
    \@for\tud@res@a:=\tud@res@a\do{%
      % TODO pass #4, für oberste ebene in Änderungsliste
      \tud@toks@{{#1}/#2/=#3=[{#4}]}%
      \eaddto@hook\tud@toks@{\expandafter(\tud@res@a)}%
      \listeadd\tud@res@b{\the\tud@toks@}%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#6}{\expandonce\tud@res@b}%
    }%
  \tud@res@a%
}
\newcommand*\tud@chg@entry@list{}
\newcommand*\tud@chg@version@list{}
% TODO o -> d<>? ist doch Haupteintrag (Implementierung), oder?
\NewDocumentCommand\ChangedAt{>{\ReverseBoolean}s o d() m}{%
  \ifx\tud@chg@entry@list\@empty\else%
    \ClassError{tudscrmanual}{Unprocessed change notes}{%
      \string\tud@chg@entry@list\space is not empty%
    }%
  \fi%
  \let\tud@chg@entry@list\@empty%
  \let\tud@chg@version@list\@empty%
  \Changed@At@CreateList{#4}[{#2}](#3){#1}%
  \tud@print@changedatlist%
}
% TODO raus, wenn DeclarationPackages umgesetzt; default=\z@
\tud@newdim\tud@dim@changedatvskip
\newcommand*\tud@print@changedatlist[1][\tud@dim@changedatvskip]{%
  \begingroup%
    \ifx\tud@chg@version@list\@empty\else%
      \tud@list@sort\tud@chg@version@list%
      \let\tud@res@b\@empty%
      \def\tud@res@c##1{%
        \appto\tud@res@b{%
          \ignorespaces%
          \tudhyperref{idx:changelog:##1}{##1}%
          \tabularnewline%
        }%
      }%
      \forlistloop\tud@res@c{\tud@chg@version@list}%
      \strut%
      \marginnote{%
        \begin{tabular}[b]{|l|}%
          \hline%
          \tud@res@b%
          \hline%
        \end{tabular}%
      }[{\dimexpr\glueexpr#1\relax\relax}]%
    \fi%
    \ifx\tud@chg@entry@list\@empty\else%
%      \typeout{????? \meaning\tud@chg@entry@list}%
      \forlistloop\@firstofone{\tud@chg@entry@list}%
    \fi%
  \endgroup%
  \let\tud@chg@entry@list\@empty%
  \let\tud@chg@version@list\@empty%
  \ignorespaces%
}
\NewExpandableDocumentCommand\@ChangedAt{s o d() m}{}
\AfterPackage*{hyperref}{%
  \pdfstringdefDisableCommands{%
    \let\ChangedAt\@ChangedAt%
  }%
}
% TODO \addtoeachtocfile vs BeforeStartingToc
\BeforeStartingTOC{\let\ChangedAt\@ChangedAt}
\DeclareListParser*{\forssvlist}{;}
% TODO argument order
% TODO Bundle aus Markup extrahieren, falls vorhanden?
\NewDocumentCommand\Changed@At@CreateList{m o d() d:: m}{%
  \IfValueT{#1}{\Changed@At@@CreateList{#1}[{#2}](#3):#4:{#5}}%
}
\NewDocumentCommand\Changed@At@@CreateList{%
  m r[] >{\Processor@Entity}R(){\tud@ety@curr} r:: m%
}{%
  \def\tud@res@a{#3}%
  \@for\tud@res@a:=\tud@res@a\do{%
    \tud@toks@{\Changed@At@@@CreateList[{#2}]}%
    \eaddto@hook\tud@toks@{\expandafter(\tud@res@a):#4:{#5}}%
    \forssvlist{\the\tud@toks@}{#1}%
  }%
}
% TODO #2 raus
\NewDocumentCommand\Changed@At@@@CreateList{r[] d<> r() r:: m m}{%
  \begingroup%
%    \IfValueT{#1}{%
%      \typeout{*******************}%
%      \typeout{\detokenize{#1}}%
%    }%
%    \typeout{\detokenize{#2}}%
%    \typeout{\detokenize{#3}}%
%    \typeout{\detokenize{#4}}%
%    \typeout{\detokenize{#5}}%
%    \typeout{\detokenize{#6}}%
%    \def\tud@res@a##1:##2:##3\@nil{%
%      \def\tud@res@a{##1}%
%      \def\tud@res@b{##2}%
      % TODO ##3 anhängen, wenn nicht ':' oder '::'? defaultwerte!
%    }%
%    \tud@res@a#6::\@nil%
    \in@{:}{#6}%
    \ifin@%
      \def\tud@res@c##1:##2\@nil{%
        \def\tud@res@a{##1}%
        \def\tud@res@b{##2}%
      }%
      \tud@res@c#6\@nil%
      \trim@spaces@in\tud@res@b%
    \else%
      \def\tud@res@a{#6}%
      \let\tud@res@b\@empty%
    \fi%
    \ifx\tud@res@b\@empty%
      \IfValueT{#4}{\def\tud@res@b{#4}}%
    \fi%
    \ifx\tud@res@b\@empty\else%
      \tud@toks@{\Changed@At@CreateEntry}%
      \eaddto@hook\tud@toks@{\expandafter{\tud@res@a}}%
      \addto@hook\tud@toks@{[{#1}](#3)}%
      \eaddto@hook\tud@toks@{\expandafter:\tud@res@b:}%
      \listeadd\tud@chg@entry@list{\the\tud@toks@}%
    \fi%
    \IfBooleanT{#5}{%
      \xifinlist{\tud@res@a}{\tud@chg@version@list}{}{%
        \listeadd\tud@chg@version@list{\tud@res@a}%
      }%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand\tud@chg@entry@list{\expandonce\tud@chg@entry@list}%
      \def\noexpand\tud@chg@version@list{\expandonce\tud@chg@version@list}%
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
% TODO kann \tud@idx@entry raus?
\newcommand*\tud@idx@entry{}
% TODO Eintrag in #2 sollte feststehen, inklusive Bundle;
% TODO Markup@Get schon bei \Changed@At@CreateList?
\NewDocumentCommand\Changed@At@CreateEntry{m o r() r::}{%
% TODO auf verwendete Argumente prüfen
%\begingroup%
%\ttfamily\scriptsize\tiny
%\par>>\detokenize{#1}\par
%\par>>\detokenize{[#2]}\par
%\par>>\detokenize{(#3)}\par
%\par>>\detokenize{:#4:}\par
%\endgroup%
  \begingroup%
    \protected@edef\tud@res@a{#3}%
    \ifx\tud@res@a\tud@ety@dflt%
      \let\tud@res@a\@empty%
    \else%
      \preto\tud@res@a{\space}%
    \fi%
    \IfValueTF{#2}{%
      \def\tud@res@b{#2}%
      % TODO \tud@declare@process muss hier raus
      \tud@declare@process{11}%
      \expandafter\Markup@Get\expandafter\tud@res@b\expandafter{\tud@res@b}%
      \tud@declare@process{0}%
% TODO warum liste in separatem Makro, Schleife auch hier direkt möglich
      \expandafter\Process@ChangedAt\tud@res@b{\tud@res@c}%
      \def\tud@res@b##1{%
% TODO bekommt man das label irgendwie in \tud@chg@entry@list?
        \tud@lbl@get\tud@lbl@tmp##1%
        \tud@toks@{\tud@idx@get\tud@idx@entry##1}%
        \eaddto@hook\tud@toks@{\expandafter'\tud@lbl@tmp'}%
        \the\tud@toks@%
% TODO flag für Key in liste!
        \def\tud@res@c####1/####2/####3\@nil{%
          \IfValueTF{####2}{%
            \@tud@res@swatrue%
          }{%
            \@tud@res@swafalse%
          }%
        }%
        \tud@res@c##1\@nil%
        \edef\tud@res@c{\SplitArgument{2}{!}{\tud@idx@entry}}%
        \tud@res@c%
        \edef\tud@res@c####1####2####3{%
          \unexpanded{\Changed@At@@CreateEntry\tud@idx@entry}{####1}%
          \if@tud@res@swa%
            {####2}{####3}%
          \else%
            {####3}{####2}%
          \fi%
        }%
        \expandafter\tud@res@c\ProcessedArgument(#3):#4:%
        \index[changelog]{%
          #1!Implementierung\tud@res@a!\tud@idx@entry%
        }%
      }%
      \expandafter\forlistloop\expandafter\tud@res@b\expandafter{\tud@res@c}%
    }{%
      % TODO non-markup@markup in #4? 
      \index[changelog]{#1!Allgemein\tud@res@a!#4}%
    }%
  \endgroup%
}
\NewDocumentCommand\Changed@At@@CreateEntry{m m m m r() r::}{%
  \begingroup%
    \let\tud@res@a\@empty%
    \tud@if@strequal{#6}{<new>}{%
      \let\tud@res@b\@empty%
      \def\tud@res@c{\emph{neu}}%
    }{%
      \tud@if@strequal{#6}{<obsolete>}{%
        \let\tud@res@b\@empty%
        \def\tud@res@c{\emph{entf\"allt}}%
      }{%
        \def\tud@res@b{#6}%
        \def\tud@res@c{#6}%
      }%
    }%
    \IfValueT{#4}{%
      \Changed@At@@@CreateEntry\tud@res@a{#4}:\tud@res@b::\tud@res@c:%
      \let\tud@res@b\@empty%
      \def\tud@res@c{Werte angepasst}%
    }%
    \IfValueT{#3}{%
      \Changed@At@@@CreateEntry\tud@res@a{#3}:\tud@res@b::\tud@res@c:%
      \let\tud@res@b\@empty%
      \def\tud@res@c{Parameter angepasst}%
    }%
    \Changed@At@@@CreateEntry\tud@res@a{#2}:\tud@res@b::\tud@res@c:%
    \tud@replace@@in\tud@res@a{\idxsuffix{#5}}{}%
    \Markup@Expandable%
    \edef\tud@res@c{%
      \unexpanded{\tud@replace@@in\tud@res@a}{ #5: }{: }%
      \unexpanded{\tud@replace@@in\tud@res@a}{ #5"|}{"|}%
    }%
    \tud@res@c%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\tud@res@a}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Changed@At@@@CreateEntry{m m r:: r::}{%
  \begingroup%
    \robustify\emph%
    \protected@edef\tud@res@a{%
      \unexpanded{\def\tud@res@a}{#1}%
      \unexpanded{\def\tud@res@b}{#3}%
      \unexpanded{\def\tud@res@c}{#4}%
    }%
    \tud@res@a%
    \ifx\tud@res@a\@empty\else\preto\tud@res@a{!}\fi%
    \ifx\tud@res@b\@empty\def\tud@res@b{"|}\else\preto\tud@res@b{: }\fi%
    \ifx\tud@res@c\@empty\else\preto\tud@res@c{: }\fi%
    \protected@edef\tud@res@b{%
      \unexpanded{\tud@res@c#2\@nil}{\tud@res@b}{\tud@res@c}%
    }%
    \def\tud@res@c##1@##2\@nil##3##4{%
      \def\tud@res@c{##2##4}%
      \Markup@Expandable%
      \protected@edef\tud@res@b{##1##3}%
    }%
    \tud@res@b%
    \edef\tud@res@b{\detokenize\expandafter{\tud@res@b}}%
    \edef\tud@res@c{\detokenize\expandafter{\tud@res@c}}%
    \edef\tud@res@c{%
      \endgroup%
      \unexpanded{\def#1}{{\tud@res@b}@{\tud@res@c}\expandonce\tud@res@a}%
    }%
  \tud@res@c%
}
\RequirePackage{enumitem}[2011/09/28]
\setlist{before*={\endgraf\tud@RaggedRight},partopsep=0pt,noitemsep}
\newcommand*\itemval{}
\newcommand*\itemvaltrue{}
\newcommand*\itemvalfalse{}
\newcommand*\tud@item@raw{}
\AtBeginDocument{%
  \undef\itemval%
  \undef\itemvaltrue%
  \undef\itemvalfalse%
}
\newcommand*\tud@item@val@init[1]{%
  \tud@declaration@check%
  \let\itemval\tud@item@val%
  \let\itemvaltrue\tud@item@val@true%
  \let\itemvalfalse\tud@item@val@false%
  \ifundef\item{}{\let\tud@item@raw\item}%
  \undef\item%
}
\newcommand*\tud@list@create[4][]{%
  \newlist{#2}{#3}{#4}%
  \setlist[{#2}]{%
    topsep=\smallskipamount,labelwidth=\linewidth,labelsep=0pt,%
    font=\normalfont,parsep=\parskip,listparindent=\parindent,#1%
  }%
}
% TODO DeclarationValues mit optionalem Argument statt \tud@declaration@list
\tud@list@create[%
  before=\tud@item@val@init%
]{DeclarationValues}{description}{1}
\NewDocumentCommand\tud@item@val{s r== !d'' !d() !o}{%
  \begingroup%
    \in@{/}{#2}%
    \ifin@%
      \def\tud@res@c##1/##2\@nil{%
        \def\tud@res@a{##1}%
        \def\tud@res@b{/##2}%
      }%
      \tud@res@c#2\@nil%
    \else%
      \def\tud@res@a{#2}%
      \let\tud@res@b\@empty%
    \fi%
    \def\tud@res@c{\PValue}%
    \IfBooleanT{#1}{\appto\tud@res@c{*}}%
    \protected@edef\tud@res@c{%
      \unexpanded{\Parameter@Enclose[\def\tud@res@a]}%
        {\expandonce\tud@res@c}{\expandonce\tud@res@a}%
      \ifx\tud@res@c\@empty\else%
        \unexpanded{\Parameter@Enclose[\def\tud@res@b]}%
          {\expandonce\tud@res@c}{\expandonce\tud@res@b}%
      \fi%
    }%
    \tud@res@c%
    \IfBooleanTF{#1}{%
      \appto\tud@res@b{\suffix{S\"aumniswert}}%
    }{%
      \IfValueT{#3}{\appto\tud@res@b{\suffix{S\"aumniswert f\"ur #3}}}%
    }%
    \IfValueT{#4}{\appto\tud@res@b{\suffix{#4}}}%
    \def\tud@res@c##1##2##3{%
      \begingroup%
%        \tud@item@raw\detokenize{##2}%
        % TODO ClassError, wenn ungültiger Eintrag in Parameterliste?
        \Markup@Replace@Value\tud@res@b{##3}{##1}%
        \tud@toks@{\InlineDeclaration}%
        % TODO <##3> ist nicht schön, besser als Arg. für \Inline@Declaration?
        % TODO !...! nicht gut, besser doch \InlineDecalration[*] nutzen
        \ifx\tud@res@a\@empty%
          \edef\tud@res@c{{\expandonce\tud@res@b<##3>}\unexpanded{(##2)}}%
        \else%
          \edef\tud@res@c{*{\expandonce\tud@res@b<##3>}}%
        \fi%
        \eaddto@hook\tud@toks@{\tud@res@c<!>}%
        \edef\tud@res@a{\the\tud@toks@}%
        % TODO \Changed@At@CreateList innerhalb von \Inline@Declaration[*][...]
        \tud@toks@{\Changed@At@CreateList{#5}}%
        \eaddto@hook\tud@toks@{\expandafter[\tud@res@b]}%
        \addto@hook\tud@toks@{:<new>:{\BooleanTrue}}%
        \edef\tud@res@b{\the\tud@toks@}%
        \edef\tud@res@c{%
          \endgroup%
          \unexpanded{\appto\tud@res@a}{\expandonce\tud@res@a}%
          \unexpanded{\appto\tud@res@b}{\expandonce\tud@res@b}%
        }%
      \tud@res@c%
    }%
    \edef\tud@res@a{%
      \unexpanded{\let\tud@res@a\@empty\let\tud@res@b\@empty}%
      \noexpand\forlistloop{%
        \noexpand\tud@res@c{\expandonce\tud@res@a}{\expandonce\tud@res@b}%
      }{\noexpand\tud@declaration@list}%
    }%
    \tud@res@a%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@item@raw[\expandonce\tud@res@a]%
      \IfValueT{#5}{%
        \expandonce\tud@res@b%
        \noexpand\tud@print@changedatlist[-1\baselineskip]%
      }%
    }%
  \tud@res@a%
}
\newcommand*\tud@item@val@loop@declaration@list[3]{%
}
\NewDocumentCommand\tud@item@val@true{!s !d== !d'' !d() !o}{%
  \tud@item@val@bool{#1}{true/on/yes}=#2='#3'(#4)[{#5}]%
}
\NewDocumentCommand\tud@item@val@false{!s !d== !d'' !d() !o}{%
  \tud@item@val@bool{#1}{false/off/no}=#2='#3'(#4)[{#5}]%
}
\NewDocumentCommand\tud@item@val@bool{m m r== r'' r() r[]}{%
  \tud@toks@{\tud@item@val}%
  \IfBooleanT{#1}{\addto@hook\tud@toks@{*}}%
  \protected@edef\tud@res@a{#2\IfValueT{#3}{/#3}}%
  \eaddto@hook\tud@toks@{\expandafter=\tud@res@a=}%
  \addto@hook\tud@toks@{'#4'}%
  \addto@hook\tud@toks@{(#5)[{#6}]}%
  \the\tud@toks@%
}
\newcommand*\Markup@Replace@Value[3]{%
  \begingroup%
    \def\tud@res@b##1=##2\@nil{\def\tud@res@b{##1=#3}}%
    \def\tud@res@a##1##2##3\@nil{%
      \tud@res@b##2\@nil%
      \edef\tud@res@a{%
        \endgroup%
        \unexpanded{\def#1}{%
          \unexpanded{##1}{\expandonce\tud@res@b}\unexpanded{##3}%
        }%
      }%
    }%
    \tud@res@a#2\@nil%
  \tud@res@a%
}
% TODO rename to DeclarationPackages
% TODO Variante, um nicht \InlineDeclaration im Dokument verwenden zu müssen
% TODO siehe tudscr-packages.tex: selnolig, morewrites, scrwfile
\newcommand*\stditem{}
\newcommand*\tud@before@item[1]{%
  \ifdefvoid{\stditem}{%
    \let\stditem\item%
    \letcs\item{tud@item@#1}%
    % TODO Änderungsnotiz direkt über Makro \item setzen
    \tud@setdim\tud@dim@changedatvskip{-1\baselineskip}%
  }{}%
}
\newlist{packages}{description}{2}
\setlist[packages]{%
  topsep=\smallskipamount,labelwidth=\linewidth,labelsep=0pt,%
  font=\normalfont,parsep=\parskip,listparindent=\parindent,%
  before=\tud@before@item{packages}%
}
% TODO ist #2 immer \Bundle? sollte es default für #3 setzen?
% TODO zusammenspiel von #2 und #3, #3 default {}?
% TODO #3 !d''
\NewDocumentCommand\tud@item@packages{r[] !d() !d<>}{%
  \begingroup%
    \let\tud@res@a\@empty%
    \def\tud@res@b##1{%
      \eappto\tud@res@a{%
        % TODO \Package...'CTAN:<pkg>'
        ,\noexpand\space\noexpand\CTAN@pkg{\IfValueTF{#3}{#3}{##1}}{%
          \noexpand\InlineDeclaration{%
            \noexpand\Package{##1}\IfValueT{#2}{\unexpanded{(#2)}}%
          }%
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
\tud@newcount\tabularm@num
\NewEnviron{tabularm}[2][c]{%
  \tabularm@num=#2\relax%
  \begin{lrbox}{\tabularm@box}%
    \let\allcolumnpar\@gobble%
    \begin{tabular}[{#1}]{*{\tabularm@num}l}\BODY\end{tabular}%
  \end{lrbox}%
  \tud@setdim\tabularm@wd{\wd\tabularm@box}%
  \let\allcolumnpar\tabularm@allcolumnpar%
  \begin{tabular}[{#1}]{*{\tabularm@num}l}\BODY\end{tabular}%
}
\newcommand*\tabularm@allcolumnpar[1]{%
  \multicolumn{\tabularm@num}{@{}p{\tabularm@wd}@{}}{#1}%
}
\RequirePackage{tabularx}[1999/01/07]
\NewDocumentCommand\TermTable{s m !O{\linewidth}}{%
  \ifhmode\par\fi%
  \vskip\medskipamount%
% TODO warum? geht auch \noindent?
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
  % TODO Ja oder nein?
%  \par\addvspace{\medskipamount}%
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
  \Ifstr{\csuse{#2}}{}{\PName{leer}}{\csuse{#2}} & %
  \selectlanguage{english}\vspace*{#1}%
  \Ifstr{\csuse{#2}}{}{\PName{empty}}{\csuse{#2}}\tabularnewline%
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
\newcommand*\tud@latex@ext{pdflatex\space}
\iftutex
  \ifxetex
    \renewcommand*\tud@latex@ext{xelatex\space}
  \else
    \renewcommand*\tud@latex@ext{lualatex\space}
  \fi
\fi
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
  % TODO Suffix (Datei) im Index ignorieren
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
          \tud@toks@\expandafter{\tud@res@b inline}%
          \IfBooleanT{#1}{\addto@hook\tud@toks@{,nolist}}%
          \sbox\z@{%
            \expandafter\todo\expandafter[\the\tud@toks@]{\trim@spaces{#3}\strut}%
          }\usebox\z@%
          \renewcommand*\marginpar[2][]{%
            \marginnote[{##1}]{##2}[\dimexpr-\ht\z@+1.6ex+1.75pt\relax]%
          }%
          \tud@toks@\expandafter{\tud@res@a noline,nolist}%
          \settowidth\marginparwidth{\tud@res@c}%
          \tud@addtodim\marginparwidth{\dimexpr1.6ex+1pt\relax}%
          \expandafter\todo\expandafter[\the\tud@toks@]{\tud@res@c\strut}%
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
\newcommand*\tud@replace@in[3]{%
  \begingroup%
    \edef\tud@res@a{\expandonce{#1}}%
%    \protected@edef\tud@res@a{#1}%
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
      \unexpanded{\def#1}{\expandonce\tud@res@c}%
    }%
  \tud@res@a%
}
\newcommand*\tud@replace@@in[3]{%
  \begingroup%
    \protected@edef\tud@res@a{#1}%
    \edef\tud@res@a{\detokenize\expandafter{\tud@res@a}}%
    \edef\tud@res@b{%
      \unexpanded{\tud@replace@in\tud@res@a}{\detokenize{#2}}{\detokenize{#3}}%
    }%
    \tud@res@b%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\tud@res@a}%
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
        \mbox{\tud@english{GitHub-Repository\nbs\textsbn{\filename@base}}}%
      }%
    }%
    \IfValueT{#4}{%
      \edef\tud@res@a{\trim@spaces{#4}}%
      \tud@remove@trailing@slashes{\tud@res@a}%
      \Ifnumber{\tud@res@a}{%
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
      \unexpanded{\def#1}{\tud@res@a}%
    }%
  \tud@res@b%
}
\newcommand*\tud@remove@trailing@slashes[1]{%
  \begingroup%
    \edef\tud@res@a{\trim@spaces{#1}}%
    \Ifstrstart{\tud@res@a}{/}{%
      \edef\tud@res@a{\expandafter\@gobble\tud@res@a}%
    }{}%
    \let\tud@res@c\@empty%
    \def\tud@res@b##1/##2/\@nil{%
      \IfArgIsEmpty{##2}{%
        \appto\tud@res@c{##1}%
      }{%
        \Ifstr{##2}{/}{%
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
      \unexpanded{\def#1}{\tud@res@c}%
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
    \tud@res@a{https://www.ctan.org\IfValueT{#2}{/#2}}{%
      \tud@english{Comprehensive TeX Archive Network (CTAN)}%
    }%
  \endgroup%
  \xspace%
}
\newrobustcmd*\CTAN@pkg[2]{\href{https://www.ctan.org/pkg/#1}{#2}}
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
  \Ifstr{#1}{theglossary}{\@tud@xdy@glotrue}{\@tud@xdy@glofalse}%
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
