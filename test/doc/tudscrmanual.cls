% TODO squash feature/newmarkup, reset develop
\newcommand*\tud@typeout[1]{\typeout{dbg(\the\inputlineno): #1}}
%\let\tud@typeout\@gobble
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
%%               2020/06/25 v2.07 TUD-Script
%% 
%% Copyright (C) Falk Hanisch <hanisch.latex@outlook.com>, 2012-2020
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
  \TUD@@Version{2020/09/30 v2.07 TUD-Script}{2019/12/23 v3.28 KOMA-Script}%
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
  2020/06/25 v2.07 TUD-Script
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
  2020/06/25 v2.07 TUD-Script
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
\newcommand*\tud@set@add[2]{%
  \ifinlist{#2}{#1}{}{\listadd#1{#2}}%
}
\newcommand*\tud@set@eadd[2]{%
  \xifinlist{#2}{#1}{}{\listeadd#1{#2}}%
}
\newcommand*\tud@set@xadd[2]{%
  \xifinlist{#2}{#1}{}{\listxadd#1{#2}}%
}
\newcommand*\tud@set@csxadd[2]{%
  \xifinlistcs{#2}{#1}{}{\listcsxadd{#1}{#2}}%
}
\providerobustcmd{\listeremove}[2]{%
  \begingroup%
    \edef\etb@tempa{\endgroup\unexpanded{\listremove#1}{#2}}%
  \etb@tempa%
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
\tud@newcount\tud@todo@num
\newcommand*\tud@todo@type@use{}%
\newcommand*\tud@todo@type@default{}
\forcsvlist{\listadd\tud@todo@type@default}{rls,imp,doc,default}
\TUD@key{ToDo}[true]{%
  \TUD@set@numkey{ToDo}{tud@todo@num}{%
    \TUD@bool@numkey,{inline}{1},{noinline}{2}%
  }{#1}%
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
          \trim@spaces@in\tud@res@a%
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
          \noexpand\FamilyKeyStateProcessed%
        \else%
          \tud@todo@num=\z@\relax%
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
      \def\tud@res@b{\listeremove\tud@todo@type@use}%
    }{%
      \let\tud@todo@type@use\@empty%
      \def\tud@res@b{\tud@set@eadd\tud@todo@type@use}%
    }%
    \let\tud@res@c\@empty%
    \@for\tud@res@a:=\tud@res@a\do{%
      \trim@spaces@in\tud@res@a%
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
  2020/06/25 v2.07 TUD-Script
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
\forlistloop{\tud@res@a}{\tud@trace@lbl@types}
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
  \def\tud@trace@lbl@wlog{\relax}%
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
  \forlistloop{\tud@res@a}{\tud@res@c}%
}
\@onlypreamble\tracinglabels
\NewDocumentCommand\tud@trace@lbl@add{m d<> m}{%
  \ifcsundef{tud@trace@lbl@#1@list}{%
    \ifinlist{#1}{\tud@trace@lbl@types}{}{%
      \ClassError{tudscrmanual}{Undefined label type `#1'}{%
        The given tracing type was never defined.%
      }%
    }%
  }{%
    \begingroup%
      \protected@edef\tud@res@a{%
        \endgroup%
        \noexpand\tud@trace@lbl@@add{#1}<#2>{#3}%
      }%
    \tud@res@a%
  }%
}
\NewDocumentCommand\tud@trace@lbl@@add{m r<> m}{%
  \begingroup%
    \let\tud@res@b\@empty%
    \let\tud@res@c\@empty%
    \let\tud@res@d\m@ne%
    \IfValueT{#2}{%
      \TUD@set@numkey{}{tud@res@d}{{url}{0},{missing}{1},{matched}{2}}{#1}%
      \ifx\FamilyKeyState\FamilyKeyStateProcessed%
        \ifcase\tud@res@d\relax%
          \def\tud@res@c{#2}%
        \or%
          \def\tud@res@c{->\space#2}%
        \or%
          \def\tud@res@b{\space(substituted)}%
          \def\tud@res@c{<-\space#2}%
        \fi%
      \else%
        \ClassWarning{tudscrmanual}{No specific label log `#1' defined}%
        \FamilyKeyStateProcessed%
      \fi%
    }%
    \def\do##1{%
      \ifnum\tud@res@d=\@ne\relax% missing
        \tud@trace@lbl@add{url}<#2>{##1}%
      \fi%
      \begingroup%
        \ifnum\tud@res@d=\z@\relax% url
          \tud@if@lbl@exists{##1}{%
            \protected@edef\tud@res@c{\tud@res@c\space<-\space##1}%
          }{%
            \protected@edef\tud@res@c{\tud@res@c\space??\space##1}%
          }%
        \else%
          \protected@edef\tud@res@c{%
            ##1\ifx\tud@res@c\@empty\else\space\tud@res@c\fi%
          }%
        \fi%
        \@onelevel@sanitize\tud@res@c%
        \tud@set@csxadd{tud@trace@lbl@#1@list}{\tud@res@c}%
      \endgroup%
      \protected@eappto\tud@res@a{%
        ^^J\@spaces##1%
        \ifx\tud@res@c\@empty\else^^J\@spaces\tud@res@c\fi%
      }%
    }%
    \let\tud@res@a\@empty%
    \dolistloop{#3}%
    \ifnum\tud@res@d=\z@\relax\else% !url
      \ifx\tud@res@a\@empty\else%
        \epreto\tud@res@a{+++++ label #1\tud@res@b\on@line\space+++++}%
        \@onelevel@sanitize\tud@res@a%
        \wlog{\tud@res@a}%
      \fi%
    \fi%
  \endgroup%
}
\newcommand*\tud@trace@markup@types{}
\listadd\tud@trace@markup@types{declare}
\listadd\tud@trace@markup@types{output}
\def\tud@res@a#1{%
  \expandafter\newcommand\csname tud@trace@markup@#1@list\endcsname{}%
  \cslet{tud@trace@markup@#1@list}\relax%
}
\forlistloop{\tud@res@a}{\tud@trace@markup@types}
\NewDocumentCommand\tracingmarkup{!O{declare}}{%
  \def\tud@res@a##1{%
    \cslet{tud@trace@markup@##1@list}\relax%
  }%
  \forlistloop{\tud@res@a}{\tud@trace@markup@types}%
  \let\tud@res@b\@empty%
  \let\tud@res@c\@empty%
  \protected@edef\tud@res@a{#1}%
  \@for\tud@res@a:=\tud@res@a\do{%
    \trim@spaces@in\tud@res@a%
    \listeadd\tud@res@b{\tud@res@a}%
  }%
  \ifinlist{all}{\tud@res@b}{%
    \let\tud@res@c\tud@trace@markup@types%
  }{%
    \def\tud@res@a##1{\xifinlist{##1}{\tud@res@b}{\listeadd\tud@res@c{##1}}{}}%
    \forlistloop{\tud@res@a}{\tud@trace@markup@types}%
  }%
  \def\tud@res@a##1{\cslet{tud@trace@markup@##1@list}\@empty}%
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
      \wlog{+++++ markup #1\on@line\space+++++^^J\@spaces\tud@res@a}%
      \tud@set@csxadd{tud@trace@markup@#1@list}{\tud@res@a}%
    }%
  \endgroup%
}
\NewDocumentCommand\tud@auxlist@register{s D(){\@firstofone} m}{%
  \expandafter\newcommand\expandafter*\csname#3@auxlist\endcsname{}%
  \expandafter\newcommand\expandafter*\csname#3@auxlist@positive\endcsname{}%
  \expandafter\newcommand\expandafter*\csname#3@auxlist@negative\endcsname{}%
  \expandafter\newcommand\expandafter*\csname#3@auxlist@handler\endcsname{#2}%
  \BeforeClosingMainAux{%
    \forlistcsloop{\listcsremove{#3@auxlist@positive}}{#3@auxlist@negative}%
  }%
  \BeforeClosingMainAux{\tud@auxlist@export{#3}}%
  \AtBeginDocument{\tud@auxlist@import{#3}{#1}}%
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
    \edef\tud@res@a{\unexpanded{\@tfor\tud@res@c:=}\csexpandonce{#1@auxlist}}%
    \letcs\tud@res@b{#1@auxlist@handler}%
    \global\cslet{#1@auxlist}\@empty%
    \tud@res@a\do{%
      \edef\tud@res@c{\tud@res@b{\tud@res@c}}%
      \listcsxadd{#1@auxlist}{\expandonce\tud@res@c}%
    }%
  \endgroup%
  \IfBooleanT{#2}{\forlistcsloop{\@firstofone}{#1@auxlist}}%
}
\newcommand*\tud@auxlist@add[2]{%
  \begingroup%
    \protected@edef\tud@res@a{#2}%
    \edef\tud@res@a{\detokenize\expandafter{\tud@res@a}}%
    \tud@set@csxadd{#1@auxlist@positive}{\tud@res@a}%
  \endgroup%
}
\newcommand*\tud@auxlist@remove[2]{%
  \begingroup%
    \protected@edef\tud@res@a{#2}%
    \edef\tud@res@a{\detokenize\expandafter{\tud@res@a}}%
    \tud@set@csxadd{#1@auxlist@negative}{\tud@res@a}%
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
\NewExpandableDocumentCommand\@gobbleopt@one{o m}{}
\patchcmd\@outputpage{%
  \let\index\@gobble\let\glossary\@gobble%
}{%
  \let\index\@gobbleopt@one\let\glossary\@gobbleopt@one%
}{}{\tud@patch@wrn{@outputpage}}
\newcommand*\tud@addtocontents@hook{}
\let\tud@addtocontents@hook\relax
\patchcmd\addtocontents{%
  \let\index\@gobble\let\glossary\@gobble%
}{%
  \let\index\@gobbleopt@one\let\glossary\@gobbleopt@one%
  \tud@addtocontents@hook%
}{}{\tud@patch@wrn{addtocontents}}%
\newcommand*\tud@headings@special[1]{%
  \appto\tud@addtocontents@hook{#1}%
  \AfterPackage*{hyperref}{\pdfstringdefDisableCommands{#1}}%
  \AfterPackage*{nameref}{\GetTitleStringDisableCommands{#1}}%
}
\@onlypreamble\tud@headings@special
\tud@headings@special{\let\index\@gobbleopt@one}
\AfterPackage*{nameref}{%
  \patchcmd\NR@gettitle{%
    \GetTitleString%
  }{%
    \GetTitleStringExpand%
  }{}{\tud@patch@wrn{NR@gettitle}}%
}
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
  % PENDING replace all \hyperref[]{} with \hyperlink{}{}
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
% PENDING wo sind urls als fußnoten überhaupt sinnvoll?
\newcommand*\hrfn[2]{\href{#1}{\trim@spaces{#2}}\footnote{\url{#1}}}
\newrobustcmd*\mailto[1]{\mbox{\href{mailto:#1}{\nolinkurl{#1}}}}%
\newrobustcmd*\bsc{\kern-.05em\@backslashchar\kern-.05em}
\newrobustcmd*\nbs{\nobreakspace{}}
\DeclareListParser*{\forssvlist}{;}
\PassOptionsToPackage{nospace}{varioref}
\RequirePackage{varioref}[2019/11/05]
\renewrobustcmd*\fullref[1]{\hyperlink{#1}{\autoref*{#1}\space\vpageref{#1}}}
\PassOptionsToPackage{babel}{microtype}
\AfterPackage*{hyperref}{\RequirePackage{microtype}[2013/05/23]}
\TUD@UnwindPackage{hyperref}{\RequirePackage{microtype}[2013/05/23]}
\newcommand*\tud@xdy@settings{}
% TODO locale-Einstellung in Abhängigkeit der Hauptsprache! 
\edef\tud@xdy@settings{texindy -M \@currname-ind.xdy -L german-din}
\NewDocumentCommand\tud@xdy@make{s o m !O{\jobname}}{%
  \protected@edef\tud@res@a{%
    title={#3},%
    columnsep=\noexpand\f@size\noexpand\p@,%
    name={#4},%
    options={\tud@xdy@settings\space-t \jobname-#4.xlg},%
    \IfValueT{#2}{#2}%
  }%
  \expandafter\makeindex\expandafter[\tud@res@a]%
  % TODO NewCrossIndex
%  \expandafter\newcommand\expandafter*\csname tud@idx@cross@#4\endcsname{}%
}
%  \tud@xdy@make{Allgemeiner Index}%
%  \tud@xdy@make*{Klassen- und Paketoptionen}[options]%
%  \tud@xdy@make*{Befehle und Umgebungen mit zugeh\"origen Parametern}[macros]%
%  \tud@xdy@make*{Sprachabh\"angige Bezeichner}[terms]%
%  \tud@xdy@make*{Seitenstile, Schriftelemente und Farben}[elements]%
%  \tud@xdy@make*{L\"angen und Z\"ahler}[misc]%
%  \tud@xdy@make*{Klassen, Pakete und Dateien}[files]%
%  \tud@xdy@make[columns=1]{\"Anderungsliste}[changelog]%
\let\index\@gobbleopt@one%
\let\makeindex\@empty
\@onlypreamble\makeindex
\newcommand*\tud@idx@mdf{}
\newcommand*\tud@idx@label{}
\if@filesw
  \newwrite\@indexfile%
  \immediate\openout\@indexfile=\jobname.idx%
  \typeout{Writing index file \jobname.idx}%
  \def\index{%
    \@bsphack%
    \@ifnextchar[%]
      {\@index}%
      {\@index[\jobname]}%
  }%
  \def\@index[#1]#2{%
    % URGENT mit Liste aus tud@makeindex abgleichen
%    \@ifundefined{#1@idxfile}{%
%      \ClassWarning{tudscrmanual}{Undefined index file `#1'}%
%    }{%
      \begingroup%
        \@sanitize%
        \protected@write\@indexfile{}{\string\indexentry[#1]{#2}{\thepage}}%
      \endgroup%
%    }%
    \@esphack%
  }%
  \BeforeClosingMainAux{%
    \immediate\closeout\@indexfile%
    \@tud@res@swafalse%
    \ifundef{\pdf@filemdfivesum}{%
      \@tud@res@swatrue%
      \let\tud@idx@mdf\@empty%
    }{%
      \edef\tud@res@a{\pdf@filemdfivesum{\jobname.idx}}%
      \ifnum\pdf@strcmp{\tud@res@a}{\tud@idx@mdf}=\z@\else%
        \@tud@res@swatrue%
      \fi%
    }%
    \if@tud@res@swa%
      \ifnum\pdf@shellescape=\@ne\relax%
        \ifundef{\inputencodingname}{%
          \appto\tud@xdy@settings{ -C utf8}%
        }{%
          \eappto\tud@xdy@settings{ -C \inputencodingname}%
        }%
        \ShellEscape{splitindex -m \string"\tud@xdy@settings" \jobname.idx}%
      \else%
        \let\tud@res@a\tud@idx@mdf%
        \ClassWarningNoLine{tudscrmanual}{%
          The index file `\jobname.idx' has changed. Run again\MessageBreak%
          with --shell-escape flag enabled%
        }%
      \fi%
    \fi%
    \immediate\write\@mainaux{\string\gdef\string\tud@idx@mdf{\tud@res@a}}%
  }%
\fi%
\AtBeginDocument{%
%  \PassOptionsToPackage{xindy,splitindex}{imakeidx}%
%  \RequirePackage{imakeidx}[2016/10/15]%
%  \indexsetup{%
%    level=\addsec,%
%    noclearpage,firstpagestyle=headings,headers={\indexname}{\indexname},%
%    othercode={%
%      \def\lettergroup##1{\minisec{##1}}%
%      \DeclareDocumentCommand\tud@idxitem{s m}{%
%        \par%
%        \hspace*{\dimexpr\numexpr##2\relax em\relax}%
%        \hangindent=\dimexpr\numexpr##2+3\relax em\relax%
%        \IfBooleanT{##1}{\penalty\@lowpenalty}%
%      }%
%      \def\item{\tud@idxitem{0}}%
%      \def\subitem{\tud@idxitem*{1}}%
%      \def\subsubitem{\tud@idxitem*{2}}%
%      \def\subsubsubitem{\tud@idxitem*{3}}%
%%      \ifundef{\indexspace}{%
%%        \let\indexspace\relax%
%%      }{%
%        \renewcommand*\indexspace{\par\vskip1em\@plus2ex\@minus1ex\relax}%
%%      }%
%    }%
%  }%
%  \ifimki@original\else%
%    \CheckCommand\theindex{%
%      \imki@maybeaddtotoc
%      \imki@indexlevel{\indexname}\imki@indexheaders
%      \thispagestyle{\imki@firstpagestyle}%
%      \ifnum\imki@columns>\@ne
%        \columnsep \imki@columnsep
%        \ifx\imki@idxprologue\relax
%          \begin{multicols}{\imki@columns}
%        \else
%          \begin{multicols}{\imki@columns}[\imki@idxprologue]
%        \fi
%      \else
%        \imki@idxprologue
%      \fi
%      \global\let\imki@idxprologue\relax
%      \parindent\z@
%      \parskip\z@ \@plus .3\p@\relax
%      \columnseprule \ifKV@imki@columnseprule.4\p@\else\z@\fi
%      \raggedright
%      \let\item\@idxitem
%      \imki@othercode%
%    }%
%    \patchcmd\theindex{%
%      \imki@indexlevel{\indexname}\imki@indexheaders%
%    }{%
%      \imki@indexheaders%
%    }{}{\tud@patch@wrn{theindex}}%
%    \patchcmd\theindex{%
%      \ifnum\imki@columns>\@ne
%        \columnsep \imki@columnsep
%        \ifx\imki@idxprologue\relax
%          \begin{multicols}{\imki@columns}
%        \else
%          \begin{multicols}{\imki@columns}[\imki@idxprologue]
%        \fi
%      \else
%        \imki@idxprologue
%      \fi
%    }{%
%      \edef\tud@res@a{%
%        \noexpand\imki@indexlevel{%
%          \noexpand\indexname%
%          \ifx\tud@idx@label\@empty\else%
%            \noexpand\label{\tud@idx@label}%
%          \fi%
%          % TODO NewCrossIndex
%%          \expandonce\tud@idx@cross%
%        }\ifx\imki@idxprologue\relax\else\noexpand\imki@idxprologue\fi%
%      }%
%      \ifnum\imki@columns>\@ne\relax%
%        \columnsep \imki@columnsep%
%          \begin{multicols}{\imki@columns}[\tud@res@a]%
%      \else%
%        \tud@res@a%
%      \fi%
%      \global\let\tud@idx@label\@empty%
%    }{}{\tud@patch@wrn{theindex}}%
%  \fi%
}
\newcommand*\tud@markup@list{}
\NewDocumentCommand\Markup@Format@Set{m m O{} r() d<> m r|| m}{%
  \expandafter\newcommand\csname Markup@Format@@Level@@#1\endcsname{}%
  \csdef{Markup@Format@@Level@@#1}{#2}%
  \tud@toks@{{#1}{{#4{#3##1\IfValueT{##2}{=##2}}}\IfValueT{##3}{##3}}}%
  \ifcsundef{Markup@Format@@Inline@@#1}{%
    \expandafter\Markup@Inline@Format@Set\the\tud@toks@%
  }{}%
  \ifcsundef{Markup@Format@@Declare@@#1}{%
    \expandafter\Markup@Declare@Format@Set\the\tud@toks@%
  }{}%
  \ifcsundef{Markup@Format@@InlineDeclare@@#1}{%
    \expandafter\Markup@InlineDeclare@Format@Set\the\tud@toks@%
  }{}%
  \IfValueT{#5}{%
    \expandafter\newcommand\csname Markup@Format@@SpecialLink@@#1\endcsname{}%
    \csdef{Markup@Format@@SpecialLink@@#1}{#5}%
  }%
  \expandafter\newcommand\csname Markup@Format@@Index@@#1\endcsname{}%
  % TODO indexprefix
  \csdef{Markup@Format@@Index@@#1}{#6}%
  \Markup@Suffix@Format@Set{#1}{#7}{\suffix{#8}}%
}
\@onlypreamble\Markup@Format@Set
\newcommand*\Markup@Inline@Format@Set[2]{%
  \expandafter\newcommand\csname Markup@Format@@Inline@@#1\endcsname{}%
  \csdef{Markup@Format@@Inline@@#1}##1=##2=[##3]{%
    \mbox{#2\Markup@Suffix@Select{#1}}%
  }%
}
\@onlypreamble\Markup@Inline@Format@Set
\newcommand*\Markup@Declare@Format@Set[2]{%
  \expandafter\newcommand\csname Markup@Format@@Declare@@#1\endcsname{}%
  \csdef{Markup@Format@@Declare@@#1}##1=##2=[##3]{%
    \mbox{#2\Markup@Suffix@@Select{d}{#1}}%
  }%
}
\@onlypreamble\Markup@Declare@Format@Set
\newcommand*\Markup@InlineDeclare@Format@Set[2]{%
  \expandafter\newcommand\csname Markup@Format@@InlineDeclare@@#1\endcsname{}%
  \csdef{Markup@Format@@InlineDeclare@@#1}##1=##2=[##3]{%
    \mbox{#2\Markup@Suffix@@Select{l}{#1}}%
  }%
}
\@onlypreamble\Markup@InlineDeclare@Format@Set
\newcommand*\Markup@Suffix@Format@Set[3]{%
  \expandafter\newcommand\csname Markup@Format@@Suffix@@#1\endcsname{}%
  \csdef{Markup@Format@@Suffix@@#1}{{#2}{#3}}%
}
\@onlypreamble\Markup@Suffix@Format@Set
\newcommand*\Markup@Suffix@Select[1]{%
  \begingroup%
    \tud@index@mode@num=\numexpr-\tud@index@mode@num-1\relax%
    \ifcase\tud@index@mode@num\relax%
      \def\tud@res@a{i}%
    \or%
      \def\tud@res@a{c}%
    \else%
      \def\tud@res@a{n}%
    \fi%
    \expandafter\Markup@Suffix@@Select\expandafter{\tud@res@a}{#1}%
  \endgroup%
}
\newcommand*\Markup@Suffix@@Select[3][\@firstofone]{%
  \begingroup%
    \protected@edef\tud@res@a{\csuse{Markup@Format@@Suffix@@#3}}%
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
\newcommand*\suffixsize{\scriptsize}
\AtBeginDocument{%
  \begingroup%
    \def\tud@res@c#1#2#3#4\@nil{\def\tud@res@a{#4}}%
    \expandafter\tud@res@c\tiny\@nil%
    \def\tud@res@c#1#2#3#4\@nil{\def\tud@res@b{#3}}%
    \expandafter\tud@res@c\scriptsize\@nil%
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
\NewExpandableDocumentCommand\@@suffix{s t' o m}{}%
\newrobustcmd*\idxsuffix{\suffix*'}
\NewDocumentCommand\nosuffix{m}{%
  \begingroup%
    \let\suffix\@@suffix#1%
  \endgroup%
}
\NewExpandableDocumentCommand\@nosuffix{m}{#1}
% TODO Verwendung prüfen und ggf durch \nosuffix ersetzen?!
\newrobustcmd*\MarkupSuffixInline[1]{%
  \begingroup%
    \renewcommand*\Markup@Suffix@Select[1]{\Markup@Suffix@@Select{n}{##1}}%
    #1%
  \endgroup%
}
\newcommand*\Markup@Level@Use[2]{\Markup@Level@@Use{#1}}
\newcommand*\Markup@Level@@Use[1]{%
  \the\numexpr0\csuse{Markup@Format@@Level@@#1}\relax%
}
% TODO entity & entity(sub)level
\newcommand*\tud@markup@ety{1}
\TUD@key[.markup]{ety}[true]{%
  \TUD@set@numkey{ety}{tud@markup@ety}{%
    \TUD@bool@numkey,{gnrl}{2},{general}{2}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed\else%
    \xifinlist{\detokenize{#1}}{\tud@markup@list}{%
      \ifnum\Markup@Level@@Use{#1}=\z@\relax%
        \ClassWarning{tudscrmanual}{%
          The command `\string#1' can't be used as default\MessageBreak%
          entity as it's level is `\csname Markup@Format@@Level@@#1\endcsname'%
        }%
      \else%
        % TODO nur gültige level zulassen!
        \def\tud@markup@ety{#1}%
      \fi%
    }{%
      \ClassWarning{tudscrmanual}{%
        The command `\string#1' was not (yet) defined with\MessageBreak%
        `\string\NewMarkupCommand'%
      }%
    }%
    \FamilyKeyStateProcessed%
  \fi%
}
\tud@newcount\tud@markup@lvl@num
\tud@markup@lvl@num=\thr@@
\TUD@key[.markup]{lvl}{%
  \FamilyKeyStateUnknownValue%
  \Ifisinteger{#1}{%
    \ifnum\numexpr#1\relax>\m@ne\relax%
      \tud@markup@lvl@num=\numexpr#1\relax%
      \FamilyKeyStateProcessed%
    \fi%
  }{}%
}
% TODO idx=true>\jobname, idx=false>kein index, idx=...>\tud@markup@idxname
% TODO idx=true!Distribution
\newcommand*\tud@markup@idxname{\jobname}
\TUD@key[.markup]{idx}[true]{%
%  \TUD@set@ifkey{idx}{@tud@markup@idxname}{#1}%
%  \ifx\FamilyKeyState\FamilyKeyStateProcessed\else%
    % TODO validate idxname
    \def\tud@markup@idxname{#1}%
    \FamilyKeyStateProcessed%
%  \fi%
}
\tud@newcount\tud@markup@type@num
\TUD@key[.markup]{type}{%
  \TUD@set@numkey{type}{tud@markup@type@num}{%
    {default}{0},{value}{1},{param}{2}%
  }{#1}%
}
% TODO Option url in Argument \NewMarkupCommand{...t'...} für CTAN-Link
\newcommand*\tud@markup@url{}
\TUD@key[.markup]{url}{%
  \FamilyKeyStateUnknownValue%
  \tud@specialurl@get\tud@res@a\tud@res@b{#1:\noexpand\@empty}%
  \ifx\tud@res@b\@empty%
    \ifcase\tud@res@a\relax% ctan
      \def\tud@markup@url{CTAN}%
      \FamilyKeyStateProcessed%
    \or% gh
      \def\tud@markup@url{GH}%
      \FamilyKeyStateProcessed%
    \fi%
  \fi%
}
% TODO das geht auch einfacher!
\newcommand*\tud@specialurl@get[3]{%
  \begingroup%
    \protected@edef\tud@res@b{#3}%
    \def\tud@res@a{-1}%
    \def\tud@res@c##1:##2\@nil{%
      \let\tud@res@b\@empty%
      \IfArgIsEmpty{##2}{}{%
          % TODO '*' gültig falls defaulturl? bei inlinedeklarationen standard?
          % TODO direkt für alles, was nicht \Bundle{tudscr}?
        \TUD@set@numkey{}{tud@res@a}{%
          {ctan}{0},{gh}{1},{url}{2}%
        }{##1}%
        \ifx\FamilyKeyState\FamilyKeyStateProcessed%
          \def\tud@res@b{##2}%
        \fi%
      }%
      \FamilyKeyStateProcessed%
    }%
    \protected@expandtwoargs\in@{:}{\tud@res@b}%
    \ifin@%
      \expandafter\tud@res@c\tud@res@b\@nil%
    \else%
      \let\tud@res@b\@empty%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\tud@res@a}%
      \unexpanded{\def#2}{\tud@res@b}%
    }%
  \tud@res@a%
}
\newcommand*\Markup@GobbleExtra{}
\def\Markup@GobbleExtra#1|#2\@nil{#1}
\NewDocumentCommand\NewMarkupCommand{s m O{} D(){\texttt} D||{ic} m}{%
  \begingroup%
    \TUDExecuteOptions[.markup]{#3}%
    \def\tud@res@c{\endgroup}%
    \edef\tud@res@d{\expandafter\@gobble\string#2}%
    \eappto\tud@res@c{\unexpanded{\listadd\tud@markup@list}{\tud@res@d}}%
    \Ifnumber{\tud@markup@ety}{%
      \ifnum\tud@markup@ety=\tw@\relax%
        \eappto\tud@res@c{%
          \csdef{Markup@Entity@Default@@\tud@res@d}{%
            \unexpanded{\noexpand\tud@ety@gnrl\@gobble}%
          }%
        }%
      \fi%
    }{%
      \eappto\tud@res@c{%
        \csdef{Markup@Entity@Default@@\tud@res@d}{%
          \expandafter\noexpand\csname\tud@markup@ety\endcsname%
        }%
      }%
      \def\tud@markup@ety{2}%
    }%
    \ifcase\tud@markup@lvl@num\relax%
      \ifnum\tud@markup@ety>\z@%
        \ClassWarning{tudscrmanual}{%
          As `ety[!=false]' was set, `lvl>0' should\MessageBreak%
          be used for `\string#2'%
        }%
        \tud@markup@lvl@num=\@ne\relax%
      \fi%
    \or%
    \else%
      \ifnum\tud@markup@ety=\z@\relax%
        \ClassWarning{tudscrmanual}{%
          As `ety=false' was set, `lvl<=1' must be used, but\MessageBreak%
          `lvl=\the\tud@markup@lvl@num' was given for `\string#2'%
        }%
        \tud@markup@lvl@num=\@ne\relax%
      \fi%
    \fi%
    \tud@toks@{\Markup@Format@Set}%
    \addto@hook@expandafter\tud@toks@{\expandafter{\tud@res@d}}%
    \addto@hook@expandafter\tud@toks@{\expandafter{\the\tud@markup@lvl@num}}%
    \IfBooleanT{#1}{\addto@hook\tud@toks@{[\bsc]}}%
    \addto@hook\tud@toks@{(#4)}%
    \ifdefvoid{\tud@markup@url}{}{%
      \addto@hook@expandafter\tud@toks@{\expandafter<\tud@markup@url>}%
    }%
    \addto@hook@expandafter\tud@toks@{\expandafter{\tud@markup@idxname}}%
    \addto@hook\tud@toks@{|#5|{#6}}%
    \eappto\tud@res@c{\the\tud@toks@}%
    \def\tud@res@b##1##2{%
      \eappto\tud@res@c{%
        \NewExpandableDocumentCommand\expandafter\noexpand\csname##1\endcsname%
          {s d|| d'' d() m}{##2}%
      }%
    }%
    \tud@res@b{\tud@res@d @Gobble}{}%
    \tud@res@b{@\tud@res@d}{\unexpanded{\Markup@GobbleExtra##5|\@nil}}%
    \ifcase\tud@markup@type@num\relax% default
      \def\tud@res@b{\AP@MarkupDefault}%
    \or% val
      \def\tud@res@b{\AP@MarkupValue}%
    \or% key
      \def\tud@res@b{\AP@MarkupKey}%
    \fi%
    \eappto\tud@res@c{%
      \unexpanded{\NewDocumentCommand#2}{%
%       PENDING !o!d()!d''!d|| raus, nachdem tudscrmanual.sty umgesetzt
%        s d|| d'' d() >{\expandonce\tud@res@b{\tud@res@d}}m !o!d()!d''!d||
        s d|| d'' d() >{\expandonce\tud@res@b{\tud@res@d}}m%
      }{%
        \unexpanded{\Process@Markup[##1]}{\tud@res@d}\unexpanded{##5|##2|'##3'}%
        \ifnum\tud@markup@ety=\z@%
          \unexpanded{(\@nil)}%
          \unexpanded{%
            \IfValueT{##4}{%
              \ClassWarning{tudscrmanual}{%
                Setting an entity like (##4)\MessageBreak%
                is not possible for `\string#2'%
              }%
            }%
          }%
        \else%
          \unexpanded{(##4)}%
        \fi%
%       PENDING raus, nachdem tudscrmanual.sty umgesetzt
%      \unexpanded{%
%        \IfValueT{##6}{\ClassWarning{tudscrmanual}{change markup for `##6'}}%
%        \IfValueT{##7}{\ClassWarning{tudscrmanual}{change markup for `##7'}}%
%        \IfValueT{##8}{\ClassWarning{tudscrmanual}{change markup for `##8'}}%
%        \IfValueT{##9}{\ClassWarning{tudscrmanual}{change markup for `##9'}}%
%      }%
      }%
    }%
%    \tud@typeout{\detokenize\expandafter{\tud@res@c}}%
  \tud@res@c%
}
\@onlypreamble\NewMarkupCommand
\newcommand*\AP@MarkupKey[2]{%
  \begingroup%
    \AP@MarkupDefault{#1}{#2}%
    \def\tud@res@a##1##2\@nil{%
      \in@{/}{##1}%
      \ifin@%
        \def\tud@res@b####1=####2\@nil{%
          \def\tud@res@c{####2}%
          \PValue@Enfold\tud@res@c%
          \eappto\ProcessedArgument{%
            \unexpanded{/####1/}=\expandonce\tud@res@c=%
          }%
        }%
        \def\tud@res@a####1/####2\@nil{%
          \def\ProcessedArgument{{####1}}%
          % TODO warum hier nicht \AP@MarkupValue?
          \in@{=}{####2}%
          \ifin@%
            \tud@res@b####2\@nil%
          \else%
            \appto\ProcessedArgument{/####2/}%
          \fi%
        }%
        \tud@res@a##1\@nil%
        \appto\ProcessedArgument{##2}%
      \fi%
    }%
    \expandafter\tud@res@a\ProcessedArgument\@nil%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def\ProcessedArgument}{\expandonce\ProcessedArgument}%
    }%
  \tud@res@a%
}
\newcommand*\AP@MarkupValue[2]{%
  \begingroup%
    \AP@MarkupDefault{#1}{#2}%
    \def\tud@res@a##1##2\@nil{%
      \in@{=}{##1}%
      \ifin@%
        \def\tud@res@a####1=####2\@nil{%
          \def\tud@res@c{####2}%
          \PValue@Enfold\tud@res@c%
          \edef\ProcessedArgument{%
            \unexpanded{{####1}}=\expandonce\tud@res@c=\unexpanded{##2}%
          }%
        }%
        \tud@res@a##1\@nil%
      \fi%
    }%
    \expandafter\tud@res@a\ProcessedArgument\@nil%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def\ProcessedArgument}{\expandonce\ProcessedArgument}%
    }%
  \tud@res@a%
}
\newcommand*\AP@MarkupDefault[2]{%
  \begingroup%
    \in@{|}{#2}%
    \ifin@%
      \def\tud@res@a##1|##2\@nil{%
        \tud@if@strblank{##2}{%
          \def\ProcessedArgument{{##1}[{\Markup@Suffix@@Select{}{#1}}]}%
        }{%
          \def\ProcessedArgument{{##1}[{##2}]}%
        }%
      }%
      \tud@res@a#2\@nil%
    \else%
      \def\ProcessedArgument{{#2}}%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def\ProcessedArgument}{\expandonce\ProcessedArgument}%
    }%
  \tud@res@a%
}
\newcommand*\AP@Underscore[1]{%
  \begingroup%
    \def\tud@res@a{#1}%
    \tud@replace@in\tud@res@a{_}{\_}%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand\ProcessedArgument{\expandonce\tud@res@a}%
    }%
  \tud@res@a%
}
% TODO sollte raus!
\NewDocumentCommand\Markup@Expandable{!s}{%
  \begingroup%
    \def\tud@res@a{\endgroup}%
    \def\tud@res@b##1{\appto\tud@res@a{\csletcs{##1}{@##1}}}%
    \forlistloop\tud@res@b{\tud@markup@list}%
  \tud@res@a%
  % TODO wo ist das notwendig? dort dann direkt den benötigten Teil aufrufen
  \IfBooleanF{#1}{%
    \Markup@@Expandable%
    \Parameter@Expandable%
    \Misc@Expandable%
  }%
}
\newcommand*\Markup@Gobble{%
  \begingroup%
    \def\tud@res@a{\endgroup}%
    \def\tud@res@b##1{\appto\tud@res@a{\csletcs{##1}{##1@Gobble}}}%
    \forlistloop\tud@res@b{\tud@markup@list}%
  \tud@res@a%
}
\NewDocumentCommand\tud@if@markup{s m}{%
  \begingroup%
    \@tud@res@swafalse%
    \tud@if@strblank{#2}{}{%
      \Markup@Gobble%
      \tud@if@strblank{#2}{\@tud@res@swatrue}{}%
    }%
    \if@tud@res@swa%
      \aftergroup\@firstoftwo
    \else%
      \IfBooleanF{#1}{%
        \ClassWarning{tudscrmanual}{%
          The given argument `\detokenize{#2}' is no markup command%
        }%
      }%
      \aftergroup\@secondoftwo%
    \fi%
  \endgroup%
}
\newcommand*\tud@ety@parent@validate[1]{%
  \begingroup%
    \def\tud@res@a##1{%
      \begingroup%
        \@tud@res@swafalse%
        \ifcase\Markup@Level@@Use{##1}\relax\or%
          \@tud@res@swatrue%
        \or%
          \@tud@res@swatrue%
        \fi%
        \if@tud@res@swa%
          \aftergroup\@firstoftwo%
        \else%
          \aftergroup\@secondoftwo%
        \fi%
      \endgroup%
    }%
    \tud@if@markup{#1}{%
      \def\tud@res@c##1##2\@nil{%
        \edef\tud@res@c{\expandafter\@gobble\string##1}%
      }%
      \tud@res@c#1\@nil%
      \tud@res@cnt=\Markup@Level@@Use{\tud@res@c}\relax%
    }{%
      \let\tud@res@c\@empty%
    }%
    \expandafter\tud@res@a\expandafter{\tud@res@c}{%
      \aftergroup\@firstofone%
    }{%
      \let\tud@res@b\@empty%
      \def\tud@res@c##1{%
        \tud@res@a{##1}{%
          \eappto\tud@res@b{%
            \ifx\tud@res@b\@empty\else,\space\fi%
            \detokenize\expandafter{\@backslashchar##1}%
          }%
        }{}%
      }%
      \forlistloop\tud@res@c{\tud@markup@list}%
      \ClassError{tudscrmanual}{Invalid entity found}{%
        The given argument `#1'\MessageBreak%
        can not be used as parent entity. Only\MessageBreak%
        \tud@res@b\MessageBreak%
        are valid!% 
      }%
      \aftergroup\@gobble%
    }%
  \endgroup%
}
\NewDocumentCommand\Process@Markup{o m m d// d== o r|| r'' r()}{%
  \begingroup%
    \tud@idx@robustify%
    \tud@toks@{\Process@@Markup[#1]{#2}{#3}/#4/=#5=[{#6}]}%
    \IfBooleanTF{#1}{%
      % TODO |\@nil|
      \addto@hook\tud@toks@{||'\@nil'}%
      \def\tud@res@a{\tud@ety@gnrl}%
    }{%
      \addto@hook\tud@toks@{|#7|'#8'}%
      \tud@if@nil{#9}{%
        \def\tud@res@a{\tud@ety@gnrl}%
      }{%
        \tud@ety@get\tud@res@a{#2}{#3}(#9)%
        % TODO USE \tud@ety@parent@validate
        \ifnum\tud@declare@mode@num=\z@\relax%
          \ifx\tud@res@a\@empty%
            \def\tud@res@a{\tud@ety@gnrl}%
          \else%
            \tud@ety@validate\tud@res@a{#2}{#3}/#4/=#5=%
          \fi%
        \fi%
        \ifx\tud@res@a\@empty%
          \ClassWarning{tudscrmanual}{%
            Setting an empty entity is not possible%
          }%
          \def\tud@res@a{\tud@ety@gnrl}%
        \fi%
      }%
    }%
    \addto@hook@expandafter\tud@toks@{\expandafter(\tud@res@a)}%
    \edef\tud@res@a{%
      \endgroup%
      \the\tud@toks@%
    }%
  \tud@res@a%
}
\newcommand*\tud@ety@found{}
\NewDocumentCommand\tud@ety@get{m m m r()}{%
  \begingroup%
    % TODO raus? index sollte auf alle Fälle entity direkt verwenden
    \ifnum\tud@index@mode@num<\z@\relax
      \let\ClassWarning\@gobbletwo%
    \fi%
    \Parameter@Expandable%
    \Misc@Expandable%
    \letcs\tud@res@b{Markup@Entity@@#2@#3}%
    \ifundef\tud@res@b{\let\tud@res@b\@empty}{}%
    \letcs\tud@res@c{Markup@Entity@Default@@#2@#3}%
    \ifundef\tud@res@c{%
      \ifcsundef{Markup@Entity@Default@@#2}{%
        \let\tud@res@c\@empty%
      }{%
        \edef\tud@res@c{\csexpandonce{Markup@Entity@Default@@#2}{#3}}%
      }%
    }{}%
    % TODO sicherstellen, dass Entity nur einfaches Markup ist!!!!
    \IfValueTF{#4}{%
      \tud@ety@parse\tud@ety@found{#2}{#3}{#4}{\tud@res@c}%
    }{%
      \let\tud@ety@found\@empty%
    }%
    \ifnum\tud@declare@mode@num=\z@\relax%
      % DOC tud@res@b for default, tud@res@c for all valid
      \ifx\tud@res@b\@empty%
        \let\tud@res@b\tud@res@c%
      \else%
        \edef\tud@res@c{\expandonce\tud@res@c,\tud@res@b}%
      \fi%
      \ifx\tud@ety@found\@empty%
        \ifx\tud@res@b\@empty%
          \ClassWarning{tudscrmanual}{%
            There is no defined entity for\MessageBreak%
            `\csname#2\endcsname{#3}'%
          }%
        \else%
          \let\tud@ety@found\tud@res@b%
        \fi%
      \else%
        \edef\tud@res@a{%
          \unexpanded{%
            \def\tud@res@a##1##2{\tud@set@eadd##1{\detokenize{##2}}}%
            \let\tud@res@b\@empty%
            \let\tud@res@c\@empty%
          }%
          \unexpanded{\forcsvlist{\tud@res@a\tud@res@b}}{\expandonce\tud@res@b}%
          \unexpanded{\forcsvlist{\tud@res@a\tud@res@c}}{\expandonce\tud@res@c}%
        }%
        \tud@res@a%
        \@tud@res@swatrue%
        \let\tud@res@d\@empty%
        \@for\tud@res@a:=\tud@ety@found\do{%
          \trim@spaces@in\tud@res@a%
          \edef\tud@res@a{\detokenize\expandafter{\tud@res@a}}%
          \xifinlist{\tud@res@a}{\tud@res@b}{%
            \listeremove\tud@res@b{\tud@res@a}%
          }{%
            \@tud@res@swafalse%
            \xifinlist{\tud@res@a}{\tud@res@c}{}{%
              \eappto\tud@res@d{\ifx\tud@res@d\@empty\else,\fi\tud@res@a}%
            }%
          }%
        }%
        \if@tud@res@swa%
          \ifx\tud@res@b\@empty%
            \ClassWarning{tudscrmanual}{%
              The given entity `\tud@ety@found' is set\MessageBreak%
              as default for `\csname#2\endcsname{#3}'\MessageBreak%
              and can be omitted%
            }%
          \fi%
        \else%
          \ifx\tud@res@d\@empty\else%
            \ClassWarning{tudscrmanual}{%
              The given entity `\tud@res@d'\MessageBreak%
              for `\csname#2\endcsname{#3}'\MessageBreak%
              was never set%
            }%
          \fi%
        \fi%
      \fi%
    \else%
      \ifx\tud@ety@found\@empty%
        % TODO Deklarationen nur crnt, wenn möglich!!!
        \let\tud@ety@found\tud@ety@crnt%
        \ifx\tud@res@c\@empty\else%
          \ifnum\tud@declare@mode@num=\@ne\relax%
            \ifx\tud@res@c\tud@ety@crnt\else%
              \ClassWarning{tudscrmanual}{%
                There is a default entity (\tud@res@c)\MessageBreak%
                for `\csname#2\endcsname{#3}', the entity should\MessageBreak%
                be given explicitly, by it's name as well as value\MessageBreak%
                (*) for (\tud@res@c) or\MessageBreak%
                (!) for (\tud@ety@crnt)%
              }%
            \fi%
          \else%
            \ifnum\tud@absnum\tud@declare@mode@num\relax=\tw@%
              \let\tud@ety@found\tud@res@c%
            \fi%
          \fi%
        \fi%
      \fi%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@ety@found}%
    }%
  \tud@res@a%
}
\newcommand*\tud@ety@parse[5]{%
  \begingroup%
    \protected@edef\tud@ety@found{#5}%
    \protected@edef\tud@res@a{#4}%
    \let\tud@res@c\@empty%
    \@for\tud@res@a:=\tud@res@a\do{%
      \trim@spaces@in\tud@res@a%
      \tud@if@strequal{\tud@res@a}{*}{%
        \ifx\tud@ety@found\@empty%
          \ClassWarning{tudscrmanual}{%
            There is no default entity for\MessageBreak%
            `\csname#2\endcsname{#3}'%
          }%
        \fi%
        \let\tud@res@a\tud@ety@found%
      }{%
        \tud@if@strequal{\tud@res@a}{!}{%
          \let\tud@res@a\tud@ety@crnt%
        }{}%
      }%
      \ifx\tud@res@a\@empty\else%
        \eappto\tud@res@c{\ifx\tud@res@c\@empty\else,\fi\expandonce\tud@res@a}%
      \fi%
    }%
    \let\tud@res@b\@empty%
    \@for\tud@res@a:=\tud@res@c\do{%
      \trim@spaces@in\tud@res@a%
      \ifx\tud@res@b\@empty%
        \let\tud@res@b\tud@res@a%
      \else%
        \protected@expandtwoargs\in@%
          {\detokenize\expandafter{\tud@res@a}}%
          {,\detokenize\expandafter{\tud@res@b},}%
        \ifin@\else%
          \eappto\tud@res@b{,\expandonce\tud@res@a}%
        \fi%
      \fi%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@res@b}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@ety@validate{m m m r// r==}{%
  \begingroup%
    \protected@edef\tud@res@c{#1}%
    \let\tud@res@a\@empty%
    \let\tud@res@b\@empty%
    \let\tud@ety@found\@empty%
    \@tud@res@swafalse%
    \@for\tud@res@c:=\tud@res@c\do{%
      \trim@spaces@in\tud@res@c%
      \tud@lbl@get\tud@lbl@tmp{{#2}{#3}/#4/=#5=(\tud@res@c)}%
      \tud@if@lbl@exists{\tud@lbl@tmp}{%
        \ifx\tud@res@c\tud@ety@crnt%
          \let\tud@ety@found\tud@ety@crnt%
        \else%
          \ifx\tud@res@a\@empty%
            \let\tud@res@a\tud@res@c%
          \else%
            \@tud@res@swatrue%
            \eappto\tud@res@a{,\expandonce\tud@res@c}%
          \fi%
        \fi%
      }{%
        \eappto\tud@res@b{%
          \ifx\tud@res@b\@empty\else,\fi\expandonce\tud@res@c%
        }%
      }%
    }%
    \ifx\tud@ety@found\@empty%
      \if@tud@res@swa%
        \begingroup%
          \let\tud@res@c\@empty%
          \@for\tud@res@b:=\tud@res@a\do{%
            \trim@spaces@in\tud@res@b%
            \eappto\tud@res@c{%
              \noexpand\@spaces%
              \detokenize\expandafter{\tud@res@b}%
              \noexpand\MessageBreak%
            }%
          }%
          \edef\tud@res@b{%
            \expandafter\noexpand\csname#2\endcsname{\unexpanded{#3}}%
          }%
          \ClassWarning{tudscrmanual}{%
            Found multiple matching entities\MessageBreak%
            \tud@res@c for \detokenize\expandafter{\tud@res@b}%
          }%
        \endgroup%
      \fi%
      \ifx\tud@res@a\@empty%
        \let\tud@ety@found\tud@res@b%
      \else%
        \let\tud@ety@found\tud@res@a%
      \fi%
    \else%
      \ifx\tud@res@a\@empty\else%
        \eappto\tud@ety@found{,\expandonce\tud@res@a}%
      \fi%
    \fi%
    \protected@edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\tud@ety@found}%
    }%
  \tud@res@a%
}
% TODO prüfen, ob etwas wie =\PMisc aa= angegeben wurde
% (Validierung: expandieren zu <p:...> oder leer?)
% > \AP@ValidateValue verwenden, wo notwendig!
\newcommand\Process@Output[1]{#1}%
\NewDocumentCommand\Process@@Markup{o m m r// r== r[] r|| r'' r()}{%
  \begingroup%
    \tud@idx@robustify%
    \def\tud@res@a{#9}%
    % TODO ist das so sinnvoll? mit \Markup@Output@Get verwursten
    \ifnum\tud@declare@mode@num=\z@\relax%
      \def\tud@res@b##1,##2\@nil{%
        \IfArgIsEmpty{##2}{}{%
          \tud@if@strequal{##1}{\tud@ety@crnt}{\let\tud@res@a\tud@ety@crnt}{}%
        }%
      }%
      \tud@res@b#9,\@nil%
    \fi%
    \@for\tud@res@a:=\tud@res@a\do{%
      \tud@lbl@get\tud@lbl@tmp{{#2}{#3}/#4/=#5=(\tud@res@a)}%
      \tud@toks@{\Process@@@Markup{#2}{#3}/#4/=#5=[{#6}]|#7|'#8'}%
      \addto@hook@expandafter\tud@toks@{\expandafter(\tud@res@a)}%
      \addto@hook@expandafter\tud@toks@{\expandafter<\tud@lbl@tmp>}%
      \the\tud@toks@%
    }%
    \ifnum\tud@declare@mode@num<\z@\relax%
      \let\tud@res@a\@empty%
    \else%
      \ifnum\tud@declare@mode@num=\z@\relax%
        \Markup@Output@Get\tud@res@a{#2}{#3}/#4/=#5=[{#6}]|#7|'#8'(#9)%
        \tud@trace@markup@add{output}{\expandonce\tud@res@a}%
      \else%
        % TODO \Markup@Output@Wrapper@Get fur inlineDeclaration
        \Markup@Output@@@Get\tud@res@a{#2}{#3}/#4/=#5=[{#6}]%
        \tud@trace@markup@add{declare}{\expandonce\tud@res@a}%
      \fi%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\Process@Output{\if@tud@markup@output\expandonce\tud@res@a\fi}%
    }%
  \tud@res@a%
%
% \ifnum\tud@declare@mode@num>\z@\relax%
%    \IfBooleanT{#7}{%
%      \ClassWarning{tudscrmanual}{%
%        Using `\detokenize\expandafter{\@backslashchar#2*}'\MessageBreak%
%        within a declaration is inept%
%      }%
%    }%
%  \fi%
%  \IfBooleanTF{#7}{%
%    \IfValueT{#8}{%
%      \ClassWarning{tudscrmanual}{%
%        Using `\detokenize\expandafter{\@backslashchar#2*}'\MessageBreak%
%        means, no index entry is created. The optional\MessageBreak%
%        indexing format |#8| means nothing%
%      }%
%    }%
%  }
%      \IfValueT{#7}{%
%        \ClassWarning{tudscrmanual}{%
%          It is not possible to use any indexing format\MessageBreak%
%          |#7| within a declaration%
%        }%
%      }%
%
}
% TODO \Process@@@Markup auflösen in \Process@[@]Index [und \Process@Declare?]
\NewDocumentCommand\Process@@@Markup{m m d// d== o r|| r'' r() r<>}{%
  \Process@Index{#1}=#4=|#6|<#9>{{#1}{#2}/#3/=#4=[{#5}]|#6|'#7'(#8)}%
  \ifnum\tud@declare@mode@num>\z@\relax%
    \if@tud@declare@label%
      \tud@lbl@declare=#4=<#9>%
    \fi%
    \tud@if@strequal{\tud@ety@gnrl}{#8}{}{\tud@ety@add{#1}{#2}{#8}}%
    \listgadd\tud@declaration@internal@list{%
      {{#1}{#2}/#3/=#4=[{#5}]|#6|'#7'(#8)}%
      {#9}%
    }%
  \fi%
}
% TODO rename to Process@Output@...
\NewDocumentCommand\Markup@Output@Get{m m m r// r== r[] r|| r'' r()}{%
  \begingroup%
%    \par\detokenize{#2{#3/#4=#5}: #9}\par
    \tud@refnum@get\tud@res@a'#8'%
%    TODO Warnungen in \Process@@Markup verschieben (als Processor?)
    \let\tud@res@c\@empty%
    \if@tud@sec%
      \def\tud@res@c{for headings}%
    \fi%
    \ifnum\tud@declare@mode@num>\z@\relax%
      \def\tud@res@c{for markup within declarations}%
    \fi%
    \ifx\tud@res@c\@empty\else%
      \ifnum\tud@res@a>\z@\relax%
        \ClassWarning{tudscrmanual}{%
          It is not possible to use any cross-reference\MessageBreak%
          shorthand like '#8'\MessageBreak\tud@res@c%
        }%
      \fi%
      % TODO Argument entsprechend im Processor setzen (none/\@nil)
      \def\tud@res@a{-2}%
    \fi%
%    TODO ENDE Warnungen in \Process@@Markup verschieben (als Processor?)
    % TODO label nicht verwenden, wenn in declaration@list;
    %      in diesem Fall schon in \Process@@Markup 'none' setzen?
    %      zu beachten ist, dass bspw. 'full' trotzdem funktionieren sollte
    %      unterdrücken der labels quasi nur bei refnum=0
    \ifnum\tud@res@a<\z@\relax%
      \ifnum\tud@res@a=\m@ne\relax%
        \def\tud@res@b{#9}%
        \@for\tud@res@b:=\tud@res@b\do{%
          \tud@lbl@get\tud@lbl@tmp{{#2}{#3}/#4/=#5=(\tud@res@b)}%
          \tud@trace@lbl@add{ignored}{\tud@lbl@tmp}%
        }%
      \fi%
      \def\tud@res@b{\@firstofone}%
    \else%
      \def\tud@res@d##1,##2\@nil{%
        \tud@lbl@get*\tud@lbl@tmp{{#2}{#3}/#4/=#5=(##1)}%
        \let\tud@res@b\@empty%
        \IfArgIsEmpty{##2}{}{%
          \def\tud@res@b{##2}%
          \ifcase\tud@res@a\relax%
            \tud@if@strequal{##1}{\tud@ety@crnt}{%
              \tud@if@lbl@exists{\tud@lbl@tmp}{\let\tud@res@b\@empty}{}%
            }{}%
          \fi%
        }%
        \ifx\tud@res@b\@empty\else%
          \begingroup%
            \let\tud@res@c\@empty%
            \@for\tud@res@b:=\tud@res@b\do{%
              \trim@spaces@in\tud@res@b%
              \ifx\tud@res@b\@empty\else%
                \tud@lbl@get*\tud@lbl@tmp{{#2}{#3}/#4/=#5=(\tud@res@b)}%
                \tud@if@lbl@exists{\tud@lbl@tmp}{%
                  \eappto\tud@res@c{%
                    \noexpand\@spaces%
                    \detokenize\expandafter{\tud@res@b}%
                    \noexpand\MessageBreak%
                  }%
                }{}%
              \fi%
            }%
            \ifx\tud@res@c\@empty\else%
              \ClassWarning{tudscrmanual}{%
                A specific entity is needed\MessageBreak%
                \tud@res@c%
                for `\detokenize\expandafter{\@backslashchar#2{#3}}'%
              }%
            \fi%
          \endgroup%
        \fi%
      }%
      \tud@res@d#9,\@nil%
      % TODO separates Makros
      \tud@if@lbl@exists{\tud@lbl@tmp}{%
        \let\tud@res@b\@empty%
        \let\tud@res@c\@gobble% simple/link
        \ifcase\tud@res@a\relax\or% link
          % TODO raus
          \def\tud@res@b{%
            \ClassWarning{tudscrmanual}{%
              As label `\tud@lbl@tmp' exists, the\MessageBreak%
              given link '#8'\MessageBreak%
              is ignored%
            }%
          }%
        \or% autoref
          \def\tud@res@c{ in \noexpand\autoref}%
        \or% autoref*
          \def\tud@res@c{ aus \noexpand\autoref}%
        \or% fullref
          \def\tud@res@c{ in \noexpand\fullref}%
        \or% fullref*
          \def\tud@res@c{ aus \noexpand\fullref}%
        \or% page
          \def\tud@res@c{ \noexpand\vpageref}%
        \or% far
          \def\tud@res@c{ \noexpand\reftextfaraway}%
        \fi%
        \protected@edef\tud@res@b{%
          \expandonce\tud@res@b%
          \noexpand\tud@hyperlink[\tud@res@c{\tud@lbl@tmp}]{\tud@lbl@tmp}%
        }%
      }{%
        % TODO \Markup@Output@Wrapper@Get, für Link bei InlineDeclaration 
        \edef\tud@res@b{%
          \noexpand\ClassWarning{tudscrmanual}{%
            A cross-reference was not created as label\noexpand\MessageBreak%
            \tud@lbl@tmp\noexpand\MessageBreak%
            doesn't exist%
          }%
          \noexpand\@firstofone%
        }%
        \let\tud@res@c\relax%
        % TODO check for multiple special urls
        \ifnum\tud@res@a<\tw@\relax%
          \def\tud@res@b{\@firstofone}%
          \tud@special@link@get\tud@res@c{#2}{#3}%
          \ifx\tud@res@c\relax\else%
            \tud@special@href@get\tud@res@b{\tud@res@c}{\tud@lbl@tmp}%
          \fi%
        \fi%
      }%
    \fi%
    \Markup@Output@@@Get\tud@res@d{#2}{#3}/#4/=#5=[{#6}]%
    \ifx\tud@res@d\@empty%
      \let\tud@res@b\@empty%
    \else%
      \eappto\tud@res@b{{\expandonce\tud@res@d}}%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@res@b}%
    }%
  \tud@res@a%
%    TODO Warnungen auch ausgeben, wenn Sternversion mit  
%         label default genutzt wird (\Macro*{blinddocument})
%    \ifcase\tud@res@a\relax\else%
%      \begingroup%
%        \@tud@res@swafalse%
%        \tud@if@lbl@exists{\tud@lbl@tmp}{%
%          \IfValueT{#5}{%
%            \tud@lbl@get\tud@res@a{{#2}/#4/=#5=(#9)}%
%            \ifx\tud@lbl@tmp\tud@res@a\else%
%              \let\tud@lbl@tmp\tud@res@a%
%              \@tud@res@swatrue
%            \fi%
%          }%
%        }{%
%        % TODO rein!
%        %  \expandafter\ifstrequal\expandafter{\tud@ety@dflt}{#9}{%
%        %    \@tud@res@swatrue%
%        %  }{}%
%        }%
%        \if@tud@res@swa%
%          \ClassWarning{tudscrmanual}{%
%            A \IfValueTF{#5}{specific}{general} value for \detokenize{#9}%
%            \MessageBreak `#2\IfValueT{#4}{/#4/}\IfValueT{#5}{=#5=}'%
%            \MessageBreak was given, but there exists no label%
%            \MessageBreak `\tud@lbl@tmp'%
%          }%
%        \fi%
%      \endgroup%
%    \fi%
}
% TODO numerischen Wert mit AP@... erzeugen, in neuem \Process@@@Markup
\NewDocumentCommand\tud@refnum@get{s m r''}{%
  \begingroup%
    \IfValueTF{#3}{%
      \tud@if@nil{#3}{%
        \def\tud@res@a{-2}%
      }{%
        \TUD@set@numkey{}{tud@res@a}{%
          {none}{-1},{simple}{0},{plain}{0},{basic}{0},%
          {auto}{2},{ref}{2},{autoref}{2},{auto*}{3},{ref*}{3},{autoref*}{3},%
          {full}{4},{fullref}{4},{full*}{5},{fullref*}{5},%
          {page}{6},{pageref}{6},{vpage}{6},{vpageref}{6},%
          {far}{7},{faraway}{7},{realpage}{7},%
        }{#3}%
        % TODO Spezialfälle können raus, wird über \DeclareSpecialLink geklärt
        \ifx\FamilyKeyState\FamilyKeyStateProcessed\else%
          \tud@if@specialurl{#3}{%
          % TODO '*' gültig falls defaulturl? bei inlinedeklarationen standard?
          % TODO direkt für alles, was nicht \Bundle{tudscr}?
            \def\tud@res@a{1}%
          }{%
            \IfBooleanF{#1}{%
              \ClassWarning{tudscrmanual}{%
                The cross-reference '#3'\MessageBreak%
                is unknown. Only '[auto]ref' or 'full[ref]' and\MessageBreak%
                '[v]page[ref]' as well as 'plain' or 'none' are\MessageBreak%
                valid. Additionally, 'CTAN:<pkg>' or 'GH:<repo>'\MessageBreak%
                and 'URL:<url>' can be used%
              }%
            }%
            \def\tud@res@a{-1}%
          }%
          \FamilyKeyStateProcessed%
        \fi%
      }%
    }{%
      \def\tud@res@a{0}%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#2}{\tud@res@a}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Markup@Output@@@Get{m m >{\AP@Underscore}m r// r== r[]}{%
  \begingroup%
    \IfValueTF{#4}{%
      % TODO Ist das hier richtig aufgehoben oder sollten das die 
      %      Markupbefehle intern lösen?
      \def\tud@res@a{Key@Value}%
      \def\tud@res@c{#4}%
    }{%
      \def\tud@res@a{#2}%
      \def\tud@res@c{#3}%
    }%
    \ifcase\tud@absnum\tud@declare@mode@num\relax%
      \edef\tud@res@b{Markup@Format@@Inline@@\tud@res@a}%
    \or%
      \edef\tud@res@b{Markup@Format@@Declare@@\tud@res@a}%
    \or%
      \edef\tud@res@b{Markup@Format@@InlineDeclare@@\tud@res@a}%
    \fi%
    \edef\tud@res@a{%
      \expandafter\noexpand\csname\tud@res@b\endcsname%
        {\tud@res@c}\unexpanded{=#5=[{#6}]}%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@res@a}%
    }%
  \tud@res@a%
}
% TODO check if markup \tud@if@markup
% TODO prüfen, wo das in verbindung mit lbl läuft
\NewDocumentCommand\Markup@Inner@Get{s m m}{%
  \begingroup%
    \IfBooleanTF{#1}{%
      \let\Process@Markup\Markup@Inner@@Get%
    }{%
      \let\Process@@Markup\Markup@Inner@@Get%
    }%
    #3%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#2}{\the\tud@toks@}%
    }%
  \tud@res@a%
}
\GetDocumentCommandArgSpec\Process@Markup% o m m d// d== o r|| r'' r()
\expandafter\NewDocumentCommand\expandafter\Markup@Inner@@Get\expandafter{%
  \ArgumentSpecification%
}{%
  \tud@toks@{[{#1}]{#2}{#3}/#4/=#5=[{#6}]|#7|'#8'(#9)}%
}
% TODO notwendig? Wo \Process@Simple@Markup sinnvoll?
\expandafter\NewDocumentCommand\expandafter\Process@Simple@Markup\expandafter{%
  \ArgumentSpecification%
}{%
  \begingroup%
    \tud@declare@mode@num=\z@%
    \Markup@Output@@@Get\tud@res@a{#2}{#3}/#4/=#5=[{#6}]%
    \edef\tud@res@a{%
      \endgroup%
      \expandonce\tud@res@a%
    }%
  \tud@res@a%
}
\BeforeStartingTOC{\let\Process@Markup\Process@Simple@Markup}
\NewDocumentCommand\Markup@@Replace{}{}
\NewDocumentCommand\Markup@@@Replace{m m m m}{%
  \def\ProcessedArgument{#4}%
  \IfValueT{#3}{%
    \IfBooleanTF{#1}{%
      \IfValueF{#4}{\def\ProcessedArgument{#3}}%
    }{%
      \def\ProcessedArgument{#3}%
    }%
  }%
  \edef\ProcessedArgument{%
    \@firstoftwo#2\expandonce\ProcessedArgument\@secondoftwo#2%
  }%
}
\NewDocumentCommand\Markup@Replace{s m d== d|| d'' m}{%
  \begingroup%
    \GetDocumentCommandArgSpec\Process@Markup% o m m d// d== o r|| r'' r()
    \expandafter\RenewDocumentCommand\expandafter\Markup@@Replace\expandafter{%
      \ArgumentSpecification%
    }{%
      \tud@toks@{[{##1}]{##2}{##3}/##4/}%
      \Markup@@@Replace{#1}{==}{#3}{##5}%
      \addto@hook@expandafter\tud@toks@{\ProcessedArgument}%
      \addto@hook\tud@toks@{[{##6}]}%
      \Markup@@@Replace{#1}{||}{#4}{##7}%
      \addto@hook@expandafter\tud@toks@{\ProcessedArgument}%
      \Markup@@@Replace{#1}{''}{#5}{##8}%
      \addto@hook@expandafter\tud@toks@{\ProcessedArgument}%
      \addto@hook\tud@toks@{(##9)}%
    }%
    \expandafter\Markup@@Replace#6%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#2}{\the\tud@toks@}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Markup@Outer@Get{m m}{%
  \begingroup%
    \protected@edef\tud@res@a{\noexpand\Markup@Outer@@Get\expandonce{#2}}%
    \tud@res@a%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\the\tud@toks@}%
    }%
  \tud@res@a%
}
\GetDocumentCommandArgSpec\Process@Markup% o m m d// d== o r|| r'' r()
\expandafter\NewDocumentCommand\expandafter\Markup@Outer@@Get\expandafter{%
  \ArgumentSpecification%
}{%
  \edef\tud@res@a{\expandafter\noexpand\csname#2\endcsname}%
  \@tud@res@swafalse%
  \IfValueT{#1}{\IfBooleanT{#1}{\@tud@res@swatrue}}%
  \if@tud@res@swa%
    \appto\tud@res@a{*}%
  \else%
    \tud@if@nil{#7}{}{\IfValueT{#7}{\appto\tud@res@a{|#7|}}}%
    \tud@if@nil{#8}{}{\IfValueT{#8}{\appto\tud@res@a{'#8'}}}%
  \fi%
  \tud@if@nil{#9}{}{\IfValueT{#9}{\appto\tud@res@a{(#9)}}}%
  \tud@toks@\expandafter{\tud@res@a}%
  \def\tud@res@b{#3}%
  \IfValueT{#4}{\appto\tud@res@b{/#4}}%
  \IfValueT{#5}{\appto\tud@res@b{=#5}}%
  \IfValueT{#6}{\appto\tud@res@b{|#6}}%
  \addto@hook@expandafter\tud@toks@{\expandafter{\tud@res@b}}%
}
\NewDocumentCommand\Markup@Main@Get{s m m}{%
  \begingroup%
    \Markup@Inner@Get*\tud@res@a{#3}%
    \IfBooleanTF{#1}{\@tud@res@swatrue}{\@tud@res@swafalse}%
    \expandafter\Markup@Main@@Get\tud@res@a%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#2}{\the\tud@toks@}%
    }%
  \tud@res@a%
}
\GetDocumentCommandArgSpec\Process@Markup% o m m d// d== o r|| r'' r()
\expandafter\NewDocumentCommand\expandafter\Markup@Main@@Get\expandafter{%
  \ArgumentSpecification%
}{%
  \edef\tud@res@a{\expandafter\noexpand\csname#2\endcsname}%
  \IfValueT{#1}{\IfBooleanT{#1}{\appto\tud@res@a{*}}}%
  \tud@toks@\expandafter{\tud@res@a}%
  \def\tud@res@b{#3}%
  \if@tud@res@swa%
    \IfValueT{#4}{\appto\tud@res@b{/#4}}%
    \IfValueT{#5}{\appto\tud@res@b{=#5}}%
    \IfValueT{#6}{\appto\tud@res@b{|#6}}%
  \else%
    \Markup@Main@Ignore{#4}{//}%
    \Markup@Main@Ignore{#5}{==}%
    \Markup@Main@Ignore{#6}{[]}%
  \fi%
  \addto@hook@expandafter\tud@toks@{\expandafter{\tud@res@b}}%
  \tud@if@nil{#7}{}{\Markup@Main@Ignore{#7}{||}}%
  \tud@if@nil{#8}{}{\Markup@Main@Ignore{#8}{''}}%
  \tud@if@nil{#9}{}{\Markup@Main@Ignore{#9}{()}}%
}
\newcommand*\Markup@Main@Ignore[2]{%
  \IfValueT{#1}{%
    \begingroup%
      \def\tud@res@a{#1}%
      \edef\tud@res@a{\@firstoftwo#2\expandonce\tud@res@a\@secondoftwo#2}%
      \ClassWarning{tudscrmanual}{%
        Argument `\tud@res@a' can't be used here and is ignored%
      }%
    \endgroup%
  }%
}
\NewDocumentCommand\Markup@Split@Get{s m m}{%
  \begingroup%
    \IfBooleanT{#1}{\let\Markup@Main@Ignore\@gobbletwo}%
    \Markup@Main@Get\tud@res@a{#3}%
    \Markup@Split@@Get\tud@res@a{\tud@res@a}%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#2}{\expandonce\tud@res@a}%
    }%
  \tud@res@a
}
\NewDocumentCommand\Markup@Split@@Get{m m}{%
  \begingroup%
    \def\Markup@Split@@Get##1##2\@nil{%
      \edef\Markup@Split@@Get{\expandafter\@gobble\string##1}%
      \edef\tud@res@a{%
        \endgroup%
        \unexpanded{\def#1}{{\Markup@Split@@Get}{\unexpanded{##2}}}%
      }%
    }%
    \expandafter\Markup@Split@@Get#2\@nil%
  \tud@res@a%
}
\tud@auxlist@register*{tud@ety@declare}
\newrobustcmd*\tud@ety@add[3]{%
  \tud@auxlist@add{tud@ety@declare}{\noexpand\tud@ety@declare{#1}{#2}{#3}}%
}
% TODO Markup@Entity@@... auf Basis des Labels; Markup@Entity@Default@@... auch?
\newrobustcmd*\tud@ety@declare[3]{%
  \begingroup%
    \ifcsundef{Markup@Entity@@#1@#2}{%
      \csgdef{Markup@Entity@@#1@#2}{#3}%
    }{%
      \csgappto{Markup@Entity@@#1@#2}{,#3}%
    }%
  \endgroup%
}
\@onlypreamble\tud@ety@declare
\RequirePackage{hologo}[2012/04/26]
\NewDocumentCommand\Path{>{\AP@Underscore}m}{\mbox{\texttt{#1}}}
\NewMarkupCommand\Application[ety=false,lvl=0](\textsbi){Anwendungssoftware}
% TODO wie mit IndexPrefix umgehen?
\NewMarkupCommand\Distribution[ety=false,lvl=0](\textsbn){Distribution}
% TODO option für entity level > validieren, ob verwendung zulässig
%      Bundle|Format > Class|Package? > Rest
\NewMarkupCommand\Format[ety=false,lvl=1](\sbnfont\hologo){Textsatzsystem}
% TODO direkten Indexeintrag unterbinden
\NewMarkupCommand\Bundle[ety=false,lvl=1,url=ctan](\textsbn){Bundle}
% TODO InlineDeclaration für Link aus Index?
\NewMarkupCommand\File[ety=gnrl,lvl=2,idx=files](\textsbn){Datei}
\NewMarkupCommand\Class[lvl=2,idx=files](\textsbn){Klasse}
\NewMarkupCommand\Package[ety=Bundle,lvl=2,idx=files,url=ctan](\textsbn){Paket}
\NewMarkupCommand\Option[idx=options,type=value]|c|{Option}
\Markup@Declare@Format@Set{Environment}{%
  \begin{tabular}[t]{@{}l@{}}%
  \texttt{\bsc{}begin\textbraceleft#1\textbraceright\IfValueT{#3}{#3}}%
  \tabularnewline\texttt{\quad\raisebox{-.3\dp\@arstrutbox}[0pt][0pt]{\vdots}}%
  \tabularnewline\texttt{\bsc{}end\textbraceleft#1\textbraceright}%
  \end{tabular}%
}
\Markup@InlineDeclare@Format@Set{Environment}{%
  \texttt{%
    \bsc{}begin\textbraceleft#1\textbraceright\IfValueT{#3}{#3}%
    \dots%
    \bsc{}end\textbraceleft#1\textbraceright%
  }%
}
\NewMarkupCommand\Environment[idx=macros,type=param]{Umgebung}
\NewMarkupCommand*\Macro[idx=macros,type=param]|c|{Befehl}
% TODO undef \Key@Value damit nicht direkt verwendbar?
% TODO wie idx, ety, lvl setzen?
% TODO |ic| raus, evtl |l|?
\NewMarkupCommand\Key@Value[idx=macros](\textttit)|ic|{Parameter}
% TODO \Markup@Declare@Format\Key@Value mit Einzug?
%\pretocmd\Markup@Format@@Declare@@Key@Value{%
%  \quad%
%}{}{}
\NewMarkupCommand*\Length[idx=misc]|dic|{L\"ange}
\NewMarkupCommand\Counter[idx=misc]|dic|{Z\"ahler}
\NewMarkupCommand*\Term[idx=terms]|dc|{Bezeichner}
\NewMarkupCommand\PageStyle[idx=elements]|dic|{Seitenstil}
\NewMarkupCommand\Font[idx=elements]|dic|{Schriftelement}
\NewMarkupCommand\Color[idx=elements]|dic|{Farbe}
% TODO auf \tud@ety@gnrl verzichten, einfach leer lassen
\newcommand*\tud@ety@gnrl{+general+}
% TODO change to \Class{tudscr[-class|main]} oder ganz raus?
\newcommand*\tud@ety@dflt{\Bundle{tudscr}}
\newcommand*\tud@ety@crnt{}
\let\tud@ety@crnt\tud@ety@dflt
\NewDocumentCommand\DeclareMarkupEntity{m d<> m}{%
  \begingroup%
    \tud@ety@parent@validate{#1}{%
      \IfValueT{#2}{\DeclareSpecialLink{#1}<#2>}%
      \Markup@Split@Get\tud@res@a{#1}%
      \protected@edef\tud@res@a{%
        \unexpanded{\Declare@MarkupEntity{#1}<#2>}%
        (\expandafter\Markup@Level@Use\tud@res@a)%
        {#3}%
      }%
      \tud@res@a%
    }%
  \endgroup%
}
\GetDocumentCommandArgSpec\DeclareMarkupEntity
\expandafter\NewExpandableDocumentCommand\expandafter%
    \Declare@@MarkupEntity\expandafter{%
  \ArgumentSpecification%
}{}
\NewDocumentCommand\Declare@MarkupEntity{m d<> r() m}{%
  \protected@edef\tud@res@a{#4}%
  \@for\tud@res@a:=\tud@res@a\do{%
    \trim@spaces@in\tud@res@a%
    \ifx\tud@res@a\@empty\else%
      \tud@toks@{}%
      \begingroup%
        \let\DeclareMarkupEntity\Declare@@MarkupEntity%
        \protected@edef\tud@res@b{\tud@res@a}%
        \ifx\tud@res@b\@empty%
          \def\tud@res@c##1##2##3\@nil{\def\tud@res@c{##2}}%
          \expandafter\tud@res@c\tud@res@a\@nil%
        \fi%
        \edef\tud@res@a{%
          \endgroup%
          \ifx\tud@res@b\@empty%
            \tud@toks@{\expandonce\tud@res@a}%
            \unexpanded{\def\tud@res@a}{\expandonce\tud@res@c}%
          \fi%
        }%
      \tud@res@a%
      \expandafter\tud@if@markup\expandafter{\tud@res@a}{%
        \Markup@Main@Get\tud@res@a{\tud@res@a}%
        \Markup@Split@@Get\tud@res@b{\tud@res@a}%
        \tud@res@cnt=\expandafter\Markup@Level@Use\tud@res@b\relax%
        \ifnum\tud@res@cnt>#3\relax%
          \def\tud@res@c##1##2{\def\tud@res@c{##1@##2}}%
          \expandafter\tud@res@c\tud@res@b%
          \edef\tud@res@c{Markup@Entity@Default@@\tud@res@c}%
          \ifcsdef{\tud@res@c}{%
            \ifnum\tud@res@cnt<\thr@@\relax%
              \ClassWarning{tudscrmanual}{%
                The default entity `\csuse{\tud@res@c}'\MessageBreak%
                for `\tud@res@a' is overwritten\MessageBreak%
                with `\detokenize{#1}'%
              }%
              \csgdef{\tud@res@c}{#1}%
            \else%
              \csgappto{\tud@res@c}{,#1}%
            \fi%
          }{%
            \csgdef{\tud@res@c}{#1}%
          }%
          \IfValueT{#2}{%
            \expandafter\DeclareSpecialLink\expandafter{\tud@res@a}<#2>%
          }%
        \else%
          \ClassWarning{tudscrmanual}{%
            Level `\detokenize{#1} (#3)'\MessageBreak%
            too low for `\tud@res@a (\the\tud@res@cnt)'%
          }%
        \fi%
        \the\tud@toks@%
      }{}%
    \fi%
  }%
}
\@onlypreamble\DeclareMarkupEntity
\NewDocumentCommand\DeclareSpecialLink{m r<>}{%
  \begingroup%
    \tud@if@markup{#1}{%
      \tud@if@specialurl{#2}{%
      % TODO default URL auf Basis des Labels, value abschneiden
%        \begingroup
%          \Markup@Inner@Get\tud@res@a{#1}%
%          \edef\tud@res@a{%
%            \unexpanded{\tud@lbl@get\tud@lbl@tmp}{\expandonce\tud@res@a}%
%          }%
%          \tud@res@a%
%          \tud@typeout{\tud@lbl@tmp}%
%        \endgroup
        \Markup@Split@Get\tud@res@a{#1}%
        \tud@res@cnt=\expandafter\Markup@Level@Use\tud@res@a\relax%
        \def\tud@res@b##1##2{%
          \def\tud@res@b{Markup@Format@@SpecialLink@@##1@##2}%
          \ifcsdef{\tud@res@b}{%
            \ClassWarning{tudscrmanual}{%
              The default URL `<\csuse{\tud@res@b}>'\MessageBreak%
              for `\detokenize{#1}' is overwritten\MessageBreak%
              with `\detokenize{<#2>}'%
            }%
          }{}%
          \csxdef{\tud@res@b}{#2}%
        }%
        \expandafter\tud@res@b\tud@res@a%
      }{%
        \ClassWarning{tudscrmanual}{%
          The given special link `#2' \MessageBreak%
          could not be resovled%
        }%
      }%
    }{}%
  \endgroup%
}
\@onlypreamble\DeclareSpecialLink
% TODO den ganzen Kram noch einmal prüfen
\newcommand*\tud@if@specialurl[1]{%
  \begingroup%
    \tud@specialurl@get\tud@res@a\tud@res@b{#1}%
    \ifnum\tud@res@a<\z@\relax%
      \aftergroup\@secondoftwo%
    \else%
      \aftergroup\@firstoftwo%
    \fi%
  \endgroup%
}
% TODO den ganzen Kram noch einmal prüfen
% TODO default URL auf Basis des Labels, value abschneiden
\NewDocumentCommand\tud@special@link@get{m m m}{%
  \begingroup%
    \let\tud@res@a\relax%
    % TODO Einschränkung sinnvoll?
    \ifnum\Markup@Level@@Use{#2}<\thr@@\relax%
      \letcs\tud@res@a{Markup@Format@@SpecialLink@@#2@#3}%
      \ifundef{\tud@res@a}{%
        \letcs\tud@res@a{Markup@Entity@Default@@#2@#3}%
        \ifundef{\tud@res@a}{%
          \letcs\tud@res@a{Markup@Format@@SpecialLink@@#2}%
          \ifundef{\tud@res@a}{}{\appto\tud@res@a{:#3}}%
        }{%
          \Markup@Split@@Get\tud@res@a{\tud@res@a}%
          \expandafter\tud@special@link@get\expandafter\tud@res@a\tud@res@a%
        }%
      }{}%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \ifundef{\tud@res@a}{%
        \unexpanded{\let#1\relax}%
      }{%
        \unexpanded{\def#1}{\expandonce\tud@res@a}%
      }%
    }%
  \tud@res@a%
}
% TODO den ganzen Kram noch einmal prüfen
% TODO \tud@specialurl@get und \tud@special@href@get in \tud@special@link@get?
\newcommand*\tud@special@href@get[3]{%
  \begingroup%
    \tud@specialurl@get\tud@res@a\tud@res@b{#2}%
    \ifcase\tud@res@a\relax% CTAN
      \tud@url@normalize@ctan\tud@res@b{pkg/\tud@res@b}%
    \or% GH
      \tud@url@normalize@github\tud@res@b{\tud@res@b}%
    \fi%
    \ifx\tud@res@b\@empty%
      \ClassWarning{tudscrmanual}{%
        The given special link `#2' \MessageBreak%
        could not be resovled%
      }%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{%
         \noexpand\tud@trace@lbl@add{url}<#2>{#3}%
         \noexpand\href{\tud@res@b}%
      }%
    }%
  \tud@res@a%
}
\AtEndOfClass{\InputIfFileExists{tudscrmanual.cfg}{}{}}
% DOC größer als \tiny, kleiner als \scriptsize
\kernel@make@fragile\KOMAScript
\edef\KOMAScript{%
  \noexpand\mbox{\expandonce\KOMAScript}\noexpand\xspace%
}
\robustify\KOMAScript
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
% TODO noch notwendig?
\newcommand*\Markup@@Expandable{%
  \def\KOMAScript{KOMA-Script\space}%
  \def\TUDScript{TUD-Script\space}%
  \def\CD{Corporate Design\space}%
  \def\CDs{Corporate Designs\space}%
  \def\TUD{Technische Universit\"at Dresden\space}%
  \def\TnUD{Technischen Universit\"at Dresden\space}%
  \def\DDC{DRESDEN-concept\space}%
  \def\OpenSans{Open Sans\space}%
  \def\Univers{Univers\space}%
  \def\DIN{DIN Bold\space}%
}
% TODO Spezialattribut für \PSet \PMisc \PBoolean \PLength
\newcommand*\tud@param@list{}
%\newcommand*\tud@param@special@list{}
\NewDocumentCommand\NewParameterCommand{s m m m m}{%
  \edef\tud@res@a{\expandafter\@gobble\string#2}%
  \listeadd\tud@param@list{\tud@res@a}%
%  \IfBooleanT{#1}{\listeadd\tud@param@special@list{\tud@res@a}}%
  \edef\tud@res@b{\expandafter\noexpand\csname @\tud@res@a\endcsname}%
  \expandafter\NewExpandableDocumentCommand\tud@res@b{#3}{#5}%
  \NewDocumentCommand#2{#3}{#4}%
}
\@onlypreamble\NewParameterCommand
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
% TODO prüfen mit Parameter@Gobble
% TODO use to validate =...= within Value Processors?
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
% TODO raus? oder einfach nciht mehr dokumentieren?
\NewParameterCommand\OPList{m}{%
  \P@Braces*{%
    \PName{#1}%
    \texttt{\kern.05em\textbar\kern-.3em\textbar\kern.05em}%
    \PName{Parameterliste}%
  }%
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
      \aftergroup\@firstoftwo%
    \else%
      \aftergroup\@secondoftwo%
    \fi%
  \endgroup%
}
% TODO noch notwendig?
\newcommand*\Misc@Expandable{%
  \let\suffix\@suffix%
  \let\nosuffix\@nosuffix%
  \let\seeplain\@seeplain%
  \let\hologo\@firstofone%
  \let\hologoRobust\@firstofone%
  \let\emph\@firstofone%
  \let\texttt\@firstofone%
  \let\NoCaseChange\@firstofone%
  \def\_{_}%
  \def~{\space}%
  \def\dots{...}%
}
\AfterPackage*{hyperref}{%
  \expandafter\pdfstringdefDisableCommands\expandafter{\Markup@Expandable}%
}
% TODO robustify markup?! \_ \dots ...
% TODO geht das nach csname? oder doch mit token-register arbeiten?
\newcommand*\tud@idx@robustify{%
  \robustify{\_}%
  \robustify{\dots}%
  \robustify\texttt%
  \robustify\emph%
  \robustify\hologo%
  \ifdef\hyperref{\robustify\hyperref}{}%
}
% TODO --> Tutorial: Entity pflicht bzw. warnung, wenn nicht? oder dflt lassen?
%     direkten link ins handbuch setzen? (xr-hyper, um label zu prüfen?)
\NewDocumentEnvironment{Entity}{m}{%
  \tud@ety@parent@validate{#1}{\Markup@Main@Get\tud@ety@crnt{#1}}%
  \ignorespaces%
}{%
  \aftergroup\ignorespaces%
}
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
\newcommand*\tud@lbl@tmp{}
\NewDocumentCommand\tud@lbl@get{s m m}{%
  \begingroup%
    \tud@lbl@@get#3%
    \IfBooleanT{#1}{%
      \tud@if@lbl@exists{\tud@lbl@tmp}{%
        \tud@trace@lbl@add{matched}{\tud@lbl@tmp}%
      }{%
        \let\tud@res@a\tud@lbl@tmp%
        % TODO Funktion zum Abschneiden des Wertes eines Labels!
        \def\tud@res@b##1=##2\@nil{\def\tud@lbl@tmp{##1}}%
        \expandafter\tud@res@b\tud@lbl@tmp=\@nil%
        \tud@if@lbl@exists{\tud@lbl@tmp}{%
          \tud@trace@lbl@add{matched}<\tud@res@a>{\tud@lbl@tmp}%
        }{%
          % TODO \tud@special@link@get auf Basis des Labels!
%          \tud@special@link@get\tud@res@b{#1}{#2}%
%          \ifx\tud@res@b\relax%
            \tud@trace@lbl@add{missing}{\tud@res@a}%
%          \else%
%            \tud@trace@lbl@add{missing}<\tud@res@b>{\tud@res@a}%
%          \fi%
        }%
      }%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#2}{\detokenize\expandafter{\tud@lbl@tmp}}%
    }%
  \tud@res@a%
}
% TODO RAUS!
\NewDocumentCommand\AUX@Markup@Split@Get{m m}{%
  \begingroup%
    \def\tud@res@a##1##2\@nil{%
      \edef\tud@res@b{{\expandafter\@gobble\string##1}\unexpanded{{##2}}}%
    }%
    \tud@res@a#2\@nil%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@res@b}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@lbl@@get{o m m d// d== o d|| d'' r()}{%
  \begingroup%
    % TODO \tud@ety@gnrl > \Bundle{+general+}?!
    \protected@edef\tud@res@a{#9}%
    \ifx\tud@res@a\tud@ety@gnrl\else%
      \expandafter\AUX@Markup@Split@Get\expandafter\tud@res@a\expandafter{\tud@res@a}%
      \def\tud@res@b##1##2\@nil{\def\tud@res@a{##1(##2)}}%
      \expandafter\tud@res@b\tud@res@a\@nil%
    \fi%
    % TODO separates Makro?
    \let\hologo\@firstofone%
    \def~{\space}%
    \def\dots{...}%
    \def\_{_}%
    \Parameter@Expandable%
    \protected@edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def\tud@lbl@tmp}{%
        \tud@res@a:#2:#3\IfValueT{#4}{/#4}\IfValueT{#5}{=#5}%
      }%
    }%
  \tud@res@a%
}
\tud@auxlist@register(\detokenize\expandafter){tud@lbl@alias}
\newcommand*\tud@lbl@alias@values{}
\newcommand*\tud@lbl@alias@nospecial{!.!:}
\NewDocumentCommand\tud@lbl@declare{s d== r<>}{%
  \begingroup%
    \protected@edef\tud@res@a{#3}%
    % TODO Funktion zum Abschneiden des Wertes eines Labels!
    \def\tud@res@c##1=##2\@nil{\def\tud@res@c{##1}}%
    \expandafter\tud@res@c\tud@res@a=\@nil%
    \IfValueTF{#2}{%
      \protected@edef\tud@res@b{#2}%
      \tud@if@strequal{\PBoolean}{\tud@res@b}{%
        \preto\tud@lbl@alias@values{true,false,}%
      }{}%
      \tud@if@param@special{\tud@res@b}{%
        \protected@expandtwoargs\in@%
          {,\tud@lbl@alias@nospecial,}{,\tud@lbl@alias@values,}%
        \ifin@\else%
          \let\tud@res@a\tud@res@c%
          \protected@epreto\tud@lbl@alias@values{\tud@res@b,}%
        \fi%
      }{}%
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
        \ifx\tud@res@a\tud@lbl@alias@nospecial%
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
            \tud@set@eadd\tud@res@b{\expandonce\tud@res@a}%
          }{}%
        \fi%
      }%
      \edef\tud@res@a{%
        \endgroup%
        \unexpanded{\def\tud@res@b}{\expandonce\tud@res@b}%
      }%
    \tud@res@a%
% PENDING für tutorials notwendig?, darf keine relevanz für manual haben
%        \def\tud@res@a##1:##2:##3\@nil{\tud@hypertarget{##3:##2:##3}}%
%        \expandafter\tud@res@a\tud@lbl@tmp\@nil%
    \tud@auxlist@remove{tud@lbl@alias}{\tud@res@a}%
    \tud@hypertarget{#1}<\tud@res@b>{\tud@res@a}%
  \endgroup%
}
\tud@auxlist@register(\detokenize\expandafter){tud@lbl@dest}
% TODO automatisches Verwenden der Sternversionen von Markup in headings?
\NewDocumentCommand\tudmarkuplabel{o m}{%
  \if@tud@sec%
    \begingroup%
      \def\tud@res@a{\endgroup}%
      \let\tud@res@b\@empty%
      \def\tud@res@c{#2}%
      \@tud@res@swatrue%
      \@for\tud@res@c:=\tud@res@c\do{%
        \trim@spaces@in\tud@res@c%
        \ifx\tud@res@c\@empty\else%
          % TODO sicherstellen, dass markup simple, lvl beachten?!
          \Markup@Inner@Get\tud@res@d{\tud@res@c}%
          \edef\tud@res@d{%
            \unexpanded{\tud@lbl@get\tud@lbl@tmp}{\expandonce\tud@res@d}%
          }%
          \tud@res@d%
          \ifx\tud@res@b\@empty%
            \edef\tud@res@b{\tud@lbl@tmp}%
          \else%
            \eappto\tud@res@a{%
              \noexpand\HyperDestRename{\tud@lbl@tmp}{\tud@res@b}%
            }%
          \fi%
          \eappto\tud@res@a{\noexpand\tud@lbl@declare*<\tud@lbl@tmp>}%
        \fi%
      }%
      \IfValueT{#1}{%
        \eappto\tud@res@a{%
          \ifx\tud@res@b\@empty\else%
            \noexpand\HyperDestRename{#1}{\tud@res@b}%
          \fi%
          \noexpand\label{#1}%
        }%
      }%
    \tud@res@a%
  \else%
    \ClassWarning{tudscrmanual}{%
      The command `\string\tudmarkuplabel' can only be used\MessageBreak%
      in headings%
    }%
  \fi%
}
\NewExpandableDocumentCommand\@tudmarkuplabel{o m}{}
\tud@headings@special{\let\tudmarkuplabel\@tudmarkuplabel}
% TODO \tudhyperref > \tudmanualref für treatise.tex überarbeiten
% \href[pdfnewwindow]{./test.pdf#sec:general}{text}
\newrobustcmd*\tud@hyperlink[3][]{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\hyperlink{#2}%
    }%
  \tud@res@a{#3}{#1}%
}
\NewDocumentCommand\tud@hypertarget{m d<> m}{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@hyper@target{#1}<#2>{#3}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@hyper@target{m r<> m}{%
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
    \tud@trace@lbl@add{created}{\tud@res@a}%
  \endgroup%
}
\newcommand*\tud@declaration@internal@list{}
\NewDocumentCommand\tud@declare@open{m D=={} r[]}{%
  \let\tud@declaration@internal@list\@empty%
  \begingroup%
    \tud@declare@process{#3}%
    \protected@edef\tud@lbl@alias@values{#2}%
    #1%
    \if@tud@declare@track%
      \aftergroup\@tud@declare@tracktrue%
    \else%
      \aftergroup\@tud@declare@trackfalse%
    \fi%
  \endgroup%
}
\NewDocumentCommand\tud@declare@close{m r[]}{%
  \begingroup%
    \tud@declare@process*{#2}%
    #1%
  \endgroup%
}
\tud@newif\if@tud@markup@output\@tud@markup@outputtrue
\TUD@key[.declare]{output}[true]{%
  \TUD@set@ifkey{output}{@tud@markup@output}{#1}%
}
\tud@newif\if@tud@declare@track
\TUD@key[.declare]{track}[true]{%
  \TUD@set@ifkey{track}{@tud@declare@track}{#1}%
}
\tud@newif\if@tud@declare@label
\TUD@key[.declare]{label}[true]{%
  \TUD@set@ifkey{label}{@tud@declare@label}{#1}%
}
\tud@newcount\tud@index@mode@num
\tud@index@mode@num=\@ne%
\TUD@key[.declare]{index}[true]{%
  \TUD@set@ifkey{index}{@tempswa}{#1}%
  \if@tempswa%
    \tud@index@mode@num=\@ne%
  \else%
    \tud@index@mode@num=\z@%
  \fi%
}
\tud@newcount\tud@declare@mode@num
\TUD@key[.declare]{inline}[true]{%
  \TUD@set@ifkey{inline}{@tempswa}{#1}%
  \if@tempswa%
    \tud@declare@mode@num=\tw@%
  \else%
    \tud@declare@mode@num=\@ne%
  \fi%
}
\NewDocumentCommand\tud@declare@process{s m}{%
  \TUDExecuteOptions[.declare]{output,label,index,track=false,inline=false}%
  \begingroup%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\TUDExecuteOptions[.declare]{#2}%
    }%
  \tud@res@a%
  \IfBooleanT{#1}{%
    \TUDExecuteOptions[.declare]{output=false,label=false}%
    \tud@declare@mode@num=-\tud@declare@mode@num\relax%
  }%
}
% TODO --> keine Angabe opt. ||'' Argumente im Markup in Declaration möglich!
\NewDocumentEnvironment{Declaration}{m d== d() d<> o}{%
  \tud@declare@start[{#5}]{#1}=#2=[track](#3)<#4>{see}%
}{%
  \tud@declare@end{#1}[]%
}
\NewDocumentEnvironment{Declaration*}{m d() d<>}{%
  \tud@declare@start{#1}[index=false,label=false](#2)<#3>{see}%
}{%
  \tud@declare@end{#1}[index=false]%
}
% TODO Declaration': index=false, track=true/false?
%\NewDocumentEnvironment{Declaration'}{m d() d<>}{%
%  \tud@declare@start{#1}[track,index=false](#2)<#3>{see}%
%}{%
%  \tud@declare@end{#1}[index=false]%
%}
% TODO alle Änderungen zur vorherigen Version in separaten Teil der Liste?
%      nach Implementierung, wie benennen?
%      unterscheiden zwischen neu/geändert und entfernt?!
\newcommand*\tud@changes@version{}
\let\tud@changes@version\relax
\NewDocumentEnvironment{Changes}{m o}{%
  \ifx\tud@changes@version\relax\else%
    \ClassError{tudscrmanual}{Nested environment `Changes'}{%
      The environment `Changes' must not be nested!%
    }%
  \fi%
  \def\tud@changes@version{#1}%
  \tud@v@validate{\tud@changes@version}%
  \begingroup%
    \edef\tud@res@a{%
      \unexpanded{\"Anderungen f\"ur \TUDScript}\tud@changes@version%
    }%
    \edef\tud@lbl@tmp{sec:obsolete:\tud@changes@version}%
    \edef\tud@res@b{%
      \noexpand\index[changelog]{%
        \tud@changes@version!Allgemein@Allgemein:\space%
        \noexpand\hyperref[\tud@lbl@tmp]{%
          \unexpanded{\"Anderungen gegen\"uber der vorhergehenden Version}%
        }%
      }%
    }%
    \let\tud@res@c\@empty%
    \IfValueT{#2}{%
      \def\tud@res@d##1{%
        \eappto\tud@res@c{\tud@changes@version:}%
        \appto\tud@res@c{##1;}%
      }%
      \forssvlist{\tud@res@d}{#2}%
      \edef\tud@res@c{\noexpand\ChangedAt*{\expandonce\tud@res@c}}%
    }%
    \edef\tud@res@d{%
      \endgroup%
      \noexpand\subsection[\expandonce\tud@res@a]{%
        \expandonce\tud@res@a%
        \noexpand\label{\tud@lbl@tmp}%
        \expandonce\tud@res@b%
        \expandonce\tud@res@c%
      }%
    }%
  \tud@res@d%
% TODO \tud@index@mode@num auf 0? --> sollte nur defaultwert für index ändern
%  \tud@index@mode@num=\z@%
}{}
\NewDocumentEnvironment{Obsolete}{m d() D<>{}}{%
  \ifx\tud@changes@version\relax%
    \ClassError{tudscrmanual}{Missing environment `Changes'}{%
      The environment `Obsolete' must not be used\MessageBreak%
      within environment `Changes'!%
    }%
    \edef\tud@changes@version{\vTUDScript}%
  \fi%
  \begingroup%
    \tud@ref@get\tud@res@a{obsolete}{#3}{\BooleanFalse}%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@declare@start*[\tud@changes@version:\expandonce\tud@res@a]%
    }%
  \tud@res@a{#1}[track,index=false](#2)<#3>{obsolete}%
}{%
  \tud@declare@end{#1}[index=false]%
}
\NewDocumentCommand\seeplain{s m}{%
  \mbox{\emph{\IfBooleanTF{#1}{\alsoname}{\seename}}}\nbs#2%
}
\NewExpandableDocumentCommand\@seeplain{s m}{%
  \IfBooleanTF{#1}{\alsoname}{\seename}\space#2%
}%
\NewDocumentCommand\AP@MarkupRef{m m}{%
  \tud@ref@get\ProcessedArgument{#1}{#2}{\BooleanTrue}%
}
\NewDocumentCommand\tud@ref@get{m m m m}{%
  \begingroup%
    \def\tud@res@d{#3}%
    \let\tud@res@a\tud@res@d%
    \let\tud@res@b\@empty%
    % DOC !<ref>!:... als marker
    \in@{:}{#3}%
    \ifin@%
      \def\tud@res@c##1:##2\@nil{%
        \def\tud@res@c####1!####2!####3\@nil{%
          \IfArgIsEmpty{####1}{%
            \def\tud@res@a{##2}%
            \def\tud@res@b{####2}%
          }{}%
        }%
        \tud@res@c##1!!\@nil%
      }%
      \tud@res@c#3\@nil%
    \fi%
    \trim@spaces@in\tud@res@a%
    \trim@spaces@in\tud@res@b%
    \begingroup%
      \@tud@res@swatrue%
      \let\tud@res@c\@empty%
      \@for\tud@res@a:=\tud@res@a\do{%
        \if@tud@res@swa%
          \trim@spaces@in\tud@res@a%
          \tud@if@markup*{\tud@res@a}{%
            \IfBooleanTF{#4}{%
              \Markup@Inner@Get*\tud@res@a{\tud@res@a}%
              \Markup@Replace*\tud@res@a||'page'{\tud@res@a}%
            }{%
              \Markup@Inner@Get\tud@res@a{\tud@res@a}%
              \Markup@Replace\tud@res@a'plain'{\tud@res@a}%
            }%
            \Markup@Outer@Get\tud@res@a{\tud@res@a}%
            \eappto\tud@res@c{%
              \ifx\tud@res@c\@empty\else,\space\fi%
              \expandonce\tud@res@a%
            }%
          }{%
            \@tud@res@swafalse%
          }%
        \fi%
      }%
      \edef\tud@res@c{%
        \endgroup%
        \if@tud@res@swa%
          \unexpanded{\def\tud@res@a}{\expandonce\tud@res@c}%
          \unexpanded{\ifx\tud@res@b\@empty\def\tud@res@b{#2}\fi}%
        \fi%
      }%
    \tud@res@c%
    \ifx\tud@res@b\@empty\else%
      \TUD@set@numkey{}{tud@res@c}{%
        {see}{0},{seealso}{1},%
        {equal}{2},{gobble}{3},%
        {not}{4},{obsolete}{5}%
      }{\tud@res@b}%
      \ifx\FamilyKeyState\FamilyKeyStateProcessed%
        \ifcase\tud@res@c\relax% see
          \let\tud@res@b\@empty%
          \def\tud@res@c##1{\seeplain{##1}}%
        \or% seealso
          \let\tud@res@b\@empty%
          \def\tud@res@c##1{\seeplain*{##1}}%
        \or% equal
          \let\tud@res@b\@empty%
          \def\tud@res@c##1{identisch zu ##1}%
        \or% gobble
          \def\tud@res@b{keine Funktionalit\"at}%
          \def\tud@res@c##1{, \seeplain{##1}}%
        \or% not
          \def\tud@res@b{nicht definiert}%
          \def\tud@res@c##1{ f\"ur ##1}%
        \or% obsolete
          \def\tud@res@b{entf\"allt}%
          \def\tud@res@c##1{, \seeplain{##1}}%
        \fi%
        \edef\tud@res@d{%
          \expandonce\tud@res@b%
          \ifx\tud@res@a\@empty\else%
            \expandafter\expandonce\expandafter{%
              \expandafter\tud@res@c\expandafter{\tud@res@a}%
            }%
          \fi%
        }%
      \else%
        \ClassWarning{tudscrmanual}{`\tud@res@b:' is unknown as ref format}%
      \fi%
    \fi%
    \edef\tud@res@c{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@res@d}%
    }%
  \tud@res@c%
}
\newcommand*\AP@PresetParser[1]{%
  \begingroup%
    \protected@edef\tud@res@b{\noexpand\tud@res@c#1\noexpand\@nil}%
    \protected@expandtwoargs\in@{|}{#1}%
    \ifin@%
      \def\tud@res@c##1|##2\@nil{%
        \def\tud@res@a{##1}%
        \protected@expandtwoargs\in@{:}{##2}%
        \ifin@%
          \def\tud@res@b####1:####2\@nil{%
            \let\tud@res@b\@empty%
            \protected@edef\tud@res@c{####2}%
            \@for\tud@res@c:=\tud@res@c\do{%
              \trim@spaces@in\tud@res@c%
              \eappto\tud@res@b{%
                \ifx\tud@res@b\@empty\else,\space\fi%
                \unexpanded{\PValue@Enfold*'}{\expandonce\tud@res@c}%
              }%
            }%
            \preto\tud@res@b{\,\textbar\,####1:\space}%
          }%
          \tud@res@b##2\@nil%
        \else%
          \let\tud@res@b\relax%
        \fi%
      }%
    \else%
      \def\tud@res@c##1\@nil{%
        \def\tud@res@a{#1}%
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
        \trim@spaces@in\tud@res@c%
        \eappto\tud@res@a{%
          \ifx\tud@res@a\@empty\else,\space\fi%
          \ifin@%
            \expandafter\@firstofone%
          \else%
            \unexpanded{\PValue@Enfold*'}%
          \fi%
          {\expandonce\tud@res@c}%
        }%
      }%
      \ifx\tud@res@a\@empty%
        \def\tud@res@a{##1}%
      \else%
        \preto\tud@res@a{##1:\space}%
      \fi%
    }%
    \expandafter\tud@res@c\tud@res@a\@nil%
    \ifx\tud@res@b\relax%
      \ClassError{tudscrmanual}{Wrong format for (conditional) preset}{%
        The format `[(text:)preset|condition:preset]' is needed,\MessageBreak%
        but `[#1]' was given.%
      }%
      \let\tud@res@b\@empty%
    \fi%
    \edef\tud@res@c{%
      \endgroup%
      \unexpanded{\def\ProcessedArgument}{%
        \expandonce\tud@res@a\expandonce\tud@res@b%
      }%
    }%
  \tud@res@c%
}
\newcommand*\printdeclarationlist{}
\AtBeginDocument{\undef\printdeclarationlist}
\newcommand*\tud@declaration@list{}
\newcommand*\tud@declaration@label@list{}
\newcommand*\tud@declaration@check{%
  \ifundef{\printdeclarationlist}{}{%
    \ClassError{tudscrmanual}{\string\printdeclarationlist\space is missing}{%
      The command \string\printdeclarationlist\space must\MessageBreak%
      be used right after the last declaration environment.%
    }%
    \gundef\printdeclarationlist%
    \global\let\tud@declaration@list\@empty%
  }%
}
\NewDocumentCommand\tud@declare@start{%
  s o m d== r[] >{\AP@PresetParser}r() >{\AP@MarkupRef{#8}}r<> m%
}{%
  \begingroup%
    \tud@toks@{{\tud@declare@open{#3}=#4=[{#5}]}}%
    \addto@hook\tud@toks@{{#6}{#7}}%
    \IfValueTF{#2}{%
      % TODO ist das noch notwendig?
      \IfBooleanTF{#1}{%
        \addto@hook\tud@toks@{{#2}{!obsolete!}{\BooleanTrue}}%
      }{%
        \addto@hook\tud@toks@{{#2}{!new!}{\BooleanFalse}}%
      }%
    }{%
      \addto@hook\tud@toks@{{#2}}%
    }%
    \edef\tud@res@c{%
      \endgroup%
      \unexpanded{\listadd\tud@declaration@list}{\the\tud@toks@}%
    }%
  \tud@res@c%
  \let\printdeclarationlist\tud@print@declarationlist%
}
\NewDocumentCommand\tud@declare@end{m r[]}{%
  \@killglue%
  \tud@declaration@check%
  \tud@declare@close{#1}[{#2}]%
  \par%
}
\newcommand*\tud@changes@appto[6]{%
  \appto#1{\Changed@At@ProcessList{#2}<{#5}{#6}>:#3:{#4}}%
}
\newcommand\Process@@Output{}%
\NewDocumentCommand\tud@print@declarationlist{!o !d()}{%
  \gundef\printdeclarationlist%
  \tud@setglue\tud@res@glue{\medskipamount*3/2}%
  \ifhmode%
    \vskip\tud@res@glue%
  \else%
    \addpenalty{\@beginparpenalty}%
    \addvspace{\tud@res@glue}%
  \fi%
  \noindent\null%
  \begingroup%
    \def\tud@res@a{%
      \let\tud@declaration@list\@empty%
      \let\tud@declaration@label@list\@empty%
    }%
    \let\tud@res@b\@empty%
    \def\tud@res@c##1##2##3##4\@nil{%
      \begingroup%
        \def\Process@Output####1{\gdef\Process@@Output{####1}}%
        ##1%
        % TODO gehl das eleganter als mit gdef?!
        \ifx\Process@@Output\@empty\else%
          \eappto\tud@res@b{\expandonce\Process@@Output&}%
          \global\let\Process@@Output\@empty%
          \IfValueT{##2}{%
            \appto\tud@res@b{\hskip.75em\relax\small\ignorespaces##2}%
          }%
          \appto\tud@res@b{&}%
          \IfValueT{##3}{%
            \appto\tud@res@b{\hskip.75em\relax\small\ignorespaces##3}%
          }%
          \appto\tud@res@b{\tabularnewline}%
        \fi%
        \def\do####1{%
          \IfValueT{##4}{\tud@changes@appto\tud@res@a##4####1}%
          \if@tud@declare@track%
            % TODO Funktion zum Abschneiden des Wertes eines Labels!
            \def\tud@res@d########1=########2\@nil{%
              \appto\tud@res@a{\listadd\tud@declaration@label@list{########1}}%
            }%
            \expandafter\tud@res@d\@secondoftwo####1=\@nil%
            \appto\tud@res@a{\listadd\tud@declaration@list{####1}}%
          \fi%
        }%
        % TODO gehl das eleganter als mit gdef?!
        \dolistloop{\tud@declaration@internal@list}%
        \edef\tud@res@a{%
          \endgroup%
          \unexpanded{\def\tud@res@a}{\expandonce\tud@res@a}%
          \unexpanded{\def\tud@res@b}{\expandonce\tud@res@b}%
        }%
      \tud@res@a%
    }%
    \def\do##1{\tud@res@c##1\@nil}%
    \dolistloop{\tud@declaration@list}%
    \sbox\z@{%
      \begin{tabular}[t]{|l|@{}l@{}l@{}}%
        \cline{1-1}\noalign{\vskip\arrayrulewidth}%
        \tud@res@b%
        \cline{1-1}\noalign{\vskip\arrayrulewidth}%
      \end{tabular}%
      \IfValueT{#1}{\zap@space#1 \@empty}%
    }%
    \raisebox{\dimexpr\ht\strutbox\relax}{%
      \usebox\z@%
      \IfValueT{#2}{%
        \hskip.75em%
        \begin{minipage}%
        [t][\dimexpr\ht\z@+\dp\z@-2\arrayrulewidth\relax][c]%
        {\the\dimexpr\textwidth-\wd\z@-.75em\relax}%
          #2%
        \end{minipage}%
      }%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \expandonce\tud@res@a%
      \noexpand\tud@print@changedatlist[-\arrayrulewidth]%
    }%
  \tud@res@a%
  \par\nobreak%
  \vskip\glueexpr\medskipamount\relax%
  \@afterindentfalse\@afterheading%
}
% TODO alias setzen falls Spezialwert gegeben (parskip), intern ohne alias
% TODO Nutzen eines vorhandenen/gegebenen Links \File'CTAN:l2tabu'{l2tabu.pdf}
\NewDocumentCommand\InlineDeclaration{s d== m}{%
  \IfBooleanT{#1}{%
    \ClassWarning{tudscrmanual}{%
      There is no starred variant for \string\InlineDeclaration%
    }%
  }%
  \IfValueT{#2}{\ClassWarning{tudscrmanual}{remove me}}%
  \Inline@Declaration=#2={#3}%
}
\NewDocumentCommand\Inline@Declaration{s o d== m}{%
  \tud@declare@special@start[{#2}]{#4}=#3=[inline\IfBooleanT{#1}{,output=false}]%
  \tud@declare@special@end{#4}[inline]%
  \null%
}
\NewDocumentEnvironment{DeclareEntity}{m o}{%
  \tud@declare@special@start*[{#2}]{#1}[output=false]%
  \begin{Entity}{#1}%
}{%
  \end{Entity}%
  \tud@declare@special@end{#1}[]%
}
\NewDocumentEnvironment{DeclareEntity*}{m o}{%
  \tud@declare@special@start[{#2}]{#1}[output=false]%
}{%
  \tud@declare@special@end{#1}[]%
}
\NewDocumentCommand\tud@declare@special@start{s o m d== r[]}{%
  \tud@declare@open{#3}=#4=[{#5}]%
  \IfValueT{#2}{%
    \IfBooleanTF{#1}{%
      \Changed@At@ProcessList{#2}(#3):!new!:{\BooleanFalse}%
    }{%
      \begingroup%
        \let\tud@res@a\@empty%
        \def\tud@res@b##1{%
          \appto\tud@res@a{%
            \Changed@At@ProcessList{#2}<##1>:!new!:{\BooleanFalse}%
          }%
        }%
        \forlistloop{\tud@res@b}{\tud@declaration@internal@list}%
        \edef\tud@res@a{%
          \endgroup%
          \expandonce\tud@res@a%
        }%
      \tud@res@a%
    }%
    \tud@print@changedatlist%
  }%
  \ignorespaces%
}
\NewDocumentCommand\tud@declare@special@end{m r[]}{%
  \tud@declare@close{#1}[{#2}]%
  \ignorespaces%
}
% TODO überall interne Reihenfolge von () '' || in || '' () ändern
% TODO validate #6; nur |!|, |?|, |.| und || gültig
% TODO validate #7?
%%      \unexpanded{%
%%        \IfBooleanT{##1}{%
%%          \IfValueT{##2}{%
%%            \ClassWarning{tudscrmanual}{%
%%              It's not possible to use both star and |##2|!%
%%            }%
%%          }%
%%          \IfValueT{##3}{%
%%            \ClassWarning{tudscrmanual}{%
%%              It's not possible to use both star and '##3'!%
%%            }%
%%          }%
%%        }%
%%      }%
\AfterPackage*{textcase}{%
  \newcommand*\tud@no@casechange[1]{\NoCaseChange{\the\toks@{#1}}}%
  \newcommand*\tud@nocasechange[1]{%
    \def#1##1##{\NoCaseChange{\toks@{\noexpand#1##1}}\tud@no@casechange}%
  }%
  \def\tud@res@a#1{%
    \eappto\tud@x@textcase@uclcnotmath{%
      \noexpand\tud@nocasechange\expandafter\noexpand\csname#1\endcsname%
    }%
  }%
  \forlistloop\tud@res@a{\tud@markup@list}%
  \appto\tud@x@textcase@uclcnotmath{\tud@nocasechange\hologo}%
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
\newcommand*\seeidx[2]{\pageref{idx:#1}}
\newrobustcmd*\tud@idx@declare[2]{%
  \ifcsundef{tud@idx@lbl@@#1}{}{%
    \ClassWarningNoLine{tudscrmanual}{%
      Index entry for\MessageBreak`#1'\MessageBreak was already defined%
    }%
  }%
  \csgdef{tud@idx@lbl@@#1}{#2}%
}
\@onlypreamble\tud@idx@declare
\AtEndDocument{\let\tud@idx@declare\@gobbletwo}
\newcommand*\tud@if@idx@exists[1]{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\ifcsundef{tud@idx@lbl@@#1}%
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
      \unexpanded{\letcs#1}{tud@idx@lbl@@#2}%
    }%
  \tud@res@a%
}
\newcommand*\tud@lbl@parent{}
\let\tud@lbl@parent\relax%
% TODO |#3| \AP@Index > \tud@index@mode@num auswerten
\NewDocumentCommand\Process@Index{m r== r|| r<> m}{%
  % TODO überarbeiten, index |.| für normalen Eintrag
  \@tud@res@swatrue%
  \ifnum\tud@index@mode@num<\@ne\relax\@tud@res@swafalse\fi%
  \tud@if@strblank{#3}{\@tud@res@swafalse}{}%
  % TODO ENDE überarbeiten
  \if@tud@res@swa%
    \begingroup%
      \tud@idx@get\tud@res@a<#4>{#5}%
      \tud@idx@write{\tud@res@a}{#1}|#3|%
      \ifnum\tud@declare@mode@num>\z@\relax%
        \def\tud@res@b##1{%
          \protected@write\@auxout{}{\string\tud@idx@declare{##1}{\tud@res@a}}%
          \global\cslet{tud@idx@lbl@@##1}\tud@res@a%
        }%
        \tud@res@b{#4}%
        \ifundef{\tud@lbl@parent}{%
          \tud@if@param@special{#2}{%
            % TODO Funktion zum Abschneiden des Wertes eines Labels!
            \def\tud@res@c##1=##2\@nil{\def\tud@res@c{##1}}%
            \tud@res@c#4\@nil%
            \expandafter\tud@res@b\expandafter{\tud@res@c}%
          }{}%
        }{}%
      \fi%
    \endgroup%
  \fi%
}
\newcommand*\tud@idx@tmp{}
\NewDocumentCommand\tud@idx@get{m d<> m}{%
  \begingroup%
    \tud@idx@robustify%
    \let\tud@res@c\@secondoftwo%
    \ifnum\tud@declare@mode@num>\z@\relax\else%
      \IfValueT{#2}{\def\tud@res@c{\tud@if@idx@exists{#2}}}%
    \fi%
    \tud@res@c{%
      \tud@idx@read\tud@idx@tmp{#2}%
    }{%
      \let\tud@idx@tmp\@empty%
      \tud@idx@@get#3%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\tud@idx@tmp}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@idx@@get{o m m d// d== o d|| d'' r()}{%
  \def\tud@res@c##1##2##3{%
    \tud@if@idx@exists{##1}{##2}{%
      % TODO die Warnung direkt in \tud@if@idx@exists?
      \ClassWarning{tudscrmanual}{%
        Index entry for\MessageBreak`##1'\MessageBreak is not defined%
      }%
      ##3%
    }%
  }%
  % TODO \tud@lbl@parent aus declaration@list? als Argument?
  \ifundef{\tud@lbl@parent}{}{%
    \tud@if@idx@exists{\tud@lbl@parent}{%
      \tud@idx@read\tud@idx@tmp{\tud@lbl@parent}%
      \appto\tud@idx@tmp{!}%
    }{}%
  }%
  \ifx\tud@idx@tmp\@empty%
    \IfValueT{#4}{%
      \tud@lbl@get\tud@lbl@tmp{{#2}{#3}(#9)}%
      \tud@res@c{\tud@lbl@tmp}{%
        \tud@idx@read\tud@idx@tmp{\tud@lbl@tmp}%
      }{%
        \tud@idx@@@get\tud@idx@tmp{#2}{#3}(#9)%
      }%
      \appto\tud@idx@tmp{!}%
    }%
    \IfValueT{#5}{%
      \tud@if@param@special{#5}{}{%
        \tud@lbl@get\tud@lbl@tmp{{#2}{#3}/#4/(#9)}%
        \tud@res@c{\tud@lbl@tmp}{%
          \tud@idx@read\tud@idx@tmp{\tud@lbl@tmp}%
          \let\tud@res@b\@empty%
        }{%
          \tud@idx@@@get\tud@res@b{#2}{#3}/#4/(#9)%
        }%
        \eappto\tud@idx@tmp{\expandonce\tud@res@b!}%
      }%
    }%
    % TODO übler Hack, muss in NewMarkupCommand
    \tud@if@strequal{#2}{Distribution}{\preto\tud@idx@tmp{Distribution!}}{}%
    % TODO ENDE Hack
  \fi%
  \tud@toks@{\tud@idx@@@get}%
  \ifx\tud@idx@tmp\@empty%
    \addto@hook\tud@toks@{*}%
  \fi%
  \addto@hook\tud@toks@{\tud@res@b{#2}{#3}/#4/=#5=(#9)}%
  \the\tud@toks@%
  \ifx\tud@idx@tmp\@empty\else%
    \IfValueT{#5}{%
      \tud@if@param@special{#5}{}{%
        \def\tud@res@c##1@##2\@nil{%
          \def\tud@res@b{{##1}@{\MarkupSuffixInline{##2}}}%
        }%
        \expandafter\tud@res@c\tud@res@b\@nil%
      }%
    }%
  \fi%
  \eappto\tud@idx@tmp{\expandonce\tud@res@b}%
}
\newcommand*\tud@idx@key{}
\newcommand*\tud@idx@fmt{}
% TODO #7 bei Deklaration für index verwenden? suffix parameter nicht in index?
\NewDocumentCommand\tud@idx@@@get{s m m m d// d== o r()}{%
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
      \protected@edef\tud@res@c{#8}%
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
            \ifx\tud@res@c\@empty\else\space(\tud@res@c)\fi%
          \fi%
        }%
      }%
    \tud@res@a%
    % TODO abfrage/\tud@res@a raus/überarbeiten, wenn \NewMarkupCommand fertig
    % TODO gegebenes Bundle immer direkt eintragen!
    \tud@if@strequal{\tud@ety@gnrl}{#8}{%
      \let\tud@res@a\@gobbletwo%
    }{%
      \tud@ety@aux@get\tud@res@a{#3}{#4}%
      % TODO prüfen und raus!
%      \typeout{======================================}%
%      \typeout{\detokenize{#3*#4}: \meaning\tud@res@a}%
      \tud@if@strequal{\tud@res@a}{#8}{%
        \let\tud@res@a\@gobbletwo%
      }{%
        \let\tud@res@a\@firstoftwo%
      }%
    }%
    % TODO Markup@Outer@Get!
    \protected@edef\tud@idx@fmt{%
      \expandafter\noexpand\csname#3\endcsname\tud@res@a{(#8)}{}{%
        #4\IfValueT{#5}{/#5}\ifx\tud@res@b\relax\else=\tud@res@b\fi%
      }\tud@res@a{}{(#8)}%
      \if@tud@res@swa%
        \IfValueT{#7}{#7}%
        \ifx\tud@res@c\@empty\else%
          \ifx\tud@res@c\tud@ety@gnrl\else%
            \idxsuffix{#8}%
          \fi%
        \fi%
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
\NewDocumentCommand\tud@idx@write{m m r||}{%
  \begingroup%
    % TODO check
  %  ;;(define-attributes (("declare" "!") ("important" "?")("default")))
  %  ;;(markup-attribute-group-list :sep ", ")
  %  ;;(merge-to "default" "declare")
  %  ;;(merge-to "default" "important")
    \protected@edef\tud@res@a{#1}%
    \def\tud@res@c{declare}%
    \@tud@res@swatrue%
    \ifcase\tud@absnum\tud@declare@mode@num\relax\relax%
      \IfValueTF{#3}{\def\tud@res@c{#3}}{\let\tud@res@c\@empty}%
    \or%
      \ifnum\tud@declare@mode@num<\z@\relax%
        \tud@index@mode@num=\thr@@%
      \else%
        \tud@index@mode@num=\tw@%
      \fi%
    \or%
      \ifnum\tud@declare@mode@num<\z@\relax%
        \@tud@res@swafalse%
      \else%
        \tud@index@mode@num=\@ne%
      \fi%
    \fi%
    \if@tud@res@swa%
      \ifcase\tud@index@mode@num\relax\or\or%
        \preto\tud@res@c{(}%
      \or%
        \appto\tud@res@c{)}%
      \fi%
    % TODO split an "!" und jeden Eintrag auch verwenden?
    %      falls ja, nur wenn \tud@declare@mode@num>\z@?
      \letcs\tud@res@b{Markup@Format@@Index@@#2}%
      \index[\tud@res@b]{\tud@res@a\ifx\tud@res@c\@empty\else|\tud@res@c\fi}%
    \fi%
  \endgroup%
}
% TODO raus!
\NewDocumentCommand\tud@ety@aux@get{m o m m}{%
  \IfValueT{#2}{\csname#2false\endcsname}%
  \ifnum\numexpr0\csname Markup@Format@@Level@@#3\endcsname\relax=\z@\relax%
    \let#1\relax%
  \else%
    \begingroup%
      \Markup@Expandable%
      \ifcsundef{Markup@Entity@@#3@#4}{%
      }{%
%        \typeout{////////// #3-#4: \csmeaning{Markup@Entity@@#3@#4}}%
      }%
      \protected@edef\tud@res@a{Markup@Entity@Default@@#3@#4}%
      \def\tud@res@b{\endgroup}%
      \ifcsundef{\tud@res@a}{%
        \protected@edef\tud@res@a{Markup@Entity@Default@@#3}%
        \ifcsundef{\tud@res@a}{%
          \appto\tud@res@b{\let#1\relax}%
        }{%
%          \typeout{////////// #3 (\tud@res@a) #4}%
          \eappto\tud@res@b{%
            \unexpanded{\protected@edef#1}{\noexpand\csuse{\tud@res@a}{#4}}%
          }%
        }%
      }{%
        \eappto\tud@res@b{%
          \unexpanded{\protected@edef#1}{\noexpand\csuse{\tud@res@a}}%
        }%
        \IfValueT{#2}{%
          \eappto\tud@res@b{\expandafter\noexpand\csname#2true\endcsname}%
        }%
      }%
    \tud@res@b%
  \fi%
}
% TODO NewCrossIndex: Schließen des Ausgabestreams durch imakeidx verhindern!
% TODO danach mit |see kombinieren, um Refernezen zu bündeln
%      \SeeIndex[Änderungsliste:changelog]{Änderungen}{Changelog,Version}
%      #2 erhält Eintrag auf Index #1; #3|see#2; Sternversion für seeunverified?
\NewDocumentCommand\CrossIndex{m o m}{%
  \begingroup%
    \def\tud@res@c##1!##2\@nil{%
      \IfArgIsEmpty{##2}{%
        \def\tud@res@b{Index der ##1}%
      }{%
        \tud@res@c##2\@nil%
      }%
    }%
    \def\tud@res@d##1##2{%
%      \csgappto{tud@idx@cross@#3}{%
%        \index{##2}%
        \index{##2!"|@\,\textrightarrow\,\hyperref[{idx:#3}]{##1}|seeidx{#3}}%
%      }%
    }%
    \def\tud@res@a##1{%
      \IfValueTF{#2}{\def\tud@res@b{#2}}{\tud@res@c##1!\@nil}%
      \expandafter\tud@res@d\expandafter{\tud@res@b}{##1}%
    }%
    \forcsvlist{\tud@res@a}{#1}%
  \endgroup%
}
%\AfterReadingMainAux{%
%  \if@filesw%
%    \immediate\closeout\@indexfile%
%    \ifnum\pdf@strcmp{\pdf@filemdfivesum{\jobname.idx}}{\tud@idx@mdf}=\z@\else%
%      \ClassWarningNoLine{tudscrmanual}{%
%        The index file `\jobname.idx' has changed. Run again\MessageBreak%
%        with --shell-escape flag enabled%
%      }%
%    \fi%
%  \fi%
%}
\newcommand*\PrintIndex{%
  \begingroup%
    \tud@index@mode@num=\m@ne%
    \setchapterpreamble{%
      \begin{abstract}%
        \noindent%
        Die Formatierung der Eintr\"age in allen aufgef\"uhrten Indexen ist %
        folgenderma\ss{}en aufzufassen: \textbf{Zahlen in fetter Schrift} %
        verweisen auf die \textbf{Erkl\"arung} zu einem Stichwort, wobei in %
        der digitalen Fassung dieses Handbuchs dieser Eintrag selbst ein % 
        Hyperlink zu seiner Erl\"auterung ist. Seitenzahlen in normaler %
        Schriftst\"arke hingegen deuten auf zus\"atzliche Informationen, %
        wobei diese f\"ur \textit{kursiv hervorgehobene Zahlen} als besonders %
        \textit{wichtig} erachtet werden.\par %
        Eintr\"age von \hyperref[idx:options]{Klassen- und Paketoptionen}, %
        \hyperref[idx:macros]{Umgebungen und Befehlen} sowie %
        \hyperref[idx:elements]{Seitenstilen, Schriftelementen und Farben} %
        respektive \hyperref[idx:misc]{L\"angen und Z\"ahlern}, die nicht %
        durch \TUDScript sondern von anderen Klassen oder Paketen zur % 
        Verf\"ugung gestellt werden, sind diese im Suffix des entsprechenden % 
        Eintrages angegeben. Exisitiert f\"ur einen solchen Eintrag % 
        \emph{keine} direkte \textbf{Erl\"auterung} ist dementsprechend auch % 
        kein Hyperlink verf\"ugbar.%
      \end{abstract}%
    }%
    \addchap{\indexname}%
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
  \IfFileExists{\jobname-#1.idx}{%
    \pagebreak[3]%
    \def\tud@idx@label{idx:#1}%
    % TODO NewCrossIndex
%    \letcs\tud@idx@cross{tud@idx@cross@#1}%
    \IfValueT{#2}{\indexprologue{#2\tud@idx@vskip}}%
    \printindex[{#1}]%
    % TODO in \tud@xdy@make erledigen
    \IfFileExists{\jobname-#1.ind}{}{%
      \ClassWarning{tudscrmanual}%
      {%
        No processed index file found,\MessageBreak%
        `\jobname-#1.ind' does not exist%
      }%
%      \immediate\write\@mainaux{\string\gdef\string\tud@idx@mdf{}}%
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
% TODO d<> in Ordnung oder besser einfach o?
\NewDocumentCommand\ChangedAt{s d<> m}{%
  \IfValueTF{#2}{%
    \begingroup%
      \def\tud@res@a{#2}%
      \let\tud@res@c\@empty%
      \def\tud@res@d##1{%
        \appto\tud@res@c{\Changed@At@ProcessList{#3}<##1>{#1}}%
      }%
      \@for\tud@res@a:=\tud@res@a\do{%
        \trim@spaces@in\tud@res@a%
        \ifx\tud@res@a\@empty\else%
          \Markup@Inner@Get\tud@res@b{\tud@res@a}%
          \edef\tud@res@a{%
            \unexpanded{\tud@lbl@get\tud@lbl@tmp}{\expandonce\tud@res@b}%
          }%
          \tud@res@a%
          \edef\tud@res@a{{\expandonce\tud@res@b}{\expandonce\tud@lbl@tmp}}%
          \expandafter\tud@res@d\expandafter{\tud@res@a}%
        \fi%
      }%
      \ifx\tud@res@c\@empty%
        \ClassWarning{tudscrmanual}{No markup was given for change note}%
        \def\tud@res@c{\Changed@At@ProcessList{#3}{#1}}%
      \fi%
      \preto\tud@res@c{\endgroup}%
    \tud@res@c%
  }{%
    \Changed@At@ProcessList{#3}{#1}%
  }%
  \tud@print@changedatlist%
}
\GetDocumentCommandArgSpec\ChangedAt
\expandafter\NewExpandableDocumentCommand\expandafter\@ChangedAt\expandafter{%
  \ArgumentSpecification%
}{}%
\tud@headings@special{\let\ChangedAt\@ChangedAt}
\newcommand*\tud@chg@entry@list{}
\newcommand*\tud@chg@version@list{}
\newcommand*\tud@print@changedatlist[1][\z@]{%
  \begingroup%
    \ifx\tud@chg@version@list\@empty\else%
      \tud@list@sort\tud@chg@version@list%
      \let\tud@res@b\@empty%
      \def\tud@res@c##1{%
        \appto\tud@res@b{%
          \ignorespaces%
          \normalfont\normalsize%
          \hyperref[{idx:changelog:##1}]{##1}%
          \tabularnewline%
        }%
      }%
      \forlistloop\tud@res@c{\tud@chg@version@list}%
      % TODO \strut notwendig?
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
      \forlistloop\@firstofone{\tud@chg@entry@list}%
    \fi%
  \endgroup%
  \global\let\tud@chg@entry@list\@empty%
  \global\let\tud@chg@version@list\@empty%
  \ignorespaces%
}
% TODO #1>#5? #5>s; wirklich <#3>?
% TODO #3: {{markup}{label}} > {<label>{markup}} oder nur markup?
% TODO #2: default notwendig? wohl besser mit protected@edef expandieren, oder?
\NewDocumentCommand\Changed@At@ProcessList{m D(){\tud@ety@crnt} d<> d:: m}{%
  \IfValueT{#1}{%
    \begingroup%
      \let\tud@res@a\@empty%
      \def\tud@res@b##1{%
        \appto\tud@res@a{\Changed@At@@ProcessList(#2)<#3>:#4:{#5}{##1}}%
      }%
      \forssvlist{\tud@res@b}{#1}%
      \edef\tud@res@a{%
        \endgroup%
        \expandonce\tud@res@a%
      }%
    \tud@res@a%
  }%
}
\NewDocumentCommand\Changed@At@@ProcessList{r() r<> r:: m m}{%
  \begingroup%
    \in@{:}{#5}%
    \ifin@%
      \def\tud@res@c##1:##2\@nil{%
        \def\tud@res@a{##1}%
        \def\tud@res@b{##2}%
      }%
      \tud@res@c#5\@nil%
    \else%
      \def\tud@res@a{#5}%
      \let\tud@res@b\@empty%
    \fi%
    \tud@v@validate{\tud@res@a}%
    \trim@spaces@in{\tud@res@b}%
    \ifx\tud@res@b\@empty%
      \IfValueT{#3}{\def\tud@res@b{#3}}%
    \fi%
    \ifx\tud@res@b\@empty%
      \IfValueT{#2}{%
        \ClassWarning{tudscrmanual}{%
          There is no text for a change note although\MessageBreak%
          a markup/entity was given%
        }%
      }%
    \else%
      \tud@toks@{\Changed@At@CreateEntry(#1)<#2>}%
      \addto@hook@expandafter\tud@toks@{\expandafter{\tud@res@a}}%
      \addto@hook@expandafter\tud@toks@{\expandafter:\tud@res@b:}%
      \listxadd\tud@chg@entry@list{\the\tud@toks@}%
    \fi%
    \IfBooleanF{#4}{%
      \tud@set@xadd\tud@chg@version@list{\tud@res@a}%
    }%
  \endgroup%
}
\newcommand*\PrintChangelog{%
  \begingroup%
    \tud@index@mode@num=-2%
    \apptocmd\theindex{%
      % TODO neuer Stil tudscrmanual-gls.xdy oder tudscrmanual-clg.xdy
      % oder tudscrmanual-changelog.xdy [und tudscrmanual-index.xdy]
      % tudscrdoc beachten
      % ebenen neu arangieren; abstände zwischen items; entity oberste ebene?
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
        \addsec[{##1}]{\TUDScript##1\label{idx:changelog:##1}}%
        \def\tud@res@a{\indexname:\space\TUDScript##1}%
        \@mkboth{\tud@res@a}{\tud@res@a}%
      }%
    }{}{\tud@patch@wrn{theindex}}%
    \clearpage%
    \def\imki@indexlevel{\addchap}%
    \tud@print@index[changelog]%
  \endgroup%
}
% TODO #3<->#4
% TODO Trennung von Allgemein und Implementierung notwendig/sinnvoll?
% TODO nach Paketen trennen, diese als Teilüberschrift?!
% TODO Implementierung > Funktionalität erweitert/ergänzt & veraltet/entfernt
\NewDocumentCommand\Changed@At@CreateEntry{r() r<> m r::}{%
  \begingroup%
    \tud@idx@robustify%
    \protected@edef\tud@res@a{#1}%
    \ifx\tud@res@a\tud@ety@dflt%
      \let\tud@res@a\@empty%
    \else%
      \preto\tud@res@a{\space}%
    \fi%
    \IfValueTF{#2}{%
      \def\tud@res@c##1##2\@nil{%
        % TODO IfMarkup@KeyTF
        \def\tud@res@c####1/####2/####3\@nil{%
          \IfValueTF{####2}{%
            \@tud@res@swatrue%
          }{%
            \@tud@res@swafalse%
          }%
        }%
        \tud@res@c##1\@nil%
        \tud@idx@get\tud@res@c<##2>{##1}%
      }%
      \tud@res@c#2\@nil%
      \edef\tud@res@c{\noexpand\SplitArgument{2}{!}{\expandonce\tud@res@c}}%
      \tud@res@c%
      \def\tud@res@c##1##2##3{%
        \tud@toks@{\Changed@At@@CreateEntry\tud@res@c(#1):#4:{##1}}%
        \if@tud@res@swa%
          \addto@hook\tud@toks@{{##2}{##3}}%
        \else%
          \addto@hook\tud@toks@{{##3}{##2}}%
        \fi%
      }%
      \expandafter\tud@res@c\ProcessedArgument%
      \the\tud@toks@%
      \index[changelog]{#3!Implementierung\tud@res@a!\tud@res@c}%
    }{%
      \tud@if@strequal{#4}{!new!}{%
        \def\tud@res@b{neuer Bestandteil von \TUDScript}%
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
      }%
      \edef\tud@res@b{\detokenize\expandafter{\tud@res@b}}%
      \index[changelog]{#3!Allgemein\tud@res@a!\tud@res@b}%
    }%
  \endgroup%
}
% TODO an geändertes \Changed@At@CreateEntry anpassen
\NewDocumentCommand\Changed@At@@CreateEntry{m r() r:: m m m}{%
  \begingroup%
    % TODO als einfacher Schalter, wenn Obsolete Processorergebnis durchreicht
    \tud@if@strequal{#3}{!new!}{%
      \let\tud@res@b\@empty%
      \def\tud@res@c{\emph{neu}}%
    }{%
      % TODO kann eigentlich raus
      \tud@if@strequal{#3}{!obsolete!}{%
        \let\tud@res@b\@empty%
        \def\tud@res@c{\emph{entf\"allt}}%
      }{%
        \def\tud@res@b{#3}%
        \def\tud@res@c{#3}%
      }%
    }%
    \let\tud@res@a\@empty%
    \IfValueT{#6}{%
      \Changed@At@@@CreateEntry\tud@res@a{#6}:\tud@res@b::\tud@res@c:(#2)%
      \let\tud@res@b\@empty%
      \def\tud@res@c{Werte angepasst}%
    }%
    \IfValueT{#5}{%
      \Changed@At@@@CreateEntry\tud@res@a{#5}:\tud@res@b::\tud@res@c:(#2)%
      \let\tud@res@b\@empty%
      \def\tud@res@c{Parameter angepasst}%
    }%
    \Changed@At@@@CreateEntry\tud@res@a{#4}:\tud@res@b::\tud@res@c:(#2)%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\tud@res@a}%
    }%
  \tud@res@a%
}
% TODO an geändertes \Changed@At@[@]CreateEntry anpassen
\NewDocumentCommand\Changed@At@@@CreateEntry{m m r:: r:: r()}{%
  \begingroup%
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
    \protected@edef\tud@res@d{%
      \unexpanded{\tud@replace@@in\tud@res@b}{\noexpand\idxsuffix{#5}}{}%
      \unexpanded{\tud@replace@@in\tud@res@c}{\noexpand\idxsuffix{#5}}{}%
    }%
    \tud@res@d%
    \edef\tud@res@c{%
      \endgroup%
      \unexpanded{\def#1}{{\tud@res@b}@{\tud@res@c}\expandonce\tud@res@a}%
    }%
  \tud@res@c%
}
% TODO den ganzen allgemeinen Kram weiter nach oben
\RequirePackage{enumitem}[2011/09/28]
\setlist{%
  before*={\endgraf\tud@RaggedRight},%
  partopsep=0pt,noitemsep%
}
\newcommand*\tud@list@create[4][]{%
  \newlist{#2}{#3}{#4}%
  \setlist[{#2}]{%
    topsep=\smallskipamount,%
    font=\normalfont,labelwidth=\linewidth,labelsep=0pt,%labelindent=.75em,%
    parsep=\parskip,listparindent=\parindent,%
    #1%
  }%
}
\AtBeginDocument{%
  \newcommand*\itemval{}%
  \undef\itemval%
}
\newcommand*\tud@item@@val[1]{%
  \tud@declaration@check%
  \ifx\tud@declaration@list\@empty%
    \ClassError{tudscrmanual}{Wrong usage of `DeclareValues'}{%
      The environment `DeclareValues' can only be used\MessageBreak%
      within declarations.%
    }%
  \fi%
  \let\itemval\tud@item@val%
}
% TODO noindent nach Umgebung?
% TODO Einzug des Labels 
\tud@list@create[before=\tud@item@@val]{DeclareValues}{description}{1}
\NewDocumentCommand\tud@item@val{s r== d() >{\AP@MarkupRef{see}}d<> o}{%
  \begingroup%
    \protected@edef\tud@res@d{#2}%
    \let\tud@res@a\@empty%
    \@tud@res@swafalse%
    \@for\tud@res@d:=\tud@res@d\do{%
      \trim@spaces@in\tud@res@d%
      \TUD@set@numkey{}{tud@res@c}{\TUD@bool@numkey}{\tud@res@d}%
      \ifx\FamilyKeyState\FamilyKeyStateProcessed%
        \if@tud@res@swa%
          \ClassWarning{tudscrmanual}{There was already a boolean value}%
          \let\tud@res@d\@empty%
        \else%
          \@tud@res@swatrue%
          \ifcase\tud@res@c\relax%
            \def\tud@res@d{false,off,no}%
          \else%
            \def\tud@res@d{true,on,yes}%
          \fi%
        \fi%
      \fi%
      \ifx\tud@res@d\@empty\else%
        \eappto\tud@res@a{\ifx\tud@res@a\@empty\else,\fi\expandonce\tud@res@d}%
      \fi%
    }%
    \let\tud@res@d\tud@res@a%
    \let\tud@res@a\@empty%
    \let\tud@res@b\@empty%
    \edef\tud@res@c##1{\noexpand\PValue@Enfold\IfBooleanT{#1}{*}{##1}}%
    \@for\tud@res@d:=\tud@res@d\do{%
      \tud@res@c{\tud@res@d}%
      \ifx\tud@res@a\@empty%
        \let\tud@res@a\tud@res@d%
      \else%
        \eappto\tud@res@b{\PValue{/}\expandonce\tud@res@d}%
        \eappto\tud@lbl@alias@values{,\expandonce\tud@res@d}%
      \fi%
    }%
    \IfValueTF{#3}{%
      \appto\tud@res@b{\suffix{S\"aumniswert f\"ur #3}}%
    }{%
      \IfBooleanT{#1}{\appto\tud@res@b{\suffix{S\"aumniswert}}}%
    }%
    \IfValueT{#4}{\appto\tud@res@b{{\qquad\suffixsize#4}}}%
    \def\tud@res@d##1=##2=##3\@nil##4{%
      % TODO If@Markup@(Key|[Special]Value)TF
      % TODO auf spezielles Markup prüfen (\PSet/\PMisc/\PBoolean)?!
      \IfValueTF{##2}{%
        \Markup@Replace\tud@res@c=##4={\tud@res@c}%
      }{%
        \let\tud@res@c\@empty%
      }%
    }%
    % TODO index entsprechend \tud@declaration@internal@list nutzen
    \def\tud@res@c##1##2{%
      \begingroup%
        \def\tud@res@c####1####2{%
          \def\tud@res@c{####1}%{##1}%
          \def\tud@lbl@tmp{####2}%
        }%
        \tud@res@c##2%
        \expandafter\tud@res@d\tud@res@c\@nil{##1}%
        \ifx\tud@res@c\@empty\else%
          \Markup@Outer@Get\tud@res@c{\tud@res@c}%
          \edef\tud@res@c{%
            % TODO Process@Index einfach hier mit \tud@lbl@parent aufrufen?
            %      und Markup@Replace||
            \unexpanded{\def\tud@lbl@parent}{\tud@lbl@tmp}%
            \noexpand\Inline@Declaration\ifx\tud@res@a\@empty\else*\fi%
            \unexpanded{[{#5}]}%
            =\tud@lbl@alias@nospecial\expandonce\tud@lbl@alias@values=%
            {\expandonce\tud@res@c}%
          }%
        \fi%
        \edef\tud@res@c{%
          \endgroup%
          \unexpanded{\appto\tud@res@a}{\expandonce\tud@res@c}%
        }%
      \tud@res@c%
    }%
    \edef\tud@res@a{%
      \unexpanded{\let\tud@res@a\@empty}%
      \noexpand\forlistloop%
        {\noexpand\tud@res@c{\expandonce\tud@res@a}}%
        {\noexpand\tud@declaration@list}%
    }%
    \tud@res@a%
    \ifx\tud@res@a\@empty%
      \begingroup%
        \def\tud@res@d##1{%
          \detokenize\expandafter{\@firstoftwo##1}\MessageBreak%
        }%
        \ClassError{tudscrmanual}{No markup with special value declared}{%
          None of the given declarations:\MessageBreak%
          \forlistloop{\tud@res@d}{\tud@declaration@list}%
          holds a special value.%
        }%
      \endgroup%
    \else%
      \eappto\tud@res@a{\expandonce\tud@res@b}%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\item[{%
        \unexpanded{\let\tud@print@changedatlist\relax}%
        \expandonce\tud@res@a%
      }]%
    }%
  \tud@res@a%
  \tud@print@changedatlist[-1\baselineskip]%
}
\AtBeginDocument{%
  \newcommand*\itempkg{}%
  \undef\itempkg%
}
\newcommand*\tud@item@@pkg[1]{%
  \let\itempkg\tud@item@pkg%
}
% TODO noindent nach Umgebung?
\tud@list@create[before=\tud@item@@pkg]{DeclarePackages}{description}{2}
% TODO unterdrücken der links für aktuelles item?
% TODO argumente überprüfen bzw. komplett überarbeiten; m als letztes!
\NewDocumentCommand\tud@item@pkg{m !d() !d<> !o}{%
  \begingroup%
    \let\tud@res@a\@empty%
    \def\tud@res@b##1##2{%
      \Markup@Split@Get*\tud@res@c{##1{##2}}%
      \expandafter\tud@special@link@get\expandafter\tud@res@c\tud@res@c%
      \ifx\tud@res@c\relax%
        \def\tud@res@c{\@firstofone}%
      \else%
        % TODO sollte raus, sobald InlineDeclaration selber links nutzt
        \Markup@Inner@Get\tud@res@d{##1{##2}}%
        \edef\tud@res@d{%
          \unexpanded{\tud@lbl@get\tud@lbl@tmp}{\expandonce\tud@res@d}%
        }%
        \tud@res@d%
        \tud@special@href@get\tud@res@c{\tud@res@c}{\tud@lbl@tmp}%
      \fi%
      \eappto\tud@res@a{%
        \ifx\tud@res@a\@empty\else,\space\fi%
        \expandonce\tud@res@c{%
          \noexpand\Inline@Declaration{##1{##2}}%
        }%
      }%
    }%
    \forcsvlist{\tud@res@b{\Package}}{#1}%
    \IfValueT{#2}{%
      \forcsvlist{\expandafter\tud@res@b\@firstofone}{#2}%
    }%
    \IfValueT{#3}{%
      \def\tud@res@b##1{\appto\tud@res@a{\Inline@Declaration*{##1}}}%
      \forcsvlist{\tud@res@b}{#3}%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\item[\expandonce\tud@res@a]%
      \IfValueT{#4}{%
        \unexpanded{%
          \Changed@At@ProcessList{#4}(\tud@ety@dflt){\BooleanFalse}%
          \tud@print@changedatlist[-1\baselineskip]%
        }%
      }%
    }%
  \tud@res@a%
  \strut\ignorespaces%
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
\NewDocumentCommand\TermTable{!o}{%
  \ifhmode\par\fi%
  \vskip\smallskipamount%
  \@afterindentfalse\@afterheading%
  \begingroup
    \let\tud@res@a\@empty%
    \def\tud@res@b##1##2##3\@nil{%
      \tud@if@strequal{##1}{Term}{\appto\tud@res@a{##2,}}{}%
    }%
    \def\tud@res@d##1{%
      \expandafter\def\expandafter\tud@res@c\expandafter{\@firstoftwo##1}%
      \expandafter\tud@res@b\tud@res@c\@nil%
    }%
    \forlistloop\tud@res@d{\tud@declaration@list}%
    \ifx\tud@res@a\@empty%
      \ClassWarning{tudscrmanual}{No declaration for Terms found}%
    \else%
      \IfValueTF{#1}{%
        \begin{tabularx}{\dimexpr\glueexpr#1\relax\relax}[b]{lXX}%
          \expandafter\Term@Table\expandafter{\tud@res@a}%
        \end{tabularx}%
      }{%
        \begin{tabular}[b]{lll}%
          \expandafter\Term@Table\expandafter{\tud@res@a}%
        \end{tabular}%
      }%
    \fi%
  \endgroup%
}
\newcommand*\Term@Table[1]{%
  \toprule%
  \textbf{Bezeichner} & \textbf{Deutsch} & \textbf{Englisch}\tabularnewline%
  \midrule%
  \forcsvlist{\Term@@Table}{#1}%
  \bottomrule%
}
\newcommand*\Term@@Table[1]{%
  \Term*{#1} & %
  \Ifstr{\csuse{#1}}{}{\PName{leer}}{\csuse{#1}} & %
  \strut\selectlanguage{english}%
  \Ifstr{\csuse{#1}}{}{\PName{empty}}{\csuse{#1}}\tabularnewline%
}
% TODO noindent nach umgebung?
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
% TODO noindent nach Umgebung?
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
\appto\tud@latex@ext{-synctex=1\space}
% TODO \href[pdfnewwindow]{tutorials/#1.pdf#???}{\File*{#1.pdf}#2}
% TODO Tutorial \Bundle{tudscr} mitgeben
% TODO im Dokument label nutzen und HyperTutorial nur bei Deklaration?
\newrobustcmd*\HyperTutorial[2]{%
  \hyperref{tutorials/#1.pdf}{#1}{tutorials:#1}{\File||{#1.pdf}#2}%
}
% TODO #3<->#2
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
    \File||{#2.pdf}%
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
\newcommand*\@ToDo[2][]{%
  \expandafter\todo\expandafter[\expandafter{#1}]{\trim@spaces{#2}\strut}%
}%
% TODO > s o[#4] d()[#2] m; in tudscrdoc übernehmen
\TUD@UnwindPackage{todonotes}{%
  \NewDocumentCommand\ToDo{s o m !o}{}%
  \newcommand*\ListOfToDo{}%
}
\NewDocumentCommand\ToDo{s O{default} m !o}{%
  \ifnum\tud@todo@num>\z@\relax%
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
          \tud@v@to@number*\tud@res@b{\tud@res@a}%
          \ifx\tud@res@b\relax%
            \def\tud@res@c{50}%
          \else%
            \tud@v@to@number\tud@res@c{\TUDScriptVersionNumber}%
            \ifnum\tud@res@b<\tud@res@c\relax%
              \def\tud@res@b{0}%
            \else%
              \ifnum\tud@res@b>\tud@res@c\relax%
                \def\tud@res@b{2}%
              \else%
                \def\tud@res@b{1}%
              \fi%
            \fi%
          \fi%
          \edef\tud@res@c{%
            \endgroup%
            \unexpanded{\def\tud@res@a}{\tud@res@a}%
            \unexpanded{\edef\tud@res@b}{%
              \ifcase\tud@res@b%
                color=\noexpand\tud@res@c!100,%
                bordercolor=HKS07!80,%
                textcolor=white%
              \or%
                color=\noexpand\tud@res@c!50%
              \else%
                color=\noexpand\tud@res@c!20%
              \fi%
            }%
            \unexpanded{\tikzset{notestyleraw/.append style={align=center}}}%
            \ifcase\tud@res@b\relax%
              \unexpanded{%
                \tikzset{notestyleraw/.append style={%
                  line width = 1pt,%
                  text width = \@todonotes@textwidth - 1.6ex - 2pt,%
                  inner sep  = 0.8ex%
                }}%
              }%
            \fi%
          }%
        \tud@res@c%
        \ifnum\tud@todo@num=\tw@\relax%
          \let\@todonotes@drawInlineNote\relax%
        \else%
          \ifhmode\strut\par\fi%
          \let\par\relax%
          \vskip\glueexpr\smallskipamount/2\relax%
          \noindent%
        \fi%
        \edef\tud@res@c{\tud@res@b,inline\IfBooleanT{#1}{,nolist}}%
        \sbox\z@{\@ToDo[{\tud@res@c}]{#3}}\usebox\z@%
        \renewcommand*\marginpar[2][]{%
          \marginnote[{##1}]{##2}[\dimexpr\ht\strutbox-\ht\z@-\dp\z@\relax]%
        }%
        \edef\tud@res@c{\tud@res@b,noline,nolist}%
        \@ToDo[{\tud@res@c}]{\tud@res@a}%
        \ifnum\tud@todo@num=\tw@\relax\else%
          \aftergroup\par\aftergroup\noindent%
        \fi%
      \fi%
    \endgroup%
    \global\let\@currentHref\tud@currentHref%
  \fi%
  \ignorespaces%
}
\newcommand*\ListOfToDo{\ifnum\tud@todo@num>\z@\relax\clearpage\listoftodos\fi}
\newcommand*\tud@v@validate[1]{%
  \begingroup%
    \protected@edef\tud@res@a{#1}%
    \trim@spaces@in{\tud@res@a}%
    \tud@v@to@number*\tud@res@b{\tud@res@a}%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{%
        \ifx\tud@res@b\relax%
          v\TUDScriptVersionNumber%
        \else%
          \expandonce\tud@res@a%
        \fi%
      }%
    }%
  \tud@res@a%
}
% TODO nach oben verschieben
\NewDocumentCommand\tud@v@to@number{s m m}{%
  \begingroup%
    \edef\tud@res@a{%
      \unexpanded{\tud@v@get\tud@res@a}{#3}%
    }%
    \tud@res@a%
    \def\tud@res@c##1 ##2~##3\@nil{%
      \IfArgIsEmpty{##2}{%
        \let\tud@res@b\@empty%
      }{%
        \def\tud@res@a{##1}%
        \def\tud@res@b{\space##2}%
      }%
    }%
    \expandafter\tud@res@c\tud@res@a~ ~\@nil%
    \protected@expandtwoargs\in@{.}{\tud@res@a}%
    \ifin@\else%
      \appto\tud@res@a{.00}%
    \fi%
    \def\tud@res@c##1.##2##3##4\@nil{%
      \let\tud@res@a\relax%
      \Ifnumber{##1}{%
        \Ifnumber{##2}{%
          \Ifnumber{##3}{%
            \edef\tud@res@a{##1.##2##3##4}%
          }{%
            \edef\tud@res@a{##1.\two@digits{##2}##3##4}%
          }%
        }{}%
      }{}%
    }%
    \expandafter\tud@res@c\tud@res@a\@empty\@nil%
    \ifx\tud@res@a\relax\else%
      \def\tud@res@c##1.##2##3##4##5\@nil{%
        \tud@if@strblank{##5}{%
          \edef\tud@res@a{v##1.##2##3##4\tud@res@b}%
          \edef\tud@res@b{##1.##2##3##4}%
        }{%
          \let\tud@res@a\relax%
        }%
      }%
      \expandafter\tud@res@c\tud@res@a\@empty\@nil%
    \fi%
    \ifx\tud@res@a\relax%
      \ClassWarning{tudscrmanual}{Wrong formatted version number}%
    \else%
      \def\tud@res@c##1.##2##3##4\@nil{%
        ##1##2##3%
        \IfArgIsEmpty{##4}{000}{\ifnum\number`##4<100 0\fi\number`##4}%
      }%
      \edef\tud@res@b{\expandafter\tud@res@c\tud@res@b\@nil}%
    \fi%
    \edef\tud@res@c{%
      \endgroup%
      \ifx\tud@res@a\relax%
        \unexpanded{\let#2\relax}%
      \else%
        \unexpanded{\def#2}{\tud@res@b}%
        \IfBooleanT{#1}{%
          \unexpanded{\def#3}{\tud@res@a}%
        }%
      \fi%
    }%
  \tud@res@c%
}
\RequirePackage{csquotes}[2011/10/22]
\RequirePackage{setspace}[2011/12/19]
\setstretch{1.1}
\PassOptionsToPackage{vskip=\smallskipamount}{quoting}
\RequirePackage{quoting}[2014/01/28]
\RequirePackage{isodate}[2010/01/03]
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
  \RequirePackage{ellipsis}[2020/5/22]%
  \let\ellipsispunctuation\relax%
}
\newcommand*\tud@replace@in[3]{%
  \begingroup%
    \edef\tud@res@a{\expandonce{#1}}%
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
\NewDocumentCommand\tud@url@normalize{m O{https://} m m}{%
  \begingroup%
    \edef\tud@res@a{\trim@spaces{#4}}%
    \def\tud@res@b##1#3/##2#3/##3\@nil{%
      \IfArgIsEmpty{##2}{%
        \def\tud@res@a{##1}%
      }{%
        \def\tud@res@a{##2}%
      }%
    }%
    \expandafter\tud@res@b\tud@res@a #3/#3/\@nil%
    \tud@remove@enfold@char\tud@res@a{/}%
    \edef\tud@res@b{%
      \endgroup%
      \unexpanded{\def#1}{#2#3/\tud@res@a}%
    }%
  \tud@res@b%
}
\newcommand*\tud@github@url@base{}
\let\tud@github@url@base\relax
\newcommand*\tud@url@normalize@github[2]{%
  \tud@url@normalize#1{github.com}{#2}%
}
\newcommand*\tud@url@normalize@ctan[2]{%
  \tud@url@normalize#1{ctan.org}{#2}%
}
\newcommand*\GitHubBase[1]{%
  \tud@url@normalize@github\tud@github@url@base{#1}%
}
\AtBeginDocument{%
  \ifx\tud@github@url@base\relax%
    \ClassWarning{tudscrmanual}%
    {%
      No GitHub repository was set with `\string\GitHubBase'\MessageBreak%
      so \TUDScriptRepository\space is used%
    }%
    \GitHubBase{\TUDScriptRepository}%
  \fi%
}
% TODO check arguments...
\NewDocumentCommand\GitHubRepo{!t' !o !d() !d<>}{%
  \begingroup%
    \IfValueTF{#3}{%
      \tud@url@normalize@github\tud@res@b{#3}%
    }{%
      \let\tud@res@b\tud@github@url@base%
    }%
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
    \tud@res@a{\tud@res@b}{\tud@res@c}%
  \endgroup%
  \xspace%
}
\NewDocumentCommand\GitHubDownload{s t' d() d<> m}{%
  \begingroup%
    \IfValueTF{#3}{%
      \tud@url@normalize@github\tud@res@b{#3}%
    }{%
      \let\tud@res@b\tud@github@url@base%
    }%
    \IfValueTF{#4}{%
      \appto\tud@res@b{/releases/download/#4/#5}%
    }{%
      \appto\tud@res@b{/releases/latest/download/#5}%
    }%
    \IfBooleanTF{#2}{\let\tud@res@a\href}{\let\tud@res@a\hrfn}%
    % TODO InlineDeclaration, falls ohne Stern; Angabe Bundle ermöglichen
    \IfBooleanTF{#1}{\def\tud@res@c{\File||}}{\def\tud@res@c{\File}}%
    \tud@res@a{\tud@res@b}{\tud@res@c{#5}}%
  \endgroup%
  \xspace%
}
\newcommand*\TUDForum{%
  \mbox{T\kern.05em U\kern.05em D-\hologo{LaTeX}-Forum}\xspace%
}
\NewDocumentCommand\Forum{!t' !O{\TUDForum} !d<>}{%
  \begingroup%
    \IfBooleanTF{#1}{\let\tud@res@a\href}{\let\tud@res@a\hrfn}%
    \tud@res@a{\TUDScriptForum\IfValueT{#3}{viewtopic.php?t=#3}}{#2}%
  \endgroup%
  \xspace%
}
% TODO #2 text, <#3> link
\NewDocumentCommand\CTAN{!t' !o !d<>}{%
  \begingroup%
    \IfBooleanTF{#1}{\let\tud@res@a\href}{\let\tud@res@a\hrfn}%
    \tud@url@normalize@ctan\tud@res@b{\IfValueT{#3}{#3}}%
    \IfValueTF{#2}{%
      \def\tud@res@c{#2}%
    }{%
      \def\tud@res@c{\tud@english{Comprehensive TeX Archive Network (CTAN)}}%
    }%
    \tud@res@a{\tud@res@b}{\mbox{\tud@res@c}}%
  \endgroup%
  \xspace%
}
% TODO use CTAN@pkg or something from \Bundle?
% TODO nur Link und keine Fußnote im Normalfall?
\NewDocumentCommand\scrguide{!t' !O{\KOMAScript-Handbuch}}{%
  \begingroup%
    \IfBooleanTF{#1}{\let\tud@res@a\href}{\let\tud@res@a\hrfn}%
    \tud@url@normalize@ctan\tud@res@b{pkg/koma-script}%
    \tud@res@a{\tud@res@b}{#2}%
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
\renewcommand*\@pnumwidth{1.9em}%
\renewcommand*\@tocrmarg{2.9em}%
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
    \space\space%
    :open "\string\seeidx{"\@spaces\@spaces%
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
