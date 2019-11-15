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
%%%% From File: tudscr-base.dtx 2019/11/15 03:28:28 f4c331b
\RequirePackage{tudscrbase}[%
  2019/10/24 v2.06f TUD-Script
]
\renewcommand*\TUD@KOMAoptions[1]{\PassOptionsToClass{#1}{\TUD@Class@Parent}}
\AfterClass{\TUD@Class@Parent}{\let\TUD@KOMAoptions\KOMAoptions}
%%%% From File: tudscr-manual.dtx 2019/11/15 03:28:28 f4c331b
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
%%%% From File: tudscr-misc.dtx 2019/10/29 22:57:10 87f6482
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\TUD@Class@Parent}}
\TUDProcessOptions\relax
\PassOptionsToClass{ttfont=roboto}{\TUD@Class@Parent}
\LoadClass{\TUD@Class@Parent}[
  2019/10/24 v2.06f TUD-Script
]
%%%% From File: tudscr-manual.dtx 2019/11/15 03:28:28 f4c331b
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
%  \if@tud@index\else%
    \begingroup%
      \protected@edef\tud@res@a{#2}%
      \@onelevel@sanitize\tud@res@a%
      \wlog{+++++ label #1: \tud@res@a\space on page \thepage}%
      \xifinlistcs{\tud@res@a}{tud@trace@lbl@#1@list}{}{%
        \listcsxadd{tud@trace@lbl@#1@list}{\tud@res@a}%
      }%
    \endgroup%
%  \fi%
}
\newcommand*\tud@trace@lbl@wlog{\relax}
\AfterEndDocument{\tud@trace@lbl@wlog}
\newcommand*\tud@trace@markup[2]{}
% TODO check if index or not, create list
\newcommand*\tracingmarkup{%
  \renewcommand*\tud@trace@markup[2]{%
    \wlog{+++++ markup ##1 on page \thepage^^J##2}%
  }%
}
\@onlypreamble\tracingmarkup
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
      \etex@unexpanded{\@tfor\tud@res@c:=}%
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
\tud@auxlist@register{tud@label@alias}[\detokenize\expandafter]%
\NewDocumentCommand\tudhyperdef{s m d==}{%
  \begingroup%
    \IfBooleanTF{#1}{%
      \raisebox{\tud@hyperdef@skip}[0pt][0pt]{\tud@hyperdef{#2}}%
      \par\nobreak\vskip\dimexpr-\parskip-\baselineskip\relax%
      \@afterindentfalse\@afterheading%
    }{%
      \Hy@raisedlink{\tud@hyperdef{#2}}\ignorespaces%
    }%
    \label{#2}%
    \tud@trace@lbl@created@add{#2}%
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
\newcommand*\tud@hyperdef@skip{3\baselineskip}
\patchcmd{\set@@@@preamble}{%
  \let\phantomsection\relax%
}{%
  \let\phantomsection\relax%
  \renewcommand*\tud@hyperdef@skip{15\baselineskip}%
}{}{\tud@patch@wrn{set@@@@preamble}}
\newcommand*\tudhyper@alias@values[1]{%
  \tud@auxlist@add{tud@label@alias}{#1}%
  \tud@auxlist@ifin{#1}{tud@label@alias}{%
    \Hy@raisedlink{\tud@hyperdef{#1}}\ignorespaces%
    \label{#1}%
    \tud@trace@lbl@created@add{#1\space(alias)}%
  }{}%
}
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
\renewcommand*\fullref[1]{\hyperref[{#1}]{\autoref*{#1}\space\vpageref{#1}}}
\AfterPackage*{hyperref}{\RequirePackage[babel]{microtype}[2013/05/23]}
\TUD@UnwindPackage{hyperref}{\RequirePackage[babel]{microtype}[2013/05/23]}
\newcommand*\tud@lbl@tmp{}
% TODO das kann raus!
\newcommand*\tud@lbl@fmt{%
  \def~{-}%
%  \let\IeC\@firstofone%
%  \def\"##1{##1e}%
%  \def\ss{ss}%
  \def\dots{...}%
  \let\NoCaseChange\@firstofone%
}
\newcommand*\tud@if@lbl@exists[1]{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@if@lbl@@exists{#1}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@if@lbl@@exists{>{\ProcessorCreateLabel}m}{%
  \ifcsundef{r@#1}{%
    \expandafter\@secondoftwo%
  }{%
    \expandafter\@firstoftwo%
  }%
}
\newcommand*\ProcessorCreateLabel[1]{%
  \in@{:}{#1}%
  \ifin@\else%
    \ClassError{tudscrmanual}%
    {Wrong formatted label}{%
      A label has to be given at least with '<bundle>:<markup>'\MessageBreak%
      but \detokenize{#1} was used.%
    }%
  \fi%
  \SplitArgument{2}{:}{#1}%
  \expandafter\Processor@CreateLabel\ProcessedArgument%
}
% TODO \@temp... > tud@res@...
\newcommand*\Processor@CreateLabel[3]{%
  \begingroup%
    \Markup@Gobble%
    \IfValueTF{#3}{%
      \protected@edef\@tempa{#1:#2:#3}%
    }{%
      \tud@attr@get\@tempb{#2}%
      \IfValueTF{#1}{%
        \ifxblank{#1}{%
        % TODO sollte immer gesetzt sein
        \typeout{*======================================== #1:#2:#3}%
          \protected@edef\@tempa{\tud@bdl@dflt:\@tempb:#2}%
        }{%
          \protected@edef\@tempa{#1:\@tempb:#2}%
        }%
      }{%
        % TODO bundle prefix sollte immer gegeben sein
        \typeout{!======================================== #1:#2:#3}%
        \protected@edef\@tempa{\tud@bdl@curr:\@tempb:#2}%
      }%
    }%
    \protected@edef\@tempc{%
      \noexpand\endgroup%
      \def\noexpand\ProcessedArgument{%
        \expandafter\detokenize\expandafter{\@tempa}%
      }%
    }%
  \@tempc%
}
% TODO \relax in #3 > !:...:... für \File etc. bzw. gar kein label?!
\NewDocumentCommand\tud@lbl@get{s m >{\ProcessorCreateLabel}m d++ d==}{%
  % TODO !#4 -> +#4
  \protected@edef#2{#3\IfValueT{#4}{!#4}}%
  \IfValueT{#5}{%
    \begingroup%
      \Markup@Gobble%
      \protected@edef\tud@res@c{#5}%
      \ifxblank{\tud@res@c}{%
        \def\tud@res@a{\endgroup}%
      }{%
        \protected@edef\tud@res@b{#2}%
        \protected@edef\tud@res@c{#2=#5}%
        \IfBooleanF{#1}{%
          \tud@if@lbl@exists{\tud@res@c}{}{\let\tud@res@c\tud@res@b}%
        }%
        \protected@edef\tud@res@a{%
          \endgroup%
          \def\noexpand#2{\tud@res@c}%
        }%
      }%
    \tud@res@a%
  }%
}
% TODO drittes makro \tud@bdl@unknown -> mappen auf alles, was nicht definiert
% TODO search for both macros
\newcommand*\tud@bdl@dflt{\Package{tudscr}}
\newcommand*\tud@bdl@curr{}
\let\tud@bdl@curr\tud@bdl@dflt
% TODO kann vermutlich auch raus
\newcommand*\tud@if@bdl{%
  \ifx\tud@bdl@curr\tud@bdl@dflt%
    \expandafter\@secondoftwo%
  \else%
    \expandafter\@firstoftwo%
  \fi%
}
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
% --> Bundle-Argument pflicht bzw. warnung, wenn nicht? oder dflt lassen und
% direkten link ins handbuch setzen?
% TODO nur gültige Markupbefehle \Class, \Package, \Bundle zulassen
% TODO rename to Separation
\newenvironment{Bundle}[1]{%
  \tud@if@bdl{%
    \ClassError{tudscrmanual}%
      {Nested environment `Bundle'}{%
      It is not possible to nest this environment, when\MessageBreak%
      a cross-label was given before.%
    }%
  }{%
    \in@{,}{#1}%
    \ifin@%
      \ClassError{tudscrmanual}%
      {Multiple values for environment `Bundle'}{%
        Multiple elements are prohibited within the argument.%
      }%
    \else%
      \gdef\tud@bdl@curr{#1}%
      \tud@trace@bdl@add{#1}%
    \fi%
  }%
  \ignorespaces%
}{%
  \global\let\tud@bdl@curr\tud@bdl@dflt%
  \aftergroup\ignorespaces%
}
\NewDocumentCommand\tud@bdl@get{m m r++ r== d() r''}{%
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
      \protected@edef\tud@res@b{#2\IfValueT{#3}{+#3}\IfValueT{#4}{+#4}}%
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
% TODO Stern kann weg
\NewDocumentCommand\tud@bdl@seek{m m r++ r== d() d''}{%
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
% TODO rein?
%  \if@tud@index\else%
    \begingroup%
      \tud@lbl@get\tud@lbl@tmp{#1}%
      \tud@get@crossrefnum\tud@res@a'#2'%
      \ifnum\tud@res@a=\z@\relax%
        \tud@trace@lbl@ignored@add{\tud@lbl@tmp}%
      \else%
        \tud@trace@lbl@missing@add{\tud@lbl@tmp}%
      \fi%
    \endgroup%
%  \fi%
}
% TODO alle \toks@ > \tud@toks@ ?
\newif\if@tud@declare
\newcount\tud@declare@num
\newif\if@tud@openindex
\newcommand*\tud@declaration@list{}
\let\tud@declaration@list\relax
\newcommand*\tud@alias@values{\@nil}
\NewDocumentEnvironment{Declaration}{o m !o !o !d() !D<>{\noexpand\@nil}}{%
  \listeadd\tud@declaration@list{%
    \def\noexpand\tud@alias@values{#6}%
    \etex@unexpanded{#2}%
  }%
  \tud@declare@start[{#1}]{#2}[{#3}][{#4}](#5)%
}{%
  \tud@declare@end{#2}{\printdeclarationlist}%
}
\newif\if@tud@obsolete
\NewDocumentEnvironment{Obsolete}{m o m !o !o !d()}{%
  \@tud@obsoletetrue%
  \ifxblank{#1}{%
    \listadd\tud@declaration@list{%
      \tud@declare@num=\@ne\relax%
      #3%
      \tud@declare@num=\z@\relax%
    }%
    \tud@declare@start{#3}[{#4}][{#5}](#6)%
  }{%
    \listadd\tud@declaration@list{#3}%
    \IfValueTF{#2}{%
      \Changed@At@CreateList{#1!#3}[{#2}]%
    }{%
      \Changed@At@CreateList{#1}[{#3}]%
    }%
    \IfValueTF{#6}{%
      \tud@declare@start{#3}[{#4}][{#5}](#6)%
    }{%
      \toks@{\tud@declare@start{#3}[{#4}][{#5}]}%
      \def\@tempa{\emph{entf\"allt}}%
      % TODO \in@ kann raus, oder? der Split mit \@tempb sollte reichen
      \in@{:}{#1}%
      \ifin@%
        \def\@tempb##1:##2\@nil{%
          \IfArgIsEmpty{##2}{}{%
            \def\@tempa{\seeref{##2'page'}}%
          }%
        }%
        \@tempb#1\@nil%
      \fi%
      \eaddto@hook\toks@{\expandafter(\@tempa)}%
      \the\toks@%
    }%
  }%
  \@tud@obsoletefalse%
}{%
  \tud@declare@end{\@tud@obsoletetrue#3\@tud@obsoletefalse}{\printobsoletelist}%
}
\newcommand*\tud@preset@list{}
\let\tud@preset@list\relax
\newif\if@tud@preset@list
\newcommand*\tud@additional@list{}
\let\tud@additional@list\relax
\newif\if@tud@additional@list
\NewDocumentCommand\tud@declare@start{o m r[] r[] r()}{%
  \Changed@At@CreateList{#1}[{#2}]%
  \IfValueTF{#3}{%
    \@tud@preset@listtrue%
    % TODO was, wenn #3 \PName enthält?
    \def\@tempa{Voreinstellung\IfArgIsEmpty{#3}{}{: \PValue{#3}}}%
    % TODO geht das auch mit \@nil?
    \IfValueT{#4}{%
      \def\@tempb[##1:##2]{##1: \PValue{##2}}%
      \eappto\@tempa{ | \expandonce{\@tempb[#4]}}%
    }%
    \listeadd\tud@preset@list{\expandonce\@tempa}%
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
  \Inline@Declaration[{#2}]{#3}[\IfBooleanTF{#1}{-2}{-1}]%
}
\NewDocumentCommand\Inline@Declaration{o m O{-1}}{%
  \tud@declare@special@start[{#1}]{#2}{#3}%
  \printchangedatlist%
  \tud@declare@special@end{#2}{#3}%
}
\NewDocumentEnvironment{Declaration*}{o m}{%
  \tud@declare@special@start[{#1}]{#2}{2}%
}{%
  \tud@declare@special@end{#2}{2}%
}
\NewDocumentEnvironment{Bundle*}{o m}{%
  \tud@declare@special@start*[{#1}]{#2}{3}%
  \Bundle{#2}%
}{%
  \endBundle%
  \tud@declare@special@end{#2}{3}%
}
\NewDocumentCommand\tud@declare@special@start{s r[] m m}{%
  \tud@declare@num=#4\relax%
  \@tud@declaretrue%
  \IfBooleanTF{#1}{%
    \Changed@At@CreateList{#2}(#3)%
  }{%
    \Changed@At@CreateList{#2}[{#3}]%
  }%
  \@tud@openindextrue#3%
  \@tud@declarefalse%
  \tud@declare@num=\z@\relax%
}
\newcommand*\tud@declare@special@end[2]{%
  \ifx\tud@changedat@list\relax\else%
    \ClassError{tudscrmanual}{\string\printchangedatlist\space is missing}{%
      \string\tud@changedat@list\space is not empty. Did you\MessageBreak%
      forget to print this list with \string\printchangedatlist?%
    }%
  \fi%
  \tud@declare@num=#2\relax%
  \@tud@declaretrue\@tud@openindexfalse#1\@tud@declarefalse%
  \tud@declare@num=\z@\relax%
}
\NewDocumentCommand\printdeclarationlist{!s !d()}{%
  \ifx\tud@declaration@list\relax\else%
    \ifhmode%
      \vskip\medskipamount%
    \else%
      \addpenalty{\@beginparpenalty}%
      \addvspace{\medskipamount}%
    \fi%
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
% TODO rein?
%  \strut%
}
\newcommand*\printobsoletelist{%
  \@tud@obsoletetrue%
  \printdeclarationlist*%
  \@tud@obsoletefalse%
}
\NewDocumentCommand\printchangedatlist{!s !O{\z@}}{%
  \print@changedatlist{#1}{#2}%
}
\newif\if@tud@index
\addtoeachtocfile{\protect\@tud@indextrue}
\newif\if@tud@changelog
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
\newcommand*\Markup@Get@Arguments[2]{%
  \Markup@Split#1{\@secondoftwo}{#2}%
}
\NewDocumentCommand\Markup@Simple@Format{s m D(){\texttt} m O{ic}}{%
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
      \etex@unexpanded{#1}{\tud@res@b}%
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
\newcommand*\ProcessorValue[2]{%
  \begingroup%
    \def\tud@res@a##1=##2=##3\@nil{%
      \IfArgIsEmpty{##2}{%
        \tud@toks@{{##1}=#1=}%
      }{%
        \tud@toks@{{##1}=##2=}%
        \IfValueT{#1}{%
          \ClassError{tudscrmanual}%
            {Two optional arguments for a value given!}%
            {You did specify `##2' as well as `#1' as a value.}%
        }%
      }%
    }%
    \tud@res@a#2==\@nil%
    \protected@edef\tud@res@a{%
      \endgroup%
      \def\noexpand\ProcessedArgument{\the\tud@toks@}%
    }%
  \tud@res@a%
}
% TODO !d() > !D(){???} für \Application, \Distribution, \Engine, \File?
\NewExpandableDocumentCommand\@Application{s m}{#2}
\NewDocumentCommand\Application{s m !d() !d<> !d||}{%
  \Process@Markup{\Application{#2}}<#4>{#1}|#5|%
  \Process@Index{#1}{\Application{#2}}|#5|%
}
\Markup@Simple@Format\Application(\textsbs){Anwendungssoftware}
\NewExpandableDocumentCommand\@Distribution{s m}{#2}
\NewDocumentCommand\Distribution{s m !o !d() !d||}{%
  \tud@toks@{\Process@Markup{\Distribution{#2}}}%
  \IfValueT{#3}{\addto@hook\tud@toks@{[~#3]}}%
  \addto@hook\tud@toks@{{#1}|#5|}%
  \the\tud@toks@%
  \Process@Index{#1}{\Distribution{#2}}|#5|%
}
\Markup@Simple@Format\Distribution(\textsbn){Distribution}
\NewExpandableDocumentCommand\@Engine{s m}{#2}
\NewDocumentCommand\Engine{s m !d() !d||}{%
  \Process@Markup{\Engine{#2}}{#1}|#4|%
  \Process@Index{#1}{\Engine{#2}}|#4|%
}
\Markup@Simple@Format\Engine(\sbnfont\hologoRobust){Textsatzsystem}
\NewExpandableDocumentCommand\@Class{s m}{#2}
\NewDocumentCommand\Class{s m !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Class{#2}}(#3)%
  \else%
    \Process@Markup{\Class{#2}}(#3)'#4'{#1}|#5|%
    \Process@Index{#1}{\Class{#2}}(#3)|#5|%
  \fi%
}
\Markup@Simple@Format\Class(\textsbn){Klasse}
\NewExpandableDocumentCommand\@Package{s m}{#2}
\NewDocumentCommand\Package{s m !d() !d<> !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Package{#2}}(#3)%
  \else%
    \tud@toks@{\Process@Markup{\Package{#2}}(#3)}%
    \IfValueTF{#4}{%
      \addto@hook\tud@toks@{<#4>}%
    }{%
      \addto@hook\tud@toks@{<#2>}%
    }%
    \addto@hook\tud@toks@{'#5'{#1}|#6|}%
    \the\tud@toks@%
    \Process@Index{#1}{\Package{#2}}(#3)|#6|%
  \fi%
}
\Markup@Simple@Format\Package(\textsbn){Paket}
\NewExpandableDocumentCommand\@Option{s m}{#2}
\NewDocumentCommand\Option{s >{\ProcessorValue{#3}}m !d== !d() !d'' !d||}{%
  \Option@Value{#1}#2(#4)'#5'|#6|%
}
\NewDocumentCommand\Option@Value{m m r== r() r'' r||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Option{#2}}=#3=(#4)%
  \else%
    \Process@Markup{\Option{#2}}=#3=(#4)'#5'{#1}|#6|%
    \Process@Index{#1}{\Option{#2}}=#3=(#4)|#6|%
  \fi%
}
\Markup@Simple@Format\Option{Option}[c]
\NewExpandableDocumentCommand\@Environment{s m}{#2}
\NewDocumentCommand\Environment{s m !d++ !o !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Environment{#2}}(#5)%
  \else%
    \Process@Markup{\Environment{#2}}+#3+[{#4}](#5)'#6'{#1}|#7|%
    \Process@Index{#1}{\Environment{#2}}+#3+(#4)|#7|%
  \fi%
}
\Markup@Declare@Format\Environment{%
  \texttt{\bsc{}begin\textbraceleft#1\textbraceright\IfValueT{#3}{#3}}%
  \tabularnewline\texttt{\dots}%
  \tabularnewline\texttt{\bsc{}end\textbraceleft#1\textbraceright}%
}
\Markup@Simple@Format\Environment{Umgebung}
\NewExpandableDocumentCommand\@Macro{s m}{#2}
\NewDocumentCommand\Macro{s m !d++ !o !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Macro{#2}}(#5)%
  \else%
    \Process@Markup{\Macro{#2}}+#3+[{#4}](#5)'#6'{#1}|#7|%
    \Process@Index{#1}{\Macro{#2}}+#3+(#5)|#7|%
  \fi%
}
\Markup@Simple@Format*\Macro{Befehl}[c]
\NewExpandableDocumentCommand\@Key@Value{s m}{#2}
\NewDocumentCommand\Key@Value{s m}{#2}%
\Markup@Simple@Format\Key@Value{Parameter}[c]
\NewExpandableDocumentCommand\@Length{s m}{#2}
\NewDocumentCommand\Length{s m !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Length{#2}}(#3)%
  \else%
    \Process@Markup{\Length{#2}}(#3)'#4'{#1}|#5|%
    \Process@Index{#1}{\Length{#2}}(#3)|#5|%
  \fi%
}
% TODO ndic?
\Markup@Simple@Format*\Length{L\"ange}[dic]
\NewExpandableDocumentCommand\@Counter{s m}{#2}
\NewDocumentCommand\Counter{s m !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Counter{#2}}(#3)%
  \else%
    \Process@Markup{\Counter{#2}}(#3)'#4'{#1}|#5|%
    \Process@Index{#1}{\Counter{#2}}(#3)|#5|%
  \fi%
}
% TODO ndic?
\Markup@Simple@Format\Counter{Z\"ahler}[dic]
% TODO RAUS!
\NewDocumentCommand\Key{s m m !d== !d() !d'' !d||}{%
%  \ClassWarning{tudscrmanual}{Set new markup!}%
  \begingroup%
%    \IfValueT{#4}{%
%      \ClassError{tudscrmanual}%
%        {Wrong usage of optional argument for value}%
%        {There are two optional arguments for a value given!}%
%    }%
    \begingroup%
      \Markup@Get@Name\tud@res@b{#2}%
      \Markup@Gobble%
      \edef\tud@res@c{#2}%
      \edef\tud@res@b{%
        \endgroup%
        \tud@toks@{%
          \expandafter\noexpand\csname\tud@res@b\endcsname%
          \IfBooleanT{#1}{*}{\tud@res@c}%
        }%
      }%
    \tud@res@b%
    \addto@hook\tud@toks@{+#3\IfValueT{#4}{=#4}+(#5)'#6'|#7|}%
    \edef\tud@res@a{%
      \endgroup%
      \the\tud@toks@%
    }%
  \tud@res@a%
}
\NewExpandableDocumentCommand\@Term{s m}{#2}
\NewDocumentCommand\Term{s m !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Term{#2}}(#3)%
  \else%
    \Process@Markup{\Term{#2}}(#3)'#4'{#1}|#5|%
    \Process@Index{#1}{\Term{#2}}(#3)|#5|%
  \fi%
}
% TODO ndic?
\Markup@Simple@Format*\Term{Bezeichner}[dc]
\NewExpandableDocumentCommand\@PageStyle{s m}{#2}
\NewDocumentCommand\PageStyle{s m !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\PageStyle{#2}}(#3)%
  \else%
    \Process@Markup{\PageStyle{#2}}(#3)'#4'{#1}|#5|%
    \Process@Index{#1}{\PageStyle{#2}}(#3)|#5|%
  \fi%
}
% TODO ndic?
\Markup@Simple@Format\PageStyle{Seitenstil}[dic]
\NewExpandableDocumentCommand\@Font{s m}{#2}
\NewDocumentCommand\Font{s m !d() !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Font{#2}}(#3)%
  \else%
    \Process@Markup{\Font{#2}}(#3)'#4'{#1}|#5|%
    \Process@Index{#1}{\Font{#2}}(#3)|#5|%
  \fi%
}
% TODO ndic?
\Markup@Simple@Format\Font{Schriftelement}[dic]
\NewExpandableDocumentCommand\@Color{s m}{#2}
\NewDocumentCommand\Color{s m !o !D(){\Package{tudscrcolor}} !d'' !d||}{%
  \if@tud@changedat%
    \Process@ChangedAt{\Color{#2}}(#4)%
  \else%
    \Process@Markup{\Color{#2}}[{#3}](#4)'#5'{#1}|#6|%
    \Process@Index{#1}{\Color{#2}}(#4)|#6|%
  \fi%
}
\Markup@Declare@Format\Color{\texttt{#1\IfValueT{#3}{\,(#3)}}}
\Markup@Simple@Format\Color{Farbe}[dic]
\newcommand*\ProcessorUnderscore[1]{%
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
\NewDocumentCommand\File{s >{\ProcessorUnderscore}m !d() !d||}{%
  \Process@Markup{\File{#2}}{#1}|#4|%
  \Process@Index{#1}{\File{#2}}|#4|%
}
\Markup@Simple@Format\File(\textsbn){Datei}
\NewDocumentCommand\Path{>{\ProcessorUnderscore}m}{\mbox{\texttt{#1}}}
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
\newrobustcmd*\PSet{\PSetName{Einstellung}}
% TODO rename to \PSetBool?!
\newrobustcmd*\PBoolean{\PSetName{Ein-Aus-Wert}}
\newrobustcmd*\PSetName[1]{\PName{#1}}
\newrobustcmd*\Parameter[1]{%
  \mbox{\texttt{\textbraceleft}\PName{#1}\texttt{\textbraceright}}%
}
\newrobustcmd*\OParameter[1]{\mbox{\texttt{[}\PName{#1}\texttt{]}}}
\newrobustcmd*\LParameter{\mbox{\texttt{[}\PName{Parameterliste}\texttt{]}}}
\newrobustcmd*\OLParameter[1]{%
  \mbox{\texttt{[}\PName{#1}\textOR\PName{Parameterliste}\texttt{]}}%
}
\newrobustcmd*\PParameter[1]{\mbox{\texttt{\textbraceleft#1\textbraceright}}}
\newrobustcmd*\POParameter[1]{\mbox{\texttt{[{#1}]}}}
\newrobustcmd*\textOR{\PValue{\,\textbardbl\,}}
% TODO das ist großer murks, \PValueName muss weg!
\newcommand*\tud@doifPValue[3][]{%
  \IfValueT{#2}{%
    \begingroup%
      \let\PValue\@firstofone%
      \let\PName\@gobble%
      \let\PValueName\@firstofone%
      \let\PSet\@empty%
      \let\PBoolean\@empty%
      \let\PSetName\@gobble%
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
  \let\Key@Value\@Key@Value%
  \let\Length\@Length%
  \let\Counter\@Counter%
  \let\Term\@Term%
  \let\PageStyle\@PageStyle%
  \let\Font\@Font%
  \let\Color\@Color%
  \IfBooleanF{#1}{%
    \let\PValue\@firstofone%
    \let\PName\@firstofone%
    \let\PValueName\@firstofone%
    \let\PSet\@empty%
    \let\PBoolean\@empty%
    \let\PSetName\@gobble%
    \let\Parameter\@firstofone%
    \let\OParameter\@firstofone%
    \let\LParameter\@empty%
    \let\OLParameter\@firstofone%
    \let\PParameter\@firstofone%
    \let\POParameter\@firstofone%
    \let\textOR\@empty%
    \let\hologo\@firstofone%
    \let\hologoRobust\@firstofone%
    \def\_{-}%
%    \def~{-}%
    \protected\def~{~}%
    \def\dots{...}%
    \let\emph\@firstofone%
    \let\NoCaseChange\@firstofone%
  }%
}
\AfterPackage*{hyperref}{%
  \expandafter\pdfstringdefDisableCommands\expandafter{\Markup@Gobble}%
}
\newcommand*\ProcessorBundle[1]{%
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
% TODO kann auch raus!
\newcommand*\Markup@Suppress{\let\Process@Markup\Markup@@Suppress}
\NewDocumentCommand\Markup@@Suppress{m d++ d== o d() d<> d''}{}
\NewDocumentCommand\Process@Markup{%
  m >{\ProcessorValue{#3}}d++ d== o >{\ProcessorBundle}d() d<> d'' m r||%
}{%
  \begingroup%
    \tud@toks@{\Process@@Markup{#1}}%
    \IfValueTF{#2}{%
      \addto@hook\tud@toks@{#2}%
    }{%
      \addto@hook\tud@toks@{{#2}=#3=}%
    }%
    \addto@hook\tud@toks@{[{#4}](#5)<#6>'#7'{#8}|#9|}%
    \edef\tud@res@a{%
      \endgroup%
      \the\tud@toks@%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Process@@Markup{m m r== r[] r() r<> r'' m r||}{%
  \Process@@@Markup{#1}{#2}=#3=[{#4}](#5)<#6>'#7'%
%  \Process@New@Index{#1}{#2}=#3=[{#4}](#5)<#6>'#7'{#8}|#9|%
}
\NewDocumentCommand\Process@@@Markup{m m r== r[] r() r<> r''}{%
  \IfValueT{#6}{\tud@trace@bdl@add{#6}}%
  \if@tud@declare%
    \tud@toks@{\Process@@@Markup@Declare}%
  \else%
    \tud@toks@{\Process@@@Markup@Inline}%
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
      \tud@trace@markup{declare}{\the\tud@toks@}%
    \else%
      \tud@toks@{\relax}%
    \fi%
  \else%
    \IfValueT{#7}{\addto@hook\tud@toks@{'#7'}}%
    \tud@trace@markup{output}{\the\tud@toks@}%
  \fi%
  \the\tud@toks@%
}
\NewDocumentCommand\Process@@@Markup@Declare{%
  m r++ r== r[] R(){\tud@bdl@curr} d<>%
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
%        \def\@tempa##1:##2:##3\@nil{\tudhyperdef*{##3:##2:##3}}%
%        \expandafter\@tempa\tud@lbl@tmp\@nil%
      \else% <0
        \tudhyperdef{\tud@lbl@tmp}=#3=%
      \fi%
    }%
  \endgroup%
  \ifnum\tud@declare@num<\tw@\relax%
    \Markup@Output{#1}+#2+=#3=[{#4}]<#6>%
  \fi%
}
\NewDocumentCommand\Process@@@Markup@Inline{m r++ r== r[] r() d<> d''}{%
  \begingroup%
%    \typeout{!!!!!!!!2 \detokenize{#1=#2=[{#3}]+#4+}}%
    \tud@toks@{\Process@@@Markup@@Inline{#1}+#2+=#3=[{#4}]}%
    \tud@bdl@get\tud@res@a{#1}+#2+=#3=(#5)'#7'%
    \eaddto@hook\tud@toks@{\expandafter(\tud@res@a)}%
    \addto@hook\tud@toks@{<#6>'#7'}%
    \edef\tud@res@a{%
      \endgroup%
      \the\tud@toks@%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Process@@@Markup@@Inline{m r++ r== r[] r() r<> r''}{%
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
              A \IfValueTF{#3}{specific}{general} value for \detokenize{#5} 
              with%
              \MessageBreak #1\IfValueT{#3}{=#3}\MessageBreak%
              was given, but label \tud@res@a\MessageBreak%
              was not found%
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
          \tud@trace@lbl@unused@add{\tud@lbl@tmp}%
        \else%
          \tud@trace@lbl@matched@add{\tud@lbl@tmp}%
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
\newif\if@tud@disposition
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
\NewDocumentCommand\Markup@Output{m r++ r== r[] d<>}{%
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
    \Markup@Gobble*%
    \protected@edef\tud@res@a{%
      \noexpand\Markup@@Output{\IfValueTF{#2}{#2}{#1}}\etex@unexpanded{=#3=[{#4}]}%
    }%
    \IfValueT{#5}{%
      \protected@edef\tud@res@a{%
        \noexpand\href{#5}{\expandonce\tud@res@a}%
      }%
      \tud@trace@lbl@url@add{#5}%
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
    \tud@nonchangecase\Distribution%
    \tud@nonchangecase\Engine%
    \tud@nonchangecase\File%
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
\newcommand*\tud@xdy@default{}
\edef\tud@xdy@default{%
  -M \@currname-ind.xdy -L german-din%
  \etex@unexpanded{\ifundef{\inputencodingname}{}{ -C \inputencodingname}}%
}%
\NewDocumentCommand\makexdyindex{s D(){\tud@xdy@default} o m !o}{%
  \let\tud@res@c\@empty%
  \IfBooleanT{#1}{%
    \IfValueTF{#5}{%
      \makeindex[name={#5-declare}]%
      \edef\tud@res@b{\jobname-#5-declare.idx}%
      \IfFileExists{\tud@res@b}{%
        \edef\tud@res@c{-o \jobname-#5.ind \tud@res@b}%
      }{%
        \ClassWarningNoLine{tudscrmanual}{File \tud@res@b\space not found}%
      }%
    }{%
      \ClassWarningNoLine{tudscrmanual}{%
        It's not possible to create a special declaration main index%
      }%
    }%
  }%
  \protected@edef\tud@res@a{%
    title={#4},%
    columnsep=\noexpand\f@size\noexpand\p@,%
    \IfValueTF{#5}{%
      name={#5},%
      options={#2\space-t \jobname-#5.xlg \tud@res@c},%
    }{%
      options={#2\space-t \jobname.xlg},%
    }%
    \IfValueT{#3}{#3}%
  }%
  \expandafter\makeindex\expandafter[\tud@res@a]%
}
\AtEndPreamble{%
  \makexdyindex{Allgemeiner Index}%
  \makexdyindex*{Klassen- und Paketoptionen}[options]%
  \makexdyindex*{Befehle und Umgebungen mit zugeh\"origen Parametern}[macros]%
  \makexdyindex*{Sprachabh\"angige Bezeichner}[terms]%
  \makexdyindex*{Seitenstile, Schriftelemente und Farben}[elements]%
  \makexdyindex{L\"angen und Z\"ahler}[misc]%
  \makexdyindex*{Klassen, Pakete und Dateien}[files]%
  \makexdyindex[columns=1]{\"Anderungsliste}[changelog]%
  \undef\makexdyindex%
  \undef\tud@xdy@default%
}
\newcommand*\tud@idx@key{}
\newcommand*\tud@idx@fmt{}
\newcommand*\tud@idx@val{}
\newcommand*\tud@idx@bdl{}
% TODO !!!!!!!!!!!! das tut richtig weh, grauenhafter Quelltext! use bdl@seek?
\NewDocumentCommand\tud@idx@get{s m d== d() d||}{%
  \begingroup%
    \begingroup%
      \let\tud@idx@val\@empty%
      \in@{\Key}{#2}%
%      \typeout{++++++++++ \detokenize{#2}}%
      \ifin@%
        \Markup@Suppress%
        \let\Key\@firstoftwo%
        #2%
        \let\@tempa\@empty%
        \IfBooleanT{#1}{\def\@tempa{: Parameter angepasst}}%
        \def\tud@idx@val{%
          \expandonce\tud@idx@key\expandonce\@tempa{}@%
          \expandonce\tud@idx@fmt\expandonce\@tempa{}!%
        }%
      \fi%
      \Markup@Gobble%
      \let\Key\@secondoftwo%
      \protected@edef\tud@reserved{%
        \endgroup%
        \def\noexpand\tud@idx@key{#2}%
        \def\noexpand\tud@idx@val{\tud@idx@val}%
      }%
%    \typeout{!!!!! \meaning\tud@reserved}%
    \tud@reserved%
    \def\tud@idx@fmt{#2}%
    \tud@@replace\tud@idx@key{@}{"@}%
    \tud@@replace\tud@idx@fmt{@}{"@}%
    % TODO \tud@if@lbl@exists nutzen, um ggf. 'none' zu setzen
    % TODO noch sinnvoll?
    \let\tud@idx@bdl\tud@bdl@dflt%
    \IfValueTF{#4}{%
      \ifxblank{#4}{}{\def\tud@idx@bdl{#4}}%
    }{%
      % TODO noch sinnvoll?
      \tud@if@bdl{%
        \tud@if@lbl@exists{\tud@bdl@curr:#2}{%
          \edef\tud@idx@bdl{\expandonce\tud@bdl@curr}%
          \def\tud@reserved{#2}%
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
      \in@{\Key}{#2}\ifin@\@tempswafalse\fi%
      \IfBooleanT{#1}{\@tempswafalse}%
      \edef\@tempb{(\expandonce\tud@idx@bdl)}%
    \fi%
    \let\@tempc\@tempb%
    % TODO über \Markup@Get@Name suffix suchen und an \@tempa hängen?!
    \begingroup%
      \Markup@Get@Name\tud@res@a{#2}%
      \IfBooleanTF{#1}{%
        \Markup@Suffix@@Select[\def\tud@res@c]{c}{\tud@res@a}%
      }{%
        \Markup@Suffix@@Select[\def\tud@res@c]{i}{\tud@res@a}%
      }%
      \let\suffix\@firstofone%
      \protected@edef\tud@res@b{%
        \endgroup%
        \ifx\tud@res@c\@empty\else%
          \noexpand\appto\noexpand\@tempa{\space\tud@res@c}%
          \noexpand\appto\noexpand\@tempb{\noexpand\suffix{\tud@res@c}}%
        \fi%
      }%
    \tud@res@b%
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
    \IfValueT{#5}{%
      \ifstr{#5}{declare}{\@tempswatrue}{}%
      % TODO noch sinnvoll?
      \ifstr{#5}{default}{\typeout{??? \the\inputlineno}\@tempswatrue}{}%
    }%
    \if@tempswa%
      \protected@eappto\tud@idx@key{\expandonce\@tempa}%
      % TODO \tud@doifPValue raus
      \tud@doifPValue{#3}{\noexpand\appto\noexpand\tud@idx@key{=#3}}%
      \protected@eappto\tud@idx@fmt{\IfValueT{#3}{=#3=}\expandonce\@tempb}%
    \else%
      % TODO \tud@doifPValue raus
      \tud@doifPValue{#3}{\noexpand\@tempswatrue}%
      \if@tempswa%
        \eappto\tud@idx@val{%
          \expandonce\tud@idx@key\expandonce\@tempa{}@%
          \expandonce\tud@idx@fmt\expandonce\@tempb{}!%
        }%
        \appto\tud@idx@key{=#3}%
        \appto\tud@idx@fmt{=#3=}%
        \protected@eappto\tud@idx@fmt{\expandonce\@tempc}%
      \else%
        \protected@eappto\tud@idx@key{\expandonce\@tempa}%
        \protected@eappto\tud@idx@fmt{\expandonce\@tempb}%
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
% TODO RAUS!
\NewDocumentCommand\tud@idx@bdl@get{m m r++ r== d()}{%
  \begingroup%
    \def\tud@res@a{#5}%
    \IfValueF{#5}{%
      \tud@if@bdl{%
        % TODO alle Varianten sollten mit \tud@lbl@seek erschlagen werden
        % TODO wohl eher nicht die Sternversion nutzen
        \tud@lbl@get\tud@lbl@tmp{\tud@bdl@curr:#2}+#3+=#4=%
        \tud@if@lbl@exists{\tud@lbl@tmp}{%
          \let\tud@res@a\tud@bdl@curr%
        }{%
          \tud@lbl@get\tud@lbl@tmp{\tud@bdl@dflt:#2}+#3+=#4=%
          \tud@if@lbl@exists{\tud@lbl@tmp}{%
            \let\tud@res@a\tud@bdl@dflt%
          }{%
            \Markup@Gobble%
            \edef\tud@res@b{\tud@bdl@curr}%
            \ifstrstart{\tud@res@b}{\tud@bdl@dflt}{%
              \let\tud@res@a\tud@bdl@dflt%
            }{%
              \let\tud@res@a\tud@bdl@curr%
            }%
          }%
        }%
      }{}%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand#1{\expandonce\tud@res@a}%
    }%
  \tud@res@a%
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
\NewDocumentCommand\Process@New@Index{m m r== r[] r() r<> r'' m r||}{%
  \ifboolexpr{%
    bool {@tud@index} or bool {@tud@obsolete}%
  }{}{%
    \if@tud@declare%
      \if@tud@openindex%
        \IfBooleanT{#8}{%
          \Markup@Get@Name\@tempa{#1}%
          \ClassWarning{tudscrmanual}{%
            Using \@backslashchar\@tempa* (starred version)\MessageBreak%
            within a declaration is inept%
          }%
        }%
        \IfValueT{#9}{%
          \ClassWarning{tudscrmanual}{%
            It is not possible to use any indexing format\MessageBreak%
            like |#9| within a declaration%
          }%
        }%
      \fi%
    \fi%
    \IfBooleanTF{#8}{%
      \IfValueT{#9}{%
        \Markup@Get@Name\@tempa{#1}%
        \ClassWarning{tudscrmanual}{%
          Using \@backslashchar\@tempa* (starred version)\MessageBreak%
          means, no index entry is created. The optional\MessageBreak%
          argument |#9| is ignored%
        }%
      }%
    }{%
      \begingroup%
%      \endgraf\detokenize{#1/#2/#3/#5/#9}
      \IfValueTF{#5}{%
        \def\tud@res@a{#5}%
      }{%
        \tud@bdl@seek\tud@res@a{#1}+#2+=#3=%
      }%
      \@for\tud@res@a:=\tud@res@a\do{%
        \tud@toks@{\Process@New@@Index{#1}+#2+=#3=}%
        \eaddto@hook\tud@toks@{\expandafter(\tud@res@a)}%
        \addto@hook\tud@toks@{|#9|}%
        \the\tud@toks@%
      }%
      \endgroup%
    }%
  }%
}
\NewDocumentCommand\Process@New@@Index{m r++ r== r() r||}{%
  \tud@idx@New@get{#1}+#2+=#3=(#4)%
%  \par\meaning\tud@idx@val?
%  \if@tud@declare%
%    \ifnum\tud@declare@num<\m@ne\relax%
%      \tud@idx@New@get{#1}=#2=(#3)|!|%
%    \else%
%      \tud@idx@New@get{#1}=#2=(#3)|declare|%
%    \fi%
%  \else%
%    \tud@idx@New@get{#1}=#2=(#3)|#4|%
%  \fi%
  \tud@attr@get*\tud@lbl@tmp{#1}%
  \let\tud@idx@val\@empty%
  \if@tud@declare%
    \appto\tud@lbl@tmp{-declare}%
    \if@tud@openindex%
      \appto\tud@idx@val{|(declare}%
    \else%
      \appto\tud@idx@val{|declare)}%
    \fi%
  \else%
    \IfValueT{#5}{%
      \ifstr{#5}{declare}{%
        \appto\tud@lbl@tmp{-declare}%
        \appto\tud@idx@val{|declare}%
      }{%
        \appto\tud@idx@val{|#5}%
      }%
    }%
  \fi%
  \index[\tud@lbl@tmp]{\tud@idx@entry@a\tud@idx@val}%
}
\newcommand*\tud@idx@entry@a{}
\newcommand*\tud@idx@entry@b{}
\newcommand*\tud@idx@entry@c{}
\newcommand*\tud@idx@suffix{}
\newcommand*\tud@idx@format@entry[1]{%
  \begingroup%
    \protected@edef\tud@res@a{#1}%
    \Markup@Gobble%
    \def\suffix##1{\space##1}%
    \def\tud@res@b##1(##2)##3()##4\@nil{%
      \protected@edef\tud@res@c{##1##3}%
      \IfArgIsEmpty{##2}{%
        \let\tud@res@b\@empty%
      }{%
        \def\tud@res@b{\suffix{##2}}%
        \protected@eappto\tud@res@c{\space##2}%
      }%
    }%
    \expandafter\tud@res@b\tud@res@a()()\@nil%
    \tud@@replace\tud@res@a{@}{"@}%
    \tud@@replace\tud@res@c{@}{"@}%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand#1{%
        \expandonce\tud@res@c @\expandonce\tud@res@a\expandonce\tud@res@b%
      }%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@idx@New@get{s m r++ r== r()}{%
  \begingroup%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    \@tud@res@swatrue%
%    \if@tud@declare\if@tud@openindex\else\@tud@res@swafalse\fi\fi%
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    \Markup@Get@Name\tud@res@a{#2}%
    \Markup@Suffix@@Select[\protected@edef\tud@idx@suffix]{i}{\tud@res@a}%
    \let\tud@res@a\@empty%
    \IfValueT{#5}{%
      % TODO überarbeiten!!! \tud@bdl@dflt erst in \tud@idx@format@entry entf.
      \def\tud@res@a{#5}%
      \ifx\tud@res@a\tud@bdl@dflt%
        \let\tud@res@a\@empty%
      \fi%
    }%
    % TODO Makro, um subentry zu identifizieren
    \let\tud@res@b\@empty%
    \IfValueF{#3}{%
      \IfValueT{#4}{%
        \begingroup%
          \Markup@Gobble%
          \protected@edef\tud@res@b{#4}%
          \edef\tud@res@b{%
            \endgroup%
            \ifx\tud@res@b\@empty%
              \etex@unexpanded{\def\tud@res@b{=#4=}}%
            \fi%
          }%
        \tud@res@b%
      }%
    }%
    \protected@edef\tud@idx@entry@a{%
      #2\tud@res@b%
      \ifx\tud@res@a\@empty\else(\tud@res@a)\fi%
      \tud@idx@suffix%
    }%
    \tud@idx@format@entry\tud@idx@entry@a%
    \IfValueT{#3}{%
      \protected@edef\tud@idx@entry@b{%
        #2+#3+\IfValueT{#4}{=#4=}%
        \ifx\tud@res@a\@empty\else(\tud@res@a)\fi%
%        \tud@idx@suffix%
      }%
      \tud@idx@format@entry\tud@idx@entry@b%
    }%
    \let\emph\@firstofone%
    \ifx\tud@idx@entry@b\@empty\else%
      \eappto\tud@idx@entry@a{!\expandonce\tud@idx@entry@b}%
    \fi%
    \protected@edef\tud@res@a{%
      \endgroup%
      \def\noexpand\tud@idx@entry@a{\tud@idx@entry@a}%
%      \def\noexpand\tud@idx@entry@b{\tud@idx@entry@b}%
%      \def\noexpand\tud@idx@entry@c{\tud@idx@entry@c}%
    }%
  \tud@res@a%
}
% TODO #5 abfangen, wenn -NoValue- und if@tud@bdl
% TODO mehrfache Einträge in #5 ermöglichen (jeweils separater eintrag)
\NewDocumentCommand\Process@Index{m m d++ d== d() d||}{%
  \ifboolexpr{%
    bool {@tud@index} or bool {@tud@obsolete}%
  }{}{%
    \IfBooleanTF{#1}{%
      \IfValueT{#6}{%
        \ClassWarning{tudscrmanual}%
        {%
          Using the starred version of\MessageBreak%
          #2\MessageBreak%
          means, no index entry is created. The optional\MessageBreak%
          argument |#6| is ignored%
        }%
      }%
    }{%
      \IfValueTF{#5}{%
        \def\tud@res@b{#5}%
      }{%
        \tud@bdl@seek\tud@res@b{#2}+#3+=#4=%
      }%
      % TODO komplett raus? >{\ProcessorBundle}d()
      \tud@idx@bdl@get\tud@res@a{#2}+#3+=#4=(#5)%
      % TODO hier gehts weiter
      \ifx\tud@res@a\tud@res@b\else%
        \@tempswatrue%
        \expandafter\IfValueF\expandafter{\tud@res@a}{%
          \ifx\tud@res@b\tud@bdl@dflt%
            \@tempswafalse%
          \fi%
        }%
        \if@tempswa%
%          \typeout{!!!!!!!!!!!! #2 (#5)}%
%          \typeout{idx@get: \tud@res@a}%
%          \typeout{bdl@seek: \tud@res@b}%
        \fi%
      \fi%
      \tud@toks@{\Process@@Index{#2}=#4=}%
%      \eaddto@hook\tud@toks@{\expandafter(\tud@res@a)}%
      \eaddto@hook\tud@toks@{\expandafter(\tud@res@b)}%
      \addto@hook\tud@toks@{|#6|}%
      \the\tud@toks@%
    }%
  }%
}
\NewDocumentCommand\Process@@Index{m r== r() r||}{%
  \if@tud@declare%
    \ifnum\tud@declare@num<\m@ne\relax%
      \tud@idx@get{#1}=#2=(#3)|!|%
    \else%
      \tud@idx@get{#1}=#2=(#3)|declare|%
    \fi%
  \else%
    \tud@idx@get{#1}=#2=(#3)|#4|%
  \fi%
  \tud@attr@get*\tud@lbl@tmp{#1}%
  \if@tud@declare%
    \if@tud@openindex%
      \IfValueT{#4}{%
        \ClassWarning{tudscrmanual}{%
          It is not possible to use any indexing format\MessageBreak%
          like |#4| within the arguments of the\MessageBreak%
          environments `Declaration' or `Declaration*'%
        }%
      }%
      \index[\tud@lbl@tmp-declare]{%
        \tud@idx@val\tud@idx@key @\tud@idx@fmt|(declare%
      }%
    \else%
      \index[\tud@lbl@tmp-declare]{\tud@idx@val\tud@idx@key|declare)}%
    \fi%
  \else%
    \IfValueT{#4}{%
      \ifstr{#4}{declare}{%
        \appto\tud@lbl@tmp{-declare}%
        \appto\tud@idx@fmt{|declare}%
      }{%
        \appto\tud@idx@fmt{|#4}%
      }%
    }%
    \index[\tud@lbl@tmp]{\tud@idx@val\tud@idx@key @\tud@idx@fmt}%
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
% TODO in tudscr-base
\newcommand*\tud@extract@box@a{}
\newcommand*\tud@extract@box@b{}
\newcommand*\tud@extract@box[2]{%
  \begingroup%
    \setbox\z@\hbox\bgroup%
      #1%
      \renewcommand\tud@extract@box@a{\egroup\endgroup}%
      \@for\tud@extract@box@b:=\etex@unexpanded{#2}\do{%
        \eappto\tud@extract@box@a{%
          \def\expandonce\tud@extract@box@b{%
            \expandafter\expandonce\tud@extract@box@b%
          }%
        }%
      }%
  \tud@extract@box@a%
}
% TODO überprüfen und Makronamen anpassen
\NewDocumentCommand\SeeRef{s m m}{%
  \tud@extract@box{%
%    \protected\def~{~}%
    \let\tud@idx@fmt\relax%
    #3%
    \ifx\tud@idx@fmt\relax%
      \def\tud@res@a{#3}%
      \def\tud@res@c{#3}%
    \else%
      \protected@edef\tud@res@c{\tud@idx@fmt}%
      \let\suffix\@gobble%
      \protected@edef\tud@res@a{\tud@idx@val\tud@idx@key @\tud@idx@fmt}%
    \fi%
  }{\tud@res@a,\tud@res@c}%
  \IfBooleanTF{#1}{\def\tud@res@b{seeunverified}}{\def\tud@res@b{see}}%
  \index{#2!\tud@res@a|\tud@res@b{\tud@res@c}}%
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
      Dies sind die von \TUDScript definierten, sprachabh\"angigen Bezeichner. %
      Informationen zur Verwendung sowie den Anpassungsm\"oglichkeiten sind in %
      \autoref{sec:localization} zu finden.%
    )%
    \tud@print@index[elements]%
    \tud@print@index[misc]%
    \tud@print@index[files]%
  \endgroup%
}
\newcommand*\tud@idx@skip{%
  \ifnum\imki@columns>\@ne\relax\vspace{-\multicolsep}\fi%
}
\NewDocumentCommand\tud@print@index{o +d()}{%
  \pagebreak[3]%
  \IfValueTF{#2}{%
    \indexprologue{%
      \tudhyperdef*{idx:\IfValueTF{#1}{#1}{\imki@jobname}}%
      #2%
      \tud@idx@skip%
    }%
  }{%
    \indexprologue[\tud@idx@skip]{%
      \tudhyperdef*{idx:\IfValueTF{#1}{#1}{\imki@jobname}}%
    }%
  }%
  \IfValueTF{#1}{\printindex[{#1}]}{\printindex}%
  \ifnum\imki@columns>\@ne\relax\vspace{-\multicolsep}\fi%
}
\newif\if@tud@changedat
% TODO mehrfache Einträge in #4 ermöglichen?
\NewDocumentCommand\Process@ChangedAt{m d== >{\ProcessorBundle}r()}{%
  \tud@idx@get*{#1}=#2=(#3)%
}
\newlength\changedatskip
% TODO wie mit (...) umgehen? #3 ist spezialfall, falls nicht innerhalb von []
% TODO #3 abfangen, wenn -NoValue- und if@tud@bdl
% TODO mehrfache Einträge in #3 ermöglichen?
\NewDocumentCommand\ChangedAt{s o d() m !O{\changedatskip}}{%
  \Changed@At@CreateList{#4}[{#2}](#3)%
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
\NewDocumentCommand\Changed@At@CreateList{m o d()}{%
  \IfValueT{#1}{\forssvlist{\Changed@At@@CreateList[{#2}](#3)}{#1}}%
}
\NewDocumentCommand\Changed@At@@CreateList{r[] r() >{\SplitArgument{1}{:}}m}{%
  \Changed@At@@@CreateList[{#1}](#2)#3%
}
\NewDocumentCommand\Changed@At@@@CreateList{%
  r[] r() >{\SplitArgument{1}{!}}m m%
}{%
  \Changed@At@@@@CreateList[{#1}](#2)#3{#4}%
}
% TODO Reihenfolge der Argumente anpassen?
% TODO >{\ProcessorBundle}R(){\tud@bdl@curr} sinnvoll?
\NewDocumentCommand\Changed@At@@@@CreateList{%
  r[] >{\ProcessorBundle}R(){\tud@bdl@curr} m m m%
}{%
  \def\tud@idx@fmt{#2}%
  \ifx\tud@idx@fmt\tud@bdl@dflt%
    \let\tud@idx@fmt\@empty%
  \else%
    \tud@extract@box{%
      \let\tud@idx@fmt\relax%
      % TODO direkt mit idx@get arbeiten?
      \@tud@changedattrue#2\@tud@changedatfalse%
      \ifx\tud@idx@fmt\relax%
        \let\tud@idx@fmt\@empty%
      \fi%
    }{\tud@idx@fmt}%
  \fi%
  \IfValueTF{#1}{%
    \toks@{#3!Implementierung }%
    \eaddto@hook\toks@{\tud@idx@fmt}%
    \addto@hook\toks@{!#1!}%
    \IfValueT{#4}{\addto@hook\toks@{#4}}%
    \addto@hook\toks@{!}%
    \if@tud@obsolete\else%
      \IfValueT{#5}{\addto@hook\toks@{#5}}%
    \fi%
  }{%
    \toks@{#3!Allgemein }%
    \ifx\tud@idx@fmt\@empty%
      \addto@hook\toks@{!}%
      \addto@hook\toks@{#5}%
    \else%
      \IfValueTF{#5}{%
        \eaddto@hook\toks@{\tud@idx@fmt}%
        \addto@hook\toks@{!}%
        \addto@hook\toks@{#5}%
      }{%
        \if@tud@declare%
          \addto@hook\toks@{!}%
          \eaddto@hook\toks@{\tud@idx@fmt:\space}%
          \addto@hook\toks@{\emph{neu}}%
        \fi%
      }%
    \fi%
    \IfValueT{#4}{%
      \ClassError{tudscrmanual}{Using !#4 isn't allowed for a change notice}{%
        At least, it has to be implemented!%
      }%
    }%
  }%
  \listeadd\tud@changedat@list{\the\toks@}%
}
\newcommand*\PrintChangelog{%
  \begingroup%
    \@tud@indextrue%
    \@tud@changelogtrue%
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
        \addsec[{##1}]{\TUDScript \@tempb{##1}}%
        \tudhyperdef*{idx:changelog:##1}%
        \def\@tempa{\indexname: \TUDScript \@tempb{##1}}%
        \@mkboth{\@tempa}{\@tempa}%
      }%
    }{}{\tud@patch@wrn{theindex}}%
    \clearpage%
    \def\imki@indexlevel{\addchap}%
    \tud@print@index[changelog]%
  \endgroup%
}
\newcommand*\print@changedatlist[2]{%
  \ifx\tud@changedat@list\relax\else%
    \begingroup%
      \let\tud@res@a\@empty%
      \def\tud@res@b##1!##2\@nil{%
        \ifinlist{##1}{\tud@res@a}{}{\listadd\tud@res@a{##1}}%
        \Changed@At@CreateEntry{##1!##2}%
      }%
      \def\tud@res@c##1{\tud@res@b##1\@nil}%
      \forlistloop\tud@res@c{\tud@changedat@list}%
      \global\let\tud@changedat@list\relax%
      \IfBooleanF{#1}{%
        \tud@list@sort\tud@res@a%
        \let\tud@res@b\@empty%
        \def\tud@res@c##1{%
          \appto\tud@res@b{%
            \ignorespaces%
            \tudhyperref{idx:changelog:##1}{##1}%
            \tabularnewline%
          }%
        }%
        \forlistloop\tud@res@c{\tud@res@a}%
        \strut%
        \marginnote{%
          \begin{tabular}{|l|}%
            \hline%
            \tud@res@b%
            \hline%
          \end{tabular}%
        }[{#2}]%
        \aftergroup\ignorespaces%
      }%
    \endgroup%
  \fi%
}
\NewDocumentCommand\Changed@At@CreateEntry{>{\SplitArgument{4}{!}}m}{%
  \Changed@At@@CreateEntry#1%
}
\newcommand*\Changed@At@@CreateEntry[5]{%
  \IfValueT{#3}{%
    \IfValueTF{#4}{%
      % TODO direkt mit idx@get arbeiten?
      \@tud@changedattrue#3\@tud@changedatfalse%
      \ifxblank{#4}{}{%
        \eappto\tud@idx@val{%
          \expandonce\tud@idx@key: Werte angepasst@%
          \expandonce\tud@idx@fmt: Werte angepasst!%
        }%
        \begingroup%
          % TODO direkt mit idx@get arbeiten?
          \@tud@changedattrue#4\@tud@changedatfalse%
          \let\suffix\@gobble%
          \protected@edef\tud@reserved{%
            \noexpand\endgroup%
            \def\noexpand\tud@idx@key{\tud@idx@key}%
            \def\noexpand\tud@idx@fmt{\tud@idx@fmt}%
          }%
        \tud@reserved%
      }%
      % TODO sollte eigentlich nur passieren, wenn \if@tud@declare
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
% TODO erstes Argument mit Liste (ddc,ddchead,ddcfoot)
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
\NewDocumentCommand\tud@item@values{s r[] o d()}{%
  \begingroup%
    \in@{/}{#2}%
    \ifin@%
      \def\tud@res@a##1/##2\@nil{%
        \def\tud@res@b{##1}%
        \def\tud@res@c{\PValue{/##2}}%
      }%
      \tud@res@a#2\@nil%
    \else%
      \def\tud@res@b{#2}%
      \let\tud@res@c\@empty%
    \fi%
    \IfBooleanT{#1}{%
      \protected@edef\tud@res@b{\noexpand\emph{\tud@res@b}}%
      \ifx\tud@res@c\@empty\else%
        \protected@edef\tud@res@c{\noexpand\emph{\tud@res@c}}%
      \fi%
    }%
    % TODO hier wahrscheinlich neue Variante von \InlineDeclaration nutzen
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
      \noexpand\InlineDeclaration*{\expandonce\tud@res@a}%
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
  \protected@edef\@tempa{#2\IfValueT{#3}{/#3}}%
  \eaddto@hook\toks@{\expandafter[\@tempa]}%
  \IfValueT{#4}{\addto@hook\toks@{[{#4}]}}%
  \IfValueT{#5}{\addto@hook\toks@{(#5)}}%
  \the\toks@%
}
\newlist{packages}{description}{2}
\setlist[packages]{%
  topsep=\smallskipamount,labelwidth=\linewidth,labelsep=0pt,%
  font=\normalfont,parsep=\parskip,listparindent=\parindent,%
  before=\tud@before@item{packages}%
}
\NewDocumentCommand\tud@item@packages{r[] d<>}{%
  \begingroup%
    \let\tud@res@a\@empty%
    \def\tud@res@b##1{%
      \eappto\tud@res@a{%
        ,\noexpand\InlineDeclaration{\noexpand\Package{##1}\IfValueT{#2}{<#2>}}%
      }%
    }%
    \forcsvlist\tud@res@b{#1}%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\stditem[{%
        \expandafter\expandafter\expandafter\@gobble\expandonce\tud@res@a%
      }]%
    }%
  \tud@res@a%
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
  \ifhmode\par\fi%
  \vskip\medskipamount%
  \@afterindentfalse\@afterheading%
  \begingroup%
    \IfBooleanTF{#1}{%
      \setlength\@tempdima{#3}%
      \setlength\@tempdimc{-.7\baselineskip}%
      \begin{tabularx}{\@tempdima}{lXX}\Term@Table{#2}\end{tabularx}%
    }{%
      \setlength\@tempdimc{\z@}%
      \begin{tabular}{lll}\Term@Table{#2}\end{tabular}%
    }%
  \endgroup%
  \par\addvspace{\medskipamount}%
}
\newcommand*\Term@Table[1]{%
  \toprule%
  \textbf{Bezeichner} & \textbf{Deutsch} & \textbf{Englisch}\tabularnewline%
  \midrule%
  \forcsvlist\Term@@Table{#1}%
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
            \marginnote[{##1}]{##2}[\dimexpr-\ht\z@+1.6ex+1.75pt\relax]%
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
    \edef\tud@res@a{%
      \endgroup%
      \etex@unexpanded{\tud@replace#1}{\detokenize{#2}}{\detokenize{#3}}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\GitHubRepo{s o D(){\tud@github@url@base} d<>}{%
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
\NewDocumentCommand\GitHubDownload{s D(){\tud@github@url@base} d<> m}{%
  \begingroup%
    \tud@github@url@normalize\tud@res@b{#2}%
    \IfValueTF{#3}{%
      \appto\tud@res@b{/releases/download/#3/#4}%
    }{%
      \appto\tud@res@b{/releases/latest/download/#4}%
    }%
    \IfBooleanTF{#1}{\let\tud@res@a\href}{\let\tud@res@a\hrfn}%
    \tud@res@a{https://github.com/\tud@res@b}{\File*{#4}}%
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
        \ClassError{tudscrmanual}%
        {GitHub base was never set}{%
          You have to use \string\GitHubBase\space in order to \MessageBreak%
          define the base url for your GitHub repository.%
        }%
        \def\tud@res@a{???}%
      \fi%
    \else%
      \edef\tud@res@a{\trim@spaces{#2}}%
      \def\tud@res@b##1github.com/##2github.com/##3\@nil{%
        \IfArgIsEmpty{##2}{%
          \def\tud@res@a{##1}%
        }{%
          \def\tud@res@a{##2}%
        }%
      }%
      \expandafter\tud@res@b\tud@res@a github.com/github.com/\@nil%
      \tud@remove@trailing@slashes{\tud@res@a}%
    \fi%
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
\NewDocumentCommand\Forum{!s !O{\TUDForum} !d<>}{%
  \begingroup%
    \IfBooleanTF{#1}{\let\tud@res@a\href}{\let\tud@res@a\hrfn}%
    \tud@res@a{\TUDScriptForum\IfValueT{#3}{viewtopic.php?t=#3}}{#2}%
  \endgroup%
  \xspace%
}
\NewDocumentCommand\CTAN{!s !o}{%
  \begingroup%
    \IfBooleanTF{#1}{\let\tud@res@a\href}{\let\tud@res@a\hrfn}%
    \tud@res@a{http://www.ctan.org\IfValueT{#2}{/#2}}{%
      \tud@english{Comprehensive TeX Archive Network (CTAN)}%
    }%
  \endgroup%
  \xspace%
}
\newcommand*\Attention[2][\z@]{%
  \marginnote{%
    \setlength\fboxsep{0.25em}%
    \fbox{Achtung!}%
  }[{#1}]%
  \emph{\trim@spaces{#2}}%
}
\NewDocumentCommand\scrguide{!s !O{\KOMAScript-Handbuch}}{%
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
%%%% From File: tudscr-fields.dtx 2019/11/15 03:28:28 f4c331b
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
%%%% From File: tudscr-localization.dtx 2019/10/19 06:57:36 aaaf2d5
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
%%%% From File: tudscr-texindy.dtx 2019/10/19 06:57:36 aaaf2d5
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

(\\indexentry\[)([^\]]+)(\].*)\|!(\}{\d+\})

\1\2-declare\3|\(declare\4\r\n\1\2-declare\3|declare\)\4



(\\indexentry.*)@(.*)(\|declare\)\}{\d+\})

\1\3
