% TODO check delimited arguments (delimiter token) ( |\{)!?(d|r)..( |\})
% TODO optional arguments in front of mandatory ones if possible (dDoOst)
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
\newcommand*\tud@todo@type@use{}%
\newcommand*\tud@todo@type@default{}
\forcsvlist{\listadd\tud@todo@type@default}{rls,imp,doc,default}
\TUD@key{ToDo}[true]{%
  \TUD@set@ifkey{ToDo}{@tud@todo}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \let\tud@todo@type@use\tud@todo@type@default%
  \else%
    \begingroup%
      \tud@lowerstring\tud@res@a{#1}%
      \protected@expandtwoargs\in@{=}{\tud@res@a}%
      \ifin@%
        \def\tud@res@b##1=##2\@nil{%
          \IfArgIsEmpty{##2}{\def\tud@res@a{default}}{\def\tud@res@a{##2}}%
          \tud@if@strequal{only}{##1}{\let\tud@res@c\z@}{%
          \tud@if@strequal{not}{##1}{\let\tud@res@c\@ne}{%
            \let\tud@res@c\m@ne%
          }}%
        }%
        \expandafter\tud@res@b\tud@res@a\@nil%
        \let\tud@res@b\relax%
        \ifcase\tud@res@c\relax% only
          \tud@todo@type@set[\tud@res@b]{\tud@res@a}%
        \or% not
          \tud@todo@type@set*[\tud@res@b]{\tud@res@a}%
        \fi%
        \ifx\tud@res@b\relax\else%
          \ifx\tud@res@b\@empty%
            \FamilyKeyStateProcessed%
          \else%
            \ClassError{tudscrmanual}{Wrong ToDo type(s) `\tud@res@b'}{%
              The given type(s) %
              `ToDo={\ifcase\tud@res@c only\or not\fi=\tud@res@b}' %
              are invalid.%
            }%
          \fi%
        \fi%
      \else%
        \let\tud@res@b\@empty%
        \let\tud@res@c\@empty%
        \@for\tud@res@a:=\tud@res@a\do{%
          \xifinlist{\tud@res@a}{\tud@todo@type@default}{%
            \protected@eappto\tud@res@b{,\tud@res@a}%
          }{%
            \protected@eappto\tud@res@c{,\tud@res@a}%
          }%
        }%
        \ifx\tud@res@b\@empty\else%
          \FamilyKeyStateProcessed%
          \edef\tud@res@a{%
            \noexpand\TUDoption{ToDo}{{{{only=\expandonce\tud@res@b}}}}%
            \ifx\tud@res@c\@empty\else%
              \noexpand\AtEndOfFamilyOptions*{%
                \noexpand\TUDoption{ToDo}{\expandonce\tud@res@c}%
              }%
            \fi%
          }%
          \tud@res@a%
        \fi%
      \fi%
      \edef\tud@res@a{%
        \endgroup%
        \unexpanded{\def\tud@todo@type@use}{\expandonce\tud@todo@type@use}%
        \ifx\FamilyKeyState\FamilyKeyStateProcessed%
          \noexpand\@tud@todotrue%
          \noexpand\FamilyKeyStateProcessed%
        \else%
          \noexpand\@tud@todofalse%
        \fi%
      }%
    \tud@res@a%
  \fi%
}
\NewDocumentCommand\tud@todo@type@set{s o m}{%
  \begingroup%
    \protected@edef\tud@res@a{#3}%
    \IfBooleanTF{#1}{%
      \let\tud@todo@type@use\tud@todo@type@default%
      \def\tud@res@b{%
        \expandafter\listremove\expandafter\tud@todo@type@use\expandafter
      }%
    }{%
      \let\tud@todo@type@use\@empty%
      \def\tud@res@b##1{%
        \xifinlist{##1}{\tud@todo@type@use}{}{%
          \listeadd\tud@todo@type@use{##1}%
        }%
      }%
    }%
    \let\tud@res@c\@empty%
    \@for\tud@res@a:=\tud@res@a\do{%
      \TUD@set@numkey{ToDo}{@tempa}{%
        {rls}{0},{imp}{1},{doc}{2},{default}{3}%
      }{\tud@res@a}%
      \ifx\FamilyKeyState\FamilyKeyStateProcessed%
        \tud@res@b{\tud@res@a}%
      \else%
        \protected@eappto\tud@res@c{\ifx\tud@res@c\@empty\else,\fi\tud@res@a}%
      \fi%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def\tud@todo@type@use}{\expandonce\tud@todo@type@use}%
      \IfValueT{#2}{\unexpanded{\def#2}}{\expandonce\tud@res@c}%
    }%
  \tud@res@a%
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
\newcommand*\tud@trace@lbl@wlog{\relax}
\AfterEndDocument{\tud@trace@lbl@wlog}
\newcommand*\tud@trace@lbl@types{}
\listadd\tud@trace@lbl@types{created}
\listadd\tud@trace@lbl@types{matched}
\listadd\tud@trace@lbl@types{ignored}
\listadd\tud@trace@lbl@types{missing}
\listadd\tud@trace@lbl@types{url}
\def\tud@res@a#1{%
  \expandafter\newcommand\csname tud@trace@lbl@#1@list\endcsname{}%
  \cslet{tud@trace@lbl@#1@list}\relax%
}
\forlistloop{\tud@res@a}{\tud@trace@lbl@types}%
\NewDocumentCommand\tracinglabels{!s !D<>{} !O{missing}}{%
  \def\tud@res@a##1{%
    \cslet{tud@trace@lbl@##1@list}\relax%
  }%
  \forlistloop{\tud@res@a}{\tud@trace@lbl@types}%
  \let\tud@res@c\@empty%
  \in@{,all,}{,#3,}%
  \ifin@%
    \let\tud@res@c\tud@trace@lbl@types%
  \else%
    \def\tud@res@a##1{%
      \in@{,##1,}{,#3,}%
      \ifin@%
        \listadd\tud@res@c{##1}%
      \fi%
    }%
    \forlistloop{\tud@res@a}{\tud@trace@lbl@types}%
  \fi%
  \def\tud@res@a##1{%
    \cslet{tud@trace@lbl@##1@list}\@empty%
    \IfBooleanF{#1}{%
      \in@{,##1,}{,#2,}%
      \ifin@\else%
        \appto\tud@trace@lbl@wlog{%
          \ifcsvoid{tud@trace@lbl@##1@list}{%
            \wlog{+++++ no labels ##1 +++++}%
          }{%
            \wlog{+++++ labels ##1 (sorted) +++++}%
            \expandafter\tud@list@sort\csname tud@trace@lbl@##1@list\endcsname%
            \let\tud@res@b\@empty%
            \def\tud@res@a####1{\appto\tud@res@b{####1^^J}}%
            \forlistcsloop\tud@res@a{tud@trace@lbl@##1@list}%
            \@onelevel@sanitize\tud@res@b%
            \wlog{\tud@res@b}%
          }%
        }%
      \fi%
    }%
  }%
  \def\tud@trace@lbl@wlog{\relax}%
  \forlistloop{\tud@res@a}{\tud@res@c}%
}
\@onlypreamble\tracinglabels
\NewDocumentCommand\tud@trace@lbl@add{m d<> m}{%
  \begingroup%
    \ifcsundef{tud@trace@lbl@#1@list}{%
      \ifinlist{#1}{\tud@trace@lbl@types}{}{%
        \ClassError{tudscrmanual}{Undefined label type `#1'}{%
          The given tracing type was never defined.%
        }%
      }%
    }{%
      \let\tud@res@b\@empty%
      \let\tud@res@c\@empty%
      \IfValueT{#2}{%
        \TUD@set@numkey{}{@tempa}{{matched}{0},{url}{1}}{#1}%
        \ifx\FamilyKeyState\FamilyKeyStateProcessed%
          \def\tud@res@c{\space\space(#2)}%
          \ifcase\@tempa\relax%
            \def\tud@res@b{\space(substituted)}%
          \fi%
        \else%
          \ClassWarning{tudscrmanual}{No specific label log `#1' defined}%
          \FamilyKeyStateProcessed%
        \fi%
      }%
      \let\tud@res@a\@empty%
      \def\do##1{%
        \begingroup%
          \protected@edef\tud@res@b{##1\tud@res@c}%
          \@onelevel@sanitize\tud@res@b%
          \xifinlistcs{\tud@res@b}{tud@trace@lbl@#1@list}{}{%
            \listcsxadd{tud@trace@lbl@#1@list}{\tud@res@b}%
          }%
        \endgroup%
        \protected@eappto\tud@res@a{%
          ^^J\@spaces##1%
          \ifx\tud@res@c\@empty\else^^J\@spaces\tud@res@c\fi%
        }%
      }%
      \dolistloop{#3}%
      \ifx\tud@res@a\@empty\else%
        \@onelevel@sanitize\tud@res@a%
        \wlog{+++++ label #1\tud@res@b\on@line\space+++++\tud@res@a}%
      \fi%
    }%
  \endgroup%
}
\newcommand*\tud@trace@markup@wlog{\relax}
\AfterEndDocument{\tud@trace@markup@wlog}
\newcommand*\tud@trace@markup@types{}
\listadd\tud@trace@markup@types{declare}
\listadd\tud@trace@markup@types{output}
\listadd\tud@trace@markup@types{temp}
\def\tud@res@a#1{%
  \expandafter\newcommand\csname tud@trace@markup@#1@list\endcsname{}%
  \cslet{tud@trace@markup@#1@list}\relax%
}
\forlistloop{\tud@res@a}{\tud@trace@markup@types}%
\NewDocumentCommand\tracingmarkup{!s !O{all}}{%
  \def\tud@res@a##1{%
    \cslet{tud@trace@markup@##1@list}\relax%
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
    \cslet{tud@trace@markup@##1@list}\@empty%
    \IfBooleanF{#1}{%
      \appto\tud@trace@markup@wlog{%
        \wlog{+++++ markup ##1 (sorted) +++++}%
        \expandafter\tud@list@sort\csname tud@trace@markup@##1@list\endcsname%
        \let\tud@res@b\@empty%
        \def\tud@res@a####1{\appto\tud@res@b{####1^^J}}%
        \forlistcsloop\tud@res@a{tud@trace@markup@##1@list}%
        \@onelevel@sanitize\tud@res@b%
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
    \def\tud@res@b##1{\eappto\tud@res@a{\@percentchar^^J\@spaces{##1}}}%
    \forlistcsloop\tud@res@b{#1@auxlist@positive}%
    \immediate\write\@mainaux{%
      \string\gdef\expandafter\string\csname #1@auxlist\endcsname%
        {\expandonce\tud@res@a\@percentchar^^J}%
    }%
  \fi%
}
\newcommand*\tud@auxlist@import[2]{%
  \begingroup%
    \edef\tud@res@a{\unexpanded{\@tfor\tud@res@c:=}\csexpandonce{#2@auxlist}}%
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
\PassOptionsToPackage{open,openlevel=0}{bookmark}
\AfterPackage*{bookmark}{%
  \def\Hy@writebookmark#1#2#3#4#5{%
    \ifnum#4>\BKM@depth\relax\else%
      \def\BKM@type{#5}%
      \ifx\BKM@type\Hy@bookmarkstype%
        \begingroup%
          \ifBKM@numbered%
            \let\numberline\Hy@numberline%
            \let\booknumberline\Hy@numberline%
            \let\partnumberline\Hy@numberline%
            \let\chapternumberline\Hy@numberline%
          \else%
            \let\numberline\@gobble%
            \let\booknumberline\@gobble%
            \let\partnumberline\@gobble%
            \let\chapternumberline\@gobble%
          \fi%
          \bookmark[level=#4,dest={\HyperDestNameFilter{#3}}]{#2}%
        \endgroup%
      \fi%
    \fi%
  }%
}
\PassOptionsToPackage{%
  destlabel=true,%pdfview=FitH,%
  hyperindex=false,%
  colorlinks,linkcolor=blue,citecolor=violet%
}{hyperref}
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
    \ifcsundef{r@#2}{%
      ??%
    }{%
      \expandafter\expandafter\expandafter\auto@@refname%
          \csname r@#2\endcsname{}{}{}{}\@nil#1\@nil%
    }%
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
  \providecommand*\hyperpage[1]{#1}%
  \providerobustcmd*\href[3][]{#3}%
  \providerobustcmd*\hyperref{%
    \kernel@ifnextchar[%]
      {\tud@x@hyperref@a}%
      {\tud@x@hyperref@b}%
  }%
  \newcommand*\tud@x@hyperref@a[2][]{#2}%
  \newcommand*\tud@x@hyperref@b[4]{#4}%
  \providecommand*\hypertarget[2]{\label{#1}#2}%
  \providecommand*\hyperlink[2]{\hyperref[{#1}]{#2}}%
  \providecommand*\Hy@raisedlink[1]{#1}%
  \providecommand*\phantomsection{}%
  \providecommand*\texorpdfstring[2]{#1}%
  \providerobustcmd*\autoref{??\xspace\kernel@ifstar{\ref}{\ref}}%
  \providerobustcmd*\autorefname[1][]{??\xspace}%
  \RequirePackage{url}[2013/09/16]%
  \providerobustcmd*\url[1]{\detokenize{#1}}%
  \providerobustcmd*\nolinkurl[1]{\url{#1}}%
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
\newcommand*\hrfn[2]{\href{#1}{\trim@spaces{#2}}\footnote{\url{#1}}}
\newrobustcmd*\mailto[1]{\mbox{\href{mailto:#1}{\nolinkurl{#1}}}}%
\AfterPackage*{hyperref}{%
  % TODO was soll das?
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
% TODO letztes Argument r()
\NewDocumentCommand\tud@lbl@get{%
  s m >{\Processor@CreateLabel{#7}}m !d// !d== !o !D(){\tud@ety@curr}%
}{%
  \begingroup%
    % TODO Parameter@Expandable
    \Markup@Expandable%
    \protected@edef\tud@res@a{#3}%
    \def\tud@res@b##1=##2=##3\@nil{%
      \def\tud@res@a{##1}%
      \let\tud@res@c\@empty%
      \IfArgIsEmpty{##2}{}{\IfValueF{#4}{\def\tud@res@c{=##2}}}%
      \IfValueT{#5}{\def\tud@res@c{=#5}}%
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
\tud@auxlist@register{tud@lbl@dest}[\detokenize\expandafter]%
\NewDocumentCommand\tudmarkuplabel{o m}{%
  \begingroup%
    \Markup@Get\tud@res@a{#2}%
    \expandafter\tud@lbl@get\expandafter\tud@lbl@tmp\tud@res@a%
    \def\tud@res@b##1=##2=##3\@nil{%
      \def\tud@res@b{##2}%
    }%
    \expandafter\tud@res@b\tud@res@a\@nil%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\Process@Declare@Label*{\expandonce\tud@lbl@tmp}=\tud@res@b=%
      \IfValueT{#1}{%
        \noexpand\HyperDestRename{#1}{\expandonce\tud@lbl@tmp}%
        \noexpand\label{#1}%
      }%
    }%
  \tud@res@a%
}
% TODO \tudhyperref > \tudmanualref für treatise.tex überarbeiten
% \href[pdfnewwindow]{./test.pdf#sec:general}{text}
\newrobustcmd*\tud@hyperlink[2]{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\hyperlink{#1}%
    }%
  \tud@res@a{#2}%
}
\NewDocumentCommand\tud@hypertarget{m d<> m}{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@@hypertarget{#1}<#2>{#3}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@@hypertarget{m r<> m}{%
  \begingroup%
    \let\tud@res@a\@empty%
    \def\tud@res@b##1{%
      \protected@edef\tud@res@c{%
        \if@tud@res@swa%
          \unexpanded{\label{##1}}%
        \fi%
        \endgroup%
        \if@tud@res@swa%
          \unexpanded{\listadd\tud@res@a{##1}}%
        \fi%
      }\tud@res@c%
    }%
    \def\do##1{%
      \begingroup%
        \@tud@res@swatrue%
        \IfBooleanTF{#1}{%
          \tud@auxlist@add{tud@lbl@dest}{##1}%
          \HyperDestRename{##1}{#3}%
        }{%
          \tud@auxlist@ifin{##1}{tud@lbl@dest}{%
            \@tud@res@swafalse%
          }{%
            \Hy@raisedlink{\hypertarget{##1}{}}\ignorespaces%
            \let\HyperDestRename\@gobbletwo%
            \let\@currentlabelname\@empty%
          }%
        }%
      \tud@res@b{##1}%
    }%
    \dolistloop{#3}%
    \dolistloop{#2}%
    \protected@edef\tud@res@a{%
      \noexpand\tud@trace@lbl@add{created}{\tud@res@a}%
    }%
    \tud@res@a%
  \endgroup%
}
\tud@auxlist@register{tud@lbl@alias}[\detokenize\expandafter]%
\newcommand*\tud@lbl@alias@values{}
\NewDocumentCommand\tud@declare@open{m D<>{} m}{%
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
% TODO unabhängige modi für declare, index, output
% TODO \tud@declare@index --> \tud@index@mode%
% modi <0:keiner 0:normal 1:öffnend 2:schließend
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
% TODO Indexeinträge ermöglichen?
\newcommand*\tud@ety@entry{}
\NewDocumentEnvironment{Entity}{m}{%
%  \ifx\tud@ety@curr\tud@ety@dflt%
    \in@{,}{#1}%
    \ifin@%
      \ClassError{tudscrmanual}{Multiple values for environment `Entity'}{%
        Multiple elements are prohibited within the argument.%
      }%
    \else%
%      \gdef\tud@ety@curr{#1}%
      \def\tud@ety@curr{#1}%
      \tud@ety@add{#1}%
    \fi%
%  \else%
%    \ClassError{tudscrmanual}{Nested environment `Entity'}{%
%      It is not possible to nest several `Entity' environments%
%    }%
%  \fi%
  \ignorespaces%
}{%
%  \global\let\tud@ety@curr\tud@ety@dflt%
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
%        \typeout{:::::::: 0}%
        \let\tud@res@a\tud@ety@curr%
      \else%
%        \typeout{:::::::: 1}%
        \let\tud@res@a\tud@res@b%
      \fi%
    \else
      \ifx\tud@res@b\@empty\else%
        \eappto\tud@res@a{,\expandonce\tud@res@b}%
      \fi
    \fi%
%    \typeout{:::::::: \meaning\tud@res@a}%
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
        \tud@toks@{\tud@ety@trace@lbl'#7'}%
        \tud@lbl@get\tud@lbl@tmp{#3}/#4/=#5=(\tud@res@c)%
        \addto@hook@expandafter\tud@toks@{\expandafter{\tud@lbl@tmp}}%
        \IfValueT{#5}{%
          \tud@if@lbl@exists{\tud@lbl@tmp}{}{%
            \tud@lbl@get\tud@lbl@tmp{#3}/#4/(\tud@res@c)%
          }%
        }%
        \tud@if@lbl@exists{\tud@lbl@tmp}{%
          \eappto\tud@res@a{,\expandonce\tud@res@c}%
          \the\tud@toks@{\tud@lbl@tmp}%
        }{%
          \eappto\tud@res@b{,\expandonce\tud@res@c}%
          \the\tud@toks@{\@nil}%
        }%
      }%
    }{%
      \tud@toks@{\tud@ety@trace@lbl'#7'}%
      \tud@lbl@get\tud@lbl@tmp{#3}/#4/=#5=(\tud@ety@curr)%
      \addto@hook@expandafter\tud@toks@{\expandafter{\tud@lbl@tmp}}%
      \IfValueT{#5}{%
        \tud@if@lbl@exists{\tud@lbl@tmp}{}{%
          \tud@lbl@get\tud@lbl@tmp{#3}/#4/(\tud@ety@curr)%
        }%
      }%
      \tud@if@lbl@exists{\tud@lbl@tmp}{%
        \let\tud@res@a\tud@ety@curr%
        \the\tud@toks@{\tud@lbl@tmp}%
      }{%
        \def\tud@res@c##1{%
          \tud@ety@@seek\tud@lbl@tmp{##1}%
          \tud@if@lbl@exists{\tud@lbl@tmp}{%
            \appto\tud@res@a{,##1}%
            \the\tud@toks@{\tud@lbl@tmp}%
          }{}%
        }%
        % DOC exakte Treffer mit gegebenen Wert
        \IfValueT{#5}{%
          \tud@lbl@get\tud@lbl@tmp{#3}/#4/=#5=(\tud@ety@curr)%
          \tud@auxlist@forloop\tud@res@c{tud@ety}%
        }%
        \ifx\tud@res@a\@empty%
          % DOC Basislabel ohne Wert
          \tud@lbl@get\tud@lbl@tmp{#3}/#4/(\tud@ety@curr)%
          \tud@auxlist@forloop\tud@res@c{tud@ety}%
        \fi%
        \ifx\tud@res@a\@empty%
          \let\tud@res@b\tud@ety@curr%
          \the\tud@toks@{\@nil}%
        \fi%
      }%
    }%
    \tud@remove@enfold@char\tud@res@a{,}%
    \tud@remove@enfold@char\tud@res@b{,}%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@res@a}%
      \unexpanded{\def#2}{\expandonce\tud@res@b}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@ety@trace@lbl{r'' m m}{%
  \begingroup%
    \tud@get@crossrefnum\tud@res@a'#1'%
    \let\tud@res@b\@empty%
    \def\tud@res@c{{#2}}%
    \ifnum\tud@res@a<\z@\relax%
      \ifnum\tud@res@a=\m@ne\relax%
        \def\tud@res@b{ignored}%
      \fi%
    \else%
      \tud@if@nil{#3}{%
        \ifnum\tud@res@a>4\relax\else%
          \def\tud@res@b{missing}%
        \fi%
      }{%
        \def\tud@res@b{matched}%
        \tud@if@strequal{#2}{#3}{}{\def\tud@res@c{<#2>{#3}}}%
      }%
    \fi%
    \protected@edef\tud@res@a{%
      \endgroup%
      \ifx\tud@res@b\@empty\else%
        \noexpand\tud@trace@lbl@add{\tud@res@b}\tud@res@c%
      \fi%
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
\NewDocumentEnvironment{Declaration}{o m !o !d() !d<>}{%
  % TODO was passiert hier? besser an \tud@declare@open durchreichen?
  \Changed@At@CreateList{#1}[{#2}]:<new>:{\BooleanTrue}%
  \tud@declare@start!1!{#2}[{#3}](#4)<#5>%
}{%
  \tud@declare@end!1!{#2}%
}
% TODO sinnvoll? changedat? Wird Index erzeugt?
\NewDocumentEnvironment{Declaration'}{m !o !d()}{%
  \tud@declare@start!11!{#1}[{#2}](#3)%
}{%
  \tud@declare@end!11!{#1}%
}
% TODO d()d'' -> d''d()
% TODO Argument '#6' an Änderungsnotiz anheften?
% TODO Wann wird (#5) genutzt?
\NewDocumentEnvironment{Obsolete}{m m !o !d() !d''}{%
  % TODO was passiert hier? besser an \tud@declare@open durchreichen?
  \Changed@At@CreateList{#1}[{#2}]:<obsolete>:{\BooleanFalse}%
  \def\tud@res@a{entf\"allt}%
  \IfValueT{#4}{\def\tud@res@a{#4}}%
  % TODO indexmode in seeref auf 0, 'page' nur setzen, falls nichts gegeben?
  % TODO Argument #6 dafür zerpflücken?
  % TODO \Macro*: einführen (: gibt suffix in jedem fall aus)
  %        evtl auch als Standardfall, wenn :<append> leer
  \IfValueT{#5}{\appto\tud@res@a{, \seeref{#5'page'}}}%
  \tud@toks@{\tud@declare@start!9!{#2}[{#3}]}%
  \addto@hook@expandafter\tud@toks@{\expandafter(\tud@res@a)}%
  \the\tud@toks@%
}{%
  \tud@declare@end!9!{#2}%
}
\NewDocumentCommand\tud@declare@start{r!! m r[] r() !d<>}{%
  \begingroup%
    \IfValueTF{#3}{%
      \begingroup
        \protected@expandtwoargs\in@{|}{#3}%
        \protected@edef\tud@res@b{\noexpand\tud@res@c#3\noexpand\@nil}%
        \ifin@
          \def\tud@res@c##1|##2\@nil{%
            \def\tud@res@a{##1}%
            \protected@expandtwoargs\in@{:}{##2}%
            \ifin@%
              \def\tud@res@b####1:####2\@nil{%
                \let\tud@res@b\@empty%
                \protected@edef\tud@res@c{####2}%
                \@for\tud@res@c:=\tud@res@c\do{%
                  \eappto\tud@res@b{%
                    \ifx\tud@res@b\@empty\else,\space\fi%
                    \unexpanded{\PValue@Enfold*'}{\expandonce\tud@res@c}%
                  }%
                }%
                \preto\tud@res@b{\,\textbar\,####1:\space}%
              }%
              \tud@res@b##2\@nil%
            \else%
              \let\tud@res@a\@empty%
            \fi%
          }%
        \else%
          \def\tud@res@c##1\@nil{%
            \def\tud@res@a{#3}%
            \let\tud@res@b\@empty%
          }%
        \fi%
        \tud@res@b%
        \protected@expandtwoargs\in@{:}{\tud@res@a}%
        \ifin@\else%
          \preto\tud@res@a{Voreinstellung:}%
        \fi%
        \def\tud@res@c##1:##2\@nil{%
          \let\tud@res@a\@empty%
          \protected@edef\tud@res@c{##2}%
          \@for\tud@res@c:=\tud@res@c\do{%
            \eappto\tud@res@a{%
              \ifx\tud@res@a\@empty\else,\space\fi%
              \unexpanded{\PValue@Enfold*'}{\expandonce\tud@res@c}%
            }%
          }%
          \ifx\tud@res@a\@empty%
            \def\tud@res@a{##1}%
          \else%
            \preto\tud@res@a{##1:\space}%
          \fi%
        }%
        \expandafter\tud@res@c\tud@res@a\@nil%
        \edef\tud@res@c{%
          \endgroup%
          \ifx\tud@res@a\@empty%
            \unexpanded{\let\tud@res@a\@empty}%
          \else%
            \unexpanded{\def\tud@res@a}{%
              \expandonce\tud@res@a\expandonce\tud@res@b%
            }%
          \fi%
        }%
      \tud@res@c%
      \ifx\tud@res@a\@empty%
        \ClassError{tudscrmanual}{Wrong format for (conditional) preset}{%
          The format `[(text:)preset|condition:preset]' is needed,\MessageBreak%
          but `[#3]' was given.%
        }%
      \fi%
    }{%
      \let\tud@res@a\@empty%
    }%
    \IfValueTF{#4}{%
      \def\tud@res@b{#4}%
    }{%
      \let\tud@res@b\@empty%
    }%
    \tud@toks@{!#1!<#5>{#2}}%
    \addto@hook@expandafter\tud@toks@{\expandafter[\expandafter{\tud@res@a}]}%
    \addto@hook@expandafter\tud@toks@{\expandafter(\tud@res@b)}%
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
  \ifundef{\printdeclarationlist}{}{%
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
  \@afterindentfalse\@afterheading%
}
\NewDocumentEnvironment{Declaration*}{o m}{%
  \tud@declare@special@start!2!{#2}[{#1}]%
  \tud@print@changedatlist%
}{%
  \tud@declare@special@end!2!{#2}%
}
% TODO sollte \Markup@Inline@Format verwenden, evtl spezielle declare-Variante 
% TODO alias setzen falls Spezialwert gegeben (parskip), intern ohne alias
% TODO #4 muss weg!
\NewDocumentCommand\InlineDeclaration{s m !d<>}{%
  \IfBooleanTF{#1}{%
    \Inline@Declaration!6!{#2}<#3>%
  }{%
    \Inline@Declaration!5!{#2}<#3>%
  }%
}
\NewDocumentCommand\Inline@Declaration{r!! m r<>}{%
  \tud@declare@special@start!#1!{#2}<#3>%
  % TODO Änderungsliste!
%  \tud@print@changedatlist%
  \tud@declare@special@end!#1!{#2}%
  \null%
}
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
% TODO InlineDeclareFormat
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
      % Unterscheidung von Inline und Table
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
\newrobustcmd*\MarkupSuffixInline[1]{%
  \begingroup%
    \renewcommand*\Markup@Suffix@Select[1]{\Markup@Suffix@@Select{n}{##1}}%
    #1%
  \endgroup%
}
\newcommand*\suffixsize{\scriptsize}
\AtBeginDocument{%
  \begingroup%
    \def\tud@res@c#1#2#3#4\@nil{\def\tud@res@a{#4}}
    \expandafter\tud@res@c\tiny\@nil
    \def\tud@res@c#1#2#3#4\@nil{\def\tud@res@b{#3}}
    \expandafter\tud@res@c\scriptsize\@nil
    \xdef\suffixsize{%
      \unexpanded{\@setfontsize\suffixsize}%
        {\expandonce\tud@res@a}{\expandonce\tud@res@b}%
    }%
  \endgroup%
}
\NewDocumentCommand\suffix{s t' O{\suffixsize} m}{% 
  \begingroup%
    \IfBooleanT{#1}{\let\Markup@Suffix@Select\@gobble}%
    \nbs#3\IfBooleanTF{#2}{\textlangle#4\textrangle}{(#4)}%
  \endgroup%
}
\NewExpandableDocumentCommand\@suffix{s t' o m}{\space#4}%
\newrobustcmd*\idxsuffix{\suffix*'}
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
              {Two optional arguments for a key given!}%
              {You did specify `##2' as well as `#1' as a key.}%
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
    \addto@hook@expandafter\tud@toks@{\expandafter{\tud@res@a}}%
    \tud@if@nil{#1}{%
      \let\tud@res@b\@empty%
    }{%
      \addto@hook@expandafter\tud@toks@{\expandafter/\tud@res@b/}%
    }%
    \expandafter\IfValueT\expandafter{\tud@res@c}{%
      \expandafter\IfValueTF\expandafter{\tud@res@b}{%
% TODO use to validate =...= within Value Processors
%      \ifx\tud@res@a\tud@res@b\else%
%        \def\tud@res@c##1<##2>##3\@nil{%
%          \@tud@res@swafalse%
%          \IfArgIsEmpty{##1}{}{\@tud@res@swatrue}%
%          \IfArgIsEmpty{##3}{}{\@tud@res@swatrue}%
%          \if@tud@res@swa%
%            \ClassWarning{tudscrmanual}{%
%              Enfolding text removed from parameter macro\MessageBreak%
%              \detokenize\expandafter{\tud@res@a}%
%            }%
%          \fi%
%          \def\tud@res@c##1####1##3\@nil{\def\tud@res@a{####1}}%
%          \expandafter\tud@res@c\tud@res@a\@nil%
%        }%
%        \expandafter\tud@res@c\tud@res@b\@nil%
%      \fi%
        % DOC in PValue hüllen, wenn kein Markup
        \PValue@Enfold\tud@res@c%
      }{%
        \ClassWarning{tudscrmanual}{%
          The given value `\tud@res@c' is ignored as\MessageBreak%
          no `/<key>/' was specified%
        }%
        \let\tud@res@c\tud@res@b%
      }%
    }%
    \addto@hook@expandafter\tud@toks@{\expandafter=\tud@res@c=}%
    \protected@edef\tud@res@a{%
      \endgroup%
      \def\noexpand\ProcessedArgument{\the\tud@toks@}%
    }%
  \tud@res@a%
}
% TODO raus!
\newcommand*\Processor@WrongValue[1]{%
  \ClassWarning{tudscrmanual}{The given value `#1' is ignored}%
}
% TODO Template NewMarkupCommand für Markup-Befehle
%      key-value Argument für Sepzifikation
% TODO Stern entfernen und d|| am Anfang, alle Warnungen in Processor!
%      Stern stattdessen als shortcut für ||'none'?
%\NewDocumentCommand\Set@Markup@Command{...}{%
%  \NewDocumentCommand#1{s m #2 >{Processor@Index{##1}}!D||{}}{%
%    \Process@Markup{Application}{##2}#3|##6|%
%  }%
%  \Markup@Simple@Format{Application}(\textsbi){Anwendungssoftware}
%  \NewExpandableDocumentCommand\@Application{s m}{#2}% notwendig?
%}
%\Set@Markup@Command\Application{%
%  [s m] !o !d() !d'' [!d||]%
%}{%
%  [~#3](#4)'#5'%
%}%
% TODO key, value und anhang alles in Hauptargument und parsen
% \Macro*||''(){macro/key=value:anhang}
% oder \Macro*||''(){name[[/key]=value]|append}
% verschiedene Argument Prozessoren
%\def\Markup@GobbleExtra#1:#2\relax{#1}
%\NewExpandableDocumentCommand\@Macro{s m}{%
%  \Markup@GobbleExtra#2:\relax%
%}
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
% TODO !d()>!D(){\General} für \Application,\Distribution,\Engine,\File,\Bundle?
\NewExpandableDocumentCommand\@Application{s m}{#2}
\NewDocumentCommand\Application{%
  s m !>{\Processor@WrongValue}d== !d() !d'' !d||%
}{%
  \Process@Markup{\Application{#2}}(#4)'#5'{#1}|#6|%
}
\Markup@Simple@Format\Application(\textsbi){Anwendungssoftware}
\NewDocumentCommand\ApplicationRaw{m d() D''{\@nil} d|| >{\ReverseBoolean}m}{%
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
% TODO label auf ctan:bundle:xxx?
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
\NewDocumentCommand\ClassRaw{m d() D''{\@nil} d|| >{\ReverseBoolean}m}{%
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
\NewDocumentCommand\PackageRaw{m d() D''{\@nil} d|| >{\ReverseBoolean}m}{%
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
% TODO InlineDeclaration l
\Markup@Simple@Format\Key@Value(\textttit){Parameter}[ic]
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
\robustify\TUDScript
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
% TODO Makro zur Def. von Parameter (Spezial: \PSet \PMisc \PBoolean \PLength)
\newcommand*\tud@param@list{}
%\newcommand*\tud@param@@list{}
\NewDocumentCommand\NewParameterCommand{s m m m m}{%
  \edef\tud@res@a{\expandafter\@gobble\string#2}%
  \listeadd\tud@param@list{\tud@res@a}%
%  \IfBooleanT{#1}{\listeadd\tud@param@@list{\tud@res@a}}%
  \edef\tud@res@b{\expandafter\noexpand\csname @\tud@res@a\endcsname}%
  \expandafter\NewExpandableDocumentCommand\tud@res@b{#3}{#5}%
  \NewDocumentCommand#2{#3}{#4}%
}
% TODO von \Markup@Expandable trennen
\newcommand*\Parameter@Expandable{%
  \begingroup%
    \def\tud@res@a{\endgroup}%
    \def\tud@res@b##1{\appto\tud@res@a{\csletcs{##1}{@##1}}}%
    \forlistloop\tud@res@b{\tud@param@list}%
  \tud@res@a%
}
\NewDocumentCommand\P@Braces{s m}{%
  \mbox{%
    \texttt{\IfBooleanTF{#1}{\lbrack}{\textbraceleft}}%
    #2%
    \texttt{\IfBooleanTF{#1}{\rbrack}{\textbraceright}}%
  }%
}
\NewParameterCommand\PName{s m}{%
  \tud@if@strblank{#2}{%
    \ClassWarning{tudscrmanual}%
      {The argument of `\string\PName' should not be empty}%
  }{}%
  \mbox{\IfBooleanTF{#1}{\textttit}{\texttt}{<#2>}}%
}{<8:#2>}
\NewParameterCommand\PValue{s m}{%
  \mbox{\IfBooleanTF{#1}{\textttit}{\texttt}{#2}}%
}{<9:#2>}
\NewDocumentCommand\PValue@Enfold{s t' m}{%
  \begingroup%
    \protected@edef\tud@res@a{#3}%
    \trim@spaces@in\tud@res@a%
    \ifx\tud@res@a\@empty%
      \let\tud@res@b\relax%
    \else%
      \Parameter@Expandable%
      \protected@edef\tud@res@b{\tud@res@a}%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \IfBooleanTF{#2}{\noexpand\@firstofone}{\unexpanded{\def#3}}{%
        \ifx\tud@res@a\tud@res@b%
          \noexpand\PValue\IfBooleanT{#1}{*}%
        \else%
          \expandafter\@firstofone%
        \fi%
        {\expandonce\tud@res@a}%
      }%
    }%
  \tud@res@a%
}
\NewParameterCommand\MPName{m}{\P@Braces{\PName{#1}}}{\@PName{#1}}
\NewParameterCommand\MPValue{m}{\P@Braces{\PValue{#1}}}{\@PValue{#1}}
\NewParameterCommand\OPName{m}{\P@Braces*{\PName{#1}}}{\@PName{#1}}
\NewParameterCommand\OPValue{m}{\P@Braces*{\PValue{#1}}}{\@PValue{#1}}
\NewParameterCommand\OList{}{\OPName{Parameterliste}}{\@PName{Parameterliste}}
% TODO raus?
\NewParameterCommand\OPList{m}{%
  \P@Braces*{\PName{#1}\texttt{\,\textbardbl\,}\PName{Parameterliste}}%
}{\@PName{Parameterliste}}
% TODO \PSet > \PSpecial oder \SPset, \SPmisc, ...
\NewParameterCommand*\PMisc{}{\PName{Einstellung}}{<0:misc>}
\NewParameterCommand*\PBoolean{}{\PName{Ein-Aus-Wert}}{<1:boolean>}
\NewParameterCommand*\PLength{}{\PName{L\"ange}}{<2:length>}
% TODO Varianten mit "Wert" und "Einstellung"? (\SPmisc, \SPset)
\NewParameterCommand*\PSet{m}{\PName{#1}}{<3:#1>}
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
\AfterPackage*{hyperref}{%
%  \expandafter\pdfstringdefDisableCommands\expandafter{\Markup@Expandable}%
  \expandafter\pdfstringdefDisableCommands\expandafter{%
    \Markup@@Expandable%
    \let\ApplicationRaw\@ApplicationRaw%
    \let\ClassRaw\@ClassRaw%
    \let\PackageRaw\@PackageRaw%
  }%
}
% TODO sicherstellen, dass gültige Entity
% TODO shortcut für (\Bundle{latex-base})
\newcommand*\Processor@Entity[1]{%
  \begingroup%
    \protected@edef\tud@res@a{#1}%
    \trim@spaces@in\tud@res@a%
    \tud@if@strblank{\tud@res@a}{\let\tud@res@a\tud@ety@dflt}{}%
    \let\tud@res@b\@empty%
    \let\tud@res@c\@empty%
    \@for\tud@res@a:=\tud@res@a\do{%
      \trim@spaces@in\tud@res@a%
      \tud@if@strblank{\tud@res@a}{%
        \let\tud@res@a\tud@ety@dflt%
      }{%
        \tud@if@strequal{\tud@res@a}{*}{%
          \let\tud@res@a\tud@ety@curr%
        }{}%
      }%
      \xifinlist{\detokenize\expandafter{\tud@res@a}}{\tud@res@c}{}{%
        \listeadd{\tud@res@c}{\detokenize\expandafter{\tud@res@a}}%
        \eappto\tud@res@b{,\expandonce\tud@res@a}%
      }%
    }%
    \tud@remove@enfold@char\tud@res@b{,}%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand\ProcessedArgument{\expandonce\tud@res@b}%
    }%
  \tud@res@a%
}
% TODO prüfen, ob etwas wie =\PMisc aa= angegeben wurde
% (Validierung: expandieren zu <p:...> oder leer?)
% > \Processor@Validate@Value verwenden, wo notwendig!
%\newcommand*\Markup@Current{}
\NewDocumentCommand\Process@Markup{%
  m d// d== o >{\Processor@Entity}d() d'' m r||%
}{%
%  \begingroup%
%    \Markup@Name@Get\tud@res@a{#1}%
%    \expandafter\def\expandafter\tud@res@a\expandafter{%
%      \@firstoftwo#1%
%    }%
%    \edef\tud@res@a{%
%    \expandafter\expandafter\expandafter\@gobble\expandafter\string\tud@res@a%
%    }%
%    \expandafter\def\expandafter\tud@res@b\@gobble#1%
%    \edef\tud@res@c{%
%      \endgroup%
%      \unexpanded{\def\Markup@Current}{%
%        +\tud@res@a+{\expandonce\tud@res@b}\unexpanded{/#3/=#4=[#5](#6)}%
%      }%
%    }%
%  \tud@res@c%
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
        % TODO überprüfen wenn NewMarkupCommand umgesetzt
        \let\tud@res@a\tud@ety@curr%
        \def\tud@res@b{#1}%
        \ifx\tud@res@a\tud@res@b%
          \let\tud@res@a\tud@ety@dflt%
        \fi%
      }%
    \fi%
    \addto@hook@expandafter\tud@toks@{\expandafter(\tud@res@a)}%
    \addto@hook\tud@toks@{'#6'{#7}|#8|}%
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
  m d// d== o r() d'' m r||%
}{%
  % TODO !!!!! hier label erstellen und schleife durchlaufen!
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
      \addto@hook@expandafter\tud@toks@{\expandafter(\tud@res@a)}%
      \addto@hook\tud@toks@{'#6'{#7}|#8|}%
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
  m d// d== o r() d'' m r||%
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
      \addto@hook@expandafter\tud@toks@{\expandafter'\tud@lbl@tmp'}%
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
\newcommand*\tud@lbl@val{:!:}
\NewDocumentCommand\Process@Declare@Label{s m d==}{%
  \begingroup%
    \protected@edef\tud@res@a{#2}%
    \def\tud@res@c##1=##2\@nil{\def\tud@res@c{##1}}%
    \expandafter\tud@res@c\tud@res@a=\@nil%
    \IfValueTF{#3}{%
      \protected@edef\tud@res@b{#3}%
      \tud@if@strequal{\PBoolean}{\tud@res@b}{%
        \preto\tud@lbl@alias@values{true,false,}%
      }{}%
      \protected@expandtwoargs\in@{,\tud@lbl@val,}{,\tud@lbl@alias@values,}%
      \tud@if@param@special{\tud@res@b}{%
        \ifin@\else%
          \let\tud@res@a\tud@res@c
          \protected@epreto\tud@lbl@alias@values{\tud@res@b,}%
        \fi%
      }{%
% TODO typeout --> welche Optionen/Parameter sind betroffen? wieder rein?
%        \ifin@\else%
%          \in@{\PName}{#3}%
%          \ifin@%
%            \typeout{/////////////////////// #3}%
%    %        \tudhyper@alias@values{\tud@res@a}{#3}%
%          \fi%
%        \fi%
      }%
    }{%
      \ifx\tud@lbl@alias@values\@empty\else%
        \ClassWarning{tudscrmanual}{%
          As no default value was given, alias values\MessageBreak%
          can not be used either%
        }%
        \let\tud@lbl@alias@values\@empty%
      \fi%
    }%
    \let\tud@res@b\@empty%
    \begingroup%
      \@for\tud@res@a:=\tud@lbl@alias@values\do{%
        \ifx\tud@res@a\tud@lbl@val%
          \let\tud@res@a\@empty%
        \else%
          \trim@spaces@in\tud@res@a%
        \fi%
        \ifx\tud@res@a\@empty\else%
          \begingroup%
            \PValue@Enfold\tud@res@a%
            \Parameter@Expandable%
            \protected@edef\tud@res@a{%
              \endgroup%
              \unexpanded{\def\tud@res@a}{\tud@res@c=\tud@res@a}%
            }%
          \tud@res@a%
          \tud@auxlist@add{tud@lbl@alias}{\tud@res@a}%
          \tud@auxlist@ifin{\tud@res@a}{tud@lbl@alias}{%
            \xifinlist{\expandonce\tud@res@a}{\tud@res@b}{}{%
              \listeadd\tud@res@b{\expandonce\tud@res@a}%
            }%
          }{}%
        \fi%
      }%
      \edef\tud@res@a{%
        \endgroup%
        \unexpanded{\def\tud@res@b}{\expandonce\tud@res@b}%
      }%
    \tud@res@a%
% TODO für tutorials notwendig?, darf keine relevanz für manual haben
%        \def\tud@res@a##1:##2:##3\@nil{\tud@hypertarget{##3:##2:##3}}%
%        \expandafter\tud@res@a\tud@lbl@tmp\@nil%
    \tud@auxlist@remove{tud@lbl@alias}{\tud@res@a}%
    \tud@hypertarget{#1}<\tud@res@b>{\tud@res@a}%
  \endgroup%
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
    % TODO label nicht verwenden, wenn in declaration@list; in \Process@Markup
    \tud@get@crossrefnum\tud@res@a'#6'%
    \let\tud@res@c\@empty%
    \if@tud@disposition%
      \def\tud@res@c{for headings}%
    \fi%
    \ifnum\tud@declare@mode>\z@\relax%
      \def\tud@res@c{for markup within declarations}%
    \fi%
    \ifx\tud@res@c\@empty\else%
      \ifnum\tud@res@a>\z@\relax%
%    TODO Warnungen in \Process@Output verschieben (als Processor?)
        \ClassWarning{tudscrmanual}{%
          It is not possible to use any cross-reference\MessageBreak%
          shorthand like '#6'\MessageBreak\tud@res@c%
        }%
      \fi%
      % TODO Argument entsprechend im Processor setzen (none)
      \def\tud@res@a{-1}%
    \fi%
%    TODO ENDE Warnungen in \Process@Output verschieben (als Processor?)
    \let\tud@res@b\@firstofone%
    % TODO supress links for current declarations
    \ifnum\tud@res@a<\z@\relax\else%
      \tud@if@lbl@exists{\tud@lbl@tmp}{%
        \let\tud@res@c\@gobble% simple/link
        \ifcase\tud@res@a\relax\or% auto
          \def\tud@res@c{ in \noexpand\autoref}%
        \or% page
          \def\tud@res@c{ \noexpand\vpageref}%
        \or% ppage
          \def\tud@res@c{ \noexpand\reftextfaraway}%
        \or% full
          \def\tud@res@c{ in \noexpand\fullref}%
        \else% link
          \ClassWarning{tudscrmanual}{%
            As label `\tud@lbl@tmp' exists, the\MessageBreak%
            given cross-reference '#6'\MessageBreak%
            is ignored%
          }%
        \fi%
        \protected@edef\tud@res@b##1{%
          \noexpand\tud@hyperlink{\tud@lbl@tmp}{##1}\tud@res@c{\tud@lbl@tmp}%
        }%
      }{%
        % TODO den ganzen link kram überarbeiten
        \ifnum\tud@res@a<5\relax% no link
          \ifnum\tud@res@a>\z@\relax%
            \ClassWarning{tudscrmanual}{%
              A cross-reference could not be created\MessageBreak%
              as label \tud@lbl@tmp\MessageBreak%
              doesn't exists%
            }%
          \else%
            \ifnum\tud@res@a=\z@\relax%
              \def\tud@res@c##1##2\@nil{%
                \begingroup%
                  \@tud@res@swafalse%
                  % TODO CTANlink als parameter für NewMarkupCommand
                  % TODO Befehl zum Definieren einen Mappings Markup>CTANlink
                  %      dieses Mapping verwenden, wenn label nicht exisitiert
                  %      siehe amssymb, DeLig; evtl auch Mapping Markup>Entity; 
                  %      Pakete default auf sich selbst als Entity
                  \tud@if@strequal{\Package}{##1}{\@tud@res@swatrue}{}%
                  \tud@if@strequal{\Bundle}{##1}{\@tud@res@swatrue}{}%
                  \if@tud@res@swa%
                    \def\tud@res@c{##2}%
                    \IfValueT{#5}{%
                      \tud@if@strequal{#5}{\tud@ety@dflt}{}{%
                        \protected@edef\tud@res@c{\@secondoftwo#5}%
                      }%
                    }%
                  \fi%
                  \protected@edef\tud@res@c{%
                    \endgroup%
                    \if@tud@res@swa%
                      \unexpanded{%
                        \def\tud@res@a{5}%
                        \def\tud@res@c%
                      }{\tud@res@c}%
                    \fi%
                  }%
                \tud@res@c%
              }%
              \tud@res@c#1\@nil%
            \fi%
          \fi%
        \else%
          \def\tud@res@c##1:##2\@nil{%
            \IfArgIsEmpty{##2}{%
              \expandafter\def\expandafter\tud@res@c\@gobble#1%
            }{%
              \def\tud@res@c{##2}%
            }%
          }%
          \tud@res@c#6\@nil%
        \fi%
        \ifnum\tud@res@a>4\relax%
          \protected@edef\tud@res@b{%
            \noexpand\tud@trace@lbl@add{url}%
              <\ifnum\tud@res@a=5CTAN:\fi\tud@res@c>{\tud@lbl@tmp}%
          }%
          \tud@res@b%
          \ifnum\tud@res@a=5\relax% ctan link
            \protected@edef\tud@res@b##1{\noexpand\CTAN@pkg{\tud@res@c}{##1}}%
          \else%
            \protected@edef\tud@res@b##1{\noexpand\href{\tud@res@c}{##1}}%
          \fi%
        \fi%
      }%
    \fi%
    \tud@res@b{\Markup@Output{#1}/#2/=#3=[{#4}]}%
  \endgroup%
%    TODO Warnungen auch ausgeben, wenn Sternversion mit  
%    TODO label default genutzt wird (\Macro*{blinddocument})
%    \ifcase\tud@res@a\relax\else%
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
}
\NewDocumentCommand\tud@get@crossrefnum{m r''}{%
  \begingroup%
    \IfValueTF{#2}{%
      \tud@if@nil{#2}{%
        \def\tud@res@a{-2}%
      }{%
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
      }%
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
  \begingroup%
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
      % TODO \Markup@Expandable* kann raus, wenn Wert direkt durchgereicht wird
      \Markup@Expandable*%
      \protected@edef\tud@res@a{%
        \endgroup%
        \unexpanded{\def\tud@res@a}{%
          \noexpand\Markup@@Output{\IfValueTF{#2}{#2}{#1}}%
        }%
      }%
    \tud@res@a%
%    \ifnum\tud@declare@mode=\z@\relax%
%      \IfValueT{#3}{%
%        \tud@if@param@special{#3}{}{\let\Markup@Suffix@Select\@gobble}%
%      }%
%    \fi%
    \tud@res@a=#3=[{#4}]%
  \endgroup%
}
\ifundef{\tud@x@textcase@uclcnotmath}{}{%
  \NewDocumentCommand\tud@nonchangecase{m}{%
    % TODO Definition aus \Process@@Markup
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
    % TODO noautomatic erst bei printindex setzen, imakeidx direkt laden
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
      \def\lettergroup##1{\minisec{##1}}%
      \DeclareDocumentCommand\tud@idxitem{s m}{%
        \par%
        \hspace*{\dimexpr\numexpr##2\relax em\relax}%
        \hangindent=\dimexpr\numexpr##2+3\relax em\relax%
        \IfBooleanT{##1}{\penalty\@lowpenalty}%
      }%
      \def\item{\tud@idxitem{0}}%
      \def\subitem{\tud@idxitem*{1}}%
      \def\subsubitem{\tud@idxitem*{2}}%
      \def\subsubsubitem{\tud@idxitem*{3}}%
%      \ifundef{\indexspace}{%
%        \let\indexspace\relax%
%      }{%
        \renewcommand*\indexspace{\par\vskip1em\@plus2ex\@minus1ex\relax}%
%      }%
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
  % TODO \inputencodingname erst bei printindex verwenden
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
      \mbox{\emph{#1}}\nbs\tud@res@a%
    \else%
      \def\tud@res@c##1 ##2\@nil{%
        ##2##1\space\mbox{\emph{\alsoname}}\nbs\tud@res@a%
      }%
      \expandafter\tud@res@c\tud@res@b\@nil%
    \fi%
  \endgroup%
}
\NewDocumentCommand\seeref{s m}{%
  \mbox{\emph{\IfBooleanTF{#1}{\alsoname}{\seename}}}\nbs\begingroup#2\endgroup%
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
    \Markup@Suffix@@Select[\protected@edef\tud@res@a]{}{#3}%
    \IfValueTF{#6}{\def\tud@res@b{#6}}{\let\tud@res@b\relax}%
    \tud@if@strequal{\tud@ety@dflt}{#8}{%
      \let\tud@res@c\@empty%
    }{%
      \def\tud@res@c{(#8)}%
    }%
    \begingroup%
      \Markup@Expandable%
      \ifx\tud@res@b\relax\else%
        \protected@edef\tud@res@b{\tud@res@b}%
      \fi%
      \protected@edef\tud@res@a{%
        \endgroup%
        \unexpanded{\def\tud@idx@key}{%
          \IfValueTF{#5}{#5}{#4}%
          \if@tud@res@swa%
            \tud@res@a%
          \fi%
          \ifx\tud@res@b\relax\else\space\tud@res@b\fi%
          \if@tud@res@swa%
            \ifx\tud@res@c\@empty\else\space\tud@res@c\fi%
          \fi%
        }%
      }%
    \tud@res@a%
    \protected@edef\tud@idx@fmt{%
      \csname #3\endcsname{%
        #4\IfValueT{#5}{/#5}\ifx\tud@res@b\relax\else=\tud@res@b\fi%
      }(#8)%
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
% TODO swap @@get with @get; search for possible substitutions
\newcommand*\tud@lbl@@get[2]{%
  \begingroup%
    \Markup@Get\tud@res@a{#2}%
    \expandafter\tud@lbl@get\expandafter\tud@lbl@tmp\tud@res@a%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@lbl@tmp}%
    }%
  \tud@res@a%
}
% TODO label '#8' evtl als optionales Argument und ansonsten mit lbl@get?
\newcommand*\tud@idx@parent{}
\let\tud@idx@parent\relax%
\NewDocumentCommand\tud@idx@get{%
  s m m r// r== r[] r() r''%
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
      \ifundef{\tud@idx@parent}{}{%
        \Markup@Get\tud@res@b{\tud@idx@parent}%
        \expandafter\tud@lbl@get\expandafter\tud@lbl@tmp\tud@res@b%
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
      \ifx\tud@res@a\@empty\else%
        \IfValueT{#5}{%
          \tud@if@param@special{#5}{}{%
            \def\tud@res@c##1@##2\@nil{%
              \def\tud@res@b{{##1}@{\MarkupSuffixInline{##2}}}%
            }%
            \expandafter\tud@res@c\tud@res@b\@nil%
          }%
        }%
      \fi%
      \eappto\tud@res@a{\expandonce\tud@res@b}%
      % TODO übler Hack, muss in ||
      \Markup@Name@Get\tud@res@c{#3}%
      \tud@if@strequal{\tud@res@c}{Distribution}{%
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
        \ifundef{\tud@idx@parent}{%
          \tud@if@param@special{#5}{%
            \def\tud@res@c##1=##2\@nil{\def\tud@res@c{##1}}%
            \tud@res@c#8\@nil%
            \expandafter\tud@res@b\expandafter{\tud@res@c}%
          }{}%
        }{}%
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
        \hyperref[{idx:##2}]{%
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
    \setchapterpreamble{%
      \begin{abstract}
        \noindent%
        Die Formatierung der Eintr\"age in allen aufgef\"uhrten Indexen ist 
        folgenderma\ss{}en aufzufassen: \textbf{Zahlen in fetter Schrift} 
        verweisen auf die \textbf{Erkl\"arung} zu einem Stichwort, wobei in der
        digitalen Fassung dieses Handbuchs dieser Eintrag selbst ein Hyperlink
        zu seiner Erl\"auterung ist. Seitenzahlen in normaler Schriftst\"arke
        hingegen deuten auf zus\"atzliche Informationen, wobei diese f\"ur
        \textit{kursiv hervorgehobene Zahlen} als besonders \textit{wichtig} 
        erachtet werden.\par 
        Eintr\"age von \hyperref[idx:options]{Klassen- und Paketoptionen},
        \hyperref[idx:macros]{Umgebungen und Befehlen} sowie 
        \hyperref[idx:elements]{Seitenstilen, Schriftelementen und Farben} 
        respektive \hyperref[idx:misc]{L\"angen und Z\"ahlern}, die nicht durch 
        \TUDScript sondern von anderen Klassen oder Paketen zur Verf\"ugung 
        gestellt werden, sind diese im Suffix des entsprechenden Eintrages 
        angegeben. Exisitiert f\"ur einen solchen Eintrag \emph{keine} direkte 
        \textbf{Erl\"auterung} ist dementsprechend auch kein Hyperlink 
        verfügbar.%
      \end{abstract}
    }%
    \addchap{\indexname}
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
      auch explizite Wertzuweisungen an diese Parameter angegeben.%
    )%
    \tud@print@index[terms]%
    (%
      Dies sind die von \TUDScript definierten respektive erw\"ahnten, %
      sprachabh\"angigen Bezeichner. Informationen zu Nutzung und %
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
      \indexprologue{\label{idx:#1}#2\tud@idx@vskip}%
    }{%
      \indexprologue[\tud@idx@vskip]{\label{idx:#1}}%
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
      \addto@hook@expandafter\tud@toks@{\expandafter(\tud@res@a)}%
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
          \hyperref[{idx:changelog:##1}]{##1}%
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
\DeclareListParser*{\forscsvlist}{;}
% TODO argument order
% TODO Bundle aus Markup extrahieren, falls vorhanden?
\NewDocumentCommand\Changed@At@CreateList{m o d() d:: m}{%
  \IfValueT{#1}{\Changed@At@@CreateList{#1}[{#2}](#3):#4:{#5}}%
}
% TODO  >{\Processor@Entity}R(){\tud@ety@curr} ist Quark, oder?
\NewDocumentCommand\Changed@At@@CreateList{%
  m r[] >{\Processor@Entity}R(){\tud@ety@curr} r:: m%
}{%
  \def\tud@res@a{#3}%
  \@for\tud@res@a:=\tud@res@a\do{%
    \tud@toks@{\Changed@At@@@CreateList[{#2}]}%
    \addto@hook@expandafter\tud@toks@{\expandafter(\tud@res@a):#4:{#5}}%
    \forscsvlist{\the\tud@toks@}{#1}%
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
      \addto@hook@expandafter\tud@toks@{\expandafter{\tud@res@a}}%
      \addto@hook\tud@toks@{[{#1}](#3)}%
      \addto@hook@expandafter\tud@toks@{\expandafter:\tud@res@b:}%
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
    \apptocmd{\theindex}{%
      % TODO neuer Stil tudscrmanual-gls.xdy oder tudscrmanual-clg.xdy
      % oder tudscrmanual-changelog.xdy [und tudscrmanual-index.xdy]
      % tudscrdoc beachten
      \let\lettergroup\@gobble%
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
        \label{idx:changelog:##1}%
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
        \addto@hook@expandafter\tud@toks@{\expandafter'\tud@lbl@tmp'}%
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
      \protected@edef\tud@res@b{#4}%
      \protected@expandtwoargs\in@{\string @}{#4}%
      \ifin@%
        \expandafter\def\expandafter\tud@res@c%
          \expandafter##\expandafter1\string @##2\@nil{%
          \def\tud@res@b{{##1}@{\MarkupSuffixInline{##2}}}%
        }%
        \expandafter\tud@res@c\tud@res@b\@nil%
      \else%
        \protected@expandtwoargs\in@{@}{\tud@res@b}%
        \ifin@%
          \def\tud@res@c##1@##2\@nil{%
            \def\tud@res@b{{##1}@{\MarkupSuffixInline{##2}}}%
          }%
          \expandafter\tud@res@c\tud@res@b\@nil%
        \else%
          \begingroup%
            \Markup@Expandable%
            \protected@edef\tud@res@c{%
              \endgroup%
              \unexpanded{\def\tud@res@b}{%
                {\tud@res@b}@{\MarkupSuffixInline{\expandonce\tud@res@b}}%
              }%
            }%
          \tud@res@c%
        \fi%
      \fi%
      \index[changelog]{#1!Allgemein\tud@res@a!\tud@res@b}%
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
        \def\tud@res@c{\MarkupSuffixInline{#6}}%
      }%
    }%
    \IfValueT{#4}{%
      \Changed@At@@@CreateEntry\tud@res@a{#4}:\tud@res@b::\tud@res@c:(#5)%
      \let\tud@res@b\@empty%
      \def\tud@res@c{Werte angepasst}%
    }%
    \IfValueT{#3}{%
      \Changed@At@@@CreateEntry\tud@res@a{#3}:\tud@res@b::\tud@res@c:(#5)%
      \let\tud@res@b\@empty%
      \def\tud@res@c{Parameter angepasst}%
    }%
    \Changed@At@@@CreateEntry\tud@res@a{#2}:\tud@res@b::\tud@res@c:(#5)%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\tud@res@a}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Changed@At@@@CreateEntry{m m r:: r:: r()}{%
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
      \begingroup%
        \Markup@Expandable%
        \protected@edef\tud@res@b{%
          \endgroup%
          \unexpanded{\def\tud@res@b}{##1##3}%
        }%
      \tud@res@b%
    }%
    \tud@res@b%
    \tud@replace@@in\tud@res@b{\idxsuffix{#5}}{}%
    \tud@replace@@in\tud@res@c{\idxsuffix{#5}}{}%
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
  \ifundef{\item}{}{\let\tud@item@raw\item}%
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
    \protected@edef\tud@res@a{#2}%
    \let\tud@res@b\@empty%
    \protected@expandtwoargs\in@{,}{\tud@res@a}%
    \ifin@%
      \def\tud@res@c##1,##2\@nil{%
        \def\tud@res@c####1{%
          \appto\tud@lbl@alias@values{,####1}
          \eappto\tud@res@b{%
            \PValue{/}\PValue@Enfold\IfBooleanT{#1}{*}'\unexpanded{{####1}}%
          }%
        }%
        \forcsvlist{\tud@res@c}{##2}%
        \def\tud@res@a{##1}%
      }%
      \tud@res@c#2\@nil%
    \fi%
    \protected@edef\tud@res@c{%
      \PValue@Enfold\IfBooleanT{#1}{*}{\noexpand\tud@res@a}%
    }%
    \tud@res@c%
    \IfBooleanTF{#1}{%
      \appto\tud@res@b{\suffix{S\"aumniswert}}%
    }{%
      \IfValueT{#3}{\appto\tud@res@b{\suffix{S\"aumniswert f\"ur #3}}}%
    }%
    \IfValueT{#4}{\appto\tud@res@b{\suffix{#4}}}%
    \def\tud@res@c##1##2{%
      \begingroup%
        % DOC parse second token of something like \Option{key=value}...
        \def\tud@res@c####1####2####3\@nil{%
          % DOC split key=value and substitute value with ##1
          \def\tud@res@c########1=########2\@nil{\def\tud@res@c{########1=##1}}%
          \tud@res@c####2=\@nil%
          % DOC re-concatenate with replaced value
          \edef\tud@res@c{%
            \unexpanded{####1}{\expandonce\tud@res@c}\unexpanded{####3}%
          }%
        }%
        \tud@res@c##2\@nil%
        \IfValueT{#5}{%
          \def\tud@res@b{\Changed@At@CreateList{#5}}%
          \eappto\tud@res@b{[\expandonce\tud@res@c]:<new>:{\BooleanTrue}}%
        }%
        \edef\tud@res@c{%
          \noexpand\InlineDeclaration%
          \ifx\tud@res@a\@empty\else*\fi%
          {\expandonce\tud@res@c}%
          <\tud@lbl@val\expandonce\tud@lbl@alias@values>%
        }%
        \preto\tud@res@c{\def\tud@idx@parent{##2}}%
        \edef\tud@res@c{%
          \endgroup%
          \unexpanded{\appto\tud@res@a}{\expandonce\tud@res@c}%
          \unexpanded{\appto\tud@res@b}{\expandonce\tud@res@b}%
        }%
      \tud@res@c%
    }%
    \edef\tud@res@a{%
      \unexpanded{\let\tud@res@a\@empty\let\tud@res@b\@empty}%
      \noexpand\forlistloop{%
        \noexpand\tud@res@c{\expandonce\tud@res@a}%
      }{\noexpand\tud@declaration@list}%
      \unexpanded{\appto\tud@res@a}{\expandonce\tud@res@b}%
    }%
    \tud@res@a%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@item@raw[\expandonce\tud@res@a]%
      \ifx\tud@res@b\@empty\else%
        \expandonce\tud@res@b%
        \noexpand\tud@print@changedatlist[-1\baselineskip]%
      \fi%
    }%
  \tud@res@a%
}
\newcommand*\tud@item@val@loop@declaration@list[3]{%
}
\NewDocumentCommand\tud@item@val@true{!s !d== !d'' !d() !o}{%
  \tud@item@val@bool{#1}{true,on,yes}=#2='#3'(#4)[{#5}]%
}
\NewDocumentCommand\tud@item@val@false{!s !d== !d'' !d() !o}{%
  \tud@item@val@bool{#1}{false,off,no}=#2='#3'(#4)[{#5}]%
}
\NewDocumentCommand\tud@item@val@bool{m m r== r'' r() r[]}{%
  \tud@toks@{\tud@item@val}%
  \IfBooleanT{#1}{\addto@hook\tud@toks@{*}}%
  \protected@edef\tud@res@a{#2\IfValueT{#3}{,#3}}%
  \addto@hook@expandafter\tud@toks@{\expandafter=\tud@res@a=}%
  \addto@hook\tud@toks@{'#4'}%
  \addto@hook\tud@toks@{(#5)[{#6}]}%
  \the\tud@toks@%
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
      % TODO \tud@trace@lbl@add{url}<CTAN:???>{!\tud@lbl@tmp}%
    }%
    \forcsvlist\tud@res@b{#1}%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\stditem[{%
        % TODO kritisch?
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
  \labeling{{\usekomafont{disposition}{Beispiel:\nbs}}}%
  \item[{\usekomafont{disposition}{Beispiel:\nbs}}]%
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
% TODO \href[pdfnewwindow]{tutorials/#1.pdf#???}{\File*{#1.pdf}#2}
\newrobustcmd*\HyperTutorial[2]{%
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
    \HyperTutorial{#2}{}%
  }{%
    \File*{#2.pdf}%
    \tud@shellescape@wrn{tutorials/#2.pdf}%
  }%
  % TODO Suffix (Datei) im Index ignorieren
  \IfBooleanF{#1}{%
    \index[files]{\HyperTutorial{#2}{\suffix{Tutorial}}\IfValueT{#3}{|#3}}%
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
  \PassOptionsToPackage{colorinlistoftodos}{todonotes}%
}
\RequirePackage{todonotes}[2012/07/25]
\AtEndPreamble{%
  \ifdim\marginparwidth<2cm\relax%
    \tud@setdim\marginparwidth{2cm}%
  \fi%
}
\AfterPackage*{todonotes}{%
  \newcommand*\@ToDo[2][]{%
    \expandafter\todo\expandafter[\expandafter{#1}]{\trim@spaces{#2}\strut}%
  }%
  \NewDocumentCommand\ToDo{s O{default} m !o}{%
    \if@tud@todo%
      \global\let\tud@currentHref\@currentHref%
      \begingroup%
        \begingroup%
          \let\tud@res@a\tud@todo@type@use%
          \let\tud@res@b\@empty%
          \TUDoptions{ToDo={only={#2}}}%
          \def\tud@res@c##1{%
            \ifinlist{##1}{\tud@res@a}{\listadd\tud@res@b{##1}}{}%
          }%
          \forlistloop\tud@res@c\tud@todo@type@use%
          \edef\tud@res@c{%
            \endgroup%
            \unexpanded{\def\tud@todo@type@use}{\expandonce\tud@res@b}%
          }%
        \tud@res@c%
        \ifx\tud@todo@type@use\@empty\else%
          \edef\tud@res@a{\TUDScriptVersionNumber}%
          \ifinlist{rls}{\tud@todo@type@use}{%
            \def\tud@res@c{HKS44}%
            \IfValueT{#4}{%
              \ClassWarning{tudscrmanual}{%
                ToDo type `rls' is fixed to current version%
              }%
            }%
          }{%
            \ifinlist{imp}{\tud@todo@type@use}{%
              \def\tud@res@c{HKS57}%
            }{%
              \ifinlist{doc}{\tud@todo@type@use}{%
                \def\tud@res@c{HKS33}%
              }{%
                \def\tud@res@c{HKS92}%
              }%
            }%
            \IfValueT{#4}{\protected@edef\tud@res@a{#4}}%
          }%
          \begingroup%
            \edef\tud@res@a{%
              \unexpanded{\tud@v@get\tud@res@a}{\expandonce\tud@res@a}%
            }%
            \tud@res@a%
            \def\tud@res@b##1.##2##3##4\@nil{##1##2##3}%
            \edef\tud@res@a{\expandafter\tud@res@b\tud@res@a.000\@nil}%
            \Ifnumber{\tud@res@a}{%
              \edef\tud@res@b{%
                \expandafter\tud@res@b\TUDScriptVersionNumber.000\@nil%
              }%
              \ifnum\tud@res@a<\tud@res@b\relax%
                \let\tud@res@c\relax%
              \else%
                \ifnum\tud@res@a>\tud@res@b\relax%
                  \appto\tud@res@c{!20}%
                \else%
                  \appto\tud@res@c{!50}%
                \fi%
              \fi%
              \def\tud@res@b##1##2\@nil{\def\tud@res@a{v##1.##2}}%
              \expandafter\tud@res@b\tud@res@a\@nil%
            }{%
              \let\tud@res@a\relax%
              \appto\tud@res@c{!50}%
            }%
            \edef\tud@res@c{%
              \endgroup%
              \ifx\tud@res@a\relax\else%
                \unexpanded{\def\tud@res@a}{\tud@res@a}%
              \fi%
              \ifx\tud@res@c\relax%
                \unexpanded{%
                  \edef\tud@res@b{color=\tud@res@c!50}%
                  \def\tud@res@c{color=HKS07!50}%
                }%
              \else%
                \unexpanded{\def\tud@res@b}{color=\tud@res@c}%
                \unexpanded{\let\tud@res@c\tud@res@b}%
              \fi%
            }%
          \tud@res@c%
          \ifhmode\par\fi%
          \let\par\relax%
          \vskip\medskipamount%
          \noindent%
          \edef\tud@res@c{\tud@res@c,inline\IfBooleanT{#1}{,nolist}}%
          \sbox\z@{\@ToDo[{\tud@res@c}]{#3}}\usebox\z@%
          \renewcommand*\marginpar[2][]{%
            \marginnote[{##1}]{##2}[\dimexpr\ht\strutbox-\ht\z@-\dp\z@\relax]%
          }%
          \edef\tud@res@b{\tud@res@b,noline,nolist}%
          \settowidth\marginparwidth{\tud@res@a}%
          \tud@addtodim\marginparwidth{\dimexpr1.6ex+1pt\relax}%
          \@ToDo[{\tud@res@b}]{\tud@res@a}%
          \aftergroup\par\aftergroup\noindent%
        \fi%
      \endgroup%
      \global\let\@currentHref\tud@currentHref%
    \fi%
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
      \tud@remove@enfold@char\tud@res@a{/}%
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
    \tud@remove@enfold@char\tud@res@a{/}%
    \edef\tud@res@b{%
      \endgroup%
      \unexpanded{\def#1}{\tud@res@a}%
    }%
  \tud@res@b%
}
\newcommand*\tud@remove@enfold@char[2]{%
  \begingroup%
    \expandafter\def\expandafter\tud@res@b\expandafter{#1}%
    \trim@spaces@in{\tud@res@b}%
    \expandafter\in@\expandafter#2\expandafter{\tud@res@b}%
    \ifin@%
      \let\tud@res@a\@empty%
      \def\tud@res@c##1#2##2\@nil{%
        \IfArgIsEmpty{##1}{}{%
          \ifx\tud@res@a\@empty%
            \def\tud@res@a{##1}%
          \else%
            \appto\tud@res@a{#2##1}%
          \fi%
        }%
        \IfArgIsEmpty{##2}{}{\tud@res@c##2\@nil}%
      }%
      \expandafter\tud@res@c\tud@res@b#2\@nil%
    \else%
      \let\tud@res@a\tud@res@b%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@res@a}%
    }%
  \tud@res@a%
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
\newcommand*\textsbi{}
\newrobustcmd*\sbsfont{\sffamily\bfseries\itshape}
\DeclareTextFontCommand\textsbi{\sbsfont}
\newcommand*\textttit{}
\newrobustcmd*\ttitfont{\ttfamily\itshape}
\DeclareTextFontCommand\textttit{\ttitfont}
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
    \space:open "\string\,\string\dotfill{}\space"%
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
    \space:open "\string\textit{\string\hyperpage{"%
    \space:close "}}"%
    )^^J%
    (markup-locref%
    \space:attr "?"\@spaces\@spaces%
    \space:open "\string\textit{\string\hyperpage{"%
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
