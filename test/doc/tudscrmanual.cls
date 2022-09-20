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
%% tudscr-misc.dtx  (with options: `class,manual,option')
%% tudscr-manual.dtx  (with options: `class,manual,option')
%% tudscr-misc.dtx  (with options: `class,manual,inherit,execute')
%% tudscr-misc.dtx  (with options: `class,manual,body')
%% tudscr-manual.dtx  (with options: `class,manual,body')
%% tudscr-fields.dtx  (with options: `class,manual,body')
%% tudscr-localization.dtx  (with options: `class,manual,body')
%% tudscr-texindy.dtx  (with options: `class,manual')
%% 
%% TUD-Script -- Corporate Design of Technische Universitaet Dresden
%%               2022/09/01 v2.06p TUD-Script
%% 
%% Copyright (C) Falk Hanisch <hanisch.latex@outlook.com>, 2012-2022
%%               https://github.com/tud-cd/tudscr
%%               https://latex.wcms-file3.tu-dresden.de/phpBB3/
%% 
%% This file was generated from file(s) of the TUD-Script bundle.
%% ----------------------------------------------------------------------------
%% 
%% This work may be distributed and/or modified under the conditions of the
%% LaTeX Project Public License, either version 1.3c of this license or
%% any later version. The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of
%% LaTeX version 2008-05-04 or later.
%% 
%% This work has the LPPL maintenance status "maintained".
%% 
%% The current maintainer and author of this work is Falk Hanisch.
%% 
%%%% From File: tudscr-version.dtx (no git version info was found)
\NeedsTeXFormat{LaTeX2e}[2022-06-01]
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
  \TUD@@Version{2022/09/01 v2.06p TUD-Script}{2022/05/01 v3.36 KOMA-Script}%
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
  2022/09/01 v2.06p TUD-Script
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
%%%% From File: tudscr-base.dtx (no git version info was found)
\RequirePackage{tudscrbase}[%
  2022/09/01 v2.06p TUD-Script
]
\renewcommand*\TUD@KOMAoptions[1]{\PassOptionsToClass{#1}{\TUD@Class@Parent}}
\AfterClass{\TUD@Class@Parent}{\let\TUD@KOMAoptions\KOMAoptions}
%%%% From File: tudscr-misc.dtx (no git version info was found)
\RequirePackage{scrhack}[%
  2022/05/01 v3.36 KOMA-Script
]
\RequirePackage{xspace}
\xspaceaddexceptions{"=}
\PassOptionsToPackage{quiet}{marginnote}
\RequirePackage{marginnote}
\reversemarginpar
\RequirePackage{shellesc}
\RequirePackage{pdftexcmds}
\PassOptionsToPackage{%
  destlabel=true,%
  colorlinks,%
  hyperindex=false%
}{hyperref}
\AfterPackage*{bookmark}{\bookmarksetup{open,openlevel=1}}
\AfterAtEndOfPackage*{hyperref}{%
  \@ifpackageloaded{bookmark}{}{\RequirePackage{bookmark}}%
  \hypersetup{%
    linkcolor=HKS44,%
    urlcolor=HKS33,%
    citecolor=HKS57,%
    filecolor=HKS65,%
    pdfpagelayout=OneColumn%
  }%
}
\TUD@UnwindPackage{hyperref}{%
  \ClassWarningNoLine{\TUD@Class@Name}%
  {%
    Loading the package `hyperref' is strongly\MessageBreak%
    recommended. At the very least, some essential\MessageBreak%
    commands are defined as stubs%
  }%
  \RequirePackage{url}
  \providerobustcmd*\url[1]{\texttt{\detokenize{#1}}}%
  \providerobustcmd*\nolinkurl[1]{\url{#1}}%
  \providecommand*\hypersetup[1]{}%
  \providerobustcmd*\href[3][]{#3}%
  \providerobustcmd*\hyperref{%
    \kernel@ifnextchar[%]
      {\tud@x@hyperref@a}%
      {\tud@x@hyperref@b}%
  }%
  \newcommand*\tud@x@hyperref@a[2][]{#2}%
  \newcommand*\tud@x@hyperref@b[4]{#4}%
  \providecommand*\HyperDestRename[2]{}%
  \providecommand*\Hy@raisedlink[1]{#1}%
  \providecommand*\hyperpage[1]{#1}%
  \providecommand*\hypertarget[2]{#2}%
  \providecommand*\hyperlink[2]{#2}%
}
\TUD@UnwindPackage{bookmark}{%
  \providecommand*\bookmarksetup[1]{}%
  \providecommand*\pdfbookmark[3][]{}%
  \providecommand*\currentpdfbookmark[2]{}%
  \providecommand*\subpdfbookmark[2]{}%
  \providecommand*\belowpdfbookmark[2]{}%
}
\AfterPackage*{babel}{\RequirePackage{csquotes}}
\TUD@UnwindPackage{babel}{%
  \ClassWarningNoLine{\TUD@Class@Name}%
    {Package `babel' not loaded}%
  \providecommand*\seename{see}%
  \providecommand*\alsoname{see\nobreakspace also}%
  \providecommand*\glqq{\quotedblbase}%
  \providecommand*\grqq{\textquotedblleft}%
}
\TUD@UnwindPackage{csquotes}{%
  \ClassWarningNoLine{\TUD@Class@Name}%
    {Package `csquotes' not loaded}%
  \providecommand\enquote[1]{\emph{#1}}%
}
\newcommand*\tud@unique@add[2]{%
  \ifinlist{#2}{#1}{}{\listadd#1{#2}}%
}
\newcommand*\tud@unique@eadd[2]{%
  \xifinlist{#2}{#1}{}{\listeadd#1{#2}}%
}
\newcommand*\tud@unique@xadd[2]{%
  \xifinlist{#2}{#1}{}{\listxadd#1{#2}}%
}
\newcommand*\tud@unique@csxadd[2]{%
  \xifinlistcs{#2}{#1}{}{\listcsxadd{#1}{#2}}%
}
\providerobustcmd*\listeremove[2]{%
  \begingroup%
    \edef\etb@tempa{\endgroup\unexpanded{\listremove#1}{#2}}%
  \etb@tempa%
}
\NewDocumentCommand\tud@auxlist@register{s D(){\@firstofone} m}{%
  \expandafter\newcommand\expandafter*\csname#3@auxlist\endcsname{}%
  \expandafter\newcommand\expandafter*\csname#3@auxlist@positive\endcsname{}%
  \expandafter\newcommand\expandafter*\csname#3@auxlist@negative\endcsname{}%
  \expandafter\newcommand\expandafter*\csname#3@auxlist@handler\endcsname{#2}%
  \BeforeClosingMainAux{%
    \forlistcsloop{\listcsremove{#3@auxlist@positive}}{#3@auxlist@negative}%
    \tud@auxlist@export{#3}%
  }%
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
    \tud@unique@csxadd{#1@auxlist@positive}{\tud@res@a}%
  \endgroup%
}
\newcommand*\tud@auxlist@remove[2]{%
  \begingroup%
    \protected@edef\tud@res@a{#2}%
    \edef\tud@res@a{\detokenize\expandafter{\tud@res@a}}%
    \tud@unique@csxadd{#1@auxlist@negative}{\tud@res@a}%
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
\tud@newif\if@tud@list@sorted
\newcommand*\tud@list@sorted{}
\newcommand*\tud@list@sort[1]{%
  \begingroup%
    \let\tud@list@sorted\@empty%
    \forlistloop\tud@list@@sort{#1}%
    \edef\tud@res@c{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@list@sorted}%
    }%
  \tud@res@c%
}
\newcommand*\tud@list@@sort[1]{%
  \@tud@list@sortedfalse%
  \let\tud@res@a\@empty%
  \forlistloop{\tud@list@@@sort\tud@res@a{#1}}{\tud@list@sorted}%
  \if@tud@list@sorted\else%
    \listadd\tud@res@a{#1}%
  \fi%
  \let\tud@list@sorted\tud@res@a%
}
\newcommand*\tud@list@@@sort[3]{%
  \if@tud@list@sorted%
    \listadd#1{#3}%
  \else%
    \ifnum\pdf@strcmp{#2}{#3}<\z@\relax%
      \listadd#1{#2}%
      \listadd#1{#3}%
      \@tud@list@sortedtrue%
    \else%
      \listadd#1{#3}%
    \fi%
  \fi%
}
\newcommand*\tud@remove@enfold@char[2]{%
  \begingroup%
    \edef\tud@res@b{\expandonce{#1}}%
    \trim@spaces@in\tud@res@b%
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
%%%% From File: tudscr-manual.dtx (no git version info was found)
\PassOptionsToPackage{vskip=\smallskipamount}{quoting}
\PassOptionsToPackage{nospace}{varioref}
\PassOptionsToPackage{obeyFinal}{todonotes}
\ifdef\tudprintflag{%
  \PassOptionsToPackage{color=white}{todonotes}%
}{%
  \PassOptionsToPackage{colorinlistoftodos}{todonotes}%
}
\tud@newcount\tud@todo@num
\newcommand*\tud@todo@type@use{}
\newcommand*\tud@todo@type@default{}
\forcsvlist{\listadd\tud@todo@type@default}{rls,imp,doc,default}
\TUD@key{ToDo}[true]{%
  \TUD@set@numkey{ToDo}{@tempa}{%
    \TUD@bool@numkey,{inline}{1},{noinline}{2}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \tud@todo@num=\@tempa\relax%
    \let\tud@todo@type@use\tud@todo@type@default%
  \else%
    \begingroup%
      \tud@strlowercase\tud@res@a{#1}%
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
              The given type(s)\MessageBreak%
              `ToDo={\ifcase\tud@res@c only\or not\fi=\tud@res@b}'\MessageBreak%
              are invalid.%
            }%
          \fi%
        \fi%
      \else%
        \let\tud@res@b\@empty%
        \let\tud@res@c\@empty%
        \@for\tud@res@a:=\tud@res@a\do{%
          \trim@spaces@in\tud@res@a%
          \ifx\tud@res@a\@empty\else%
            \xifinlist{\tud@res@a}{\tud@todo@type@default}{%
              \protected@eappto\tud@res@b{,\tud@res@a}%
            }{%
              \protected@eappto\tud@res@c{,\tud@res@a}%
            }%
          \fi%
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
      \def\tud@res@b{\tud@unique@eadd\tud@todo@type@use}%
    }%
    \let\tud@res@c\@empty%
    \@for\tud@res@a:=\tud@res@a\do{%
      \trim@spaces@in\tud@res@a%
      \ifx\tud@res@a\@empty\else%
        \TUD@set@numkey{ToDo}{@tempa}{%
          {rls}{0},{imp}{1},{doc}{2},{default}{3}%
        }{\tud@res@a}%
        \ifx\FamilyKeyState\FamilyKeyStateProcessed%
          \tud@res@b{\tud@res@a}%
        \else%
          \protected@eappto\tud@res@c{\ifx\tud@res@c\@empty\else,\fi\tud@res@a}%
        \fi%
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
\newcommand*\tud@index@name{\jobname}
\newcommand*\tud@index@title{\indexname}
\newcommand*\tud@index@ref{\tud@index@title}
\newcommand*\tud@index@toc{\tud@index@title}
\newcommand*\tud@index@cols{2}
\newcommand*\tud@index@list{}
\NewDocumentCommand\tud@index@make{O{\jobname} d() m}{%
  \begingroup%
    \edef\tud@index@name{#1}%
    \IfValueTF{#2}{%
      \def\tud@index@ref{#2}%
    }{%
      \def\tud@index@ref{Index der #3}%
    }%
    \def\tud@index@title{#3}%
    \tud@toks@{}%
    \def\tud@res@a##1{%
      \addto@hook@expandafter\tud@toks@{%
        \expandafter\def\expandafter##1\expandafter{##1}%
      }%
    }%
    \tud@res@a\tud@index@name%
    \tud@res@a\tud@index@ref%
    \tud@res@a\tud@index@title%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@unique@add\noexpand\tud@index@list{\tud@index@name}%
      \noexpand\csdef{tud@index@set@@#1}{\the\tud@toks@}%
    }%
  \tud@res@a%
}
\tud@index@make(Allgemeiner Index){Allgemeines}
\tud@index@make[options]{Klassen- und Paketoptionen}
\tud@index@make[macros](Index der Befehle und Umgebungen)
  {Befehle und Umgebungen mit zugeh\"origen Parametern}
\tud@index@make[terms](Index der Bezeichner){Sprachabh\"angige Bezeichner}
\tud@index@make[elements]{Seitenstile, Schriftelemente und Farben}
\tud@index@make[misc]{L\"angen und Z\"ahler}
\tud@index@make[files]{Klassen, Pakete und Dateien}
\newcommand*\tud@changes@list{}
\NewDocumentCommand\tud@changes@make{m}{%
  \tud@unique@add\tud@changes@list{changes-v#1}%
}
\AfterClass{\TUD@Class@Parent}{\forlistloop\tud@changes@make{\tud@v@list}}
\newcommand*\tud@xdy@settings{}
\edef\tud@xdy@settings{texindy -M \@currname.\@currext-ind.xdy}
\AtEndDocument{%
  \tud@if@language@main{german}{%
    \appto\tud@xdy@settings{ -L german-din}%
  }{}%
  \eappto\tud@xdy@settings{%
    \space-C \ifundef\inputencodingname{utf8}{\inputencodingname}%
  }%
}
\newcommand*\tud@xdy@mdfive{}
\newcommand*\tud@xdy@log{}
\edef\tud@xdy@log{\jobname.xlg}
\if@filesw
  \tud@newwrite\@indexfile%
  \immediate\openout\@indexfile=\jobname.idx%
  \typeout{Writing index file \jobname.idx}%
  \BeforeClosingMainAux{%
    \immediate\closeout\@indexfile%
    \@tud@res@swafalse%
    \edef\tud@res@a{\pdf@filemdfivesum{\jobname.idx}}%
    \edef\tud@res@b{\pdf@filemdfivesum{\tud@xdy@log}}%
    \edef\tud@res@c{%
      splitindex%
        \space-m\space'\tud@xdy@settings\space2>\string&1'%
        \space\jobname.idx%
    }%
    \ifnum\pdf@strcmp{\tud@res@a}{\tud@xdy@mdfive}=\z@\else%
      \ifnum\pdf@shellescape=\@ne\relax%
        \ClassInfo{tudscrmanual}%
          {invoking: \tud@res@c}%
        \begingroup%
          \everyeof{\noexpand}%
          \endlinechar=\m@ne%
          \edef\tud@res@c{%
            \noexpand\@@input\string|%
              \string"\tud@res@c\space>\tud@xdy@log\string"\space%
          }%
          \tud@res@c%
        \endgroup%
        \ifnum\pdf@strcmp{\pdf@filemdfivesum{\tud@xdy@log}}{\tud@res@b}=\z@%
          \ClassWarningNoLine{tudscrmanual}%
          {%
            \tud@res@c\MessageBreak%
            was called but there is no result%
          }%
        \else%
          \let\tud@xdy@mdfive\tud@res@a%
        \fi%
      \else%
        \ClassWarningNoLine{tudscrmanual}%
        {%
          The index file `\jobname.idx' has changed. Run again\MessageBreak%
          with --shell-escape flag enabled or just call\MessageBreak%
          \tud@res@c%
        }%
      \fi%
    \fi%
    \immediate\write\@mainaux{%
      \string\gdef\string\tud@xdy@mdfive{\tud@xdy@mdfive}%
    }%
  }%
\fi
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
\AtEndOfClass%
{%
  \TUD@key@toolate{final}%
  \TUD@key@toolate{print}%
  \ifdef\tudfinalflag{%
    \TUDoptions{ToDo=false}%
    \TUD@key{ToDo}{\FamilyKeyStateProcessed}%
  }{%
    \KOMAoptions{overfullrule}%
  }%
  \ifdef\tudprintflag{%
    \ifnum\tud@cd@num>\z@\relax%
      \TUDoptions{cd=true}%
    \fi%
    \PassOptionsToPackage{hidelinks}{hyperref}%
    \AfterEndPreamble{\hypersetup{hidelinks}}%
  }{}%
  \TUD@key@toolate{cd}%
}
\PassOptionsToClass{%
  ttfont=roboto,%
  cd=color,%
  cdfoot=true,%
  chapterpage=true,%
  chapterprefix=true,%
  headings=optiontoheadandtoc,%
  captions=tableheading,%
  numbers=noenddot,%
}{\TUD@Class@Parent}
%%%% From File: tudscr-misc.dtx (no git version info was found)
\DeclareOption*{%
  \expandafter\PassOptionsToClass\expandafter{\CurrentOption}%
  {\TUD@Class@Parent}%
}
\TUDProcessOptions\relax
\LoadClass{\TUD@Class@Parent}[%
  2022/09/01 v2.06p TUD-Script
]
%%%% From File: tudscr-misc.dtx (no git version info was found)
\renewcommand*\@pnumwidth{2.1em}
\renewcommand*\@tocrmarg{3.1em}
\newrobustcmd*\bsc{\kern-.05em\@backslashchar\kern-.05em}
\newrobustcmd*\txb{{\raise.05em\hbox{\kern.05em\textbar\kern.05em}}}
\newcommand*\hrfn[2]{%
  \href{#1}{\trim@spaces{#2}}%
  \footnote{\strut\url{#1}}%
}
\newrobustcmd*\mailto[1]{\mbox{\href{mailto:#1}{\nolinkurl{#1}}}}
\newrobustcmd*\TUDScriptContactTitle{%
  \ifundef\emailaddress{%
    \qquad\expandafter\mailto\expandafter{\TUDScriptContact}%
  }{%
    \expandafter\emailaddress\expandafter{\TUDScriptContact}%
  }%
}
\AfterPackage*{hyperref}{%
  \pdfstringdefDisableCommands{%
    \let\mailto\@firstofone%
    \let\TUDScriptContactTitle\relax%
  }%
}
\newcommand*\textsbn{}
\newrobustcmd*\sbnfont{\sffamily\bfseries\upshape}
\DeclareTextFontCommand\textsbn{\sbnfont}
\newcommand*\textsbi{}
\newrobustcmd*\sbifont{\sffamily\bfseries\itshape}
\DeclareTextFontCommand\textsbi{\sbifont}
\newcommand*\textttit{}
\newrobustcmd*\ttitfont{\ttfamily\itshape}
\DeclareTextFontCommand\textttit{\ttitfont}
\newcommand*\tud@english[1]{%
  \tud@language@wrn{english}%
  \let\tud@english\@firstofone%
  #1%
}
\AfterAtEndOfPackage*{babel}{%
  \AfterEndPreamble{%
    \renewcommand*\tud@english[1]{\foreignlanguage{english}{#1}}%
  }%
}
\AfterAtEndOfPackage*{polyglossia}{%
  \AfterEndPreamble{%
    \tud@if@language@loaded{english}{%
      \renewcommand*\tud@english[1]{\foreignlanguage{english}{#1}}%
    }{}%
  }%
}
\kernel@make@fragile\KOMAScript
\edef\KOMAScript{\noexpand\mbox{\expandonce\KOMAScript}\noexpand\xspace}
\robustify\KOMAScript
\robustify\TUDScript
\AfterPackage*{hyperref}{%
  \pdfstringdefDisableCommands{%
    \def\KOMAScript{KOMA-Script{}}%
    \def\TUDScript{TUD-Script{}}%
  }%
}
\newcommand*\vKOMAScript{v\TUD@KOMAVersionNumber}
\newcommand*\vTUDScript{v\TUDScriptVersionNumber}
\newrobustcmd*\CD{\tud@english{Corporate Design}\xspace}
\newrobustcmd*\CDs{\tud@english{Corporate Designs}\xspace}
\newrobustcmd*\TUD{Technische Universit\"at Dresden\xspace}
\newrobustcmd*\TnUD{Technischen Universit\"at Dresden\xspace}
\newcommand*\TUDCD{\CD der \TnUD}
\newcommand*\TUDCDs{\CDs der \TnUD}
\newrobustcmd*\TUDForum{%
  \mbox{T\kern.05em U\kern.05em D-\Logo{LaTeX}-Forum}\xspace%
}
\newrobustcmd*\DDC{%
  \mbox{%
    D\kern.05em R\kern.05em E\kern.05em S\kern.05em %
    D\kern.05em E\kern.05em N\kern.1em-\kern.1em concept%
  }\xspace%
}
\AfterPackage*{hyperref}{%
  \pdfstringdefDisableCommands{%
    \def\CD{Corporate Design{}}%
    \def\CDs{Corporate Designs{}}%
    \def\TUD{Technische Universit\"at Dresden{}}%
    \def\TnUD{Technischen Universit\"at Dresden{}}%
    \def\TUDForum{TUD-LaTeX-Forum{}}%
    \def\DDC{DRESDEN-concept{}}%
  }%
}
\newrobustcmd*\OpenSans{\textcdbn{Open\nobreakspace Sans}\xspace}
\newrobustcmd*\Univers{\textcdbi{Univers}\xspace}
\newrobustcmd*\DIN{\textcdbi{DIN\nobreakspace Bold}\xspace}
\AfterPackage*{hyperref}{%
  \pdfstringdefDisableCommands{%
    \def\OpenSans{Open Sans{}}%
    \def\Univers{Univers{}}%
    \def\DIN{DIN Bold{}}%
  }%
}
\newcommand*\Attention[2][\z@]{%
  \marginnote{%
    \tud@setdim\fboxsep{0.25em}%
    \fbox{Achtung!}%
  }[{#1}]%
  \emph{\trim@spaces{#2}}%
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
\newcommand*\tud@github@url@normalize[2]{%
  \tud@url@normalize#1{github.com}{#2}%
}
\newcommand*\tud@github@url@base{}
\let\tud@github@url@base\relax
\newcommand*\GitHubBase[1]{%
  \tud@github@url@normalize\tud@github@url@base{#1}%
}
\newcommand*\tud@github@url@error{%
  \ClassError{\TUD@Class@Name}%
    {GitHub repository missing}%
    {%
      No default GitHub repository was set with\MessageBreak%
      `\detokenize{\GitHubBase{<url>}}'. You should either\MessageBreak%
      set a default one or pass it as argument.%
    }%
}
\NewDocumentCommand\GitHubRepo{!o !d() !d<>}{%
  \begingroup%
    \IfValueT{#2}{\tud@github@url@normalize\tud@github@url@base{#2}}%
    \ifx\tud@github@url@base\relax%
      \def\tud@res@a{%
        \endgroup%
        \tud@github@url@error%
      }%
    \else%
      \IfValueTF{#1}{%
        \def\tud@res@c{#1}%
      }{%
        \expandafter\filename@parse\expandafter{\tud@github@url@base}%
        \protected@edef\tud@res@c{%
          \tud@english{GitHub-Repository\nobreakspace\textsbn{\filename@base}}%
        }%
      }%
      \IfValueT{#3}{%
        \edef\tud@res@b{\trim@spaces{#3}}%
        \tud@remove@enfold@char\tud@res@b{/}%
        \Ifnumber{\tud@res@b}{%
          \IfValueF{#1}{\eappto\tud@res@c{\#\tud@res@b}}%
          \eappto\tud@github@url@base{/issues/\tud@res@b}%
        }{%
          \eappto\tud@github@url@base{/\tud@res@b}%
        }%
      }%
      \protected@edef\tud@res@a{%
        \endgroup%
        \noexpand\href{\tud@github@url@base}{\noexpand\mbox{\tud@res@c}}%
      }%
    \fi%
  \tud@res@a\xspace%
}
\NewDocumentCommand\GitHubDownload{s d() d<> m}{%
  \begingroup%
    \IfValueT{#2}{\tud@github@url@normalize\tud@github@url@base{#2}}%
    \ifx\tud@github@url@base\relax%
      \def\tud@res@a{%
        \endgroup%
        \tud@github@url@error%
      }%
    \else%
      \IfValueTF{#3}{%
        \appto\tud@github@url@base{/releases/download/#3/#4}%
      }{%
        \appto\tud@github@url@base{/releases/latest/download/#4}%
      }%
      \IfBooleanTF{#1}{%
        \def\tud@res@c{\File*{#4}}%
      }{%
        \def\tud@res@c{\InlineDeclaration{\File''{#4}}}%
        \index{Dateien}%
      }%
      \protected@edef\tud@res@a{%
        \endgroup%
        \noexpand\href{\tud@github@url@base}{\noexpand\mbox{\tud@res@c}}%
      }%
    \fi%
  \tud@res@a\xspace%
}
\newcommand*\tud@ctan@url@normalize[2]{%
  \tud@url@normalize#1{ctan.org}{#2}%
}
\NewDocumentCommand\CTAN{!o !d<>}{%
  \begingroup%
    \tud@ctan@url@normalize\tud@res@b{\IfValueT{#2}{#2}}%
    \IfValueTF{#1}{%
      \def\tud@res@c{#1}%
    }{%
      \def\tud@res@c{\tud@english{Comprehensive TeX Archive Network (CTAN)}}%
    }%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\href{\tud@res@b}{\noexpand\mbox{\tud@res@c}}%
    }%
  \tud@res@a\xspace%
}
\NewDocumentCommand\Forum{!O{\TUDForum} !d<>}{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\href%
        {\TUDScriptForum\IfValueT{#2}{viewtopic.php?t=#2}}%
        {\noexpand\mbox{#1}}%
    }%
  \tud@res@a\xspace%
}
\newrobustcmd*\Logo[1]{%
  \ifcsundef{tud@logo@#1}{%
    \ClassError{\TUD@Class@Name}%
      {logo `#1' missing}%
      {%
        The necessary macro `\string\tud@logo@#1'\MessageBreak%
        was never defined.%
      }%
  }{%
    \mbox{\csuse{tud@logo@#1}}%
  }%
}
\newcommand*\tud@if@cdfont@activated{}
\let\tud@if@cdfont@activated\@secondoftwo
\AtBeginDocument{%
  \ifdefined\if@tud@cdfont@active
    \expandafter\@firstofone%
  \else%
    \expandafter\@gobble%
  \fi{%
    \renewcommand*\tud@if@cdfont@activated{%
      \if@tud@cdfont@active%
        \expandafter\@firstoftwo%
      \else%
        \expandafter\@secondoftwo%
      \fi%
    }%
  }%
}
\newcommand*\tud@logo@@kern[2][0]{%
  \kern\dimexpr1em*%
    \numexpr\ifdim\the\fontdimen\@ne\font>\z@#1+\fi#2\relax%
  /100\relax%
}
\newcommand*\tud@logo@@shift[2]{%
  \lower\dimexpr1ex*#1/100\relax\hbox{#2}%
}
\newcommand*\tud@logo@@topscript[2]{%
  \begingroup%
    \setbox\z@\hbox{#1}%
    \vbox to\ht\z@{%
      \hbox{%
        \check@mathfonts%
        \fontsize\sf@size\z@%
        \math@fontsfalse\selectfont%
        #2%
      }%
      \vss%
    }%
  \endgroup%
}
\RequirePackage{l3draw}
\ExplSyntaxOn
\newcommand*\tud@logo@@reflect[1]{%
  \begingroup%
  \rlap{%
    \draw_begin:
    \hcoffin_set:Nn \l_tmpa_coffin{ #1 }
    \draw_transform_xslant:n{ \the\dimexpr\fontdimen\@ne\font*2\relax }
    \draw_transform_xscale:n{ -1 }
    \draw_coffin_use:Nnn \l_tmpa_coffin { hc } { vc }
    \draw_end:
  }%
  \hphantom{#1}%
  \endgroup%
}
\ExplSyntaxOff
\newcommand*\tud@logo@TeX{%
  T%
  \tud@if@cdfont@activated{%
    \tud@logo@@kern[-4]{-21}%
    \tud@logo@@shift{40}{E}%
    \tud@logo@@kern[7]{-6}%
  }{%
    \tud@logo@@kern[-7]{-19}%
    \tud@logo@@shift{48}{E}%
    \tud@logo@@kern[1]{-13}%
  }%
  X\@%
}
\newcommand*\tud@logo@LaTeX{%
  L%
  \tud@if@cdfont@activated{%
    \tud@logo@@kern[9]{-32}\tud@logo@@topscript{T}{A}%
    \tud@logo@@kern[1]{-13}%
  }{%
    \tud@logo@@kern[3]{-35}\tud@logo@@topscript{T}{A}%
    \tud@logo@@kern[-7]{-17}%
  }%
  \Logo{TeX}%
}
\newcommand*\tud@logo@LaTeXe{%
  \Logo{LaTeX}%
  \tud@if@cdfont@activated{%
    \tud@logo@@kern[-2]{8}%
  }{%
    \tud@logo@@kern[-2]{10}%
  }%
  \hbox{%
    \m@th%
    \if b\expandafter\@car\f@series x\@nil\csname boldmath\endcsname\fi%
    2$_{\textstyle\varepsilon}$%
  }\@%
}
\expandafter\newcommand\expandafter*\csname tud@logo@LaTeX3\endcsname{%
  \Logo{LaTeX}%
  \tud@if@cdfont@activated{%
    \tud@logo@@kern[-2]{8}%
  }{%
    \tud@logo@@kern[-2]{10}%
  }%
  3\@%
}
\newcommand*\tud@logo@pdfLaTeX{%
  pdf%
  \tud@if@cdfont@activated{%
    \tud@logo@@kern{3}%
  }{%
    \tud@logo@@kern[-8]{7}%
  }%
  \Logo{LaTeX}%
}
\newcommand*\tud@logo@LuaLaTeX{%
  Lua%
  \tud@if@cdfont@activated{%
    \tud@logo@@kern{-2}%
  }{%
    \tud@logo@@kern[-3]{3}%
  }%
  \Logo{LaTeX}%
}
\newcommand*\tud@logo@XeLaTeX{%
  X%
  \tud@if@cdfont@activated{%
    \tud@logo@@kern[-15]{-5}%
    \tud@logo@@shift{40}{\tud@logo@@reflect{E}}%
    \tud@logo@@kern[15]{-12}%
  }{%
    \tud@logo@@kern[-9]{-10}%
    \tud@logo@@shift{48}{\tud@logo@@reflect{E}}%
    \tud@logo@@kern{-8}%
  }%
  \Logo{LaTeX}%
}
\newcommand*\tud@logo@BibTeX{%
  B%
  \tud@if@cdfont@activated{%
    \tud@logo@@kern{-5}%
    \tud@logo@@shift{7}{\tud@logo@@topscript{x}{I\tud@logo@@kern{-5}B}}%
    \tud@logo@@kern{-10}%
  }{%
    \tud@logo@@kern{-5}%
    \tud@logo@@shift{-10}{\tud@logo@@topscript{x}{I\tud@logo@@kern[-6]{-3}B}}%
    \tud@logo@@kern[-5]{-7}%
  }%
  \Logo{TeX}%
}
\newcommand*\tud@logo@TeXLive{%
  \Logo{TeX}\tud@logo@@kern[-5]{\tud@if@cdfont@activated{20}{15}}Live\@%
}
\newcommand*\tud@logo@MacTeX{%
  Mac\tud@logo@@kern{-3}\Logo{TeX}\@%
}
\newcommand*\tud@logo@MiKTeX{%
  MiK\tud@logo@@kern{\tud@if@cdfont@activated{6}{-2}}\Logo{TeX}%
}
\newcommand*\tud@logo@LyX{%
  L%
  \tud@if@cdfont@activated{%
    \tud@logo@@kern[-3]{-11}%
    \tud@logo@@shift{40}{Y}%
    \tud@logo@@kern[7]{-11}%
  }{%
    \tud@logo@@kern[-9]{-9}%
    \tud@logo@@shift{40}{Y}%
    \tud@logo@@kern[1]{-11}%
  }%
  X\@%
}
%%%% From File: tudscr-manual.dtx (no git version info was found)
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
    \ifin@%
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
    \else%
      \let\tud@res@a\relax%
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
        \IfBooleanT{#1}{\unexpanded{\def#3}{\tud@res@a}}%
      \fi%
    }%
  \tud@res@c%
}
\newcommand*\tud@v@validate[1]{%
  \begingroup%
    \protected@edef\tud@res@a{#1}%
    \trim@spaces@in\tud@res@a%
    \tud@v@to@number*\tud@res@b{\tud@res@a}%
    \edef\tud@res@a{%
      \endgroup%
      \ifx\tud@res@b\relax%
        \unexpanded{%
          \ClassError{tudscrmanual}{Invalid version number}{%
            The given version number `#1' is invalid as it\MessageBreak%
            should be `[v][0-9]+.[0-9]+[a-z]*' (regex).%
          }%
          \let#1\relax%
        }%
      \else%
        \unexpanded{\def#1}{\tud@res@a}%
      \fi%
    }%
  \tud@res@a%
}
\newcommand*\tud@truncate@value[2]{%
  \begingroup%
    \protected@edef\tud@res@a{#2}%
    \def\tud@res@b##1=##2\@nil{%
      \endgroup%
      \def#1{##1}%
    }%
  \expandafter\tud@res@b\tud@res@a=\@nil%
}
\newcommand*\tud@outputpage@hook{}
\let\tud@outputpage@hook\relax
\newcommand*\tud@outputpage@special[1]{\appto\tud@outputpage@hook{#1}}
\@onlypreamble\tud@outputpage@special
\patchcmd\@outputpage{%
  \let\index\@gobble\let\glossary\@gobble%
}{%
  \let\index\@gobble\let\glossary\@gobble%
  \tud@outputpage@hook%
}{}{\tud@patch@wrn{@outputpage}}
\newcommand*\tud@addtocontents@hook{}
\let\tud@addtocontents@hook\relax
\NewDocumentCommand\tud@addtocontents@special{s m}{%
  \appto\tud@addtocontents@hook{#2}%
  \IfBooleanT{#1}{%
    \AfterPackage*{hyperref}{\pdfstringdefDisableCommands{#2}}%
    \AfterPackage*{nameref}{\GetTitleStringDisableCommands{#2}}%
  }%
}
\@onlypreamble\tud@addtocontents@special
\patchcmd\addtocontents{%
  \let\index\@gobble\let\glossary\@gobble%
}{%
  \let\index\@gobble\let\glossary\@gobble%
  \tud@addtocontents@hook%
}{}{\tud@patch@wrn{addtocontents}}
\RequirePackage{multicol}
\RequirePackage{setspace}
\setstretch{1.1}
\RequirePackage{quoting}
\RequirePackage{isodate}
\RequirePackage{ragged2e}
\@removefromreset{footnote}{chapter}
\renewcommand*\raggedfootnote{\tud@RaggedRight}%
\RequirePackage{noindentafter}
\AtEndPreamble{%
  \RequirePackage{ellipsis}
  \let\ellipsispunctuation\relax%
}
\RequirePackage{tabularx}
\RequirePackage{booktabs}
\DeclareListParser{\dossvlist}{;}
\DeclareListParser*{\forssvlist}{;}
\RequirePackage{enumitem}
\setlist{%
  before*={\endgraf\tud@RaggedRight},%
  partopsep=0pt,noitemsep%
}
\newcommand*\tud@list@create[4][]{%
  \newlist{#2}{#3}{#4}%
  \setlist[{#2}]{%
    font=\normalfont,%
    labelindent=.75em,labelwidth=\dimexpr\linewidth-.75em\relax,labelsep=0pt,%
    topsep=\smallskipamount,parsep=\parskip,listparindent=\parindent,%
    #1%
  }%
}
\RequirePackage{tikz}
\RequirePackage{pdfpages}
\RequirePackage{caption}
\RequirePackage{floatrow}
\DeclareCaptionSubType[alph]{figure}
\DeclareCaptionSubType[alph]{table}
\captionsetup{font=sf,labelfont=bf,labelsep=space}
\captionsetup{singlelinecheck=off,format=hang,justification=raggedright}
\captionsetup[subfloat]{labelformat=brace,list=off}
\KOMAoption{captions}{tableheading,figuresignature}
\floatsetup[table]{style=plaintop}
\RequirePackage{filemod}
\RequirePackage{ifplatform}
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
\RequirePackage{listings}
\lstdefinestyle{tudscr}{%
  basicstyle=\ttfamily\ifundef\setstretch{}{\setstretch{1}},%
  keywordstyle=,%
  columns=fullflexible,keepspaces,%
  aboveskip=\smallskipamount,%
  belowskip=\smallskipamount,%
  language=[LaTeX]TeX,%
  texcl,%
}
\lstnewenvironment{Code}[1][]{\lstset{style=tudscr,#1}}{}
\NoIndentAfterEnv{Code}
\BeforeBeginEnvironment{Code}{\global\let\tud@currentHref\@currentHref}
\AfterEndEnvironment{Code}{\global\let\@currentHref\tud@currentHref}
\RequirePackage{varioref}
\renewrobustcmd*\fullref[1]{\hyperref[{#1}]{\autoref*{#1}\space\vpageref{#1}}}
\RequirePackage{nameref}
\AfterPackage*{nameref}{%
  \patchcmd\NR@gettitle{%
    \GetTitleString%
  }{%
    \GetTitleStringExpand%
  }{}{\tud@patch@wrn{NR@gettitle}}%
}
\newcommand*\tud@currentHref{}
\AfterPackage*{hyperref}{%
  \newcommand*\autorefname[1][current]{%
    \tud@if@strequal{#1}{current}{%
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
  \begingroup%
    \def\do#1{%
      \tud@if@language@loaded{#1}{%
        \renewcaptionname{#1}{\subsectionautorefname}{Abschnitt}%
        \renewcaptionname{#1}{\subsubsectionautorefname}{Abschnitt}%
        \renewcaptionname{#1}{\subparagraphautorefname}{Absatz}%
      }{}%
    }%
    \expandafter\docsvlist\expandafter{\tud@localization@@german}%
  \endgroup%
}
\TUD@UnwindPackage{hyperref}{%
  \providerobustcmd*\autoref{??\xspace\kernel@ifstar{\ref}{\ref}}%
  \providerobustcmd*\autorefname[1][]{??\xspace}%
  \tud@localization@german{\partautorefname}{Teil}%
  \tud@localization@german{\chapterautorefname}{Kapitel}%
  \tud@localization@german{\sectionautorefname}{Abschnitt}%
  \tud@localization@german{\subsectionautorefname}{Abschnitt}%
  \tud@localization@german{\subsubsectionautorefname}{Abschnitt}%
  \tud@localization@german{\paragraphautorefname}{Absatz}%
  \tud@localization@german{\subparagraphautorefname}{Absatz}%
  \tud@localization@german{\appendixautorefname}{Anhang}%
  \tud@localization@german{\figureautorefname}{Abbildung}%
  \tud@localization@german{\tableautorefname}{Tabelle}%
  \tud@localization@german{\pageautorefname}{Seite}%
  \tud@localization@english{\partautorefname}{Part}%
  \tud@localization@english{\chapterautorefname}{chapter}%
  \tud@localization@english{\sectionautorefname}{section}%
  \tud@localization@english{\subsectionautorefname}{subsection}%
  \tud@localization@english{\subsubsectionautorefname}{subsubsection}%
  \tud@localization@english{\paragraphautorefname}{paragraph}%
  \tud@localization@english{\subparagraphautorefname}{subparagraph}%
  \tud@localization@english{\appendixautorefname}{Appendix}%
  \tud@localization@english{\figureautorefname}{Figure}%
  \tud@localization@english{\tableautorefname}{Table}%
  \tud@localization@english{\pageautorefname}{page}%
}
\NewDocumentCommand\tud@hypertarget{m d'' d<> m}{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@@hypertarget{#1}'#2'<#3>{#4}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@@hypertarget{m r'' r<> m}{%
  \begingroup%
    \let\tud@res@a\@empty%
    \tud@@@hypertarget\tud@res@a{#1}{#4}{#4}%
    \IfValueT{#3}{%
      \forlistloop{\tud@@@hypertarget\tud@res@a{#1}{#4}}{#3}%
    }%
    \tud@trace@lbl@add{created}[{#2}]{\tud@res@a}%
  \endgroup%
}
\tud@auxlist@register(\detokenize\expandafter){tud@lbl@dest}
\NewDocumentCommand\tud@@@hypertarget{m m m m}{%
  \begingroup%
    \@tud@res@swatrue%
    \IfBooleanTF{#2}{%
      \tud@auxlist@add{tud@lbl@dest}{#4}%
      \ifx\HyperDestRename\@gobbletwo%
        \hypertargetraised{#4}%
      \else%
        \HyperDestRename{#4}{#3}%
      \fi%
    }{%
      \tud@auxlist@ifin{#4}{tud@lbl@dest}{%
        \@tud@res@swafalse%
      }{%
        \hypertargetraised{#4}%
        \let\HyperDestRename\@gobbletwo%
        \let\@currentlabelname\@empty%
      }%
    }%
    \protected@edef\tud@res@a{%
      \if@tud@res@swa%
        \noexpand\label{#4}%
      \fi%
      \endgroup%
      \if@tud@res@swa%
        \unexpanded{\listadd#1}{#4}%
      \fi%
    }%
  \tud@res@a%
}
\newcommand*\hypertargetraised[1]{%
  \begingroup%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\Hy@raisedlink{\noexpand\hypertarget{#1}{}}%
    }%
  \tud@res@a%
}
\newrobustcmd*\tud@hyperlink[3]{%
  \begingroup%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\hyperlink{#1}%
    }%
  \tud@res@a{#3}{#2}%
}
\RequirePackage{todonotes}
\AtEndPreamble{%
  \ifdim\marginparwidth<2cm\relax%
    \tud@setdim\marginparwidth{2cm}%
  \fi%
}
\TUD@UnwindPackage{todonotes}{%
  \RenewDocumentCommand\ToDo{s o m !o}{}%
  \renewcommand*\ListOfToDo{}%
}
\NewDocumentCommand\ToDo{s O{default} m !o}{%
  \ifnum\tud@todo@num>\z@\relax%
    \global\let\tud@currentHref\@currentHref%
    \begingroup%
      \begingroup%
        \let\tud@res@a\tud@todo@type@use%
        \let\tud@res@b\@empty%
        \def\tud@res@c##1{%
          \ifinlist{##1}{\tud@res@a}{\listadd\tud@res@b{##1}}{}%
        }%
        \TUDoptions{ToDo={only={#2}}}%
        \forlistloop\tud@res@c{\tud@todo@type@use}%
        \edef\tud@res@c{%
          \endgroup%
          \unexpanded{\def\tud@todo@type@use}{\expandonce\tud@res@b}%
        }%
      \tud@res@c%
      \ifx\tud@todo@type@use\@empty\else%
        \edef\tud@res@a{\TUDScriptVersionNumber}%
        \ifinlist{rls}{\tud@todo@type@use}{%
          \IfValueT{#4}{%
            \ClassWarning{tudscrmanual}{`rls' implies current version}%
          }%
          \def\tud@res@c{HKS44}%
        }{%
          \IfValueT{#4}{\protected@edef\tud@res@a{#4}}%
          \ifinlist{imp}{\tud@todo@type@use}{%
            \def\tud@res@c{HKS57}%
          }{%
            \ifinlist{doc}{\tud@todo@type@use}{%
              \def\tud@res@c{HKS33}%
            }{%
              \def\tud@res@c{HKS92}%
            }%
          }%
        }%
        \begingroup%
          \tud@v@to@number*\tud@res@b{\tud@res@a}%
          \ifx\tud@res@b\relax%
            \tud@res@cnt=1%
          \else%
            \tud@v@to@number\tud@res@c{\TUDScriptVersionNumber}%
            \ifnum\tud@res@b<\tud@res@c\relax%
              \tud@res@cnt=0%
            \else%
              \ifnum\tud@res@b>\tud@res@c\relax%
                \tud@res@cnt=3%
              \else%
                \tud@res@cnt=2%
              \fi%
            \fi%
          \fi%
          \edef\tud@res@c{%
            \endgroup%
            \unexpanded{\def\tud@res@a}{\tud@res@a}%
            \unexpanded{\edef\tud@res@b}{%
              \ifcase\tud@res@cnt% < current version
                color=\noexpand\tud@res@c,%
                bordercolor=HKS07!80,%
                textcolor=white,%
                inlinewidth=\linewidth - 2pt%
              \or% no version
                color=\noexpand\tud@res@c!15,%
                bordercolor=HKS07!50%
              \or% = current version
                color=\noexpand\tud@res@c!60,%
                bordercolor=\noexpand\tud@res@c%
              \or% > current version
                color=\noexpand\tud@res@c!30,%
                bordercolor=\noexpand\tud@res@c%
              \else% undefined state
                color=HKS07!80,%
                textcolor=\noexpand\tud@res@c%
              \fi%
            }%
            \unexpanded{\tikzset{notestyleraw/.append style={align=center}}}%
            \ifcase\tud@res@cnt\relax%
              \unexpanded{%
                \tikzset{notestyleraw/.append style={%
                  line width = 2pt,%
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
        \sbox\z@{\@ToDo{\tud@res@c}{#3}}\usebox\z@%
        \renewcommand*\marginpar[2][]{%
          \marginnote[{##1}]{##2}[\dimexpr\ht\strutbox-\ht\z@-\dp\z@\relax]%
        }%
        \edef\tud@res@c{\tud@res@b,noline,nolist}%
        \@ToDo{\tud@res@c}{\tud@res@a}%
        \ifnum\tud@todo@num=\tw@\relax\else%
          \aftergroup\par\aftergroup\noindent%
        \fi%
      \fi%
    \endgroup%
    \global\let\@currentHref\tud@currentHref%
  \fi%
  \ignorespaces%
}
\newcommand*\@ToDo[2]{%
  \expandafter\todo\expandafter[\expandafter{#1}]{\trim@spaces{#2}\strut}%
}
\newcommand*\ListOfToDo{%
  \ifnum\tud@todo@num>\z@\relax\cleardoublepage\listoftodos\fi%
}
\newcommand*\tud@specialurl@wrapper[2]{%
  \begingroup%
    \protected@edef\tud@res@a{#2}%
    \let\tud@res@c\@empty%
    \ifx\tud@res@a\@empty\else%
      \expandafter\tud@specialurl@resolve\expandafter\tud@res@b\tud@res@a::\@nil%
      \ifnum\tud@res@b<\z@\relax\else%
        \def\tud@res@d##1:##2\@nil{\def\tud@res@c{##2}}%
        \expandafter\tud@res@d\tud@res@a\@nil%
        \ifx\tud@res@c\@empty\else%
          \ifcase\tud@res@b\relax% CTAN
            \tud@ctan@url@normalize\tud@res@c{pkg/\tud@res@c}%
          \or% CTANinfo
            \tud@ctan@url@normalize\tud@res@c{tex-archive/info/\tud@res@c}%
          \or% GH
            \tud@github@url@normalize\tud@res@c{\tud@res@c}%
          \fi%
        \fi%
      \fi%
      \ifx\tud@res@c\@empty%
        \ClassWarning{tudscrmanual}{%
          The given special link `#2' \MessageBreak%
          could not be resolved%
        }%
      \fi%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{%
        \ifx\tud@res@c\@empty%
          \noexpand\@firstofone%
        \else%
          \noexpand\href{\tud@res@c}%
        \fi%
      }%
    }%
  \tud@res@a%
}
\newcommand*\tud@specialurl@resolve{}
\def\tud@specialurl@resolve#1#2:#3:#4\@nil{%
  \begingroup%
    \FamilyKeyStateUnknownValue%
    \IfArgIsEmpty{#3}{}{%
      \TUD@set@numkey{}{tud@res@a}{%
        {ctan}{0},{ctaninfo}{1},{gh}{2},{url}{3}%
      }{#2}%
    }%
    \ifx\FamilyKeyState\FamilyKeyStateProcessed\else%
      \def\tud@res@a{-1}%
      \FamilyKeyStateProcessed%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\tud@res@a}%
    }%
  \tud@res@a%
}
\newcommand*\tud@specialurl@validate[1]{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \unexpanded{\tud@specialurl@resolve\tud@res@a}#1::\noexpand\@nil%
    }%
    \tud@res@a%
    \ifnum\tud@res@a<\z@\relax%
      \ClassWarning{tudscrmanual}{%
        Special link `#1' invalid, permitted are:\MessageBreak%
        CTAN[info]:... GH:... URL:...
      }%
      \aftergroup\@gobble%
    \else%
      \aftergroup\@firstofone%
    \fi%
  \endgroup%
}
\newcommand*\tud@param@list{}
\NewDocumentCommand\NewParameterCommand{s m m m m}{%
  \edef\tud@res@a{\expandafter\@gobble\string#2}%
  \listeadd\tud@param@list{\tud@res@a}%
  \edef\tud@res@b{\expandafter\noexpand\csname @\tud@res@a\endcsname}%
  \expandafter\NewExpandableDocumentCommand\tud@res@b{#3}{#5}%
  \NewDocumentCommand#2{#3}{#4}%
}
\@onlypreamble\NewParameterCommand
\NewDocumentCommand\P@Braces{s m}{%
  \mbox{%
    \texttt{\IfBooleanTF{#1}{\lbrack}{\textbraceleft}}%
    #2%
    \texttt{\IfBooleanTF{#1}{\rbrack}{\textbraceright}}%
  }%
}
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
\newcommand*\Parameter@Expandable{%
  \begingroup%
    \def\tud@res@a{\endgroup}%
    \def\tud@res@b##1{\appto\tud@res@a{\csletcs{##1}{@##1}}}%
    \forlistloop\tud@res@b{\tud@param@list}%
  \tud@res@a%
}
\NewParameterCommand\PName{s m}{%
  \tud@if@strblank{#2}{%
    \ClassWarning{tudscrmanual}%
      {The argument of `\string\PName' should not be empty}%
  }{}%
  \mbox{\IfBooleanTF{#1}{\textttit}{\texttt}{<#2>}}%
}{<8:#2>}
\NewParameterCommand\PValue{s m}{%
  \tud@if@strblank{#2}{%
    \ClassWarning{tudscrmanual}%
      {The argument of `\string\PValue' should not be empty}%
  }{}%
  \mbox{\IfBooleanTF{#1}{\textttit}{\texttt}{#2}}%
}{<9:#2>}
\NewParameterCommand\MPName{m}{\P@Braces{\PName{#1}}}{\@PName{#1}}
\NewParameterCommand\MPValue{m}{\P@Braces{\PValue{#1}}}{\@PValue{#1}}
\NewParameterCommand\MList{}{\MPName{Parameterliste}}{\@PName{Parameterliste}}
\NewParameterCommand\OPName{m}{\P@Braces*{\PName{#1}}}{\@PName{#1}}
\NewParameterCommand\OPValue{m}{\P@Braces*{\PValue{#1}}}{\@PValue{#1}}
\NewParameterCommand\OList{}{\OPName{Parameterliste}}{\@PName{Parameterliste}}
\NewParameterCommand\OPList{m}{%
  \P@Braces*{%
    \PName{#1}%
    \texttt{\txb\kern-.5em\txb}%
    \PName{Parameterliste}%
  }%
}{\@PName{Parameterliste}}
\NewParameterCommand*\PMisc{}{\PName{Einstellung}}{<0:misc>}
\NewParameterCommand*\PBoolean{}{\PName{Ein-Aus-Wert}}{<1:boolean>}
\NewParameterCommand*\PLength{}{\PName{L\"ange}}{<2:length>}
\NewParameterCommand*\PSet{m}{\PName{#1}}{<3:#1>}
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
\newcommand*\tud@markup@lvl{}
\let\tud@markup@lvl\relax
\TUD@key[.markup]{lvl}{%
  \begingroup%
    \def\tud@res@d##1>##2>##3\@nil{%
      \Ifisinteger{##1}{%
        \edef\tud@res@a{\the\numexpr##1\relax}%
        \IfArgIsEmpty{##2}{%
          \ifcase\tud@res@a\relax% 0
            \def\tud@res@b{-1..-1}%
          \or% 1
            \def\tud@res@b{-1..-1}%
          \or% 2
            \def\tud@res@b{1}%
          \else% >=3
            \def\tud@res@b{1..2}%
          \fi%
        }{%
          \def\tud@res@b{##2}%
        }%
        \def\tud@res@d####1..####2..####3\@nil{%
          \edef\tud@res@b{\the\numexpr\tud@res@a-2\relax}%
          \ifnum\tud@res@b<1\relax%
            \edef\tud@res@b{1}%
          \fi%
          \IfArgIsEmpty{####1}{}{%
            \Ifisinteger{####1}{%
              \edef\tud@res@b{\the\numexpr####1\relax}%
            }{%
              \FamilyKeyStateUnknownValue%
            }%
          }%
          \edef\tud@res@c{\the\numexpr\tud@res@a-1\relax}%
          \IfArgIsEmpty{####2}{}{%
            \Ifisinteger{####2}{%
              \edef\tud@res@c{\the\numexpr####2\relax}%
              \ifnum\tud@res@c<\m@ne\relax%
                 \edef\tud@res@c{-1}%
              \fi%
            }{%
              \FamilyKeyStateUnknownValue%
            }%
          }%
        }%
        \FamilyKeyStateProcessed%
        \expandafter\tud@res@d\tud@res@b....\@nil%
      }{}%
    }%
    \FamilyKeyStateUnknownValue%
    \tud@res@d#1>>\@nil%
    \edef\tud@res@d{%
      \endgroup%
      \def\noexpand\tud@markup@lvl{{\tud@res@a}{{\tud@res@b}{\tud@res@c}}}%
      \expandonce\FamilyKeyState%
    }%
  \tud@res@d%
}
\newcommand*\tud@markup@idx{\jobname}
\TUD@key[.markup]{idx}[true]{%
  \begingroup%
    \def\tud@res@b{\endgroup}%
    \def\tud@res@a##1:##2:##3\@nil{%
      \undef\tud@markup@idx%
      \TUD@set@ifkey{idx}{@tempswa}{##1}%
      \ifx\FamilyKeyState\FamilyKeyStateProcessed%
        \if@tempswa%
          \def\tud@markup@idx{\jobname}%
        \fi%
      \else%
        \xifinlist{##1}{\tud@index@list}{%
          \FamilyKeyStateProcessed%
          \def\tud@markup@idx{##1}%
        }{%
          \ClassError{tudscrmanual}{Unknown index `##1'}{%
            Index `##1' was never defined with \string\tud@index@make!%
          }%
        }%
      \fi%
      \protected@eappto\tud@res@b{%
        \ifundef\tud@markup@idx{%
          \unexpanded{\undef\tud@markup@idx}%
        }{%
          \unexpanded{\def\tud@markup@idx}{%
            \expandonce\tud@markup@idx\IfArgIsEmpty{##2}{}{\unexpanded{:##2}}%
          }%
        }%
        \expandonce\FamilyKeyState%
      }%
    }%
    \tud@res@a#1::\@nil%
  \tud@res@b%
}
\tud@newcount\tud@markup@type@num
\TUD@key[.markup]{type}{%
  \TUD@set@numkey{type}{@tempa}{%
    {default}{0},{value}{1},{param}{2}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \tud@markup@type@num=\@tempa\relax%
  \fi%
}
\newcommand*\tud@markup@list{}
\NewDocumentCommand\NewMarkupCommand{s m O{} D(){\texttt} D<>{} D''{ic} m}{%
  \begingroup%
    \TUDExecuteOptions[.markup]{#3}%
    \ifx\tud@markup@lvl\relax%
      \TUDExecuteOptions[.markup]{lvl=3}%
    \fi%
    \edef\tud@res@d{\expandafter\@gobble\string#2}%
    \def\tud@res@c{\endgroup}%
    \eappto\tud@res@c{\unexpanded{\listadd\tud@markup@list}{\tud@res@d}}%
    \eappto\tud@res@c{%
      \unexpanded{\newcommand*}%
      \csname Entity@@Level@@\tud@res@d\endcsname{\tud@markup@lvl}%
    }%
    \tud@toks@{\Markup@Format@Set}%
    \addto@hook@expandafter\tud@toks@{\expandafter{\tud@res@d}}%
    \addto@hook\tud@toks@{(#4)}%
    \IfBooleanT{#1}{\addto@hook\tud@toks@{[\bsc]}}%
    \addto@hook\tud@toks@{<#5>}%
    \ifundef\tud@markup@idx{}{%
      \addto@hook@expandafter\tud@toks@{\expandafter|\tud@markup@idx|}%
    }%
    \addto@hook\tud@toks@{'#6'{#7}}%
    \eappto\tud@res@c{\the\tud@toks@}%
    \def\tud@res@b##1##2{%
      \eappto\tud@res@c{%
        \NewExpandableDocumentCommand\expandafter\noexpand\csname##1\endcsname%
          {s d|| d'' d() m}{##2}%
      }%
    }%
    \tud@res@b{\tud@res@d @Gobble}{}%
    \tud@res@b{@\tud@res@d}{\unexpanded{\Markup@Gobble@Extra##5|\relax}}%
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
        \unexpanded{\Process@Markup[##1]}%
          {\tud@res@d}%
          \unexpanded{##5|##2|'##3'(##4)}%
%       PENDING raus, nachdem tudscrmanual.sty umgesetzt
%      \unexpanded{%
%        \IfValueT{##6}{\ClassWarning{tudscrmanual}{change markup for `##6'}}%
%        \IfValueT{##7}{\ClassWarning{tudscrmanual}{change markup for `##7'}}%
%        \IfValueT{##8}{\ClassWarning{tudscrmanual}{change markup for `##8'}}%
%        \IfValueT{##9}{\ClassWarning{tudscrmanual}{change markup for `##9'}}%
%      }%
      }%
    }%
  \tud@res@c%
}
\@onlypreamble\NewMarkupCommand
\NewDocumentCommand\Markup@Format@Set{m r() O{} D<>{} d|| r'' m}{%
  \tud@toks@{{#1}{{#2{#3##1}\IfValueT{##2}{\PValue{=}##2}}\IfValueT{##3}{##3}}}%
  \ifcsundef{Markup@Format@@Inline@@#1}{%
    \expandafter\Markup@Inline@Format@Set\the\tud@toks@%
  }{}%
  \ifcsundef{Markup@Format@@InlineDeclare@@#1}{%
    \expandafter\Markup@InlineDeclare@Format@Set\the\tud@toks@%
  }{}%
  \ifcsundef{Markup@Format@@Declare@@#1}{%
    \def\@tempa{[{#4}]}%
    \expandafter\expandafter\expandafter\Markup@Declare@Format@Set%
      \expandafter\@tempa\the\tud@toks@%
  }{}%
  \IfValueT{#5}{%
    \expandafter\newcommand\csname Markup@Format@@Index@@#1\endcsname{}%
    \csdef{Markup@Format@@Index@@#1}{#5}%
  }%
  \Markup@Suffix@Format@Set{#1}{#6}{\suffix{#7}}%
}
\@onlypreamble\Markup@Format@Set
\newcommand*\Markup@Inline@Format@Set[2]{%
  \expandafter\newcommand\csname Markup@Format@@Inline@@#1\endcsname{}%
  \csdef{Markup@Format@@Inline@@#1}##1=##2=[##3]{%
    \mbox{#2\Markup@Suffix@Select{#1}}%
  }%
}
\@onlypreamble\Markup@Inline@Format@Set
\newcommand*\Markup@InlineDeclare@Format@Set[2]{%
  \expandafter\newcommand\csname Markup@Format@@InlineDeclare@@#1\endcsname{}%
  \csdef{Markup@Format@@InlineDeclare@@#1}##1=##2=[##3]{%
    \mbox{#2\Markup@Suffix@@Select{l}{#1}}%
  }%
}
\@onlypreamble\Markup@InlineDeclare@Format@Set
\newcommand*\Markup@Declare@Format@Set[3][]{%
  \expandafter\newcommand\csname Markup@Format@@Declare@@#2\endcsname{}%
  \csdef{Markup@Format@@Declare@@#2}##1=##2=[##3]{%
    \mbox{#1#3\Markup@Suffix@@Select{d}{#2}}%
  }%
}
\@onlypreamble\Markup@Declare@Format@Set
\newcommand*\Markup@Suffix@Format@Set[3]{%
  \expandafter\newcommand\csname Markup@Format@@Suffix@@#1\endcsname{}%
  \csdef{Markup@Format@@Suffix@@#1}{{#2}{#3}}%
}
\@onlypreamble\Markup@Suffix@Format@Set
\tud@newcount\tud@index@mode@num
\tud@index@mode@num=\@ne\relax%
\newenvironment{NoIndexDefault}{%
  \tud@index@mode@num=\z@\relax%
  \ignorespaces%
}{%
  \aftergroup\ignorespaces%
}
\newcommand*\Markup@Suffix@Select[1]{%
  \begingroup%
    \tud@index@mode@num=\numexpr\tud@index@mode@num+3\relax%
    \ifcase\tud@index@mode@num\relax%
      \def\tud@res@a{c}%
    \or%
      \def\tud@res@a{i}%
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
\newrobustcmd*\suffix[1]{%
  \begingroup%
    \nobreakspace\suffixsize(#1)%
  \endgroup%
}
\newrobustcmd*\idxsuffix[1]{%
  \begingroup%
    \let\Markup@Suffix@Select\@gobble%
    \nobreakspace\suffixsize\textlangle#1\textrangle%
  \endgroup%
}
\newrobustcmd*\nosuffix[1]{%
  \begingroup%
    \let\suffix\@gobble%
    \let\idxsuffix\@gobble%
    #1%
  \endgroup%
}
\newcommand*\AP@MarkupKey[2]{%
  \begingroup%
    \AP@MarkupDefault{#1}{#2}%
    \def\tud@res@a##1##2\@nil{%
      \in@{/}{##1}%
      \ifin@%
        \def\tud@res@b####1=####2\@nil{%
          \def\tud@res@c{####2}%
          \PValue@Enfold\tud@res@c%
          \def\tud@res@d{####1}%
          \trim@spaces@in\tud@res@d%
          \eappto\ProcessedArgument{%
            /\expandonce\tud@res@d/=\expandonce\tud@res@c=%
          }%
        }%
        \def\tud@res@a####1/####2\@nil{%
          \def\tud@res@d{####1}%
          \trim@spaces@in\tud@res@d%
          \edef\ProcessedArgument{{\expandonce\tud@res@d}}%
          \in@{=}{####2}%
          \ifin@%
            \tud@res@b####2\@nil%
          \else%
            \def\tud@res@d{####2}%
            \trim@spaces@in\tud@res@d%
            \eappto\ProcessedArgument{/\expandonce\tud@res@d/}%
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
          \def\tud@res@d{####1}%
          \trim@spaces@in\tud@res@d%
%%    \def\tud@res@c##1{%
%%      \tud@ifstrbool{##1}
%%        {\@tud@res@swatrue}{\@tud@res@swatrue}{\@tud@res@swafalse}%
%%      \if@tud@res@swa%
%%        \tud@if@strequal{##1}{true}{\@tud@res@swafalse}{}%
%%        \tud@if@strequal{##1}{false}{\@tud@res@swafalse}{}%
%%        \if@tud@res@swa%
%%          \ClassWarning{tudscrmanual}{%
%%            Boolean values should only be referred with\MessageBreak%
%%            'true/false' but '##1' was used%
%%          }%
%%        \fi%
%%      \fi%
%%    }%
%% TODO use to validate =...= within Value Processors (Parameter@Gobble)?
%%      \ifx\tud@res@a\tud@res@b\else%
%%        \def\tud@res@c##1<##2>##3\@nil{%
%%          \@tud@res@swafalse%
%%          \IfArgIsEmpty{##1}{}{\@tud@res@swatrue}%
%%          \IfArgIsEmpty{##3}{}{\@tud@res@swatrue}%
%%          \if@tud@res@swa%
%%            \ClassWarning{tudscrmanual}{%
%%              Enfolding text removed from parameter macro\MessageBreak%
%%              \detokenize\expandafter{\tud@res@a}%
%%            }%
%%          \fi%
%%          \def\tud@res@c##1####1##3\@nil{\def\tud@res@a{####1}}%
%%          \expandafter\tud@res@c\tud@res@a\@nil%
%%        }%
%%        \expandafter\tud@res@c\tud@res@b\@nil%
%%      \fi%
          \edef\ProcessedArgument{%
            {\expandonce\tud@res@d}=\expandonce\tud@res@c=\unexpanded{##2}%
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
        \def\tud@res@d{##1}%
        \trim@spaces@in\tud@res@d%
        \edef\ProcessedArgument{{\expandonce\tud@res@d}}%
        \tud@if@strblank{##2}{%
          \in@{/}{##1}%
          \ifin@%
            \def\tud@res@b####1/####2\@nil{%
              \begingroup%
                \let\suffix\@firstofone%
                \Markup@Suffix@@Select[\edef\tud@res@c]{}{KeyVal@Parameter}%
                \trim@spaces@in\tud@res@c%
                \eappto\tud@res@c{: \csname #1\endcsname*{####1}}%
                \edef\tud@res@c{%
                  \endgroup%
                  \unexpanded{\appto\ProcessedArgument}{%
                    [{\noexpand\suffix{\expandonce\tud@res@c}}]%
                  }%
                }%
              \tud@res@c%
            }%
            \tud@res@b##1\@nil%
          \else%
            \appto\ProcessedArgument{[{\Markup@Suffix@@Select{}{#1}}]}%
          \fi%
        }{%
          \appto\ProcessedArgument{[{##2}]}%
        }%
      }%
      \tud@res@a#2\@nil%
    \else%
      \def\tud@res@d{#2}%
      \trim@spaces@in\tud@res@d%
      \edef\ProcessedArgument{{\expandonce\tud@res@d}}%
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
\NewDocumentCommand\Markup@Expandable{!s}{%
  \begingroup%
    \def\tud@res@a{\endgroup}%
    \def\do##1{\appto\tud@res@a{\csletcs{##1}{@##1}}}%
    \dolistloop{\tud@markup@list}%
  \tud@res@a%
  \IfBooleanF{#1}{%
    \Markup@@Expandable%
    \Parameter@Expandable%
    \Misc@Expandable%
  }%
}
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
\newcommand*\Misc@Expandable{%
  \def\suffix##1{\space##1}%
  \def\idxsuffix##1{\space##1}%
  \let\nosuffix\@firstofone%
  \let\seeplain\@seeplain%
  \let\Logo\@firstofone%
  \let\emph\@firstofone%
  \let\texttt\@firstofone%
  \def~{\space}%
  \def\nobreakspace{\space}%
  \def\dots{...}%
  \def\_{_}%
}
\AfterPackage*{hyperref}{%
  \expandafter\pdfstringdefDisableCommands\expandafter{\Markup@Expandable}%
}
\NewDocumentCommand\tud@if@markup{s m}{%
  \begingroup%
    \@tud@res@swafalse%
    \tud@if@strblank{#2}{}{%
      \Markup@Gobble%
      \tud@if@strblank{#2}{\@tud@res@swatrue}{}%
    }%
    \if@tud@res@swa%
      \aftergroup\@firstoftwo%
    \else%
      \IfBooleanF{#1}{%
        \protected@edef\tud@res@a{#2}%
        \ClassWarning{tudscrmanual}{%
          `\detokenize\expandafter{\tud@res@a}' is not a markup command%
        }%
      }%
      \aftergroup\@secondoftwo%
    \fi%
  \endgroup%
}
\newcommand*\Markup@Gobble{%
  \begingroup%
    \def\tud@res@a{\endgroup}%
    \def\do##1{\appto\tud@res@a{\csletcs{##1}{##1@Gobble}}}%
    \dolistloop{\tud@markup@list}%
  \tud@res@a%
}
\newcommand*\Markup@Gobble@Extra{}
\def\Markup@Gobble@Extra#1|#2\relax{#1}
\newcommand*\tud@markup@detokenize[2]{%
  \detokenize\expandafter{\@backslashchar#1{#2}}%
}
\NewMarkupCommand\Distribution[%
  lvl=0,idx=true:\DistributionGeneral@@IndexEntry%
](\textsbn){Distribution}
\NewDocumentCommand\TeXLive{!t' !d|| !d''}{%
  \Distribution|#2|'#3'{\Logo{TeXLive}\IfBooleanT{#1}{\nobreakspace Portable}}%
  \DistributionGeneral@IndexEntry{#2}\xspace%
}
\NewDocumentCommand\MacTeX{!t' !d|| !d''}{%
  \Distribution|#2|'#3'{\Logo{MacTeX}\IfBooleanT{#1}{\nobreakspace Portable}}%
  \DistributionGeneral@IndexEntry{#2}\xspace%
}
\NewDocumentCommand\MiKTeX{!t' !d|| !d''}{%
  \Distribution|#2|'#3'{\Logo{MiKTeX}\IfBooleanT{#1}{\nobreakspace Portable}}%
  \DistributionGeneral@IndexEntry{#2}\xspace%
}
\NewDocumentCommand\DistributionGeneral{!s !d||}{%
  \Logo{LaTeX}\mbox{-}Distribution\IfBooleanT{#1}{en}%
  \DistributionGeneral@IndexEntry{#2}\xspace%
}
\newcommand*\@DistributionGeneral{LaTeX-Distribution}%
\NewDocumentCommand\DistributionGeneral@IndexEntry{m}{%
  \begingroup%
    \tud@idx@attribute@get\tud@res@a{#1}%
    \ifx\tud@res@a\relax\else%
      \ifx\tud@res@a\@empty\else%
        \preto\tud@res@a{|}%
      \fi%
      \epreto\tud@res@a{\DistributionGeneral@@IndexEntry}%
      \expandafter\index\expandafter{\tud@res@a}%
    \fi%
  \endgroup%
}
\newcommand*\DistributionGeneral@@IndexEntry{}
\edef\DistributionGeneral@@IndexEntry{%
  \detokenize\expandafter{\@DistributionGeneral @{\DistributionGeneral}}%
}
\NewMarkupCommand\Format[lvl=1](\sbnfont\Logo){Textsatzsystem}
\NewMarkupCommand\Bundle[lvl=1,idx=false](\textsbn){Bundle}
\NewMarkupCommand\Class[lvl=2,idx=files](\textsbn){Klasse}
\NewMarkupCommand\Package[lvl=2,idx=files](\textsbn){Paket}
\NewMarkupCommand\Option[idx=options,type=value]'c'{Option}
\Markup@InlineDeclare@Format@Set{Environment}{%
  \texttt{%
    \bsc{}begin\textbraceleft#1\textbraceright\IfValueT{#3}{#3}%
    \dots%
    \bsc{}end\textbraceleft#1\textbraceright%
  }%
}
\Markup@Declare@Format@Set{Environment}{%
  \begin{tabular}[t]{@{}l@{}}%
  \texttt{\bsc{}begin\textbraceleft#1\textbraceright\IfValueT{#3}{#3}}%
  \tabularnewline\texttt{\quad\raisebox{-.3\dp\@arstrutbox}[0pt][0pt]{\vdots}}%
  \tabularnewline\texttt{\bsc{}end\textbraceleft#1\textbraceright}%
  \end{tabular}%
}
\NewMarkupCommand\Environment[idx=macros,type=param]{Umgebung}
\NewMarkupCommand*\Macro[idx=macros,type=param]'c'{Befehl}
\NewMarkupCommand\KeyVal@Parameter[idx=macros](\textttit)<\quad>''{Parameter}
\NewMarkupCommand*\Length[idx=misc]'dic'{L\"ange}
\NewMarkupCommand\Counter[idx=misc]'dic'{Z\"ahler}
\NewMarkupCommand*\Term[idx=terms]'dc'{Bezeichner}
\NewMarkupCommand\PageStyle[idx=elements]'dic'{Seitenstil}
\NewMarkupCommand\Font[idx=elements]'dic'{Schriftelement}
\NewMarkupCommand\Color[idx=elements]'dic'{Farbe}
\NewMarkupCommand\Application[lvl=0](\textsbi){Anwendungssoftware}
\NewMarkupCommand\Tutorial[lvl=-2>0..1,idx=files](\textsbn){Tutorial}
\NewMarkupCommand\File[lvl=-2>0..1,idx=files](\texttt)'c'{Datei}
\NewDocumentCommand\Path{>{\AP@Underscore}m}{\mbox{\texttt{#1}}}
\newcommand*\tud@ety@crnt{}
\newcommand*\tud@ety@dflt{\Bundle{tudscr}}
\newcommand*\tud@ety@gnrl{+general+}
\NewDocumentEnvironment{Entity}{m}{%
  \Entity@Level@@Validate{1}{2}{#1}{\Markup@Main@Get\tud@ety@crnt{#1}}%
  \ignorespaces%
}{%
  \aftergroup\ignorespaces%
}
\newcommand*\Entity@Level@Get[2]{%
  \begingroup%
    \edef\tud@res@a{\csuse{Entity@@Level@@#2}}%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\expandafter\@firstoftwo\tud@res@a}%
    }%
  \tud@res@a%
}
\newcommand*\Entity@Level@Validate[2]{%
  \begingroup%
    \edef\tud@res@a{\csuse{Entity@@Level@@#1}}%
    \edef\tud@res@a{\expandafter\@secondoftwo\tud@res@a}%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\Entity@Level@@Validate\tud@res@a%
    }%
  \tud@res@a{#2}%
}
\newcommand*\Entity@Level@@Validate[3]{%
  \begingroup%
    \tud@if@markup{#3}{%
      \Markup@Split@Get*\tud@res@a{#3}%
      \edef\tud@res@b{\csuse{Entity@@Level@@\expandafter\@firstoftwo\tud@res@a}}%
      \edef\tud@res@b{%
        \noexpand\If@Entity@Level@Valid@TF{#1}{#2}{%
          \expandafter\@firstoftwo\tud@res@b%
        }%
      }%
      \tud@res@b{%
        \aftergroup\@firstofone%
      }{%
        \let\tud@res@b\@empty%
        \forlistloop{%
          \Entity@Level@@@Validate\tud@res@b{#1}{#2}%
        }{\tud@markup@list}%
        \ClassError{tudscrmanual}{Invalid entity found}{%
          The given entity `\expandafter\tud@markup@detokenize\tud@res@a'%
          \MessageBreak can not be used here, %
          \ifx\tud@res@b\@empty%
            no entities are valid.%
          \else%
            valid entities are: \tud@res@b%
          \fi%
        }%
        \aftergroup\@gobble%
      }%
    }{%
      \aftergroup\@gobble%
    }%
  \endgroup%
}
\newcommand*\Entity@Level@@@Validate[4]{%
  \begingroup%
    \edef\tud@res@a{\expandafter\expandafter\expandafter\@firstoftwo%
      \csname Entity@@Level@@#4\endcsname%
    }%
    \If@Entity@Level@Valid@TF{#2}{#3}{\tud@res@a}{%
      \def\tud@res@b{\MessageBreak\tud@markup@detokenize{#4}{...}}%
    }{%
      \let\tud@res@b\@empty%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\appto#1}{\expandonce\tud@res@b}%
    }%
  \tud@res@a%
}
\newcommand*\If@Entity@Level@Valid@TF[3]{%
  \begingroup%
    \@tud@res@swatrue%
    \ifnum\numexpr#1\relax>\numexpr#3\relax\@tud@res@swafalse\fi%
    \ifnum\numexpr#2\relax<\numexpr#3\relax\@tud@res@swafalse\fi%
    \if@tud@res@swa%
      \aftergroup\@firstoftwo%
    \else%
      \aftergroup\@secondoftwo%
    \fi%
  \endgroup%
}
\tud@auxlist@register*{tud@ety@declare}
\newrobustcmd*\Entity@Declare[3]{%
  \tud@auxlist@add{tud@ety@declare}{\noexpand\tud@ety@aux@declare{#1}{#2}{#3}}%
}
\newrobustcmd*\tud@ety@aux@declare[3]{%
  \begingroup%
    \tud@if@strequal{\tud@ety@gnrl}{#3}{%
      \def\tud@res@a{\tud@ety@gnrl}%
    }{%
      \def\tud@res@a{#3}%
    }%
    \ifcsundef{Entity@@Declared@@#1@#2}{%
      \csxdef{Entity@@Declared@@#1@#2}{\expandonce\tud@res@a}%
    }{%
      \csxappto{Entity@@Declared@@#1@#2}{,\expandonce\tud@res@a}%
    }%
  \endgroup%
}
\@onlypreamble\tud@ety@aux@declare
\NewDocumentCommand\DefaultEntity{m d'' m}{%
  \begingroup%
    \ifundef\Default@Entity@Parent{\let\Default@Entity@Parent\@empty}{}%
    \tud@if@markup{#1}{%
      \Markup@Main@Get\tud@res@a{#1}%
      \protected@edef\tud@res@b{#2}%
      \IfValueF{#2}{%
        \Markup@Split@Get\tud@res@c{\tud@res@a}%
        \def\tud@res@d##1##2{%
          \tud@if@strequal{Bundle}{##1}{\def\tud@res@b{CTAN:##2}}{}%
        }%
        \expandafter\tud@res@d\tud@res@c%
      }%
      \edef\tud@res@a{%
        \noexpand\Default@Entity{\expandonce\tud@res@a}'\expandonce\tud@res@b'%
      }%
      \tud@res@a{#3}%
    }{}%
  \endgroup%
}
\@onlypreamble\DefaultEntity
\GetDocumentCommandArgSpec\DefaultEntity
\expandafter\NewExpandableDocumentCommand\expandafter%
    \Default@@Entity\expandafter{%
  \ArgumentSpecification%
}{}
\NewDocumentCommand\Default@Entity{m r'' m}{%
  \tud@toks@{}%
  \protected@edef\tud@res@a{#3}%
  \@for\tud@res@a:=\tud@res@a\do{%
    \trim@spaces@in\tud@res@a%
    \ifx\tud@res@a\@empty\else%
      \begingroup%
        \let\DefaultEntity\Default@@Entity%
%% \GetDocumentCommandArgSpec\DefaultEntity
%% \expandafter\DeclareExpandableDocumentCommand\expandafter\DefaultEntity%
%%  \expandafter{\ArgumentSpecification}{}
        \protected@edef\tud@res@b{\tud@res@a}%
        \trim@spaces@in\tud@res@b%
        \def\tud@res@c##1##2##3\@nil{##2}%
        \protected@edef\tud@res@d{%
          \endgroup%
          \ifx\tud@res@b\@empty%
            \unexpanded{\addto@hook\tud@toks@}{%
              \begingroup%
                \unexpanded{\def\Default@Entity@Parent}{#1}%
                \expandonce\tud@res@a%
              \endgroup%
            }%
            \unexpanded{\def\tud@res@a}{%
              \expandafter\tud@res@c\tud@res@a\@nil%
            }%
          \fi%
        }%
      \tud@res@d%
      \tud@if@markup{\tud@res@a}{%
        \Markup@Main@Get\tud@res@a{\tud@res@a}%
        \Markup@Split@@Get\tud@res@b{\tud@res@a}%
        \edef\tud@res@c{\expandafter\@firstoftwo\tud@res@b}%
        \expandafter\Entity@Level@Validate\expandafter{\tud@res@c}{#1}{%
          \def\tud@res@d##1##2{##1@##2}%
          \edef\tud@res@d{Entity@@Default@@\expandafter\tud@res@d\tud@res@b}%
          \ifcsdef{\tud@res@d}{%
            \Entity@Level@Get\tud@res@c{\tud@res@c}%
            \ifnum\tud@res@c<\thr@@\relax%
              \ClassWarning{tudscrmanual}{%
                The default entity `\csuse{\tud@res@d}'\MessageBreak%
                for `\tud@res@a' is overwritten\MessageBreak%
                with `\detokenize{#1}'%
              }%
              \csgdef{\tud@res@d}{#1}%
            \else%
              \csgappto{\tud@res@d}{,#1}%
            \fi%
          }{%
            \csgdef{\tud@res@d}{#1}%
          }%
        }%
      }{}%
    \fi%
  }%
  \IfValueT{#2}{\DefaultEntityLink{#1}(\Default@Entity@Parent)'#2'}%
  \the\tud@toks@%
}
\NewDocumentCommand\DefaultEntityLink{m d() r''}{%
  \begingroup%
    \tud@if@markup{#1}{%
      \tud@specialurl@validate{#3}{%
        \begingroup%
          \Markup@Split@Get\tud@res@a{#1}%
          \protected@edef\tud@res@b{\IfValueTF{#2}{#2}{}}%
          \edef\tud@res@b{%
            \unexpanded{\Entity@Get\tud@res@b}%
            \ifx\tud@res@b\@empty\else(\expandonce\tud@res@b)\fi%
            \expandonce\tud@res@a%
          }%
          \tud@res@b%
          \edef\tud@res@b{%
            \unexpanded{\tud@lbl@@get\tud@lbl@tmp}{%
              \expandonce\tud@res@a(\expandonce\tud@res@b)%
            }%
          }%
          \tud@res@b%
          \edef\tud@res@a{Entity@@Link@@\tud@lbl@tmp}%
          \ifcsdef{\tud@res@a}{%
            \ClassWarning{tudscrmanual}{%
              The default URL '\csuse{\tud@res@a}'\MessageBreak%
              for `\detokenize{#1}' is overwritten\MessageBreak%
              with '#3'%
            }%
          }{}%
          \csxdef{\tud@res@a}{#3}%
        \endgroup%
      }%
    }{}%
  \endgroup%
}
\@onlypreamble\DefaultEntityLink
\NewDocumentCommand\Entity@Get{s m d() m m}{%
  \begingroup%
    \Parameter@Expandable%
    \Misc@Expandable%
    \letcs\tud@res@b{Entity@@Declared@@#4@#5}%
    \letcs\tud@res@c{Entity@@Default@@#4@#5}%
    \@tud@res@swafalse%
    \let\tud@res@a\@empty%
    \IfValueT{#3}{%
      \@tud@res@swatrue%
      \protected@edef\tud@res@d{#3}%
      \@for\tud@res@d:=\tud@res@d\do{%
        \trim@spaces@in\tud@res@d%
        \ifx\tud@res@d\@empty\else%
          \tud@if@strequal{!}{\tud@res@d}{%
            \let\tud@res@d\tud@ety@crnt%
          }{%
            \tud@if@strequal{*}{\tud@res@d}{%
              \ifundef\tud@res@c{%
                \let\tud@res@d\@empty%
                \ClassWarning{tudscrmanual}{%
                  There is no default entity for\MessageBreak%
                  `\tud@markup@detokenize{#4}{#5}'%
                }%
              }{%
                \let\tud@res@d\tud@res@c%
              }%
            }{}%
          }%
          \eappto\tud@res@a{%
            \ifx\tud@res@a\@empty\else,\fi\expandonce\tud@res@d%
          }%
        \fi%
      }%
    }%
    \ifx\tud@res@a\@empty%
      \if@tud@res@swa%
        \ClassWarning{tudscrmanual}{Setting an empty entity is not possible}%
        \@tud@res@swafalse%
      \fi%
      \let\tud@res@a\tud@ety@crnt%
    \fi%
    \let\tud@ety@found\@empty%
    \let\tud@ety@fallback\@empty%
    \ifnum\tud@declare@mode@num=\z@\relax%
      \let\tud@ety@valid\@empty%
      \ifundef\tud@res@b{}{\let\tud@ety@valid\tud@res@b}%
      \ifundef\tud@res@c{}{\eappto\tud@ety@valid{,\expandonce\tud@res@c}}%
      \@for\tud@res@d:=\tud@res@a\do{%
        \trim@spaces@in\tud@res@d%
        \ifx\tud@res@d\@empty\else%
          \protected@expandtwoargs\in@%
              {,\detokenize\expandafter{\tud@res@d},}%
              {,\detokenize\expandafter{\tud@ety@valid},}%
          \ifin@%
            \eappto\tud@ety@found{%
              \ifx\tud@ety@found\@empty\else,\fi\expandonce\tud@res@d%
            }%
          \else%
            \if@tud@res@swa%
              \ClassWarning{tudscrmanual}{%
                The entity `\detokenize\expandafter{\tud@res@d}'\MessageBreak%
                for `\tud@markup@detokenize{#4}{#5}' was never set%
              }%
              \eappto\tud@ety@fallback{%
                \ifx\tud@ety@fallback\@empty\else,\fi\expandonce\tud@res@d%
              }%
            \fi%
          \fi%
        \fi%
      }%
      \ifx\tud@ety@found\@empty%
        \ifundef\tud@res@b{%
          \ifundef\tud@res@c{}{\let\tud@ety@found\tud@res@c}%
        }{\let\tud@ety@found\tud@res@b}%
      \fi%
    \else%
      \let\tud@ety@found\tud@res@a%
      \if@tud@res@swa\else%
        \ifundef\tud@res@c{}{%
          \ifx\tud@ety@found\@empty%
            \let\tud@ety@found\tud@res@c%
          \fi%
          \ifx\tud@ety@found\tud@res@c\else%
            \ifnum\tud@declare@mode@num>\z@\relax%
              \ClassWarning{tudscrmanual}{%
                The entity for `\tud@markup@detokenize{#4}{#5}'\MessageBreak%
                should be given explicitly or by value:\MessageBreak%
                (*) for \tud@res@c\MessageBreak%
                (!) for \tud@ety@crnt%
              }%
            \fi%
          \fi%
        }%
      \fi%
    \fi%
    \let\tud@ety@valid\@empty%
    \@for\tud@res@d:=\tud@ety@found\do{%
      \trim@spaces@in\tud@res@d%
      \ifx\tud@res@d\@empty\else%
        \@tud@res@swafalse%
        \tud@if@strequal{\tud@ety@gnrl}{\tud@res@d}{%
          \@tud@res@swatrue%
          \def\tud@res@d{\tud@ety@gnrl}%
        }{%
          \Entity@Level@Validate{#4}{\tud@res@d}{%
            \@tud@res@swatrue%
            \Markup@Main@Get\tud@res@d{\tud@res@d}%
          }%
        }%
        \if@tud@res@swa%
          \protected@expandtwoargs\in@%
              {,\detokenize\expandafter{\tud@res@d},}%
              {,\detokenize\expandafter{\tud@ety@valid},}%
          \ifin@\else%
            \eappto\tud@ety@valid{%
              \ifx\tud@ety@valid\@empty\else,\fi\expandonce\tud@res@d%
            }%
          \fi%
        \fi%
      \fi%
    }%
    \ifx\tud@ety@fallback\@empty%
      \ifx\tud@ety@valid\@empty%
        \IfBooleanF{#1}{%
          \ifnum\tud@declare@mode@num>\m@ne\relax%
            \Entity@Level@Get\tud@res@a{#4}%
            \ifnum\tud@res@a>\@ne\relax%
              \ClassWarning{tudscrmanual}{%
                No entity could be found for\MessageBreak%
                `\tud@markup@detokenize{#4}{#5}'%
              }%
            \fi%
          \fi%
        }%
        \def\tud@ety@valid{\tud@ety@gnrl}%
      \fi%
    \else%
      \ifx\tud@ety@valid\@empty%
        \ClassWarning{tudscrmanual}{%
          No entity could be validated for\MessageBreak%
          `\tud@markup@detokenize{#4}{#5}', so using given\MessageBreak%
          `\expandonce\tud@ety@fallback' instead%
        }%
        \let\tud@ety@valid\tud@ety@fallback%
      \else%
        \ClassWarning{tudscrmanual}{%
          Valid entity `\expandonce\tud@ety@valid'\MessageBreak%
          found for `\tud@markup@detokenize{#4}{#5}', dropping\MessageBreak%
          `\expandonce\tud@ety@fallback'%
        }%
      \fi%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#2}{\expandonce\tud@ety@valid}%
    }%
  \tud@res@a%
}
\tud@newif\if@tud@ety@seek
\newcommand*\tud@ety@encountered{}
\NewDocumentCommand\Entity@Seek{d() m m m}{%
  \@tud@ety@seektrue%
  \let\tud@ety@encountered\@empty%
  \@whilesw\if@tud@ety@seek\fi{%
    \Entity@@Seek(#1){#2}{#3}{#4}%
  }%
}
\NewDocumentCommand\Entity@@Seek{d() m m m}{%
  \begingroup%
    \tud@declare@mode@num=\z@\relax%
    \if@tud@ety@seek%
      \IfValueTF{#1}{%
        \protected@edef\tud@res@a{#1}%
      }{%
        \Entity@Get*\tud@res@a{#2}{#3}%
      }%
      \tud@if@strequal{\tud@ety@gnrl}{\tud@res@a}{\let\tud@res@a\@empty}{}%
      \ifx\tud@res@a\@empty\else%
        \protected@expandtwoargs\in@{,}{\tud@res@a}%
        \ifin@%
          \ClassWarning{tudscrmanual}{%
            Multiple entities for `\tud@markup@detokenize{#2}{#3}'\MessageBreak%
            (\tud@res@a),\MessageBreak%
            resolution was not successful%
          }%
          \let\tud@res@a\@empty%
        \else%
          \Markup@Split@Get\tud@res@b{\tud@res@a}%
        \fi%
      \fi%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \if@tud@ety@seek%
        \ifx\tud@res@a\@empty%
          \noexpand\@tud@ety@seekfalse%
        \else%
          \unexpanded{\def\tud@ety@encountered}{\expandonce\tud@res@a}%
          \unexpanded{#4}%
          \noexpand\Entity@@Seek\expandonce\tud@res@b{\unexpanded{#4}}%
        \fi%
      \fi%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Entity@Link@Get{m m}{%
  \tud@truncate@value#1{#2}%
  \letcs#1{Entity@@Link@@#1}%
  \ifundef#1{\let#1\@empty}{}%
}
\NewDocumentCommand\Entity@Link@Seek{m d'' d<> d() m m}{%
  \begingroup%
    \let\tud@res@a\@empty%
    \@tud@res@swatrue%
    \Entity@Level@Get\tud@res@d{#5}%
    \ifnum\tud@res@d>\tw@\relax%
      \IfValueF{#2}{\@tud@res@swafalse}%
    \fi%
    \if@tud@res@swa%
      \IfValueT{#3}{\Entity@Link@Get\tud@res@a{#3}}%
      \ifx\tud@res@a\@empty%
        \def\tud@res@b{{#5}{#6}}%
        \Entity@Seek(#4){#5}{#6}{%
          \Entity@Link@@Seek\tud@res@a{\tud@res@b}{\tud@ety@encountered}%
          \Markup@Split@@Get\tud@res@b{\tud@ety@encountered}%
        }%
        \ifx\tud@res@a\@empty%
          \Entity@Link@@Seek\tud@res@a{\tud@res@b}{\tud@ety@gnrl}%
        \fi%
      \fi%
      \IfValueT{#2}{%
        \tud@if@strequal{*}{#2}{%
          \ifx\tud@res@a\@empty%
            \ClassWarning{tudscrmanual}{%
              There is no default link for\MessageBreak%
              `\tud@markup@detokenize{#5}{#6}'%
            }%
          \fi%
        }{%
          \ifx\tud@res@a\@empty%
            \tud@specialurl@validate{#2}{\edef\tud@res@a{#2}}%
          \else%
            \ClassWarning{tudscrmanual}{%
              The special link '#2' was not used as\MessageBreak%
              a default one '\tud@res@a'\MessageBreak exists%
            }%
          \fi%
        }%
      }%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\tud@res@a}%
    }%
  \tud@res@a%
}
\newcommand*\Entity@Link@@Seek[3]{%
  \expandafter\tud@lbl@@get\expandafter#1\expandafter{#2(#3)}%
  \Entity@Link@Get#1{#1}%
  \ifx#1\@empty\else\@tud@ety@seekfalse\fi%
}
\newcommand*\tud@lbl@tmp{}
\NewDocumentCommand\tud@lbl@get{m m}{%
  \begingroup%
    \Markup@Inner@Get\tud@res@a{#2}%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\tud@lbl@@get#1}{\expandonce\tud@res@a}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@lbl@@get{m m}{%
  \begingroup%
    \tud@lbl@@@get#2%
    \protected@edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\tud@lbl@tmp}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@lbl@@@get{o m m d// d== o d|| d'' r()}{%
  \begingroup%
    \protected@edef\tud@res@a{#9}%
    \ifx\tud@res@a\tud@ety@gnrl\else%
      \let\tud@res@b\@empty%
      \def\tud@res@c##1##2\@nil{%
        \ifx\tud@res@b\@empty\else%
          \appto\tud@res@b{+}%
        \fi%
        \appto\tud@res@b{##1(##2)}%
      }%
      \@for\tud@res@d:=\tud@res@a\do{%
        \trim@spaces@in\tud@res@d%
        \ifx\tud@res@d\@empty\else%
          \Markup@Split@Get\tud@res@d{\tud@res@d}%
          \expandafter\tud@res@c\tud@res@d\@nil%
        \fi%
      }%
      \ifx\tud@res@b\@empty%
        \let\tud@res@a\tud@ety@gnrl%
      \else%
        \let\tud@res@a\tud@res@b%
      \fi%
    \fi%
    \let\Logo\@firstofone%
    \def~{\space}%
    \def\nobreakspace{\space}%
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
\newcommand*\tud@if@lbl@exists[3]{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\ifcsundef{r@#1}%
    }%
  \tud@res@a{#3}{#2}%
}
\newcommand*\tud@lbl@alias@values{}
\tud@auxlist@register(\detokenize\expandafter){tud@lbl@alias}
\NewDocumentCommand\tud@lbl@declare{s d'' d== m}{%
  \begingroup%
    \protected@edef\tud@res@a{#4}%
    \tud@truncate@value\tud@res@c{\tud@res@a}%
    \IfValueTF{#3}{%
      \protected@edef\tud@res@b{#3}%
      \tud@if@strequal{\PBoolean}{\tud@res@b}{%
        \preto\tud@lbl@alias@values{true,false,}%
      }{}%
      \ifnum\tud@declare@label@mode@num=\tw@\relax\else%
        \tud@if@param@special{\tud@res@b}{%
          \let\tud@res@a\tud@res@c%
          \protected@epreto\tud@lbl@alias@values{\tud@res@b,}%
        }{}%
      \fi%
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
        \trim@spaces@in\tud@res@a%
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
            \tud@unique@eadd\tud@res@b{\expandonce\tud@res@a}%
          }{}%
        \fi%
      }%
      \edef\tud@res@a{%
        \endgroup%
        \unexpanded{\def\tud@res@b}{\expandonce\tud@res@b}%
      }%
    \tud@res@a%
%%    \def\tud@res@a##1:##2:##3\@nil{\tud@hypertarget{##3:##2:##3}}%
%%    \expandafter\tud@res@a\tud@lbl@tmp\@nil%
    \tud@auxlist@remove{tud@lbl@alias}{\tud@res@a}%
    \tud@hypertarget{#1}'#2'<\tud@res@b>{\tud@res@a}%
  \endgroup%
}
\NewDocumentCommand\tudmarkuplabel{o m}{%
  \if@tud@sec%
    \begingroup%
      \def\tud@res@a{\endgroup}%
      \let\tud@res@b\@empty%
      \def\tud@res@c{#2}%
      \IfValueT{#1}{%
        \eappto\tud@res@a{\noexpand\label{#1}}%
        \edef\tud@res@b{#1}%
      }%
      \@for\tud@res@c:=\tud@res@c\do{%
        \trim@spaces@in\tud@res@c%
        \tud@if@markup{\tud@res@c}{%
          \tud@lbl@get\tud@lbl@tmp{\tud@res@c}%
          \ifx\tud@res@b\@empty%
            \edef\tud@res@b{\tud@lbl@tmp}%
          \else%
            \eappto\tud@res@a{%
              \noexpand\HyperDestRename{\tud@lbl@tmp}{\tud@res@b}%
            }%
          \fi%
          \eappto\tud@res@a{\noexpand\tud@lbl@declare*{\tud@lbl@tmp}}%
        }{}%
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
\tud@addtocontents@special*{\let\tudmarkuplabel\@tudmarkuplabel}
\newcommand*\tud@idx@robustify{%
  \robustify\nobreakspace%
  \robustify{\dots}%
  \robustify{\_}%
  \robustify\texttt%
  \robustify\emph%
}
\newcommand\Process@Output[1]{#1}
\NewDocumentCommand\Process@Invalid@Arg{m m}{%
  \ClassWarning{tudscrmanual}%
    {Using #1 with #2\MessageBreak is not possible}%
}
\NewDocumentCommand\Process@Markup{o m m d// d== o r|| r'' r()}{%
  \begingroup%
    \tud@idx@robustify%
    \tud@toks@{\Process@@Markup[#1]{#2}{#3}/#4/=#5=[{#6}]|#7|'#8'}%
    \def\tud@res@b{\Entity@Get}%
    \IfBooleanT{#1}{%
      \IfValueT{#7}{\Process@Invalid@Arg{starred markup}{|#7|}}%
      \IfValueT{#8}{\Process@Invalid@Arg{starred markup}{'#8'}}%
      \ifnum\tud@declare@mode@num=\z@\relax%
        \appto\tud@res@b{*}%
      \fi%
    }%
    \tud@res@b\tud@res@a(#9){#2}{#3}%
    \addto@hook@expandafter\tud@toks@{\expandafter(\tud@res@a)}%
    \edef\tud@res@a{%
      \endgroup%
      \the\tud@toks@%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Process@@Markup{o m m r// r== r[] r|| r'' r()}{%
  \begingroup%
    \tud@idx@robustify%
    \def\tud@res@a{#9}%
    \let\tud@res@b\@empty%
    \def\tud@res@c##1##2{\listadd\tud@res@b{<##1>(##2)}}%
    \ifnum\tud@declare@mode@num>\m@ne\relax%
      \protected@expandtwoargs\in@{,}{#9}%
      \ifin@%
        \tud@lbl@@get\tud@lbl@tmp{{#2}{#3}/#4/=#5=(#9)}%
        \expandafter\tud@res@c\expandafter{\tud@lbl@tmp}{#9}%
      \fi%
    \fi%
    \@for\tud@res@d:=\tud@res@a\do{%
      \tud@lbl@@get\tud@lbl@tmp{{#2}{#3}/#4/=#5=(\tud@res@d)}%
      \protected@edef\tud@res@d{%
        \unexpanded{\Process@Index[{#1}]{#2}{#3}/#4/=#5=[{#6}]|#7|}%
            (\expandonce\tud@res@d)<\tud@lbl@tmp>%
        \noexpand\tud@res@c{\tud@lbl@tmp}{\expandonce\tud@res@d}%
      }%
      \tud@res@d%
    }%
    \let\tud@res@a\@empty%
    \ifnum\tud@declare@mode@num>\m@ne\relax
      \def\tud@res@a{\@firstofone}%
      \let\tud@res@c\@empty%
      \ifnum\tud@declare@mode@num=\z@\relax%
        \def\tud@res@d{output}%
        \IfBooleanF{#1}{%
          \if@tud@sec%
            \IfValueT{#8}{\Process@Invalid@Arg{a heading}{'#8'}}%
          \else%
            \Markup@Inline@Wrapper\tud@res@a{#2}{#3}'#8'{\tud@res@b}%
          \fi%
        }%
      \else%
        \def\tud@res@d{declare}%
        \IfValueT{#7}{\Process@Invalid@Arg{a declaration}{|#7|}}%
        \ifnum\tud@declare@mode@num=\@ne\relax%
          \IfValueT{#8}{\Process@Invalid@Arg{a declaration environment}{'#8'}}%
        \else%
          \if@tud@markup@output%
            \tud@res@cnt=\@ne%
            \IfValueT{#8}{\tud@reference@num@get\tud@res@cnt{#8}}%
            \ifnum\tud@res@cnt>\z@\relax%
              \ifnum\tud@res@cnt>\tw@\relax%
                \Process@Invalid@Arg{an inline declaration}{'#8'}%
              \else%
                \Entity@Link@Seek\tud@res@c'#8'{#2}{#3}%
                \tud@specialurl@wrapper\tud@res@a{\tud@res@c}%
              \fi%
            \fi%
          \fi%
        \fi%
        \edef\tud@res@c{%
          \noexpand\Process@@@Markup@Declare{\expandonce\tud@res@b}%
          \ifx\tud@res@c\@empty\else'\tud@res@c'\fi%
        }%
        \tud@res@c{#2}{#3}/#4/=#5=[{#6}]|#7|'#8'%
      \fi%
      \Markup@Output@Get\tud@res@b{#2}{#3}/#4/=#5=[{#6}]%
      \eappto\tud@res@a{{\expandonce\tud@res@b}}%
      \tud@trace@markup@add{\tud@res@d}{\expandonce\tud@res@a}%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\Process@Output{\if@tud@markup@output\expandonce\tud@res@a\fi}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Process@@@Markup@Declare{m d'' m m r// r== r[] r|| r''}{%
  \begingroup%
    \def\do##1{\tud@res@d##1\@nil}%
    \def\tud@res@d<##1>(##2)\@nil{%
      \ifnum\tud@declare@label@mode@num>\z@\relax%
        \tud@lbl@declare'#2'=#6={##1}%
      \fi%
      \protected@expandtwoargs\in@{,}{##2}%
      \ifin@%
        \listgadd\tud@declare@result@list{{}{##1}}%
      \else%
        \Entity@Declare{#3}{#4}{##2}%
        \listgadd\tud@declare@result@list{%
          {{#3}{#4}/#5/=#6=[{#7}]|#8|'#9'(##2)}%
          {##1}%
        }%
      \fi%
    }%
    \dolistloop{#1}%
  \endgroup%
}
\newcommand*\tud@reference@num@get[2]{%
  \begingroup%
    \TUD@set@numkey{}{tud@res@a}{%
      \TUD@bool@numkey,{}{0},{simple}{1},{plain}{1},{basic}{1},{*}{2},
      {auto}{3},{ref}{3},{autoref}{3},{auto*}{4},{ref*}{4},{autoref*}{4},%
      {full}{5},{fullref}{5},{full*}{6},{fullref*}{6},%
      {page}{7},{pageref}{7},{vpage}{7},{vpageref}{7},%
    }{#2}%
    \ifx\FamilyKeyState\FamilyKeyStateProcessed\else%
      \tud@specialurl@validate{#2}{%
        \def\tud@res@a{2}%
        \FamilyKeyStateProcessed%
      }%
    \fi%
    \ifx\FamilyKeyState\FamilyKeyStateProcessed\else%
      \ClassWarning{tudscrmanual}{%
        The cross-reference '#2'\MessageBreak%
        is unknown. Only '[auto]ref' or 'full[ref]' and\MessageBreak%
        '[v]page[ref]' as well as '' or booleans are\MessageBreak%
        valid. Besides, 'CTAN[info]:<pkg>' or 'GH:<repo>'\MessageBreak%
        and 'URL:<url>' can be used%
      }%
      \def\tud@res@a{0}%
      \FamilyKeyStateProcessed%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{#1=}\tud@res@a\relax%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Markup@Inline@Wrapper{m m m r'' m}{%
  \begingroup%
    \let\tud@output@wrapper\relax%
    \tud@res@cnt=\@ne%
    \IfValueT{#4}{%
      \tud@reference@num@get\tud@res@cnt{#4}%
      \ifnum\tud@res@cnt=\z@\relax%
        \def\tud@output@wrapper{\@firstofone}%
      \fi%
    }%
    \protected@edef\tud@res@c{\noexpand\dolistloop{\expandonce#5}}%
    \let\tud@lbl@found\relax%
    \let\tud@res@a\@empty%
    \let\tud@res@b\@empty%
    \def\do##1{\tud@res@d##1\@nil}%
    \def\tud@res@d<##1>(##2)\@nil{%
      \ifnum\tud@res@cnt=\z@\relax%
        \tud@trace@lbl@add{ignored}{##1}%
      \else%
        \protected@edef\tud@lbl@tmp{##1}%
        \tud@if@lbl@exists{\tud@lbl@tmp}{}{%
          \tud@truncate@value\tud@lbl@tmp{\tud@lbl@tmp}%
          \tud@if@lbl@exists{\tud@lbl@tmp}{}{%
            \let\tud@lbl@tmp\@empty%
          }%
        }%
        \ifx\tud@lbl@found\relax%
          \let\tud@lbl@found\tud@lbl@tmp%
          \def\tud@res@a{<##1>(##2)}%
        \else%
          \ifx\tud@lbl@tmp\@empty\else%
            \tud@trace@lbl@add{ignored}{\tud@lbl@tmp}%
            \appto\tud@res@b{\MessageBreak\@spaces{##2}}%
          \fi%
        \fi%
      \fi%
    }%
    \tud@res@c%
    \ifx\tud@lbl@found\@empty%
      \ifx\tud@res@b\@empty\else%
        \def\tud@output@wrapper{\@firstofone}%
        \ClassWarning{tudscrmanual}{%
          A specific entity (single or valid combination) is\MessageBreak%
          needed for `\tud@markup@detokenize{#2}{#3}'%
          \tud@res@b%
        }%
      \fi%
    \fi%
    \ifx\tud@output@wrapper\relax%
      \edef\tud@res@c{%
        \noexpand\Markup@Inline@@Wrapper<\expandonce\tud@lbl@found>%
          {\the\tud@res@cnt}%
          \ifnum\tud@res@cnt>\@ne'#4'\fi%
          \expandonce\tud@res@a%
          \unexpanded{{#2}{#3}}%
      }%
      \tud@res@c%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@output@wrapper}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Markup@Inline@@Wrapper{r<> m d'' r<> d() m m}{%
  \begingroup%
    \def\tud@lbl@found{#1}%
    \ifx\tud@lbl@found\@empty%
      \let\tud@res@a\@empty%
      \ifnum\tud@res@cnt>\tw@\relax%
        \ClassWarning{tudscrmanual}{%
          A cross-reference was not created as label\MessageBreak%
          `#4' does not exist%
        }%
      \else%
        \Entity@Link@Seek\tud@res@a'#3'<#4>(#5){#6}{#7}%
      \fi%
      \tud@specialurl@wrapper\tud@output@wrapper{\tud@res@a}%
      \ifx\tud@res@a\@empty%
        \tud@trace@lbl@add{missing}{#4}%
      \else%
        \tud@trace@lbl@add{missing}[{\tud@res@a}]{#4}%
      \fi%
    \else%
      \let\tud@res@a\@empty% simple/link
      \ifcase#2\relax\or\or% link
        \ClassWarning{tudscrmanual}{%
          As label `#4'\MessageBreak%
          exists, link '#3' is ignored%
        }%
      \or% autoref
        \def\tud@res@a{in \autoref}%
      \or% autoref*
        \def\tud@res@a{aus \autoref}%
      \or% fullref
        \def\tud@res@a{in \fullref}%
      \or% fullref*
        \def\tud@res@a{aus \fullref}%
      \or% page
        \def\tud@res@a{\vpageref}%
      \fi%
      \tud@truncate@value\tud@lbl@tmp{\tud@lbl@found}%
      \xifinlist{\tud@lbl@tmp}{\tud@declaration@label@list}{%
        \def\tud@res@b{\@swaptwoargs}%
      }{%
        \edef\tud@res@b{\noexpand\tud@hyperlink{\tud@lbl@found}}%
      }%
      \edef\tud@output@wrapper{%
        \expandonce\tud@res@b{%
          \ifx\tud@res@a\@empty\else%
            \space\expandonce\tud@res@a{\tud@lbl@found}%
          \fi%
        }%
      }%
      \tud@if@strequal{\tud@lbl@found}{#4}{%
        \tud@trace@lbl@add{matched}{\tud@lbl@found}%
      }{%
        \tud@trace@lbl@add{matched}[{#4}]{\tud@lbl@found}%
      }%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def\tud@output@wrapper}{\expandonce\tud@output@wrapper}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Markup@Output@Get{m m >{\AP@Underscore}m r// r== r[]}{%
  \begingroup%
    \IfValueTF{#4}{%
      \def\tud@res@a{KeyVal@Parameter}%
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
    \ifcsundef{\tud@res@b}{%
      \ClassError{tudscrmanual}{Internal error}{%
        `\@backslashchar\tud@res@b' was never defined.%
      }%
      \let\tud@res@a\@empty%
    }{%
      \edef\tud@res@a{%
        \expandafter\noexpand\csname\tud@res@b\endcsname%
          {\tud@res@c}\unexpanded{=#5=[{#6}]}%
      }%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@res@a}%
    }%
  \tud@res@a%
}
\GetDocumentCommandArgSpec\Process@Markup% o m m d// d== o r|| r'' r()
\expandafter\NewDocumentCommand\expandafter\Process@Simple@Markup\expandafter{%
  \ArgumentSpecification%
}{%
  \begingroup%
    \tud@declare@mode@num=\z@%
    \Markup@Output@Get\tud@res@a{#2}{#3}/#4/=#5=[{#6}]%
    \edef\tud@res@a{%
      \endgroup%
      \expandonce\tud@res@a%
    }%
  \tud@res@a%
}
\tud@outputpage@special{\let\Process@Markup\Process@Simple@Markup}
\BeforeStartingTOC{\let\Process@Markup\Process@Simple@Markup}
\NewDocumentCommand\Markup@Inner@Get{s m m}{%
  \begingroup%
    \IfBooleanTF{#1}{%
      \let\Process@Markup\Markup@Inner@@Get%
    }{%
      \let\Process@@Markup\Markup@Inner@@Get%
    }%
    \tud@if@markup*{#3}{%
      #3%
    }{%
      \ClassError{tudscrmanual}{Internal error}{%
        `\detokenize{#3}' is no markup command!%
      }%
      \Bundle{unknown}%
    }%
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
  \tud@if@nil{#9}{}{\IfValueT{#9}{%
    \tud@if@strequal{\tud@ety@gnrl}{#9}{}{\appto\tud@res@a{(#9)}}%
  }}%
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
    \Markup@Main@Ignore{#4}{//}{#2}{#3}%
    \Markup@Main@Ignore{#5}{==}{#2}{#3}%
    \Markup@Main@Ignore{#6}{[]}{#2}{#3}%
  \fi%
  \addto@hook@expandafter\tud@toks@{\expandafter{\tud@res@b}}%
  \tud@if@nil{#7}{}{\Markup@Main@Ignore{#7}{||}}{#2}{#3}%
  \tud@if@nil{#8}{}{\Markup@Main@Ignore{#8}{''}}{#2}{#3}%
  \tud@if@nil{#9}{}{\Markup@Main@Ignore{#9}{()}}{#2}{#3}%
}
\newcommand*\Markup@Main@Ignore[4]{%
  \IfValueT{#1}{%
    \ClassWarning{tudscrmanual}{%
      \tud@markup@detokenize{#3}{#4} ignoring argument\MessageBreak%
      \@firstoftwo#2#1\@secondoftwo#2%
    }%
  }%
}
\NewDocumentCommand\Markup@Split@Get{s m m}{%
  \begingroup%
    \IfBooleanT{#1}{\let\Markup@Main@Ignore\@gobblefour}%
    \Markup@Main@Get\tud@res@a{#3}%
    \Markup@Split@@Get\tud@res@a{\tud@res@a}%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#2}{\expandonce\tud@res@a}%
    }%
  \tud@res@a%
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
\NewDocumentCommand\If@Markup@Key@TF{o m}{%
  \begingroup%
    \protected@edef\tud@res@a{#2}%
    \expandafter\@Markup@Check\tud@res@a%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\@Markup@@Check{\expandonce\tud@chk@key}{#1}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\If@Markup@Value@TF{o m}{%
  \begingroup%
    \protected@edef\tud@res@a{#2}%
    \IfValueTF{#1}{%
      \let\tud@res@b\@empty%
      \def\do##1{%
        \def\tud@res@c{##1}%
        \PValue@Enfold\tud@res@c%
        \eappto\tud@res@b{\expandonce\tud@res@c,}%
        \def\tud@res@c{##1}%
        \PValue@Enfold*\tud@res@c%
        \eappto\tud@res@b{\expandonce\tud@res@c,}%
      }%
      \docsvlist{#1}%
    }{%
      \def\tud@res@b{#1}%
    }%
    \expandafter\@Markup@Check\tud@res@a%
    \protected@edef\tud@res@a{%
      \endgroup%
      \noexpand\@Markup@@Check{\expandonce\tud@chk@val}{\expandonce\tud@res@b}%
    }%
  \tud@res@a%
}
\newcommand*\tud@chk@key{}
\newcommand*\tud@chk@val{}
\GetDocumentCommandArgSpec\Process@Markup% o m m d// d== o r|| r'' r()
\expandafter\NewDocumentCommand\expandafter\@Markup@Check\expandafter{%
  \ArgumentSpecification%
}{%
  \def\tud@chk@key{#4}%
  \def\tud@chk@val{#5}%
}
\NewDocumentCommand\@Markup@@Check{m m}{%
  \begingroup%
    \@tud@res@swafalse%
    \IfValueTF{#1}{%
      \IfValueTF{#2}{%
        \def\do##1{%
          \tud@if@strequal{#1}{\trim@spaces{##1}}{%
            \@tud@res@swatrue%
            \listbreak%
          }{}%
        }%
        \docsvlist{#2}%
      }{%
        \@tud@res@swatrue%
      }%
    }{}%
    \if@tud@res@swa%
      \aftergroup\@firstoftwo%
    \else%
      \aftergroup\@secondoftwo%
    \fi%
  \endgroup%
}
\NewDocumentCommand\Markup@Replace{s m d== o d|| d'' m}{%
  \begingroup%
    \protected@edef\tud@res@a{#7}%
    \GetDocumentCommandArgSpec\Process@Markup% o m m d// d== o r|| r'' r()
    \expandafter\DeclareDocumentCommand\expandafter\tud@res@b\expandafter{%
      \ArgumentSpecification%
    }{%
      \tud@toks@{[{##1}]{##2}{##3}/##4/}%
      \Markup@@Replace{#1}{==}{#3}{##5}%
      \Markup@@Replace{#1}{[]}{#4}{##6}%
      \Markup@@Replace{#1}{||}{#5}{##7}%
      \Markup@@Replace{#1}{''}{#6}{##8}%
      \addto@hook\tud@toks@{(##9)}%
    }%
    \expandafter\tud@res@b\tud@res@a%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#2}{\the\tud@toks@}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Markup@@Replace{m m m m}{%
  \begingroup%
    \tud@if@nil{#3}{%
      \def\tud@res@a{\@nil}%
    }{%
      \def\tud@res@a{#4}%
      \IfValueT{#3}{%
        \IfBooleanTF{#1}{%
          \IfValueF{#4}{\def\tud@res@a{#3}}%
        }{%
          \def\tud@res@a{#3}%
        }%
      }%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\addto@hook\tud@toks@}{%
        \@firstoftwo#2\expandonce\tud@res@a\@secondoftwo#2%
      }%
    }%
  \tud@res@a%
}
\NewDocumentEnvironment{Declaration}{m d== d() d<> o}{%
  \tud@declare@start[{#5}]{#1}=#2=[track](#3)<#4>%
}{%
  \tud@declare@end{#1}[]%
}
\NewDocumentEnvironment{Declaration*}{m d() d<>}{%
  \tud@declare@start{#1}[index=false,label=false](#2)<#3>%
}{%
  \tud@declare@end{#1}[index=false]%
}
\newcommand*\tud@cessations@version{}
\AtBeginDocument{\undef\tud@cessations@version}
\NewDocumentEnvironment{Cessations}{m !o}{%
  \ifundef\tud@cessations@version{%
    \def\tud@cessations@version{#1}%
    \tud@v@validate{\tud@cessations@version}%
  }{%
    \ClassError{tudscrmanual}{Nested environment `Cessations'}{%
      The environment `Cessations' must not be nested!%
    }%
    \undef\tud@cessations@version%
  }%
  \ifundef\tud@cessations@version{}{%
    \begingroup%
      \edef\tud@res@a{%
        \unexpanded{Anpassungen f\"ur \TUDScript}\tud@cessations@version%
      }%
      \edef\tud@lbl@tmp{sec:cessations:\tud@cessations@version}%
      \edef\tud@res@b{%
        \noexpand\index[{changes-\tud@cessations@version}]{%
          ""@Allgemein:\space\noexpand\hyperref[\tud@lbl@tmp]{%
            \unexpanded{Anpassungen gegen\"uber der vorhergehenden Version}%
          }%
        }%
      }%
      \let\tud@res@c\@empty%
      \IfValueT{#2}{%
        \def\tud@res@d##1{%
          \eappto\tud@res@c{\tud@cessations@version:}%
          \appto\tud@res@c{##1;}%
        }%
        \forssvlist{\tud@res@d}{#2}%
        \edef\tud@res@c{\noexpand\ChangedAt*{\expandonce\tud@res@c}}%
      }%
      \edef\tud@res@d{%
        \endgroup%
        \noexpand\subsection[nonumber=true]%[tocentry=\expandonce\tud@res@a]
        {%
          \expandonce\tud@res@a%
          \noexpand\label{\tud@lbl@tmp}%
          \expandonce\tud@res@b%
          \expandonce\tud@res@c%
        }%
      }%
    \tud@res@d%
  }%
}{}
\NewDocumentEnvironment{Cessation}{m d() D<>{}}{%
  \ifx\tud@cessations@version\relax%
    \ClassError{tudscrmanual}{Missing environment `Cessations'}{%
      The environment `Cessation' must be used\MessageBreak%
      within environment `Cessations'!%
    }%
    \edef\tud@cessations@version{\vTUDScript}%
  \fi%
  \begingroup%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@declare@start*[{\tud@cessations@version}]%
    }%
  \tud@res@a{#1}[track,index=false](#2)<#3>%
}{%
  \tud@declare@end{#1}[index=false]%
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
\TUD@key[.declare]{index}[true]{%
  \TUD@set@ifkey{index}{@tempswa}{#1}%
  \if@tempswa%
    \tud@index@mode@num=\@ne\relax%
  \else%
    \tud@index@mode@num=\m@ne\relax%
  \fi%
}
\tud@newcount\tud@declare@label@mode@num
\TUD@key[.declare]{label}[true]{%
  \TUD@set@numkey{label}{@tempa}{%
    \TUD@bool@numkey,{alias}{1},{noalias}{2}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \tud@declare@label@mode@num=\@tempa\relax%
  \fi%
}
\tud@newif\if@tud@markup@output\@tud@markup@outputtrue
\TUD@key[.declare]{output}[true]{%
  \TUD@set@ifkey{output}{@tud@markup@output}{#1}%
}
\tud@newif\if@tud@declare@track
\TUD@key[.declare]{track}[true]{%
  \TUD@set@ifkey{track}{@tud@declare@track}{#1}%
}
\newcommand*\tud@declare@process@list{}
\newcommand*\tud@declare@result@list{}
\NewDocumentCommand\tud@@declare{s m}{%
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
\NewDocumentCommand\tud@declare@open{m D=={} r[]}{%
  \let\tud@declare@result@list\@empty%
  \begingroup%
    \tud@@declare{#3}%
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
    \tud@@declare*{#2}%
    #1%
  \endgroup%
}
\NewDocumentCommand\tud@declare@start{%
  s o m d== r[] >{\AP@PresetParser}r() r<>%
}{%
  \begingroup%
    \tud@toks@{}%
    \def\tud@res@c{\endgroup}%
    \Entity@Level@@Validate{3}{3}{#3}{%
      \IfValueT{#2}{%
        \tud@ref@get\tud@res@a{\IfBooleanTF{#1}{discontinued}{new}}%
          {\IfValueTF{#7}{#7}{}}{|\@nil|'\@nil'}%
        \edef\tud@res@a{[{#1}]:\expandonce\tud@res@a:{\unexpanded{#2}}}%
        \addto@hook@expandafter\tud@toks@{\expandafter[\tud@res@a]}%
      }%
      \IfValueT{#6}{\addto@hook\tud@toks@{(#6)}}%
      \IfValueT{#7}{%
        \tud@ref@get\tud@res@a{\IfBooleanTF{#1}{discontinued}{see}}%
          {#7}{||'page'}%
        \addto@hook@expandafter\tud@toks@{\expandafter<\tud@res@a>}%
      }%
      \addto@hook\tud@toks@{{\tud@declare@open{#3}=#4=[{#5}]}}%
      \eappto\tud@res@c{%
        \unexpanded{\listadd\tud@declare@process@list}{{\the\tud@toks@}}%
      }%
    }%
  \tud@res@c%
  \let\printdeclarationlist\tud@print@declarationlist%
}
\NewDocumentCommand\tud@declare@end{m r[]}{%
  \ifvmode\else\@killglue\fi%
  \tud@declare@check%
  \tud@declare@close{#1}[{#2}]%
  \par%
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
            \preto\tud@res@b{\txb####1:\space}%
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
\newcommand*\tud@declaration@inner@list{}
\newcommand*\tud@declaration@label@list{}
\newcommand*\printdeclarationlist{}
\AtBeginDocument{\undef\printdeclarationlist}
\newcommand*\tud@declare@check{%
  \ifundef\printdeclarationlist{}{%
    \ClassError{tudscrmanual}{\string\printdeclarationlist\space missing}{%
      The command \string\printdeclarationlist\space must\MessageBreak%
      be used right after the last declaration environment.%
    }%
    \gundef\printdeclarationlist%
    \global\let\tud@declaration@inner@list\@empty%
  }%
}
\newcommand\Process@@Output{}
\NewDocumentCommand\tud@print@declarationlist{!o !+d()}{%
  \tud@setglue\tud@res@glue{\medskipamount*3/2}%
  \ifhmode%
    \vskip\tud@res@glue%
  \else%
    \addpenalty{\@beginparpenalty}%
    \addvspace{\tud@res@glue}%
  \fi%
  \noindent\null%
  \begingroup%
    \let\tud@res@a\@empty%
    \let\tud@res@b\@empty%
    \def\do##1{\tud@declare@process@eval\tud@res@a\tud@res@b##1}%
    \dolistloop{\tud@declare@process@list}%
    \sbox\z@{%
      \begin{tabular}[t]{|l|@{}l@{}l@{}}%
        \cline{1-1}\noalign{\vskip\arrayrulewidth}%
        \tud@res@a%
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
    \edef\tud@res@c{%
      \endgroup%
      \expandonce\tud@res@b%
      \noexpand\tud@print@changedatlist[-\arrayrulewidth]%
    }%
  \tud@res@c%
  \gundef\printdeclarationlist%
  \par\nobreak%
  \vskip\glueexpr\medskipamount\relax%
  \@afterindentfalse\@afterheading%
}
\NewDocumentCommand\tud@declare@process@eval{m m o d() d<> m}{%
  \begingroup%
    \let\tud@res@a\@empty%
    \def\Process@Output##1{\gdef\Process@@Output{##1}}%
    #6%
    \ifx\Process@@Output\@empty\else%
      \edef\tud@res@a{\expandonce\Process@@Output&}%
      \global\let\Process@@Output\@empty%
      \IfValueT{#4}{%
        \appto\tud@res@a{\hskip.75em\relax\small\ignorespaces#4}%
      }%
      \appto\tud@res@a{&}%
      \IfValueT{#5}{%
        \appto\tud@res@a{\hskip.75em\relax\small\ignorespaces#5}%
      }%
      \appto\tud@res@a{\tabularnewline}%
    \fi%
    \let\tud@res@b\@empty%
    \def\do##1{\tud@declare@result@eval\tud@res@b[{#3}]##1}%
    \dolistloop{\tud@declare@result@list}%
    \edef\tud@res@c{%
      \endgroup%
      \unexpanded{\appto#1}{\expandonce\tud@res@a}%
      \unexpanded{\appto#2}{\expandonce\tud@res@b}%
    }%
  \tud@res@c%
}
\NewDocumentCommand\tud@declare@result@eval{m o m m}{%
  \IfValueT{#2}{\tud@chg@appto#1#2{#3}{#4}}%
  \if@tud@declare@track%
    \tud@truncate@value\tud@lbl@tmp{#4}%
    \eappto#1{%
      \unexpanded{\listadd\tud@declaration@label@list}{\tud@lbl@tmp}%
    }%
    \appto#1{\listadd\tud@declaration@inner@list{#3}}%
  \fi%
}
\NewDocumentCommand\tud@chg@appto{m o d:: m m m}{%
  \IfArgIsEmpty{#5}{}{%
    \appto#1{\Changed@At@Process[{#2}]<{#5}{#6}>:#3:{#4}}%
  }%
}
\NewDocumentCommand\InlineDeclaration{s m}{%
  \IfBooleanT{#1}{%
    \ClassWarning{tudscrmanual}{%
      There is no starred variant for \string\InlineDeclaration%
    }%
  }%
  \Inline@Declaration{#2}%
}
\NewDocumentCommand\Inline@Declaration{s t' o d== m}{%
  \begingroup%
    \tud@declare@special@start[{#3}]{#5}=#4=%
      [inline\IfBooleanT{#1}{,output=false}\IfBooleanT{#2}{,label=noalias}]%
    \tud@declare@special@end{#5}[inline]%
  \endgroup%
  \null%
}
\NewDocumentEnvironment{DeclareEntity}{m !o}{%
  \tud@declare@special@start*[{#2}]{#1}[output=false]%
  \begin{Entity}{#1}%
}{%
  \end{Entity}%
  \tud@declare@special@end{#1}[]%
}
\NewDocumentEnvironment{DeclareEntity*}{m !o}{%
  \tud@declare@special@start*[{#2}]{#1}[output=false]%
}{%
  \tud@declare@special@end{#1}[]%
}
\NewDocumentCommand\tud@declare@special@start{s o m d== r[]}{%
  \tud@declare@open{#3}=#4=[{#5}]%
  \IfValueT{#2}{%
    \IfBooleanTF{#1}{%
      \Changed@At@Process(#3):neuer Bestandteil von \TUDScript:{#2}%
    }{%
      \begingroup%
        \let\tud@res@a\@empty%
        \def\tud@res@b##1##2{%
          \appto\tud@res@a{\Changed@At@Process<##2>:##1:{#2}}%
        }%
        \tud@ref@get\tud@res@c{new}{}{|\@nil|'\@nil'}%
        \edef\tud@res@c{%
          \noexpand\forlistloop{\noexpand\tud@res@b{\expandonce\tud@res@c}}%
        }%
        \tud@res@c{\tud@declare@result@list}%
        \edef\tud@res@a{%
          \endgroup%
          \expandonce\tud@res@a%
        }%
      \tud@res@a%
    }%
    \tud@print@changedatlist%
  }%
  \tud@lbl@get\tud@lbl@tmp{#3}%
  \listeadd\tud@declaration@label@list{\tud@lbl@tmp}%
  \ignorespaces%
}
\NewDocumentCommand\tud@declare@special@end{m r[]}{%
  \tud@declare@close{#1}[{#2}]%
  \ignorespaces%
}
\NewDocumentCommand\seeplain{s m}{%
  \mbox{\emph{\IfBooleanTF{#1}{\alsoname}{\seename}}}\nobreakspace#2%
}
\NewExpandableDocumentCommand\@seeplain{s m}{%
  \IfBooleanTF{#1}{\alsoname}{\seename}\space#2%
}
\newcommand*\tud@ref@get[4]{%
  \begingroup%
    \def\tud@res@d{#3}%
    \protected@edef\tud@res@a{#3}%
    \let\tud@res@b\@empty%
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
            \Markup@Inner@Get\tud@res@a{\tud@res@a}%
            \Markup@Replace*\tud@res@a#4{\tud@res@a}%
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
        {not}{4},{discontinued}{5},{new}{6}%
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
        \or% discontinued
          \def\tud@res@b{entf\"allt}%
          \def\tud@res@c##1{, \seeplain{##1}}%
        \or% new
          \def\tud@res@b{neu}%
          \def\tud@res@c##1{, \seeplain*{##1}}%
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
\newcommand*\tud@val@main{}
\newcommand*\tud@val@addon{}
\newcommand*\tud@val@alias{}
\newcommand*\tud@val@declaration@list{}
\NewDocumentEnvironment{DeclareValues}{!o +b}{%
  \tud@declare@check%
  \ifx\tud@declaration@inner@list\@empty%
    \ClassError{tudscrmanual}{Wrong usage of `DeclareValues'}{%
      The environment `DeclareValues' can only be used\MessageBreak%
      within declarations.%
    }%
  \fi%
  \begingroup%
    \@tud@res@swatrue%
    \let\tud@res@a\@empty%
    \let\tud@val@declaration@list\@empty%
    \def\do##1{%
      \If@Markup@Value@TF[\PMisc,\PBoolean]{##1}{%
        \IfValueF{#1}{%
          \ifx\tud@val@declaration@list\@empty\else\@tud@res@swafalse\fi%
        }%
        \listadd\tud@val@declaration@list{##1}%
      }{}%
    }%
    \dolistloop{\tud@declaration@inner@list}%
    \IfValueTF{#1}{%
      \let\tud@res@b\@empty%
      \def\do##1{%
        \listeadd\tud@res@b{\detokenize{##1}}%
        \forlistloop%
          {\tud@val@match\tud@res@a{\tud@res@b}{##1}}%
          {\tud@val@declaration@list}%
      }%
      \docsvlist{#1}%
      \def\do##1{%
        \ClassWarning{tudscrmanual}{%
          Argument `\detokenize{##1}' did not match\MessageBreak%
          any current declaration%
        }%
      }%
      \dolistloop{\tud@res@b}%
    }{%
      \let\tud@res@a\tud@val@declaration@list%
    }%
    \ifx\tud@res@a\@empty%
      \@tud@res@swafalse%
    \fi%
    \if@tud@res@swa\else%
      \let\tud@res@c\@empty%
      \def\do##1{%
        \def\tud@res@d{##1}%
        \Markup@Outer@Get\tud@res@d{\tud@res@d}%
        \eappto\tud@res@c{%
          \detokenize\expandafter{\tud@res@d}\noexpand\MessageBreak%
        }%
      }%
      \ifx\tud@res@a\@empty%
        \let\tud@res@a\tud@declaration@inner@list%
        \@tud@res@swafalse%
      \else%
        \@tud@res@swatrue%
      \fi%
      \dolistloop{\tud@res@a}%
      \if@tud@res@swa%
        \ClassWarning{tudscrmanual}{%
          Multiple matching declarations, one or more of\MessageBreak%
           \tud@res@c should be specified with the\MessageBreak%
           optional argument of `DeclareValues'%
        }%
      \else%
        \ClassWarning{tudscrmanual}{%
          None of the given declarations:\MessageBreak%
          \tud@res@c\IfValueT{#1}{was matched or }holds a special value%
        }%
      \fi%
      \let\tud@res@a\@empty%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def\tud@val@declaration@list}{\expandonce\tud@res@a}%
    }%
  \tud@res@a%
  \begin{Declare@Values}#2\end{Declare@Values}%
}{}
\NoIndentAfterEnv{DeclareValues}
\newcommand*\tud@val@match[4]{%
  \begingroup%
    \@tud@res@swafalse%
    \tud@lbl@get\tud@res@a{#3}%
    \tud@lbl@@get\tud@res@b{#4}%
    \ifx\tud@res@a\tud@res@b%
      \@tud@res@swatrue%
    \else%
      \tud@truncate@value\tud@res@b{\tud@res@b}%
      \ifx\tud@res@a\tud@res@b%
        \@tud@res@swatrue%
      \fi%
    \fi%
    \edef\tud@res@c{%
      \endgroup%
      \if@tud@res@swa%
        \unexpanded{\listadd#1{#4}}%
        \unexpanded{\listeremove#2{\detokenize{#3}}}%
      \fi%
    }%
  \tud@res@c%
}
\AtBeginDocument{%
  \newcommand*\itemval{}%
  \undef\itemval%
}
\newcommand*\tud@item@@val{%
  \let\itemval\tud@item@val%
}
\tud@list@create[before=\tud@item@@val]{Declare@Values}{description}{1}
\NewDocumentCommand\tud@item@val{s r== d() d<> o}{%
  \begingroup%
    \tud@val@format\tud@val@main\tud@val@addon\tud@val@alias{#1}{#2}%
    \let\tud@res@d\@empty%
    \IfValueTF{#3}{%
      \appto\tud@res@d{\suffix{S\"aumniswert f\"ur #3}}%
    }{%
      \IfBooleanT{#1}{\appto\tud@res@d{\suffix{S\"aumniswert}}}%
    }%
    \IfValueT{#4}{%
      \tud@ref@get\tud@res@a{see}{#4}{||'page'}%
      \eappto\tud@res@d{%
        {\unexpanded{\hfill\suffixsize}\expandonce\tud@res@a}%
      }%
    }%
    \let\tud@res@a\@empty%
    \def\do##1{%
      \begingroup%
        \edef\tud@res@b{%
          \unexpanded{\Markup@Replace\tud@res@b}%
            =\expandonce\tud@val@main=%
            \ifx\tud@val@addon\@empty\else[{\expandonce\tud@val@addon}]\fi%
        }%
        \tud@res@b{##1}%
        \Markup@Outer@Get\tud@res@b{\tud@res@b}%
        \edef\tud@res@c{%
          \endgroup%
          \unexpanded{\appto\tud@res@a}{%
            \noexpand\Inline@Declaration\ifx\tud@res@a\@empty\else*\fi'%
              \unexpanded{[{#5}]}%
              =\expandonce\tud@val@alias=%
              {\expandonce\tud@res@b}%
          }%
        }%
      \tud@res@c%
    }%
    \dolistloop{\tud@val@declaration@list}%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\item[{%
        \unexpanded{\let\tud@print@changedatlist\relax}%
        \ifx\tud@res@a\@empty%
          \PValue{???=#2}%
        \else%
          \expandonce\tud@res@a\expandonce\tud@res@d%
        \fi%
      }]%
    }%
  \tud@res@a%
  \tud@print@changedatlist[-1\baselineskip]%
}
\newcommand*\tud@val@format[5]{%
  \begingroup%
    \protected@edef\tud@res@a{#5}%
    \let\tud@res@b\@empty%
    \let\tud@res@c\@empty%
    \let\tud@res@d\@empty%
    \@for\tud@res@a:=\tud@res@a\do{%
      \trim@spaces@in\tud@res@a%
      \ifx\tud@res@a\@empty\else%
        \TUD@set@ifkey{}{@tempswa}{\tud@res@a}%
        \ifx\FamilyKeyState\FamilyKeyStateProcessed%
          \ifx\tud@res@b\@empty%
            \let\tud@res@b\tud@res@a%
            \if@tempswa%
              \preto\tud@res@d{true,on,yes,}%
            \else%
              \preto\tud@res@d{false,off,no,}%
            \fi%
          \else%
            \ClassWarning{tudscrmanual}{%
              \string\itemval\space already read boolean value\MessageBreak%
              `\tud@res@b' so `\tud@res@a' is ignored%
            }%
          \fi%
        \else%
          \eappto\tud@res@c{%
            \ifx\tud@res@c\@empty\else,\fi\expandonce\tud@res@a%
          }%
          \eappto\tud@res@d{,\expandonce\tud@res@a}%
        \fi%
      \fi%
    }%
    \ifx\tud@res@c\@empty\else%
      \def\do##1{%
        \If@Markup@Value@TF[\PBoolean]{##1}{%
          \def\tud@res@a{##1}%
          \Markup@Outer@Get\tud@res@a{\tud@res@a}%
          \ClassWarning{tudscrmanual}{%
            \string\itemval\space read a non-boolean value(s)\MessageBreak%
            `\tud@res@c' so the declaration of\MessageBreak%
            `\tud@res@a'\MessageBreak%
            should be done with `\string\PMisc'%
          }%
        }{}%
      }%
      \dolistloop{\tud@val@declaration@list}%
    \fi%
    \let\tud@res@a\@empty%
    \let\tud@res@b\@empty%
    \let\tud@res@c\@empty%
    \def\do##1{%
      \def\tud@res@d{##1}%
      \IfBooleanTF{#4}{%
        \PValue@Enfold*{\tud@res@d}%
      }{%
        \PValue@Enfold{\tud@res@d}%
      }%
      \ifx\tud@res@a\@empty%
        \let\tud@res@a\tud@res@d%
      \else%
        \eappto\tud@res@b{\PValue{/}\expandonce\tud@res@d}%
        \eappto\tud@res@c{\ifx\tud@res@c\@empty\else,\fi\expandonce\tud@res@d}%
      \fi%
    }%
    \expandafter\docsvlist\expandafter{\tud@res@d}%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\expandonce\tud@res@a}%
      \unexpanded{\def#2}{\expandonce\tud@res@b}%
      \unexpanded{\def#3}{\expandonce\tud@res@c}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\TermTable{!o}{%
  \ifhmode\par\fi%
  \vskip\smallskipamount%
  \@afterindentfalse\@afterheading%
  \begingroup%
    \let\tud@res@a\@empty%
    \def\do##1{\Term@Table\tud@res@a\@nil##1\@nil}%
    \dolistloop{\tud@declaration@inner@list}%
    \ifx\tud@res@a\@empty%
      \ClassWarning{tudscrmanual}{No declaration for Terms found}%
    \else%
      \IfValueTF{#1}{%
        \begin{tabularx}{\dimexpr\glueexpr#1\relax\relax}[b]{lXX}%
          \expandafter\Term@@Table\expandafter{\tud@res@a}%
        \end{tabularx}%
      }{%
        \begin{tabular}[b]{lll}%
          \expandafter\Term@@Table\expandafter{\tud@res@a}%
        \end{tabular}%
      }%
    \fi%
  \endgroup%
}
\newcommand*\Term@Table{}
\def\Term@Table#1\@nil#2#3#4\@nil{\tud@if@strequal{Term}{#2}{\appto#1{#3,}}{}}%
\newcommand*\Term@@Table[1]{%
  \toprule%
  \textbf{Bezeichner} & \textbf{Deutsch} & \textbf{Englisch}\tabularnewline%
  \midrule%
  \forcsvlist{\Term@@@Table}{#1}%
  \bottomrule%
}
\newcommand*\Term@@@Table[1]{%
  \Term*{#1} & %
  \tud@if@strempty{\csuse{#1}}{\PName{leer}}{\csuse{#1}} & %
  \strut\selectlanguage{english}%
  \tud@if@strempty{\csuse{#1}}{\PName{empty}}{\csuse{#1}}\tabularnewline%
}
\let\makeindex\@empty
\@onlypreamble\makeindex
\undef\@wrindex
\newcommand*\@wrindex[2][\jobname]{%
  \protected@write\@indexfile{\@sanitize}{%
    \string\indexentry[#1]{#2}{\thepage}%
  }%
}
\def\index{%
  \@bsphack\begingroup%
  \@sanitize%
  \@ifnextchar[%]
    {\@index}%
    {\@index[\jobname]}%
}
\def\@index[#1]#2{%
  \xifinlist{#1}{\tud@index@list}{}{%
    \xifinlist{#1}{\tud@changes@list}{}{%
      \ClassWarning{tudscrmanual}{Index `#1' was never defined}%
    }%
  }%
  \tud@if@strequal{\jobname}{#1}{%
    \tud@idx@parse{#1}{#2}%
  }{%
    \@wrindex[{#1}]{#2}%
  }%
  \endgroup\@esphack%
}
\NewExpandableDocumentCommand\@gobbleopt@one{o m}{}
\tud@addtocontents@special*{\let\index\@gobbleopt@one}
\newcommand*\tud@idx@parse[2]{%
  \in@{|}{#2}%
  \ifin@%
    \tud@idx@@parse#2\@nil{#1}%
  \else%
    \tud@idx@@parse#2|\@nil{#1}%
  \fi%
}
\newcommand*\tud@idx@@parse{}
\def\tud@idx@@parse#1|#2\@nil#3{%
  \tud@idx@@@parse{#1}{#2}{#3}%
}
\newcommand*\tud@idx@@@parse[3]{%
  \begingroup%
    \let\tud@res@a\@empty%
    \let\tud@res@b\@empty%
    \expandafter\tud@idx@@@@parse\detokenize{#1}!\@nil%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\@wrindex[{#3}]{%
        \tud@res@a\IfArgIsEmpty{#2}{}{\unexpanded{|#2}}%
      }%
    }%
  \tud@res@a%
}
\newcommand*\tud@idx@@@@parse{}
\def\tud@idx@@@@parse#1!#2\@nil{%
  \@expandtwoargs\in@{\detokenize{@}}{\detokenize{#1}}%
  \ifin@%
    \tud@idx@split\tud@res@c{#1}%
    \expandafter\tud@idx@@@@@parse\tud@res@c%
  \else%
    \tud@idx@@@@@parse{#1}{#1}%
  \fi%
  \IfArgIsEmpty{#2}{}{%
    \appto\tud@res@a{!}%
    \appto\tud@res@b{"!}%
    \tud@idx@@@@parse#2\@nil%
  }%
}
\newcommand*\tud@idx@@@@@parse[2]{%
  \appto\tud@res@b{#1}%
  \eappto\tud@res@a{%
    \unexpanded{#1}\detokenize{@}%
    \unexpanded{\string\hypertargetraised}{indexentry:\expandonce\tud@res@b}%
    \unexpanded{#2}%
  }%
}
\newcommand*\tud@idx@join[3]{%
  \edef#1{\detokenize{#2}\detokenize{@}\detokenize{#3}}%
}
\newcommand*\tud@idx@split[2]{%
  \begingroup%
    \edef\tud@idx@split{#2}%
    \expandafter\tud@idx@@split\tud@idx@split\@nil%
    \edef\tud@idx@split{%
      \endgroup%
      \unexpanded{\def#1}{\tud@idx@split}%
    }%
  \tud@idx@split%
}
\newcommand*\tud@idx@@split{}
\expandafter\def\expandafter\tud@idx@@split%
    \expandafter#\expandafter1\detokenize{@}#2\@nil{%
  \def\tud@idx@split{{#1}{#2}}%
}
\NewDocumentCommand\Process@Index{o m m r// r== r[] r|| r() r<>}{%
  \begingroup%
    \@tud@res@swafalse%
    \ifnum\tud@index@mode@num>\m@ne\relax
      \IfBooleanF{#1}{%
        \ifcsdef{Markup@Format@@Index@@#2}{\@tud@res@swatrue}{%
          \IfValueT{#7}{%
            \ClassWarning{tudscrmanual}%
            {%
              Markup command `\tud@markup@detokenize{#2}{...}' was\MessageBreak%
              defined without index, |#7| is useless%
            }%
          }%
        }%
      }%
    \fi%
    \let\tud@res@a\relax%
    \if@tud@res@swa%
      \ifcase\tud@absnum\tud@declare@mode@num\relax\relax% inline
        \tud@idx@attribute@get\tud@res@a{#7}%
      \or% declaration
        \ifnum\tud@declare@mode@num>\z@\relax%
          \def\tud@res@a{!(}%
        \else%
          \def\tud@res@a{!)}%
        \fi%
      \or% inline declaration
        \ifnum\tud@declare@mode@num>\z@\relax%
          \def\tud@res@a{!}%
        \fi%
      \fi%
    \fi%
    \protected@edef\tud@res@a{%
      \endgroup%
      \ifx\tud@res@a\relax\else%
        \noexpand\Process@@Index%
          {#2}{#3}/#4/=#5=[{#6}]%
          \ifx\tud@res@a\@empty\else|\tud@res@a|\fi(#8)<#9>%
      \fi%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Process@@Index{m m r// r== r[] d|| r() r<>}{%
  \begingroup%
    \tud@idx@get\tud@res@a<#8>{{#1}{#2}/#3/=#4=[{#5}](#7)}%
    \tud@idx@write{#1}|#6|{\tud@res@a}%
    \ifnum\tud@declare@mode@num>\z@\relax%
      \tud@idx@aux@write{#8}{\tud@res@a}%
      \tud@if@param@special{#4}{%
        \tud@truncate@value\tud@lbl@tmp{#8}%
        \xifinlist{\tud@lbl@tmp}{\tud@declaration@label@list}{}{%
          \expandafter\tud@idx@aux@write\expandafter{\tud@lbl@tmp}{\tud@res@a}%
        }%
      }{}%
    \fi%
  \endgroup%
}
\newcommand*\tud@idx@attribute@get[2]{%
  \begingroup%
    \ifnum\tud@index@mode@num>\z@\relax%
      \let\tud@res@b\@empty%
    \else%
      \let\tud@res@b\relax%
    \fi%
    \ifnum\tud@index@mode@num>\m@ne\relax%
      \IfValueT{#2}{%
        \TUD@set@numkey{}{tud@res@a}{%
          \TUD@bool@numkey,{}{0},{.}{1},{?}{2},{!}{3}%
        }{#2}%
        \ifx\FamilyKeyState\FamilyKeyStateProcessed%
          \ifcase\tud@res@a\relax%
            \let\tud@res@b\relax%
          \or% default
            \let\tud@res@b\@empty%
          \or% important
            \def\tud@res@b{?}%
          \or% declare
            \def\tud@res@b{!}%
          \fi%
        \else%
          \ClassWarning{tudscrmanual}{%
            The index specification |#2| is\MessageBreak%
            unknown. Only |.| or |?| and |!| as well as || or\MessageBreak%
            booleans are valid%
          }%
        \fi%
      }%
    \fi%
    \edef\tud@res@a{%
      \endgroup%
      \ifx\tud@res@b\relax%
        \unexpanded{\let#1\relax}%
      \else%
        \unexpanded{\def#1}{\tud@res@b}%
      \fi%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@idx@write{m d|| m}{%
  \begingroup%
    \protected@edef\tud@res@a{#3}%
    \edef\tud@res@c{%
      \expandafter\expandafter\expandafter\noexpand%
      \csname Markup@Format@@Index@@#1\endcsname%
    }%
    \def\tud@res@d##1:##2:##3\@nil{%
      \def\tud@res@b{##1}%
      \IfArgIsEmpty{##2}{}{\preto\tud@res@a{##2!}}%
    }%
    \expandafter\tud@res@d\tud@res@c::\@nil%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\index[{\tud@res@b}]{%
        \expandonce\tud@res@a\IfValueT{#2}{\unexpanded{|#2}}%
      }%
    }%
  \tud@res@a%
}
\newcommand*\tud@idx@aux@write[2]{%
  \begingroup%
    \protected@edef\tud@res@a{#2}%
    \edef\tud@res@a{\detokenize\expandafter{\tud@res@a}}%
    \protected@write\@auxout{}{\string\tud@idx@aux@declare{#1}{\tud@res@a}}%
    \csxdef{tud@idx@lbl@@#1}{\tud@res@a}%
  \endgroup%
}
\newrobustcmd*\tud@idx@aux@declare[2]{%
  \tud@if@idx@aux@exists{#1}{%
    \ClassWarningNoLine{tudscrmanual}{%
      Index entry for\MessageBreak`#1'\MessageBreak was already defined%
    }%
  }{}%
  \csxdef{tud@idx@lbl@@#1}{\detokenize{#2}}%
}
\@onlypreamble\tud@idx@aux@declare
\AtEndDocument{\let\tud@idx@aux@declare\@gobbletwo}
\newcommand*\tud@if@idx@aux@exists[1]{%
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
\newcommand*\tud@idx@aux@read[2]{%
  \begingroup%
    \protected@edef\tud@res@a{%
      \endgroup%
      \unexpanded{\letcs#1}{tud@idx@lbl@@#2}%
    }%
  \tud@res@a%
}
\newcommand*\tud@idx@tmp{}
\NewDocumentCommand\tud@idx@get{m r<> m}{%
  \begingroup%
    \tud@idx@robustify%
    \ifnum\tud@declare@mode@num>\z@\relax%
      \let\tud@res@c\@secondoftwo%
    \else%
      \def\tud@res@c{\tud@if@idx@aux@exists{#2}}%
    \fi%
    \tud@res@c{%
      \tud@idx@aux@read\tud@idx@tmp{#2}%
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
    \tud@if@idx@aux@exists{##1}{##2}{%
      \ClassWarning{tudscrmanual}{%
        Index entry for\MessageBreak%
        `##1'\MessageBreak%
        is not defined%
      }%
      ##3%
    }%
  }%
  \tud@lbl@@get\tud@lbl@tmp{{#2}{#3}/#4/(#9)}%
  \xifinlist{\tud@lbl@tmp}{\tud@declaration@label@list}{%
    \tud@if@idx@aux@exists{\tud@lbl@tmp}{%
      \tud@idx@aux@read\tud@idx@tmp{\tud@lbl@tmp}%
      \appto\tud@idx@tmp{!}%
    }{}%
  }{}%
  \ifx\tud@idx@tmp\@empty%
    \IfValueT{#4}{%
      \tud@lbl@@get\tud@lbl@tmp{{#2}{#3}(#9)}%
      \tud@res@c{\tud@lbl@tmp}{%
        \tud@idx@aux@read\tud@idx@tmp{\tud@lbl@tmp}%
      }{%
        \tud@idx@@@get\tud@idx@tmp{#2}{#3}(#9)%
      }%
      \appto\tud@idx@tmp{!}%
    }%
    \IfValueT{#5}{%
      \tud@if@param@special{#5}{}{%
        \tud@lbl@@get\tud@lbl@tmp{{#2}{#3}/#4/(#9)}%
        \tud@res@c{\tud@lbl@tmp}{%
          \tud@idx@aux@read\tud@idx@tmp{\tud@lbl@tmp}%
          \let\tud@res@b\@empty%
        }{%
          \tud@idx@@@get\tud@res@b{#2}{#3}/#4/(#9)%
        }%
        \eappto\tud@idx@tmp{\expandonce\tud@res@b!}%
      }%
    }%
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
        \begingroup%
          \tud@idx@split\tud@res@c{\tud@res@b}%
          \edef\tud@res@d{%
            \endgroup%
            \unexpanded{\tud@idx@join\tud@res@b}%
              {\expandafter\@firstoftwo\tud@res@c}%
              {\noexpand\nosuffix{\expandafter\@secondoftwo\tud@res@c}}%
          }%
        \tud@res@d%
      }%
    }%
  \fi%
  \eappto\tud@idx@tmp{\expandonce\tud@res@b}%
}
\newcommand*\tud@idx@key{}
\newcommand*\tud@idx@fmt{}
\newcommand*\AP@TruncateStar[1]{%
  \begingroup%
    \def\tud@res@a##1*##2\@nil{\def\tud@res@a{##1}}%
    \tud@res@a#1*\@nil%
    \edef\tud@res@a{%
      \endgroup%
      \def\noexpand\ProcessedArgument{\expandonce\tud@res@a}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\tud@idx@@@get{s m m >{\AP@TruncateStar}m d// d== r()}{%
  \begingroup%
    \@tud@res@swatrue%
    \IfBooleanF{#1}{%
      \IfValueT{#5}{\@tud@res@swafalse}%
      \IfValueT{#6}{\@tud@res@swafalse}%
    }%
    \protected@edef\tud@res@a{#7}%
    \ifx\tud@res@a\tud@ety@gnrl%
      \let\tud@res@a\@empty%
    \fi%
    \Markup@Suffix@@Select[\protected@edef\tud@res@b]{}{#3}%
    \begingroup%
      \Markup@Expandable%
      \protected@edef\tud@res@c{%
        \endgroup%
        \unexpanded{\def\tud@idx@key}{%
          \IfValueTF{#5}{#5}{#4}%
          \if@tud@res@swa\tud@res@b\fi%
          \IfValueT{#6}{\space#6}%
          \if@tud@res@swa%
            \ifx\tud@res@a\@empty\else\space(\tud@res@a)\fi%
          \fi%
        }%
      }%
    \tud@res@c%
    \def\tud@res@b{{#3}{#4}/#5/=#6=}%
    \eappto\tud@res@b{%
      \unexpanded{|\@nil|'\@nil'}%
      (\ifx\tud@res@a\@empty\noexpand\@nil\else\expandonce\tud@res@a\fi)%
    }%
    \Markup@Outer@Get\tud@idx@fmt{\tud@res@b}%
    \if@tud@res@swa%
      \@tud@res@swafalse%
      \ifx\tud@res@a\@empty\else%
        \ifx\tud@res@a\tud@ety@dflt\else%
          \Entity@Level@Get\tud@res@c{#3}%
          \ifnum\tud@res@c>\tw@\relax%
            \@tud@res@swatrue%
          \fi%
        \fi%
      \fi%
      \if@tud@res@swa%
        \eappto\tud@idx@fmt{\noexpand\idxsuffix{\expandonce\tud@res@a}}%
      \fi%
    \fi%
    \tud@replace@@in\tud@idx@key{@}{"@}%
    \tud@replace@@in\tud@idx@key{!}{"!}%
    \tud@replace@@in\tud@idx@key{|}{"|}%
    \tud@replace@@in\tud@idx@fmt{@}{"@}%
    \tud@replace@@in\tud@idx@fmt{!}{"!}%
    \tud@replace@@in\tud@idx@fmt{|}{"|}%
    \edef\tud@res@c{%
      \endgroup%
      \unexpanded{\tud@idx@join#2}{\tud@idx@key}{\tud@idx@fmt}%
    }%
  \tud@res@c%
}
\newcommand*\tud@index@prologue{}
\NewDocumentCommand\tud@index@print{!O{\jobname} !+d()}{%
  \IfFileExists{\jobname-#1.ind}{%
    \pagebreak[3]%
    \IfValueTF{#2}{%
      \def\tud@index@prologue{\nopagebreak#2\par}%
    }{%
      \let\tud@index@prologue\nopagebreak%
    }%
    \csuse{tud@index@set@@#1}%
    \@input@{\jobname-#1.ind}%
  }{%
    \ClassWarning{tudscrmanual}%
    {%
      No processed index file found,\MessageBreak%
      `\jobname-#1.ind' does not exist%
    }%
    \global\let\tud@xdy@mdfive\@empty%
  }%
}
\newcommand*\tud@index@item[2][\relax]{%
  \par\penalty\numexpr#2*50-50\relax#1%
  \hspace*{\dimexpr\numexpr#2\relax em\relax}%
  \hangindent=\dimexpr\numexpr2*#2+3\relax em/2\relax%
}
\newcommand*\tud@index@vskip[1][\smallskipamount]{%
  \vskip\glueexpr1#1\@plus1#1\@minus.5#1\relax%
}
\newcommand*\tud@index@hook{}
\RenewDocumentEnvironment{theindex}{+b}{%
  \def\lettergroup##1{\minisec{##1}}%
  \def\item{\tud@index@item{0}}%
  \def\subitem{\tud@index@item{1}}%
  \def\subsubitem{\tud@index@item{2}}%
  \def\subsubsubitem{\tud@index@item{3}}%
  \def\indexspace{\tud@index@vskip[\bigskipamount]}%
  \tud@index@hook%
  \def\tud@res@a{%
    \addsec[%
      reference=\tud@index@ref,%
      tocentry=\tud@index@toc%
    ]{\tud@index@title\label{idx:\tud@index@name}}%
    \markdouble{\tud@index@ref}%
    \tud@index@prologue%
  }%
  \ifnum\tud@index@cols>\@ne\relax%
    \long\def\tud@res@b##1{%
      \setlength\columnsep{\f@size\p@}%
      \setlength\columnseprule{\z@}%
      \begin{multicols}{\tud@index@cols}[\tud@res@a]%
      ##1%
      \end{multicols}%
    }%
  \else%
    \long\def\tud@res@b##1{\tud@res@a##1}%
  \fi%
  \tud@res@b{%
    \setparsizes{\z@}{\z@\@plus.1\baselineskip}{\z@\@plus1fil}%
    \par@updaterelative%
    \tud@raggedright%
    #1%
  }%
}{}
\newcommand*\seeidx[1]{\pageref{idx:#1}}
\newrobustcmd*\seesep{\txb}%
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
      \appto\tud@res@a{##1}%
      \def\tud@res@b{##2}%
      \trim@spaces@in\tud@res@b%
      \in@{\\}{##2}%
    }%
    \in@true%
    \@whilesw\ifin@\fi{%
      \expandafter\tud@res@c\tud@res@b\@nil%
    }%
    \ifx\tud@res@b\@empty%
      \mbox{\emph{#1}}%
    \else%
      \tud@res@b\space\linebreak[1]\mbox{\emph{\alsoname}}%
    \fi%
    \def\tud@res@b{\nobreakspace}%
    \def\do##1{%
      \def\tud@res@c{##1}%
      \trim@spaces@in\tud@res@c%
      \tud@res@b%
      \begingroup%
        \tud@if@markup*{##1}{%
          \Markup@Split@Get*\tud@res@d{##1}%
          \Markup@Suffix@@Select[\protected@edef\tud@res@d]{}{%
            \expandafter\@firstoftwo\tud@res@d%
          }%
        }{%
          \let\tud@res@d\@empty%
        }%
        \Markup@Expandable%
        \let\DistributionGeneral\@DistributionGeneral%
        \def\seesep{!}%
        \protected@edef\tud@res@d{%
          \endgroup%
          \noexpand\hyperlink{indexentry:\tud@res@c\tud@res@d}%
        }%
      \tud@res@d{\tud@res@c}%
      \def\tud@res@b{;\space}%
    }%
    \expandafter\dossvlist\expandafter{\tud@res@a}%
  \endgroup%
}
\newcommand*\PrintIndex{%
  \begingroup%
    \cleardoublepage%
    \@ifpackageloaded{bookmark}{\bookmarksetup{startatroot}}{}%
    \tud@index@mode@num=-2\relax%
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
        In den themenspezifischen Indexen wird f\"ur alle Eintr\"age, welche %
        nicht durch \TUDScript sondern von anderen Klassen oder Paketen zur %
        Verf\"ugung gestellt werden, dies im Suffix des entsprechenden %
        Eintrages angegeben. Existiert f\"ur einen solchen Eintrag %
        \emph{keine} direkte \textbf{Erl\"auterung} ist dementsprechend auch %
        kein Hyperlink verf\"ugbar.%
      \end{abstract}%
    }%
    \addchap{\indexname\label{idx:index}}%
    \tud@index@print%
    (%
      Die im Folgenden aufgelisteten Schlagworte sollen f\"ur den Umgang mit %
      \Logo{LaTeXe} im Allgemeinen sowie dem \TUDScript-Bundle im Speziellen %
      sowohl Antworten bei generellen Fragen liefern als auch L\"osungen f\"ur %
      typische Probleme bereitstellen. Falls ein gesuchter Begriff hier nicht %
      zu finden ist oder trotz vorhandener Hinweise kein zufriedenstellendes %
      Ergebnis erzielt werden kann, sollte das \Forum erster Anlaufpunkt %
      sein, um weitere Hilfe zu erhalten.%
    )%
    \clearpage%
    \tud@index@print[options]%
    (%
      Dies ist der Index aller im Handbuch erl\"auterten sowie erw\"ahnten %
      Optionen, wobei bei den meisten auch Untereintr\"age mit Seitenangaben %
      f\"ur spezielle Wertzuweisungen existieren.%
    )%
    \tud@index@print[macros]%
    (%
      Dies ist eine Auflistung aller zuvor erl\"auterten sowie erw\"ahnten %
      Befehle und Umgebungen. Bei einigen sind zus\"atzliche Untereintr\"age %
      f\"ur Schl\"ussel-Wert-Parameter zu finden, die im optionalen Argument %
      der jeweiligen Anweisung verwendet werden k\"onnen. Gegebenenfalls sind %
      auch explizite Wertzuweisungen an diese Parameter angegeben.%
    )%
    \tud@index@print[terms]%
    (%
      Dies sind die von \TUDScript definierten respektive erw\"ahnten, %
      sprachabh\"angigen Bezeichner. Informationen zu Nutzung und %
      Anpassungsm\"oglichkeiten sind in \autoref{sec:localization} zu finden.%
    )%
    \tud@index@print[elements]%
    \tud@index@print[misc]%
    \tud@index@print[files]%
  \endgroup%
}
\NewDocumentCommand\CrossIndex{m o m}{%
  \begingroup%
    \def\do##1{%
      \IfValueTF{#2}{%
        \def\tud@res@b{#2}%
        \tud@replace@in\tud@res@b{*}{##1}%
        \edef\tud@res@b{\noexpand\hyperref[{idx:#1}]{\tud@res@b}}%
      }{%
        \def\tud@res@b{\nameref{idx:#1}}%
      }%
      \protected@edef\tud@res@c{##1}%
      \trim@spaces@in\tud@res@c%
      \trim@spaces@in\tud@res@b%
      \@wrindex{%
        \tud@res@c!""idx:#1@\textrightarrow\kern.1em\tud@res@b|seeidx{#1}%
      }%
    }%
    \docsvlist{#3}%
  \endgroup%
}
\NewDocumentCommand\SeeIndex{s m m}{%
  \begingroup%
    \def\do##1{%
      \begingroup%
        \def\do####1{%
          \protected@edef\tud@res@a{####1}%
          \trim@spaces@in\tud@res@a%
          \protected@edef\tud@res@b{##1}%
          \trim@spaces@in\tud@res@b%
          \edef\tud@res@c{%
            \noexpand\index{%
              \expandonce\tud@res@a%
              |see\IfBooleanT{#1}{unverified}{\expandonce\tud@res@b}%
            }%
          }%
          \tud@res@c%
        }%
        \docsvlist{#2}%
      \endgroup%
    }%
    \docsvlist{#3}%
  \endgroup%
}
\NewDocumentCommand\ChangedAt{s d<> m}{%
  \begingroup%
    \let\tud@res@c\@empty%
    \IfValueT{#2}{%
      \protected@edef\tud@res@a{#2}%
      \let\tud@res@c\@empty%
      \def\tud@res@d##1{\appto\tud@res@c{\Changed@At@Process[{#1}]<##1>{#3}}}%
      \@for\tud@res@a:=\tud@res@a\do{%
        \tud@if@markup{\tud@res@a}{%
          \Markup@Inner@Get\tud@res@b{\tud@res@a}%
          \expandafter\tud@lbl@@get%
            \expandafter\tud@lbl@tmp\expandafter{\tud@res@b}%
          \edef\tud@res@a{{\expandonce\tud@res@b}{\tud@lbl@tmp}}%
          \expandafter\tud@res@d\expandafter{\tud@res@a}%
        }{}%
      }%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \ifx\tud@res@c\@empty%
        \unexpanded{\Changed@At@Process[{#1}]{#3}}%
      \else%
        \expandonce\tud@res@c%
      \fi%
      \noexpand\tud@print@changedatlist%
    }%
  \tud@res@a%
}
\GetDocumentCommandArgSpec\ChangedAt
\expandafter\NewExpandableDocumentCommand\expandafter\@ChangedAt\expandafter{%
  \ArgumentSpecification%
}{}%
\tud@addtocontents@special*{\let\ChangedAt\@ChangedAt}
\newcommand*\tud@chg@entry@list{}
\newcommand*\tud@chg@version@list{}
\NewDocumentCommand\Changed@At@Process{O{\BooleanFalse} d() d<> d:: m}{%
  \begingroup%
    \let\tud@res@a\@empty%
    \def\tud@res@b##1{%
      \appto\tud@res@a{\Changed@At@@Process[{#1}](#2)<#3>:#4:{##1}}%
    }%
    \forssvlist{\tud@res@b}{#5}%
    \edef\tud@res@a{%
      \endgroup%
      \expandonce\tud@res@a%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Changed@At@@Process{r[] r() r<> r:: m}{%
  \begingroup%
    \tud@chg@entry@validate\tud@res@a\tud@res@b{#5}{%
      \IfBooleanF{#1}{\tud@unique@xadd\tud@chg@version@list{\tud@res@a}}%
      \tud@toks@{\Changed@At@@@Process(#2)<#3>}%
      \ifx\tud@res@b\@empty\else%
        \addto@hook@expandafter\tud@toks@{\expandafter=\tud@res@b=}%
      \fi%
      \addto@hook\tud@toks@{:#4:}%
      \addto@hook@expandafter\tud@toks@{\expandafter{\tud@res@a}}%
      \listxadd\tud@chg@entry@list{\the\tud@toks@}%
    }%
  \endgroup%
}
\NewDocumentCommand\Changed@At@@@Process{r() r<> d== d:: m}{%
  \begingroup%
    \tud@idx@robustify%
    \IfValueTF{#1}{%
      \protected@edef\tud@res@c{#1}%
      \ifx\tud@res@c\@empty\else%
        \tud@if@markup{#1}{}{\let\tud@res@c\@empty}%
      \fi%
    }{%
      \let\tud@res@c\tud@ety@crnt%
    }%
    \ifx\tud@res@c\@empty%
      \def\tud@res@a{""@Allgemein}%
    \else%
      \tud@chg@base@get\tud@res@a{\tud@res@c}%
    \fi%
    \IfValueTF{#2}{%
      \Changed@At@Entry@Get\tud@res@b(\tud@res@c)<#2>=#3=:#4:%
      \preto\tud@res@b{I\space}%
    }{%
      \let\tud@res@b\@empty%
      \IfValueTF{#3}{\def\tud@res@b{#3}}{\IfValueT{#4}{\def\tud@res@b{#4}}}%
      \ifx\tud@res@b\@empty\else%
        \tud@chg@general@get\tud@res@b{\tud@res@b}%
        \preto\tud@res@b{A\space}%
      \fi%
    }%
    \ifx\tud@res@b\@empty\else%
      \index[{changes-#5}]{\tud@res@a!\tud@res@b}%
    \fi%
  \endgroup%
}
\newcommand*\tud@chg@entry@validate[3]{%
  \begingroup%
    \in@{:}{#3}%
    \ifin@%
      \def\tud@res@c##1:##2\@nil{%
        \def\tud@res@a{##1}%
        \def\tud@res@b{##2}%
        \trim@spaces@in\tud@res@b%
      }%
      \tud@res@c#3\@nil%
    \else%
      \def\tud@res@a{#3}%
      \let\tud@res@b\@empty%
    \fi%
    \tud@v@validate{\tud@res@a}%
    \edef\tud@res@c{%
      \endgroup%
      \unexpanded{\def#1}{\ifx\tud@res@a\relax\else\expandonce\tud@res@a\fi}%
      \unexpanded{\def#2}{\expandonce\tud@res@b}%
      \ifx\tud@res@a\relax%
        \noexpand\@gobble%
      \else%
        \noexpand\@firstofone%
      \fi%
    }%
  \tud@res@c%
}
\newcommand*\tud@chg@base@get[2]{%
  \begingroup%
    \protected@edef\tud@res@d{#2}%
    \Markup@Split@Get\tud@res@a{#2}%
    \Misc@Expandable%
    \def\tud@res@b##1##2{%
      \Entity@Level@Get\tud@res@b{##1}%
      \Markup@Suffix@@Select[\protected@edef\tud@res@c]{}{##1}%
      \protected@edef\tud@res@c{\tud@res@b\space##2\tud@res@c}%
    }%
    \expandafter\tud@res@b\tud@res@a%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\tud@res@c @\expandonce\tud@res@d}%
    }%
  \tud@res@a%
}
\newcommand*\tud@chg@general@get[2]{%
  \begingroup%
    \protected@edef\tud@res@b{#2}%
    \Markup@Expandable%
    \protected@edef\tud@res@a{%
      \endgroup%
      \unexpanded{\tud@idx@join#1}%
        {\tud@res@b}{\noexpand\nosuffix{\expandonce\tud@res@b}}%
    }%
  \tud@res@a%
}
\newcommand*\AP@ChangedAtSplit[3]{%
  \begingroup%
    \expandafter\def\expandafter\tud@res@a\expandafter{\@firstoftwo#3}%
    \expandafter\def\expandafter\tud@res@b\expandafter{\@secondoftwo#3}%
    \edef\tud@res@c{%
      \unexpanded{\tud@idx@get\tud@res@c}%
        <\expandonce\tud@res@b>{\expandonce\tud@res@a}%
    }%
    \tud@res@c%
    \edef\tud@res@c{\noexpand\SplitArgument{2}{!}{\expandonce\tud@res@c}}%
    \tud@res@c%
    \def\tud@res@c##1##2##3{%
      \If@Markup@Key@TF{\tud@res@a}{%
        \def\ProcessedArgument{{##1}{##2}{##3}}%
      }{%
        \def\ProcessedArgument{{##1}{##3}{##2}}%
      }%
    }%
    \expandafter\tud@res@c\ProcessedArgument%
    \IfValueF{#1}{%
      \IfValueF{#2}{%
        \Markup@Outer@Get\tud@res@a{\tud@res@a}%
        \ClassWarning{tudscrmanual}{%
          There is no text for a change note although\MessageBreak%
          <\detokenize\expandafter{\tud@res@a}>\MessageBreak%
          was given%
        }%
      }%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def\ProcessedArgument}{\expandonce\ProcessedArgument}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Changed@At@Entry@Get{%
  m r() >{\AP@ChangedAtSplit{#4}{#5}}r<> r== r::%
}{%
  \begingroup%
    \tud@toks@{\Changed@At@Entry@@Get#1}%
    \protected@edef\tud@res@a{(#2)}%
    \addto@hook@expandafter\tud@toks@{\tud@res@a}%
    \addto@hook\tud@toks@{#3=#4=:#5:}%
    \edef\tud@res@a{%
      \endgroup%
      \the\tud@toks@%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Changed@At@Entry@@Get{m r() m m m r== r::}{%
  \begingroup%
    \def\tud@res@b{#6}%
    \def\tud@res@c{#6}%
    \IfValueF{#6}{%
      \IfValueT{#7}{%
        \let\tud@res@b\@empty%
        \def\tud@res@c{#7}%
      }%
    }%
    \let\tud@res@a\@empty%
    \IfValueT{#5}{%
      \Changed@At@Entry@@@Get\tud@res@a{#5}:\tud@res@b::\tud@res@c:(#2)%
      \let\tud@res@b\@empty%
      \def\tud@res@c{Werte angepasst}%
    }%
    \IfValueT{#4}{%
      \Changed@At@Entry@@@Get\tud@res@a{#4}:\tud@res@b::\tud@res@c:(#2)%
      \let\tud@res@b\@empty%
      \def\tud@res@c{Parameter angepasst}%
    }%
    \Changed@At@Entry@@@Get\tud@res@a{#3}:\tud@res@b::\tud@res@c:(#2)%
    \edef\tud@res@a{%
      \endgroup%
      \unexpanded{\def#1}{\tud@res@a}%
    }%
  \tud@res@a%
}
\NewDocumentCommand\Changed@At@Entry@@@Get{m m r:: r:: r()}{%
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
    \tud@idx@split\tud@res@d{#2}%
    \protected@edef\tud@res@c{\expandafter\@secondoftwo\tud@res@d\tud@res@c}%
    \tud@replace@@in\tud@res@c{\idxsuffix{#5}}{}%
    \Markup@Expandable%
    \protected@edef\tud@res@b{\expandafter\@firstoftwo\tud@res@d\tud@res@b}%
    \tud@replace@@in\tud@res@b{\idxsuffix{#5}}{}%
    \edef\tud@res@c{%
      \endgroup%
      \unexpanded{\tud@idx@join#1}{\tud@res@b}{\tud@res@c}%
      \unexpanded{\appto#1}{\tud@res@a}%
    }%
  \tud@res@c%
}
\NewDocumentCommand\Changed@At@Special{o m m m}{%
  \begingroup%
    \def\do##1{%
      \tud@chg@entry@validate\tud@res@a\tud@res@b{##1}{%
        \tud@unique@xadd\tud@chg@version@list{\tud@res@a}%
        \tud@chg@general@get\tud@res@b{\tud@res@b}%
        \index[{changes-\tud@res@a}]{#2@\hyperref[#3]{#2}!\tud@res@b}%
      }%
    }%
    \dossvlist{#4}%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\tud@print@changedatlist\IfValueT{#1}{\unexpanded{[{#1}]}}%
    }%
  \tud@res@a%
}
\newcommand*\Hint[2]{\Changed@At@Special{Tipps \& Tricks}{sec:tips}{#1:#2}}
\newcommand*\tud@print@changedatlist[1][\z@]{%
  \begingroup%
    \ifx\tud@chg@version@list\@empty\else%
      \tud@list@sort\tud@chg@version@list%
      \let\tud@res@b\@empty%
      \forlistloop{\tud@print@@changedatlist\tud@res@b}{\tud@chg@version@list}%
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
\newcommand*\tud@print@@changedatlist[2]{%
  \appto#1{%
    \ignorespaces%
    \normalfont\normalsize%
    \hyperref[{idx:changes-#2}]{#2}%
    \tabularnewline%
  }%
}
\newcommand*\PrintChanges{%
  \begingroup%
    \cleardoublepage%
    \@ifpackageloaded{bookmark}{\bookmarksetup{startatroot}}{}%
    \tud@index@mode@num=-3\relax%
    \def\indexname{\"Anderungsliste}%
    \addchap{\indexname\label{idx:changes}}%
    \appto\tud@index@hook{%
      \def\tud@index@cols{\@ne}%
      \let\lettergroup\@gobble%
      \let\lettergroupDefault\@gobble%
      \def\indexspace{\tud@index@vskip}%
      \def\item{%
        \def\item{\tud@index@item[\tud@index@vskip]{0}}%
        \tud@index@item{0}%
      }%
    }%
    \def\do##1{%
      \begingroup%
        \def\tud@res@b{\endgroup}%
        \def\tud@res@a changes-####1\@nil{%
          \appto\tud@res@b{%
            \def\tud@index@title{\TUDScript####1}%
            \def\tud@index@toc{####1}%
            \def\tud@index@ref{\indexname\space f\"ur \TUDScript####1}%
          }%
        }%
        \tud@res@a##1\@nil%
      \tud@res@b%
      \def\tud@index@name{##1}%
      \tud@index@print[\tud@index@name]%
    }%
    \dolistloop{\tud@changes@list}%
  \endgroup%
}
\AtBeginDocument{%
  \newcommand*\itempkg{}%
  \undef\itempkg%
}
\newcommand*\tud@pkg@label@list{}
\newcommand*\tud@item@@pkg{%
  \let\itempkg\tud@item@pkg%
  \let\tud@pkg@label@list\tud@declaration@label@list%
}
\tud@list@create[before=\tud@item@@pkg]{DeclarePackages}{description}{2}
\NoIndentAfterEnv{DeclarePackages}
\NewDocumentCommand\tud@item@pkg{m !d() !d<> !o}{%
  \begingroup%
    \let\tud@res@a\@empty%
    \forcsvlist{\tud@pkg@declare\tud@res@a{\Package'*'}}{#1}%
    \IfValueT{#2}{%
      \forcsvlist{\tud@pkg@@declare\tud@res@a}{#2}%
    }%
    \IfValueT{#3}{%
      \forcsvlist{\tud@pkg@@declare*\tud@res@a}{#3}%
    }%
    \let\tud@res@b\@empty%
    \IfValueT{#4}{%
      \let\tud@res@d\@empty%
      \def\tud@res@b##1{%
        \in@{:}{##1}%
        \ifin@%
          \appto\tud@res@d{##1;}%
        \else%
          \let\tud@res@c\@empty%
          \docsvlist{#1}%
          \eappto\tud@res@d{##1:\expandonce\tud@res@c;}%
        \fi%
      }%
      \def\do##1{%
        \eappto\tud@res@c{%
          \ifx\tud@res@c\@empty\else,\space\fi%
          \noexpand\Package{##1}%
        }%
      }%
      \forssvlist{\tud@res@b}{#4}%
      \edef\tud@res@b{%
        \noexpand\Changed@At@Special[-1\baselineskip]{Paketbeschreibungen}%
          {sec:packages:recommended}{\expandonce\tud@res@d}%
      }%
    }%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\item[\expandonce\tud@res@a]%
      \expandonce\tud@res@b%
      \def\noexpand\tud@declaration@label@list{\expandonce\tud@pkg@label@list}%
    }%
  \tud@res@a%
  \strut\ignorespaces%
}
\newcommand\tud@pkg@declare[3]{\tud@pkg@@declare#1{#2{#3}}}
\NewDocumentCommand\tud@pkg@@declare{s m m}{%
  \tud@lbl@get\tud@lbl@tmp{#3}%
  \listeadd\tud@pkg@label@list{\tud@lbl@tmp}%
  \eappto#2{%
    \IfBooleanF{#1}{\ifx#2\@empty\else\unexpanded{\kern.1em/\kern.1em}\fi}%
    \noexpand\Inline@Declaration\IfBooleanT{#1}{*}\unexpanded{{#3}}%
  }%
}
\NewDocumentCommand\scrguide{!O{\KOMAScript-Handbuch}}{%
  \begingroup%
    \Entity@Link@Seek\tud@res@a{Bundle}{koma-script}%
    \tud@specialurl@wrapper\tud@res@a{\tud@res@a}%
    \tud@res@a{#1}%
  \endgroup%
  \xspace%
}
\NewDocumentEnvironment{tabularm}{O{c} m !o +b}{%
  \sbox\z@{\tabular[{#1}]{*{#2}l}#4\endtabular}%
  \begin{tabular}{c}%
    \usebox\z@%
    \IfValueT{#3}{\tabularnewline\parbox[b]{\the\wd\z@}{\vskip1.5ex#3}}%
  \end{tabular}%
}{}
\tud@newif\if@tud@code@used
\newenvironment{Example}{%
  \labeling{{\usekomafont{disposition}{Beispiel:\nobreakspace}}}%
  \item[{\usekomafont{disposition}{Beispiel:\nobreakspace}}]%
  \@tud@code@usedfalse%
  \AfterEndEnvironment{Code}{\@tud@code@usedtrue}%
}{%
  \begingroup%
    \edef\tud@res@a{%
      \endgroup%
      \noexpand\endlabeling%
      \if@tud@code@used%
        \noexpand\addvspace{\the\glueexpr-\parskip\relax}%
      \fi%
    }%
  \tud@res@a%
}
\NoIndentAfterEnv{Example}
\newcommand*\IncludeExample[2][1]{%
  \begingroup%
    \lstinputlisting[style=tudscr]{examples/#2}%
    \ifnum\pdf@shellescape=\@ne\relax%
      \filemodCmp{examples/#2.pdf}{examples/#2.tex}{}{%
        \edef\tud@res@a{%
          \tud@latex@ext -output-directory examples examples/#2.tex%
        }%
        \ShellEscape{\tud@res@a}%
        \ShellEscape{\tud@res@a}%
      }%
      \filemodCmp{examples/#2_print.pdf}{examples/#2_print.tex}{}{%
        \edef\tud@res@a{%
          \tud@latex@ext -output-directory examples examples/#2_print.tex%
        }%
        \ShellEscape{\tud@res@a}%
        \ShellEscape{\tud@res@a}%
      }%
    \fi%
    \def\tud@res@a{examples/#2.pdf}%
    \ifdef\tudprintflag{%
      \IfFileExists{examples/#2_print.pdf}{%
        \def\tud@res@a{examples/#2_print.pdf}%
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
      \begingroup%
        \tud@shellescape@wrn{\tud@res@a}%
        \tud@res@cnt=#1\relax%
        \@whilenum\tud@res@cnt>\z@\relax\do{%
          \advance\tud@res@cnt\m@ne%
          \clearpage%
          \fboxsep=-\arrayrulewidth%
          \noindent\fbox{\vbox to\textheight{%
            \vss\vss%
            \hbox to\textwidth{\hss\texttt{\tud@res@a}\hss}%
            \vskip\smallskipamount%
            \hbox to\textwidth{%
              \hss\texttt{\the\numexpr#1-\tud@res@cnt\relax/#1}\hss%
            }%
            \vss\vss\vss%
          }}%
        }%
      \endgroup%
      \clearpage%
    }%
  \endgroup%
}
\tud@newwrite\tud@bash@write
\newcommand*\HyperTutorial[1]{%
  \ifnum\pdf@shellescape=\@ne\relax%
    \filemodCmp{tutorials/#1.pdf}{tutorials/#1.tex}{}{%
      \let\tud@res@a\@empty%
      \ifdef\tudfinalflag{\appto\tud@res@a{\def\noexpand\tudfinalflag{}}}{}%
      \ifdef\tudprintflag{\appto\tud@res@a{\def\noexpand\tudprintflag{}}}{}%
      \appto\tud@res@a{\noexpand\input{#1.tex}}%
      \immediate\openout\tud@bash@write=tutorials.sh\relax%
      \def\tud@res@b##1{\immediate\write\tud@bash@write{##1}}%
      \tud@res@b{cd tutorials}%
      \tud@res@b{\tud@latex@ext -shell-escape "\tud@res@a"}%
      \ifwindows%
        \tud@res@b{if exist #1.bcf biber #1}%
      \else%
        \tud@res@b{[ -f #1.bcf ] && biber #1}%
      \fi%
      \tud@res@b{\tud@latex@ext "\tud@res@a"}%
      \tud@res@b{\tud@latex@ext -shell-escape "\tud@res@a"}%
      \ifwindows%
        \tud@res@b{if exist #1.ist makeglossaries #1}%
      \else%
        \tud@res@b{[ -f #1.ist ] && makeglossaries #1}%
      \fi%
      \ifwindows%
        \tud@res@b{if exist #1.xdy makeglossaries #1}%
      \else%
        \tud@res@b{[ -f #1.xdy ] && makeglossaries #1}%
      \fi%
      \tud@res@b{\tud@latex@ext "\tud@res@a"}%
      \tud@res@b{\tud@latex@ext -shell-escape "\tud@res@a"}%
      \tud@res@b{\tud@latex@ext -shell-escape "\tud@res@a"}%
      \immediate\closeout\tud@bash@write%
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
  \IfFileExists{tutorials/#1.pdf}{%
    \href[pdfnewwindow]{tutorials/#1.pdf}{\InlineDeclaration{\Tutorial''{#1}}}%
  }{%
    \tud@shellescape@wrn{tutorials/#1.pdf}%
    \Tutorial{#1}%
  }%
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
\forlistloop{\tud@res@a}{\tud@trace@lbl@types}
\NewDocumentCommand\tracinglabels{!s !D<>{} !O{missing}}{%
  \def\tud@res@a##1{\cslet{tud@trace@lbl@##1@list}\relax}%
  \forlistloop{\tud@res@a}{\tud@trace@lbl@types}%
  \let\tud@res@b\@empty%
  \in@{,all,}{,#3,}%
  \ifin@%
    \let\tud@res@b\tud@trace@lbl@types%
  \else%
    \def\tud@res@a##1{%
      \in@{,##1,}{,#3,}%
      \ifin@%
        \listadd\tud@res@b{##1}%
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
            \let\tud@res@c\@empty%
            \def\tud@res@a####1{\appto\tud@res@c{####1^^J}}%
            \forlistcsloop\tud@res@a{tud@trace@lbl@##1@list}%
            \@onelevel@sanitize\tud@res@c%
            \wlog{\tud@res@c}%
          }%
        }%
      \fi%
    }%
  }%
  \forlistloop{\tud@res@a}{\tud@res@b}%
}
\@onlypreamble\tracinglabels
\NewDocumentCommand\tud@trace@lbl@add{m o m}{%
  \ifcsundef{tud@trace@lbl@#1@list}{%
    \xifinlist{#1}{\tud@trace@lbl@types}{}{%
      \ClassError{tudscrmanual}{Undefined label type `#1'}{%
        The given tracing type was never defined.%
      }%
    }%
  }{%
    \begingroup%
      \protected@edef\tud@res@a{%
        \endgroup%
        \noexpand\tud@trace@lbl@@add{#1}{#2}{#3}%
      }%
    \tud@res@a%
  }%
}
\newcommand*\tud@trace@lbl@@add[3]{%
  \begingroup%
    \let\tud@res@b\@empty%
    \let\tud@res@c\@empty%
    \let\tud@res@d\m@ne%
    \IfValueT{#2}{%
      \TUD@set@numkey{}{tud@res@d}{%
        {url}{0},{matched}{1},{created}{2},{missing}{2},
      }{#1}%
      \ifx\FamilyKeyState\FamilyKeyStateProcessed%
        \ifcase\tud@res@d\relax%
          \def\tud@res@c{#2}%
        \or%
          \def\tud@res@b{\space(substituted)}%
          \def\tud@res@c{<-\space#2}%
        \or%
          \tud@trace@lbl@add{url}[{#2}]{#3}%
          \def\tud@res@c{->\space#2}%
        \fi%
      \else%
        \ClassWarning{tudscrmanual}{No specific label log `#1' defined}%
        \FamilyKeyStateProcessed%
      \fi%
    }%
    \let\tud@res@a\@empty%
    \def\do##1{%
      \begingroup%
        \ifnum\tud@res@d=\z@\relax% url
          \tud@if@lbl@exists{##1}{%
            \eappto\tud@res@c{\space<-\space##1}%
          }{%
            \eappto\tud@res@c{\space??\space##1}%
          }%
        \else%
          \protected@edef\tud@res@c{%
            ##1\ifx\tud@res@c\@empty\else\space\tud@res@c\fi%
          }%
        \fi%
        \@onelevel@sanitize\tud@res@c%
        \tud@unique@csxadd{tud@trace@lbl@#1@list}{\tud@res@c}%
      \endgroup%
      \protected@eappto\tud@res@a{%
        ^^J\@spaces##1\ifx\tud@res@c\@empty\else^^J\@spaces\tud@res@c\fi%
      }%
    }%
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
  \def\tud@res@a##1{\cslet{tud@trace@markup@##1@list}\relax}%
  \forlistloop{\tud@res@a}{\tud@trace@markup@types}%
  \let\tud@res@b\@empty%
  \let\tud@res@c\@empty%
  \protected@edef\tud@res@a{#1}%
  \@for\tud@res@a:=\tud@res@a\do{%
    \trim@spaces@in\tud@res@a%
    \ifx\tud@res@a\@empty\else%
      \listeadd\tud@res@b{\tud@res@a}%
    \fi%
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
      \xifinlist{#1}{\tud@trace@markup@types}{}{%
        \ClassError{tudscrmanual}{Undefined markup type `#1'}{%
          The given tracing type was never defined.%
        }%
      }%
    }{%
      \protected@edef\tud@res@a{#2}%
      \@onelevel@sanitize\tud@res@a%
      \wlog{+++++ markup #1\on@line\space+++++^^J\@spaces\tud@res@a}%
      \tud@unique@csxadd{tud@trace@markup@#1@list}{\tud@res@a}%
    }%
  \endgroup%
}
\AtEndOfClass%
  {\InputIfFileExists{tudscrmanual.cfg}{}{}}
%%%% From File: tudscr-fields.dtx (no git version info was found)
\newcommand*\@chairman{}
\newcommand*\chairman[1]{\tud@trim@field\@chairman{#1}}
\newcommand*\@grade{}
\newcommand*\grade[1]{\tud@trim@field\@grade{#1}}
\newcommand*\@issuedate{}
\newcommand*\issuedate[1]{\tud@printdate{\@issuedate}{#1}}
\newcommand*\@duedate{}
\newcommand*\duedate[1]{\tud@printdate{\@duedate}{#1}}
\newcommand*\@contactperson{}
\newcommand*\contactperson[1]{\tud@trim@field\@contactperson{#1}}
\newcommand*\@office{}
\newrobustcmd*\office[1]{\tud@trim@field\@office{#1}}
\newcommand*\@telephone{}
\newrobustcmd*\telephone[1]{\tud@trim@field\@telephone{#1}}
\newcommand*\@telefax{}
\newrobustcmd*\telefax[1]{\tud@trim@field\@telefax{#1}}
%%%% From File: tudscr-localization.dtx (no git version info was found)
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
%%%% From File: tudscr-texindy.dtx (no git version info was found)
\edef\tud@res@a{\catcode`\noexpand\#=\the\catcode`\#\relax}%
\@makeother\#
\newcommand*\@hashchar{#}
\tud@res@a
\tud@newwrite\tud@xdy@write
\NewDocumentCommand\tud@xdy@create{s}{%
  \begingroup%
    \edef\tud@res@a{\@currname.\@currext-\IfBooleanTF{#1}{gls}{ind}.xdy}%
    \def\tud@res@b{\endgroup}%
    \expandafter\IfFileExists\expandafter{\tud@res@a}{}{%
      \eappto\tud@res@b{%
        \noexpand\tud@xdy@@create%
          {the\IfBooleanTF{#1}{glossary}{index}}%
          {\tud@res@a}%
      }%
    }%
  \tud@res@b%
}
\newcommand*\tud@xdy@@create[2]{%
  \immediate\openout\tud@xdy@write=#2\relax%
  \immediate\write\tud@xdy@write{(require "texindy.xdy")}%
  \immediate\write\tud@xdy@write{%
    (markup-index^^J%
    \@spaces:hierdepth 3^^J%
    \@spaces:open^^J%
    "^^J%
    \string\begin{#1}^^J%
    "^^J% /open
    \@spaces:close^^J%
    "^^J%
    \string~n\string\end{#1}^^J%
    "^^J% /close
    )^^J%
    (define-location-class "arabic-page-numbers"^^J%
    \@spaces("arabic-numbers")^^J%
    \@spaces:min-range-length 1^^J%
    )^^J%
    (markup-range :sep "--")^^J%
    (merge-rule :eregexp^^J%
    \@spaces"\string\[(.*)\string\]"^^J%
    \@spaces""^^J%
    )^^J%
    (markup-indexentry :depth 3^^J%
    \@spaces:open\space\space%
      "\string~n\string\subsubsubitem\space"^^J%
    )^^J%
    (markup-locclass-list^^J%
    \@spaces:open\space\space%
      "\string\,\string\dotfill\string\,"^^J%
    \@spaces:close\space%
      "\string\relax"^^J%
    )^^J%
    (define-attributes (("!" "default") ("?" "default") ("default")))^^J%
    (markup-attribute-group-list :sep ",\space")^^J%
    (markup-locref :attr "!"^^J%
    \@spaces:open\space\space%
      "\string\textbf\@charlb\string\hyperpage\@charlb"^^J%
    \@spaces:close\space%
      "\@charrb\@charrb"^^J%
    )^^J%
    (markup-locref :attr "?"^^J%
    \@spaces:open\space\space%
      "\string\textit\@charlb\string\hyperpage\@charlb"^^J%
    \@spaces:close\space%
      "\@charrb\@charrb"^^J%
    )^^J%
    (markup-locref :attr "default"^^J%
    \@spaces:open\space\space%
      "\string\hyperpage\@charlb"^^J%
    \@spaces:close\space%
      "\@charrb"^^J%
    )^^J%
    (markup-crossref-list :class "see"^^J%
    \@spaces:open\space\space%
      "\string\cleversee\space"^^J%
    \@spaces:sep\space\space\space%
      ";\space"^^J%
    \@spaces:close\space%
      "\@backslashchar\@backslashchar"^^J%
    )^^J%
    (markup-crossref-list :class "seealso"^^J%
    \@spaces:open\space\space%
      "\string\cleverseealso\space"^^J%
    \@spaces:sep\space\space\space%
      ";\space"^^J%
    \@spaces:close\space%
      "\@backslashchar\@backslashchar"^^J%
    )^^J%
    (define-crossref-class "seeunverified" :unverified)^^J%
    (markup-crossref-list :class "seeunverified"^^J%
    \@spaces:open\space\space%
      "\string\cleversee\space"^^J%
    \@spaces:sep\space\space\space%
      ";\space"^^J%
    \@spaces:close\space%
      "\@backslashchar\@backslashchar"^^J%
    )^^J%
    (define-crossref-class "seeidx" :unverified)^^J%
    (markup-crossref-list :class "seeidx"^^J%
    \@spaces:open\space\space%
      "\string\seeidx\@charlb"^^J%
    \@spaces:sep\space\space\space%
      ";\space"^^J%
    \@spaces:close\space%
      "\@charrb"^^J%
    )^^J%
    (markup-crossref-layer-list :class "see"%
    \@spaces\space:sep\space%
      "\string\seesep\space"%
    )^^J%
    (markup-crossref-layer-list :class "seealso"%
    \space:sep\space%
      "\string\seesep\space"%
    )^^J%
    (define-location-class-order^^J%
    \space\space(^^J%
    \@spaces"see" "seealso"^^J%
    \@spaces"seeidx" "seeunverified"^^J%
    \@spaces"roman-page-numbers" "arabic-page-numbers" "alpha-page-numbers"^^J%
    \@spaces"Roman-page-numbers" "Alpha-page-numbers"^^J%
    \space\space)^^J%
    )^^J%
  }%
  \immediate\closeout\tud@xdy@write%
}
\tud@xdy@create
\endinput
%%
%% End of file `tudscrmanual.cls'.
