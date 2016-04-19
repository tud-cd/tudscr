%%
%% This is file `scrreprt.cls',
%% generated with the docstrip utility, extended by scrdocstrip.
%%
%% The original source files were:
%%
%% scrkernel-version.dtx  (with options: `class,report')
%% scrkernel-basics.dtx  (with options: `load')
%% tocbasic.dtx  (with options: `class,load,chapter')
%% scrkernel-sections.dtx  (with options: `class,report,prepare')
%% scrkernel-compatibility.dtx  (with options: `class,report,option')
%% scrkernel-miscellaneous.dtx  (with options: `class,report,option')
%% scrkernel-language.dtx  (with options: `class,report,option')
%% scrkernel-fonts.dtx  (with options: `class,report,option')
%% scrkernel-typearea.dtx  (with options: `class,report,option')
%% scrkernel-paragraphs.dtx  (with options: `class,report,option')
%% scrkernel-title.dtx  (with options: `class,report,option')
%% scrkernel-sections.dtx  (with options: `class,report,option')
%% scrkernel-pagestyles.dtx  (with options: `class,report,option')
%% scrkernel-floats.dtx  (with options: `class,report,option')
%% scrkernel-footnotes.dtx  (with options: `class,report,option')
%% scrkernel-listsof.dtx  (with options: `class,report,option')
%% scrkernel-bibliography.dtx  (with options: `class,report,option')
%% scrkernel-index.dtx  (with options: `class,report,option')
%% scrkernel-listsandtabulars.dtx  (with options: `class,report,option')
%% scrkernel-sections.dtx  (with options: `class,report,execoption')
%% scrkernel-miscellaneous.dtx  (with options: `class,report,execoption')
%% scrkernel-compatibility.dtx  (with options: `class,report,body')
%% scrkernel-fonts.dtx  (with options: `class,report,body')
%% scrkernel-language.dtx  (with options: `class,report,body')
%% scrkernel-typearea.dtx  (with options: `class,report,body')
%% scrkernel-paragraphs.dtx  (with options: `class,report,body')
%% scrkernel-title.dtx  (with options: `class,report,body')
%% scrkernel-sections.dtx  (with options: `class,report,body')
%% scrkernel-miscellaneous.dtx  (with options: `class,report,body')
%% scrkernel-pagestyles.dtx  (with options: `class,report,body')
%% scrkernel-floats.dtx  (with options: `class,report,body')
%% scrkernel-footnotes.dtx  (with options: `class,report,body')
%% scrkernel-listsof.dtx  (with options: `class,report,body')
%% scrkernel-bibliography.dtx  (with options: `class,report,body')
%% scrkernel-index.dtx  (with options: `class,report,body')
%% scrkernel-listsandtabulars.dtx  (with options: `class,report,body')
%% scrlogo.dtx  (with options: `logo')
%% 
%% Copyright (c) 1994-2014 Markus Kohm [komascript at gmx info]
%% 
%% This file was generated from file(s) of the KOMA-Script bundle.
%% ---------------------------------------------------------------
%% 
%% It may be distributed under the conditions of the
%% LaTeX Project Public License in the version distributed together
%% with KOMA-Script, see file `lppl.txt' or `lppl-de.txt'.
%% 
%% This file may only be distributed together with a copy of the
%% KOMA-Script bundle.  You may however distribute the
%% KOMA-Script bundle without all such generated files.  See also
%% `lppl.txt' or `lppl-de.txt' for additional information.
%% 
%% The list of files belonging to KOMA-Script distribution is given in
%% the file `manifest.txt'.  See also `lppl.txt' or `lppl-de.txt' for
%% additional information.
%% 
%% If this file is a beta version, you may not be allowed to distribute
%% it.  Look at the comments below to see if this is the case.
%% 
%% English and German manuals are part of KOMA-Script bundle.
%% ----------------------------------------------------------
%% 
%% See `README'.
%% 
%% The KOMA-Script bundle (but maybe not this file) was based upon the
%% LaTeX 2.09 Script family created by Frank Neukam 1993 and the LaTeX2e
%% standard classes created by The LaTeX3 Project 1994-1996.  You may
%% find a complete unmodified copy of LaTeX2e at
%% <http://www.ctan.org/pub/tex-archive/macros/latex/base/>.
%% 
%%% From File: $Id: scrkernel-version.dtx 2213 2015-10-03 12:59:03Z kohm $
\begingroup
  \catcode`\@11\relax
  \ifx\KOMAScriptVersion\undefined
    \newcommand*{\@CheckKOMAScriptVersion}[1]{%
      \gdef\KOMAScriptVersion{#1}%
    }%
  \else
    \newcommand*{\@CheckKOMAScriptVersion}[1]{%
      \def\@tempa{#1}%
      \ifx\KOMAScriptVersion\@tempa\else
        \@latex@warning@no@line{%
          \noexpand\KOMAScriptVersion\space is
          `\KOMAScriptVersion',\MessageBreak
          but `#1' was expected!\MessageBreak
          You should not use classes, packages or files
          from\MessageBreak
          different KOMA-Script versions%
        }%
      \fi
    }
  \fi
  \@CheckKOMAScriptVersion{2015/10/03 v3.19a KOMA-Script}%
\endgroup
\providecommand*{\scr@clsextension}{\@clsextension}
\AtBeginDocument{%
  \let\scr@clsextension\@clsextension
}
\newcommand*{\KOMAClassName}{%
  scrreprt%
}
\newcommand*{\ClassName}{%
  report%
}
\newcommand*{\KOMAClassFileName}{\KOMAClassName.\@clsextension}
\edef\KOMAClassFileName{\KOMAClassFileName}
\ProvidesClass{\KOMAClassName}[%
  2015/10/03 v3.19a KOMA-Script
  document class (\ClassName)%
]
%%% From File: $Id: scrkernel-basics.dtx 2190 2015-08-29 17:21:55Z kohm $
\RequirePackage{scrkbase}[\KOMAScriptVersion]
%%% From File: $Id: tocbasic.dtx 2146 2015-06-20 06:38:46Z kohm $
\RequirePackage{tocbasic}[%
  2015/10/03 v3.19a KOMA-Script
]
\AtAddToTocList[\@currname.\@currext]{\setuptoc{\@currext}{onecolumn}}%
\AtAddToTocList[float]{\setuptoc{\@currext}{onecolumn}}%
\addtotoclist{toc}
\addtotoclist[float]{lof}
\addtotoclist[float]{lot}
%%% From File: $Id: scrkernel-sections.dtx 2212 2015-10-03 12:51:00Z kohm $
%%%            (run: prepare)
\newif\if@openright
\@openrightfalse
\newcommand*{\scr@dotchangeatdocument}[1]{%
  \ClassError{\KOMAClassName}{%
    change of end dot feature after \string\begin{document}%
  }{%
    You've tried to set `numbers=#1' after \string\begin{document},\MessageBreak
    but this option is only allowed at the document preamble.\MessageBreak
    See KOMA-Script manual for more information about.%
  }%
}
\newcommand*{\scr@osectarg}{0}
\newcommand*{\scr@activate@xsection}[1]{%
  \renewcommand*{\scr@osectarg}{#1}%
}
\newif\if@altsecnumformat\@altsecnumformatfalse
\newif\if@autodot
\renewcommand*{\@autodottrue}{\global\let\if@autodot\iftrue}
\renewcommand*{\@autodotfalse}{\global\let\if@autodot\iffalse}
\@autodotfalse
\newcommand*{\scr@altsecnumhook}{}
\AtBeginDocument{\scr@altsecnumhook}
\newcommand*{\scr@altsecnumhooktrue}{%
  \@altsecnumformattrue\global\let\@altsecnumformatfalse\@altsecnumformattrue
}
\newcommand*{\scr@altsecnumhookfalse}{%
  \@altsecnumformatfalse\global\let\@altsecnumformattrue\@altsecnumformatfalse
}
\newcommand*{\size@part}{}
\newcommand*{\size@partnumber}{}
\newcommand*{\scr@part@beforeskip}{%
  \z@ \@plus 1fil + \baselineskip
}
\newcommand*{\scr@part@innerskip}{20\p@}
\newcommand*{\scr@part@afterskip}{%
  \z@ \@plus 1fil
}
\newcommand*{\scr@part@style}{part}
\newcommand*{\partheadstartvskip}{%
  \null\vskip-\baselineskip\vskip\@tempskipa
}
\newcommand*{\partheadmidvskip}{%
  \par\nobreak
  \vskip\@tempskipa
}
\newcommand*{\partheadendvskip}{%
  \vskip\@tempskipa\newpage
}
\newcommand*{\partheademptypage}{%
  \if@twoside\if@openright
      \null%
      \thispagestyle{empty}%
      \newpage
  \fi\fi
}
\newif\if@chapterprefix
\newcommand*{\size@chapter}{}
\newcommand*{\size@chapterprefix}{\size@chapter}
\newcommand*{\scr@chapter@beforeskip}{\z@}
\let\scr@chapter@beforeskip\z@
\newcommand*{\scr@chapter@afterskip}{\z@}
\let\scr@chapter@afterskip\z@
\newcommand*{\scr@chapter@innerskip}{\z@}
\let\scr@chapter@innerskip\z@
\newcommand*{\scr@chapter@style}{chapter}
\newcommand*{\chapterheadstartvskip}{\vspace{\@tempskipa}}
\newcommand*{\chapterheadendvskip}{\vskip\@tempskipa}
\newcommand*{\chapterheadmidvskip}{\par\nobreak\vskip\@tempskipa}
\newcommand*{\size@section}{}
\newcommand*{\size@subsection}{}
\newcommand*{\size@subsubsection}{}
\newcommand*{\size@paragraph}{}
\newcommand*{\size@subparagraph}{}
\newcommand*{\sectfont}{\normalcolor\sffamily\bfseries}
%%% From File: $Id: scrkernel-compatibility.dtx 2213 2015-10-03 12:59:03Z kohm $
\newif\if@scr@emulatestandardclasses
\let\scr@emulatestandardclassestrue\relax
\let\scr@emulatestandardclassesfalse\relax
\DeclareOption{emulatestandardclasses}{%
  \let\if@scr@emulatestandardclasses\iftrue
  \KOMAExecuteOptions{%
    fontsize=10pt,%
    headings=standardclasses,%
    cleardoublepage=current
  }%
  \newcommand*{\defaultpapersize}{letter}%
  \AtEndOfClass{%
    \setkomafont{descriptionlabel}{\bfseries}%
    \setkomafont{dictum}{\normalfont\small}%
    \setkomafont{caption}{}%
    \setkomafont{captionlabel}{}%
    \setcapindent{0pt}%
    \RequirePackage[pagestyleset=standard,markcase=upper]{scrlayer-scrpage}%
    \PreventPackageFromLoading{scrpage2}%
    \setkomafont{pagenumber}{\normalfont}%
    \setkomafont{pageheadfoot}{\normalfont}%
    \cfoot[\pagemark]{}%
    \pagestyle{plain}%
  }%
}
\newcommand*
  {\scr@compatibility}{\scr@v@last}
\KOMA@key{version}[last]{%
  \scr@ifundefinedorrelax{scr@v@#1}{%
    \def\scr@compatibility{0}%
    \ClassWarningNoLine{\KOMAClassName}{%
      You have set option `version' to value `#1', but\MessageBreak
      this value of version is not supported.\MessageBreak
      Because of this, version was set to `first'%
    }%
    \FamilyKeyStateProcessed
    \KOMA@kav@replacevalue{.%
      \KOMAClassFileName
    }{version}{first}%
  }{%
    \ClassInfoNoLine{\KOMAClassName}{%
      Switching compatibility level to `#1'%
    }%
    \edef\scr@compatibility{\@nameuse{scr@v@#1}}%
    \FamilyKeyStateProcessed
    \KOMA@kav@xreplacevalue{.%
      \KOMAClassFileName
    }{version}{#1}%
  }%
}
\KOMA@kav@add{.\KOMAClassFileName}{version}{last}
\AtEndOfClass{%
  \KOMA@key{version}[]{%
    \ClassError{\KOMAClassName}{%
      Option `version' too late%
    }{%
      Option `version' may be set only while loading the
      class.\MessageBreak
      But you've tried to set it up later.%
    }%
    \FamilyKeyStateProcessed
  }%
}
\@namedef{scr@v@first}{0}
\@namedef{scr@v@2.9}{0}
\@namedef{scr@v@2.9t}{0}
\@namedef{scr@v@2.9u}{1}
\@namedef{scr@v@2.95}{2}
\@namedef{scr@v@2.95a}{2}
\@namedef{scr@v@2.95b}{2}
\@namedef{scr@v@2.96}{2}
\@namedef{scr@v@2.96a}{3}
\@namedef{scr@v@2.97}{3}
\@namedef{scr@v@2.97a}{3}
\@namedef{scr@v@2.97b}{3}
\@namedef{scr@v@2.97c}{4}
\@namedef{scr@v@2.97d}{5}
\@namedef{scr@v@2.97e}{6}
\@namedef{scr@v@2.98}{6}
\@namedef{scr@v@2.98a}{6}
\@namedef{scr@v@2.98b}{6}
\@namedef{scr@v@2.98c}{7}
\@namedef{scr@v@3.00}{8}
\@namedef{scr@v@3.01}{8}
\@namedef{scr@v@3.01a}{8}
\@namedef{scr@v@3.01b}{9}
\@namedef{scr@v@3.01c}{9}
\@namedef{scr@v@3.02}{9}
\@namedef{scr@v@3.02b}{9}
\@namedef{scr@v@3.02c}{10}
\@namedef{scr@v@3.03}{10}
\@namedef{scr@v@3.03a}{10}
\@namedef{scr@v@3.03b}{10}
\@namedef{scr@v@3.04}{10}
\@namedef{scr@v@3.04a}{10}
\@namedef{scr@v@3.05}{10}
\@namedef{scr@v@3.05a}{10}
\@namedef{scr@v@3.06}{10}
\@namedef{scr@v@3.07}{10}
\@namedef{scr@v@3.08}{10}
\@namedef{scr@v@3.08a}{10}
\@namedef{scr@v@3.08b}{10}
\@namedef{scr@v@3.09}{10}
\@namedef{scr@v@3.09a}{10}
\@namedef{scr@v@3.10}{10}
\@namedef{scr@v@3.10a}{10}
\@namedef{scr@v@3.10b}{10}
\@namedef{scr@v@3.11}{10}
\@namedef{scr@v@3.11a}{10}
\@namedef{scr@v@3.11b}{10}
\@namedef{scr@v@3.12}{11}
\@namedef{scr@v@3.13}{12}
\@namedef{scr@v@3.13a}{13}
\@namedef{scr@v@3.14}{13}
\@namedef{scr@v@3.15}{14}
\@namedef{scr@v@3.16}{14}
\@namedef{scr@v@3.17}{15}
\@namedef{scr@v@3.17a}{15}
\@namedef{scr@v@3.17c}{15}
\@namedef{scr@v@3.18}{15}
\@namedef{scr@v@3.18a}{15}
\@namedef{scr@v@3.19}{15}
\@namedef{scr@v@3.19a}{15}
\@namedef{scr@v@last}{15}
\newcommand*{\scr@v@is@lt}[1]{%
  \scr@compatibility<\@nameuse{scr@v@#1}
}
\newcommand*{\scr@v@is@gt}[1]{%
  \scr@compatibility>\@nameuse{scr@v@#1}
}
\newcommand*{\scr@v@is@le}[1]{%
  \numexpr\scr@compatibility-\@ne\relax<\@nameuse{scr@v@#1}
}
\newcommand*{\scr@v@is@ge}[1]{%
  \numexpr\scr@compatibility+\@ne\relax>\@nameuse{scr@v@#1}
}
%%% From File: $Id: scrkernel-miscellaneous.dtx 2028 2015-03-23 12:19:51Z kohm $
\KOMA@key{draft}[true]{%
  \KOMA@set@ifkey{draft}{@tempswa}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed
    \if@tempswa
      \KOMA@kav@replacebool{.%
        \KOMAClassFileName
      }{draft}{@tempswa}%
      \setlength{\overfullrule}{5pt}%
    \else
      \KOMA@kav@replacebool{.%
        \KOMAClassFileName
      }{draft}{@tempswa}%
      \setlength{\overfullrule}{\z@}%
    \fi
  \fi
}
\KOMA@kav@add{.\KOMAClassFileName}{draft}{false}
\KOMA@DeclareStandardOption
{final}{draft=false}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
%%% From File: $Id: scrkernel-language.dtx 2151 2015-07-03 09:25:42Z kohm $
%%% From File: $Id: scrkernel-fonts.dtx 2181 2015-08-24 09:30:25Z kohm $
\newcommand*\@ptsize{%
  11%
}
\newcommand*{\@pt@scan}{%
  \expandafter\@pt@@scan\CurrentOption pt\@pt@@scan%
}
\newcommand*{\@pt@@scan}{}
\def\@pt@@scan #1pt#2\@pt@@scan{%
  \ifstr{#2}{pt}{%
    \ifnumber{#1}{%
      \ifstr{#1}{10}{%
        \KOMA@UseStandardOption{\PackageInfoNoLine{\KOMAClassName}}%
                               {#1#2}{fontsize=#1#2}%
      }{%
        \ifstr{#1}{11}{%
          \KOMA@UseStandardOption{\PackageInfoNoLine{\KOMAClassName}}%
                                 {#1#2}{fontsize=#1#2}%
        }{%
          \ifstr{#1}{12}{%
            \KOMA@UseStandardOption{\PackageInfoNoLine{\KOMAClassName}}%
                                   {#1#2}{fontsize=#1#2}%
          }{%
            \KOMA@UseDeprecatedOption{\PackageWarningNoLine{\KOMAClassName}}%
                                     {#1#2}{fontsize=#1#2}%
          }%
        }%
      }
    }{\@headlines}%
  }{\@headlines}%
}
\providecommand*{\@fontsizefilebase}{scrsize}
\KOMA@key{fontsize}{%
  \scr@ifundefinedorrelax{changefontsizes}{%
    \@defaultunits\@tempdima#1pt\relax\@nnil
    \edef\@ptsize{#1}%
  }{%
    \expandafter\@defaultunits\expandafter\@tempdima#1 pt\relax\@nnil
    \edef\@tempa{#1}%
    \setlength{\@tempdimb}{\@tempdima}%
    \edef\@tempb{\strip@pt\@tempdimb}%
    \addtolength{\@tempdimb}{-10\p@}%
    \edef\@ptsize{\strip@pt\@tempdimb}%
    \edef\@tempa{%
      \noexpand\makeatletter
      \noexpand\InputIfFileExists{\@fontsizefilebase\@tempa.clo}{%
        \noexpand\ClassInfo{\KOMAClassName}{%
          File `\@fontsizefilebase\@tempa.clo' used to setup font sizes}%
      }{%
        \noexpand\InputIfFileExists{\@fontsizefilebase\@tempb pt.clo}{%
          \noexpand\ClassInfo{\KOMAClassName}{%
            File `\@fontsizefilebase\@tempb pt.clo' used instead of%
            \noexpand\MessageBreak
            file `\@fontsizefilebase\@tempa.clo' to setup font sizes}%
        }{%
          \noexpand\changefontsizes{#1}%
        }%
      }%
      \noexpand\catcode`\noexpand\@=\the\catcode`\@
    }%
    \@tempa
  }%
  \FamilyKeyStateProcessed
  \KOMA@kav@xreplacevalue{.%
    \KOMAClassFileName
  }{fontsize}{#1}%
}
%%% From File: $Id: scrkernel-typearea.dtx 2166 2015-07-26 08:15:44Z kohm $
\newcommand*{\@BCOR}{\expandafter\@@BCOR\CurrentOption BCORBCOR\@@BCOR}
\newcommand*{\@@BCOR}{}
\def\@@BCOR #1BCOR#2BCOR#3\@@BCOR{%
  \ifstr{#1}{}{%
    \ifstr{#3}{BCOR}{%
      \PassOptionsToPackage{BCOR#2}{typearea}%
    }{\scr@pti@nerr@r}%
  }{\scr@pti@nerr@r}%
}
\newcommand*{\@DIV}{\expandafter\@@DIV\CurrentOption DIVDIV\@@DIV}
\newcommand*{\@@DIV}{}
\def\@@DIV #1DIV#2DIV#3\@@DIV{%
  \edef\@tempa{#1}\ifx\@tempa\@empty
    \edef\@tempa{#3}\def\@tempb{DIV}\ifx\@tempa\@tempb
      \PassOptionsToPackage{DIV#2}{typearea}%
    \else\scr@pti@nerr@r\fi
  \else\@BCOR\fi
}
\newcommand{\@headlines}{%
  \expandafter\@@headlines\CurrentOption headlines\@@headlines%
}
\newcommand*{\@@headlines}{}
\def\@@headlines #1headlines#2\@@headlines{
  \edef\@tempa{#2}\edef\@tempb{headlines}\ifx\@tempa\@tempb
    \PassOptionsToPackage{#1headlines}{typearea}
  \else\@DIV\fi
}
\newcommand*{\x@paper}{%
  \expandafter\x@@paper\CurrentOption paper\x@@paper%
}
\newcommand*{\x@@paper}{}
\def\x@@paper #1#2paper#3\x@@paper{%
  \ifstr{#3}{paper}{%
    \ifnumber{#2}{%
      \ifstr{#1}{a}{%
        \PassOptionsToPackage{#3=#1#2}{typearea}%
      }{%
        \ifstr{#1}{b}{%
          \PassOptionsToPackage{#3=#1#2}{typearea}%
        }{%
          \ifstr{#1}{c}{%
            \PassOptionsToPackage{#3=#1#2}{typearea}%
          }{%
            \ifstr{#1}{d}{%
              \PassOptionsToPackage{#3=#1#2}{typearea}%
            }{\scr@pti@nerr@r}%
          }%
        }%
      }%
    }{\scr@pti@nerr@r}%
  }{%
    \@pt@scan
  }%
}
\newcommand*{\scr@pti@nerr@r}{
  \OptionNotUsed
}
\KOMA@key{twoside}[true]{%
  \if@atdocument\else\PassOptionsToPackage{twoside=#1}{typearea}\fi%
  \ifstr{#1}{semi}{%
    \@twosidetrue
    \FamilyKeyStateProcessed
  }{%
    \def\FamilyElseValue{, `semi'}%
    \KOMA@set@ifkey{twoside}{%
      @tempswa%
    }{#1}%
  }%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed
    \expandafter\ifnum\scr@v@is@ge{3.17}%
      \if@tempswa\flushbottom
      \else\if@twocolumn\flushbottom\else\raggedbottom\fi\fi
    \fi
    \KOMA@kav@xreplacevalue{.%
      \KOMAClassFileName
    }{twoside}{#1}%
  \fi
}
\KOMAExecuteOptions{twoside=false}
\KOMA@DeclareStandardOption%
  {oneside}{twoside=false}
\KOMA@key{twocolumn}[true]{%
  \if@atdocument\else\PassOptionsToPackage{twocolumn=#1}{typearea}\fi%
  \KOMA@set@ifkey{twocolumn}{@twocolumn}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed
    \KOMA@kav@replacebool{.%
      \KOMAClassFileName
    }{twocolumn}{@twocolumn}%
    \expandafter\ifnum\scr@v@is@ge{3.17}%
      \if@twocolumn\twocolumn\sloppy\flushbottom
      \else\onecolumn\if@twoside\flushbottom\else\raggedbottom\fi\fi
    \fi
  \fi
}
\AtEndOfClass{%
  \expandafter\ifnum\scr@v@is@lt{3.17}%
    \if@twocolumn\twocolumn\sloppy\flushbottom
    \else\onecolumn\if@twoside\flushbottom\else\raggedbottom\fi\fi
  \fi
}
\KOMAExecuteOptions{twocolumn=false}
\KOMA@DeclareStandardOption%
  {onecolumn}{twocolumn=false}
\DeclareOption*{%
  \x@paper}
%%% From File: $Id: scrkernel-paragraphs.dtx 2179 2015-08-22 06:36:48Z kohm $
\newcommand*{\setparsizes}[3]{%
  \edef\f@parindent{\the\parindent}%
  \edef\f@parskip{\the\parskip}%
  \edef\f@parfillskip{\the\parfillskip}%
  \def\scr@parindent{#1}%
  \def\scr@parskip{#2}%
  \def\scr@parfillskip{#3}%
  \def\par@update{%
    \if@atdocument\let\par@update\default@par@update\fi
    \par@updaterelative
  }%
  \KOMA@kav@remove{.\KOMAClassFileName}{parskip}{false}%
  \KOMA@kav@remove{.\KOMAClassFileName}{parskip}{never}%
  \KOMA@kav@remove{.\KOMAClassFileName}{parskip}{full}%
  \KOMA@kav@remove{.\KOMAClassFileName}{parskip}{full-}%
  \KOMA@kav@remove{.\KOMAClassFileName}{parskip}{full+}%
  \KOMA@kav@remove{.\KOMAClassFileName}{parskip}{full*}%
  \KOMA@kav@remove{.\KOMAClassFileName}{parskip}{half}%
  \KOMA@kav@remove{.\KOMAClassFileName}{parskip}{half-}%
  \KOMA@kav@remove{.\KOMAClassFileName}{parskip}{half+}%
  \KOMA@kav@remove{.\KOMAClassFileName}{parskip}{half*}%
}
\newcommand*{\f@parindent}{\the\parindent}
\newcommand*{\f@parskip}{\the\parskip}
\newcommand*{\f@parfillskip}{\the\parfillskip}
\AtEndOfClass{%
  \edef\f@parindent{\the\parindent}%
  \edef\f@parskip{\the\parskip}%
  \edef\f@parfillskip{\the\parfillskip}%
}
\newcommand*{\par@update}{}
\let\par@update\relax
\newcommand*{\default@par@update}{}
\let\default@par@update\relax
\newcommand*{\scr@parindent}{1em}
\newcommand*{\scr@parskip}{\z@}
\newcommand*{\scr@parfillskip}{\z@ \@plus 1fil}
\KOMA@key{parskip}[true]{%
  \begingroup
    \KOMA@set@ncmdkey{parskip}{@tempa}{%
      {never}{0},%
      {false}{1},{off}{1},{no}{1},%
      {full-}{2},%
      {half-}{3},%
      {full}{4},{true}{4},{on}{4},{yes}{4},%
      {half}{5},%
      {full+}{6},%
      {half+}{7},%
      {full*}{8},%
      {half*}{9},%
      {relative}{10},%
      {absolute}{11}%
    }{#1}%
    \ifx\FamilyKeyState\FamilyKeyStateProcessed
      \aftergroup\FamilyKeyStateProcessed
      \ifcase\number\@tempa% 0
        \endgroup
        \setparsizes{1em}{\z@}{\z@ \@plus 1fil}%
        \KOMA@kav@add{.\KOMAClassFileName}{parskip}{never}%
        \if@atdocument\AfterKOMAoptions{\selectfont}\fi
      \or% 1
        \endgroup
        \setparsizes{1em}{\z@ \@plus \p@}{\z@ \@plus 1fil}%
        \KOMA@kav@add{.\KOMAClassFileName}{parskip}{false}%
        \if@atdocument\AfterKOMAoptions{\selectfont}\fi
      \or% 2
        \endgroup
        \setparsizes{\z@}{\baselineskip \@plus .1\baselineskip}{%
          \z@ \@plus 1fil}%
        \KOMA@kav@add{.\KOMAClassFileName}{parskip}{full-}%
        \if@atdocument\AfterKOMAoptions{\selectfont}\fi
      \or% 3
        \endgroup
        \setparsizes{\z@}{.5\baselineskip \@plus .5\baselineskip}{%
          \z@ \@plus 1fil}%
        \KOMA@kav@add{.\KOMAClassFileName}{parskip}{half-}%
        \if@atdocument\AfterKOMAoptions{\selectfont}\fi
      \or% 4
        \endgroup
        \setparsizes{\z@}{\baselineskip \@plus .1\baselineskip}{%
          1em \@plus 1fil}%
        \KOMA@kav@add{.\KOMAClassFileName}{parskip}{full}%
        \if@atdocument\AfterKOMAoptions{\selectfont}\fi
      \or% 5
        \endgroup
        \setparsizes{\z@}{.5\baselineskip \@plus .5\baselineskip}{%
          1em \@plus 1fil}%
        \KOMA@kav@add{.\KOMAClassFileName}{parskip}{half}%
        \if@atdocument\AfterKOMAoptions{\selectfont}\fi
      \or% 6
        \endgroup
        \setparsizes{\z@}{\baselineskip \@plus .1\baselineskip}{%
          .3333\linewidth\@plus 1fil}%
        \KOMA@kav@add{.\KOMAClassFileName}{parskip}{full+}%
        \if@atdocument\AfterKOMAoptions{\selectfont}\fi
      \or% 7
        \endgroup
        \setparsizes{\z@}{.5\baselineskip \@plus .5\baselineskip}{%
          .3333\linewidth \@plus 1fil}%
        \KOMA@kav@add{.\KOMAClassFileName}{parskip}{half+}%
        \if@atdocument\AfterKOMAoptions{\selectfont}\fi
      \or% 8
        \endgroup
        \setparsizes{\z@}{\baselineskip \@plus .1\baselineskip}{%
          .25\linewidth \@plus 1fil}%
        \KOMA@kav@add{.\KOMAClassFileName}{parskip}{full*}%
        \if@atdocument\AfterKOMAoptions{\selectfont}\fi
      \or% 9
        \endgroup
        \setparsizes{\z@}{.5\baselineskip \@plus .5\baselineskip}{%
          .25\linewidth \@plus 1fil}%
        \KOMA@kav@add{.\KOMAClassFileName}{parskip}{half*}%
        \if@atdocument\AfterKOMAoptions{\selectfont}\fi
      \or% 10
        \endgroup
        \KOMA@kav@remove{.\KOMAClassFileName}{parskip}{absolute}%
        \KOMA@kav@remove{.\KOMAClassFileName}{parskip}{relative}%
        \KOMA@kav@add{.\KOMAClassFileName}{parskip}{relative}%
        \ifx\par@updaterelative\undefined
          \expandafter\AtEndOfClass
        \else
          \expandafter\@firstofone
        \fi
        {%
          \ifx\par@update\default@par@update
            \let\par@update\par@updaterelative
          \fi
          \let\default@par@update=\par@updaterelative
        }%
      \or%11
        \endgroup
        \KOMA@kav@remove{.\KOMAClassFileName}{parskip}{absolute}%
        \KOMA@kav@remove{.\KOMAClassFileName}{parskip}{relative}%
        \KOMA@kav@add{.\KOMAClassFileName}{parskip}{absolute}%
        \ifx\par@updaterelative\undefined
          \expandafter\AtEndOfClass
        \else
          \expandafter\@firstofone
        \fi
        {%
          \ifx\par@update\default@par@update
            \let\par@update\relax
          \fi
          \let\default@par@update=\relax
        }%
      \else% should never be
        \endgroup
    \fi
  \else
    \endgroup
    \FamilyKeyStateUnkownValue
  \fi
}
\KOMA@DeclareDeprecatedOption{parskip-}{parskip=full-}
\KOMA@DeclareDeprecatedOption{parskip+}{parskip=full+}
\KOMA@DeclareDeprecatedOption{parskip*}{parskip=full*}
\KOMA@DeclareDeprecatedOption{halfparskip}{parskip=half}
\KOMA@DeclareDeprecatedOption{halfparskip-}{parskip=half-}
\KOMA@DeclareDeprecatedOption{halfparskip+}{parskip=half+}
\KOMA@DeclareDeprecatedOption{halfparskip*}{parskip=half*}
\KOMA@DeclareDeprecatedOption{parindent}{parskip=false}
\KOMA@kav@add{.\KOMAClassFileName}{parskip}{false}
\KOMA@kav@add{.\KOMAClassFileName}{parskip}{absolute}
%%% From File: $Id: scrkernel-title.dtx 2182 2015-08-25 09:10:08Z kohm $
\newif\if@titlepage
\@titlepagetrue
\newif\if@titlepageiscoverpage
\KOMA@key{titlepage}[true]{%
  \ifstr{#1}{firstiscover}{%
    \@titlepagetrue
    \@titlepageiscoverpagetrue
    \FamilyKeyStateProcessed
    \KOMA@kav@replacevalue{.%
      \KOMAClassFileName
    }{titlepage}{firstiscover}%
  }{%
    \def\FamilyElseValue{, `firstiscover'}%
     \KOMA@set@ifkey{titlepage}{@titlepage}{#1}%
    \ifx\FamilyKeyState\FamilyKeyStateProcessed
      \KOMA@kav@remove{.%
      \KOMAClassFileName
      }{titlepage}{firstiscover}%
      \KOMA@kav@replacebool{.%
      \KOMAClassFileName
      }{titlepage}{@titlepage}%
      \@titlepageiscoverpagefalse
    \fi
  }%
}
\KOMA@kav@xadd{.%
  \KOMAClassFileName
}{titlepage}{\if@titlepage true\else false\fi}
\KOMA@DeclareStandardOption%
  {notitlepage}{titlepage=false}
\KOMA@ifkey{abstract}{@abstrt}
\KOMA@DeclareStandardOption{abstracton}{abstract=true}
\KOMA@DeclareStandardOption{abstractoff}{abstract=false}
%%% From File: $Id: scrkernel-sections.dtx 2212 2015-10-03 12:51:00Z kohm $
%%%            (run: option)
\KOMA@key{open}{%
  \KOMA@set@ncmdkey{open}{@tempa}{%
    {any}{0},%
    {right}{1},%
    {left}{2}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed
    \KOMA@kav@xreplacevalue{.\KOMAClassFileName}{open}{#1}%
    \KOMA@kav@remove{.\KOMAClassFileName}{headings}{openany}%
    \KOMA@kav@remove{.\KOMAClassFileName}{headings}{openright}%
    \KOMA@kav@remove{.\KOMAClassFileName}{headings}{openleft}%
    \ifcase \@tempa\relax
      \KOMA@kav@add{.\KOMAClassFileName}{headings}{openany}%
      \@openrightfalse
      \renewcommand*{\cleardoublestandardpage}{\cleardoubleoddstandardpage}%
    \or
      \KOMA@kav@add{.\KOMAClassFileName}{headings}{openright}%
      \@openrighttrue
      \renewcommand*{\cleardoublestandardpage}{\cleardoubleoddstandardpage}%
    \or
      \KOMA@kav@add{.\KOMAClassFileName}{headings}{openleft}%
      \@openrighttrue
      \renewcommand*{\cleardoublestandardpage}{\cleardoubleevenstandardpage}%
    \fi
  \fi
}
\KOMA@DeclareStandardOption{openright}{open=right}
\KOMA@DeclareStandardOption{openany}{open=any}
\KOMA@key{numbers}{%
  \KOMA@set@ncmdkey{numbers}{@tempa}{%
    {autoendperiod}{0},{autoenddot}{0},{auto}{0},%
    {endperiod}{1},{withendperiod}{1},{periodatend}{1},%
    {enddot}{1},{withenddot}{1},{dotatend}{1},%
    {noendperiod}{2},{noperiodatend}{2},%
    {noenddot}{2},{nodotatend}{2}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed
    \KOMA@kav@xreplacevalue{.\KOMAClassFileName}{numbers}{#1}%
    \ifcase \@tempa\relax
      \if@atdocument\scr@dotchangeatdocument{#1}\else
        \let\scr@altsecnumhook\@empty
      \fi
    \or
      \if@atdocument\scr@dotchangeatdocument{#1}\else
        \let\scr@altsecnumhook\scr@altsecnumhooktrue
      \fi
    \or
      \if@atdocument\scr@dotchangeatdocument{#1}\else
        \let\scr@altsecnumhook\scr@altsecnumhookfalse
      \fi
    \fi
  \fi
}
\KOMA@DeclareDeprecatedOption{pointednumbers}{numbers=enddot}
\KOMA@DeclareDeprecatedOption{pointlessnumbers}{numbers=noenddot}
\KOMA@key{chapterprefix}[true]{%
  \KOMA@set@ifkey{chapterprefix}{@chapterprefix}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed
    \KOMA@kav@replacebool{.\KOMAClassFileName}%
                         {chapterprefix}{@chapterprefix}%
    \KOMA@kav@remove{.\KOMAClassFileName}%
                    {headings}{twolinechapter}%
    \KOMA@kav@remove{.\KOMAClassFileName}%
                    {headings}{onelinechapter}%
    \KOMA@kav@xadd{.\KOMAClassFileName}%
                  {headings}{%
                    \if@chapterprefix twolinechapter\else onelinechapter\fi
                  }%
  \fi
}
\KOMA@DeclareDeprecatedOption{nochapterprefix}{chapterprefix=false}
\KOMA@kav@add{.\KOMAClassFileName}{headings}{onelinechapter}%
\KOMA@key{appendixprefix}[true]{%
  \KOMA@set@ifkey{appendixprefix}{@tempswa}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed
    \KOMA@kav@xreplacevalue{.\KOMAClassFileName}{appendixprefix}{#1}%
    \KOMA@kav@remove{.\KOMAClassFileName}{headings}{twolineappendix}%
    \KOMA@kav@remove{.\KOMAClassFileName}{headings}{onelineappendix}%
    \if@tempswa
      \KOMA@kav@add{.\KOMAClassFileName}{headings}{twolineappendix}%
      \@ifundefined{appendixmore}{%
        \def\appendixmore{\@chapterprefixtrue}%
      }{%
        \l@addto@macro\appendixmore{\@chapterprefixtrue}%
      }%
    \else
      \KOMA@kav@add{.\KOMAClassFileName}{headings}{onelineappendix}%
      \@ifundefined{appendixmore}{%
        \def\appendixmore{\@chapterprefixfalse}%
      }{%
        \l@addto@macro\appendixmore{\@chapterprefixfalse}%
      }%
    \fi
  \fi
}
\KOMA@DeclareDeprecatedOption{noappendixprefix}{appendixprefix=false}
\KOMA@ifkey{chapterentrydots}{@chapterentrywithdots}
\KOMA@key{headings}{%
  \KOMA@set@ncmdkey{headings}{@tempa}{%
    {big}{0},%
    {normal}{1},%
    {small}{2},%
    {openany}{3},%
    {openright}{4},%
    {openleft}{5},%
    {twolinechapter}{6},{chapterprefix}{6},{chapterwithprefix}{6},%
    {chapterwithprefixline}{6},%
    {onelinechapter}{7},{nochapterprefix}{7},{chapterwithoutprefix}{7},%
    {chapterwithoutprefixline}{7},%
    {twolineappendix}{8},{appendixprefix}{8},{appendixwithprefix}{8},%
    {appendixwithprefixline}{8},%
    {onelineappendix}{9},{noappendixprefix}{9},{appendixwithoutprefix}{9},%
    {appendixwithoutprefixline}{9},%
    {optiontotocandhead}{10},{optiontoheadandtoc}{10},%
    {optiontotoc}{11},%
    {optiontohead}{12},%
    {standardclasses}{13}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed
    \ifcase \@tempa\relax% big
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{big}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{normal}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{small}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{standardclasses}%
      \KOMA@kav@add{.\KOMAClassFileName}{headings}{big}%
      \renewcommand*{\scr@chapter@beforeskip}{-3.3\baselineskip-\parskip}%
      \renewcommand*{\scr@chapter@afterskip}{%
        1.725\baselineskip \@plus .115\baselineskip \@minus .192\baselineskip
      }%
      \renewcommand*{\scr@chapter@innerskip}{.5\baselineskip}%
      \renewcommand*{\chapterheadstartvskip}{\vspace{\@tempskipa}}%
      \renewcommand*{\chapterheadendvskip}{%
        \expandafter\ifnum\scr@v@is@lt{3.15}\vspace\@tempskipa
        \else\vskip\@tempskipa\fi
      }%
      \renewcommand*{\chapterheadmidvskip}{\par\nobreak\vskip\@tempskipa}%
      \renewcommand*{\size@part}{\Huge}%
      \renewcommand*{\size@partnumber}{\huge}%
      \renewcommand*{\size@chapter}{\huge}%
      \renewcommand*{\size@chapterprefix}{\size@chapter}%
      \renewcommand*{\size@section}{\Large}%
      \renewcommand*{\size@subsection}{\large}%
      \renewcommand*{\size@subsubsection}{\normalsize}%
      \renewcommand*{\size@paragraph}{\normalsize}%
      \renewcommand*{\size@subparagraph}{\normalsize}%
    \or % normal
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{big}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{normal}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{small}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{standardclasses}%
      \KOMA@kav@add{.\KOMAClassFileName}{headings}{normal}%
      \renewcommand*{\scr@chapter@beforeskip}{-3\baselineskip-\parskip}%
      \renewcommand*{\scr@chapter@afterskip}{%
        1.5\baselineskip \@plus .1\baselineskip \@minus .167\baselineskip
      }%
      \renewcommand*{\scr@chapter@innerskip}{.5\baselineskip}%
      \renewcommand*{\chapterheadstartvskip}{\vspace{\@tempskipa}}%
      \renewcommand*{\chapterheadendvskip}{%
        \expandafter\ifnum\scr@v@is@lt{3.15}\vspace\@tempskipa
        \else\vskip\@tempskipa\fi
      }%
      \renewcommand*{\chapterheadmidvskip}{\par\nobreak\vskip\@tempskipa}%
      \renewcommand*{\size@part}{\huge}%
      \renewcommand*{\size@partnumber}{\huge}%
      \renewcommand*{\size@chapter}{\LARGE}%
      \renewcommand*{\size@chapterprefix}{\size@chapter}%
      \renewcommand*{\size@section}{\Large}%
      \renewcommand*{\size@subsection}{\large}%
      \renewcommand*{\size@subsubsection}{\normalsize}%
      \renewcommand*{\size@paragraph}{\normalsize}%
      \renewcommand*{\size@subparagraph}{\normalsize}%
    \or % small
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{big}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{normal}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{small}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{standardclasses}%
      \KOMA@kav@add{.\KOMAClassFileName}{headings}{small}%
      \renewcommand*{\scr@chapter@beforeskip}{-2.8\baselineskip-\parskip}%
      \renewcommand*{\scr@chapter@afterskip}{%
        1.35\baselineskip \@plus 0.09\baselineskip \@minus .15\baselineskip
      }%
      \renewcommand*{\scr@chapter@innerskip}{.5\baselineskip}%
      \renewcommand*{\chapterheadstartvskip}{\vspace{\@tempskipa}}%
      \renewcommand*{\chapterheadendvskip}{%
        \expandafter\ifnum\scr@v@is@lt{3.15}\vspace\@tempskipa
        \else\vskip\@tempskipa\fi
      }%
      \renewcommand*{\chapterheadmidvskip}{\par\nobreak\vskip\@tempskipa}%
      \renewcommand*{\size@part}{\LARGE}%
      \renewcommand*{\size@partnumber}{\LARGE}%
      \renewcommand*{\size@chapter}{\Large}%
      \renewcommand*{\size@chapterprefix}{\size@chapter}%
      \renewcommand*{\size@section}{\large}%
      \renewcommand*{\size@subsection}{\normalsize}%
      \renewcommand*{\size@subsubsection}{\normalsize}%
      \renewcommand*{\size@paragraph}{\normalsize}%
      \renewcommand*{\size@subparagraph}{\normalsize}%
    \or % openany
      \KOMAoptions{open=any}%
    \or % openright
      \KOMAoptions{open=right}%
    \or % openleft
      \KOMAoptions{open=left}%
    \or % twolinechapter
      \KOMAoptions{chapterprefix=true}%
    \or % onelinechapter
      \KOMAoptions{chapterprefix=false}%
    \or % twolineappendix
      \KOMAoptions{appendixprefix=true}%
    \or % onelineappend
      \KOMAoptions{appendixprefix=false}%
    \or % optiontotocandhead
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{optiontotocandhead}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{optiontotoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{optiontohead}%
      \KOMA@kav@add{.\KOMAClassFileName}{headings}{optiontotocandhead}%
      \scr@activate@xsection{3}%
    \or % optiontotoc
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{optiontotocandhead}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{optiontotoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{optiontohead}%
      \KOMA@kav@add{.\KOMAClassFileName}{headings}{optiontotoc}%
      \scr@activate@xsection{2}%
    \or % optiontohead
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{optiontotocandhead}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{optiontotoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{optiontohead}%
      \KOMA@kav@add{.\KOMAClassFileName}{headings}{optiontohead}%
      \scr@activate@xsection{1}%
    \or % standardclasses
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{big}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{normal}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{small}%
      \KOMA@kav@remove{.\KOMAClassFileName}{headings}{standardclasses}%
      \KOMA@kav@add{.\KOMAClassFileName}{headings}{standardclasses}%
      \renewcommand*{\scr@chapter@beforeskip}{-50\p@}%
      \renewcommand*{\scr@chapter@afterskip}{40\p@}%
      \renewcommand*{\scr@chapter@innerskip}{20\p@}%
      \renewcommand*{\chapterheadstartvskip}{\vspace{\@tempskipa}}%
      \renewcommand*{\chapterheadendvskip}{\vskip\@tempskipa}%
      \renewcommand*{\chapterheadmidvskip}{\par\nobreak\vskip\@tempskipa}%
      \renewcommand*{\size@part}{\Huge}%
      \renewcommand*{\size@partnumber}{\huge}%
      \renewcommand*{\size@chapter}{\Huge}%
      \renewcommand*{\size@chapterprefix}{\huge}%
      \renewcommand*{\size@section}{\Large}%
      \renewcommand*{\size@subsection}{\large}%
      \renewcommand*{\size@subsubsection}{\normalsize}%
      \renewcommand*{\size@paragraph}{\normalsize}%
      \renewcommand*{\size@subparagraph}{\normalsize}%
      \renewcommand*{\sectfont}{\bfseries}%
    \KOMAoptions{open=right,chapterprefix=true}%
    \fi
  \fi
}
\KOMA@kav@add{.\KOMAClassFileName}{headings}{big}
\KOMA@kav@add{.\KOMAClassFileName}{headings}{onelinechapter}
\KOMA@DeclareDeprecatedOption{bigheadings}{headings=big}
\KOMA@DeclareDeprecatedOption{normalheadings}{headings=normal}
\KOMA@DeclareDeprecatedOption{smallheadings}{headings=small}
%%% From File: $Id: scrkernel-pagestyles.dtx 2162 2015-07-15 07:30:52Z kohm $
\newif\if@hsl
\KOMA@key{headsepline}[true]{%
  \KOMA@set@ifkey{headsepline}{@hsl}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed
    \KOMA@kav@replacebool{.\KOMAClassFileName}{headsepline}{@hsl}%
    \@ifundefined{typearea}{%
      \PassOptionsToPackage{headinclude=#1}{typearea}%
    }{%
      \KOMAoptions{headinclude=#1}{}%
    }%
  \fi
}
\KOMA@kav@add{.\KOMAClassFileName}{headsepline}{false}
\KOMA@DeclareDeprecatedOption{headnosepline}{headsepline=false}
\newif\if@fsl
\KOMA@key{footsepline}[true]{%
  \KOMA@set@ifkey{footsepline}{@fsl}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed
    \KOMA@kav@replacebool{.\KOMAClassFileName}{footsepline}{@fsl}%
    \@ifundefined{typearea}{%
      \PassOptionsToPackage{footinclude=#1}{typearea}%
    }{%
      \KOMAoptions{footinclude=#1}%
    }%
  \fi
}
\KOMA@kav@add{.\KOMAClassFileName}{footsepline}{false}
\KOMA@DeclareDeprecatedOption{footnosepline}{footsepline=false}
\KOMA@key{cleardoublepage}{%
  \begingroup%
    \def\@tempc{%
      \endgroup%
      \KOMA@unknown@keyval{cleardoublepage}{#1}{%
        'current' or any defined pagestyle e.g. 'empty','plain', 'headings'}%
    }%
    \ifstr{#1}{current}{%
      \def\@tempc{\endgroup%
        \def\cleardoublepage{\cleardoublestandardpage}%
        \def\cleardoubleoddpage{\cleardoubleoddstandardpage}%
        \def\cleardoubleevenpage{\cleardoubleevenstandardpage}%
        \FamilyKeyStateProcessed
        \KOMA@kav@replacevalue{.%
          \KOMAClassFileName
        }{cleardoublepage}{current}%
      }%
    }{%
      \ifnotundefined{ps@#1}{%
        \def\@tempc{\endgroup%
          \def\cleardoublepage{\cleardoublepageusingstyle{#1}}%
          \def\cleardoubleoddpage{\cleardoubleoddpageusingstyle{#1}}%
          \def\cleardoubleevenpage{\cleardoubleevenpageusingstyle{#1}}%
          \FamilyKeyStateProcessed
          \KOMA@kav@xreplacevalue{.%
            \KOMAClassFileName
          }{cleardoublepage}{#1}%
        }%
      }{%
        \ifx\@currname\KOMAClassName
          \ifx\@currext\@clsextension
            \ifstr{#1}{headings}{%
              \def\@tempc{\endgroup%
                \def\cleardoublepage{\cleardoublepageusingstyle{#1}}%
                \def\cleardoubleoddpage{\cleardoubleoddpageusingstyle{#1}}%
                \def\cleardoubleevenpage{\cleardoubleevenpageusingstyle{#1}}%
                \FamilyKeyStateProcessed
                \KOMA@kav@xreplacevalue{.\KOMAClassFileName}%
                                       {cleardoublepage}{#1}%
              }%
            }{}%
          \fi
        \fi
      }%
    }%
  \@tempc
}
\newcommand*{\cleardoubleoddstandardpage}{}
\let\cleardoubleoddstandardpage=\cleardoublepage
\newcommand*{\cleardoubleoddpageusingstyle}[1]{\clearpage
  {\pagestyle{#1}\cleardoubleoddstandardpage}}
\newcommand*{\cleardoubleoddemptypage}{\cleardoubleoddpageusingstyle{empty}}
\newcommand*{\cleardoubleoddplainpage}{\cleardoubleoddpageusingstyle{plain}}
\newcommand*{\cleardoubleevenstandardpage}{%
  \clearpage
  \if@twoside\ifodd\c@page
      \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi
  \fi\fi
}
\newcommand*{\cleardoubleevenpageusingstyle}[1]{\clearpage
  {\pagestyle{#1}\cleardoubleevenstandardpage}}
\newcommand*{\cleardoubleevenemptypage}{\cleardoubleevenpageusingstyle{empty}}
\newcommand*{\cleardoubleevenplainpage}{\cleardoubleevenpageusingstyle{plain}}
\newcommand*{\cleardoublestandardpage}{\cleardoubleoddstandardpage}
\renewcommand*{\cleardoublepage}{%
  \expandafter\ifnum \@nameuse{scr@v@2.98c}<\scr@compatibility\relax
    \cleardoubleemptypage
  \else
    \cleardoublestandardpage
  \fi
}
\KOMA@kav@add{.%
  \KOMAClassFileName
}{cleardoublepage}{%
  \expandafter\ifnum \scr@v@is@gt{2.98c}empty\else current\fi
}
\AtEndOfClass{%
  \KOMAoptionOf[\expandafter\edef\expandafter\@tempa\@firstofone]%
               {%
                 \KOMAClassFileName
               }{cleardoublepage}%
  \KOMA@kav@removekey{.%
    \KOMAClassFileName
  }{cleardoublepage}%
  \KOMA@kav@xadd{.%
    \KOMAClassFileName
  }{cleardoublepage}{\@tempa}%
}
\newcommand*{\cleardoubleoddpage}{\cleardoubleoddemptypage}
\newcommand*{\cleardoubleevenpage}{\cleardoubleevenemptypage}
\newcommand*{\cleardoublepageusingstyle}[1]{\clearpage
  {\pagestyle{#1}\cleardoublestandardpage}}
\newcommand*{\cleardoubleemptypage}{\cleardoublepageusingstyle{empty}}
\newcommand*{\cleardoubleplainpage}{\cleardoublepageusingstyle{plain}}
\KOMA@DeclareDeprecatedOption{cleardoubleempty}{cleardoublepage=empty}
\KOMA@DeclareDeprecatedOption{cleardoubleplain}{cleardoublepage=plain}
\KOMA@DeclareDeprecatedOption{cleardoublestandard}{cleardoublepage=current}
%%% From File: $Id: scrkernel-floats.dtx 2002 2015-03-12 12:06:17Z kohm $
\newif\if@captionabove\@captionabovefalse
\newif\if@tablecaptionabove\@tablecaptionabovefalse
\newif\if@figurecaptionabove\@figurecaptionabovefalse
\newif\ifonelinecaptions\onelinecaptionstrue
\newcommand*{\scap@pos}{r}
\newcommand*{\scap@valign}{b}
\KOMA@key{captions}{%
  \KOMA@set@ncmdkey{captions}{@tempa}{%
    {heading}{0},{above}{0},{top}{0},%
    {signature}{1},{below}{1},{bot}{1},{bottom}{1},%
    {tableheading}{2},%
    {tableabove}{2},{abovetable}{2},{abovetabular}{2},{topattable}{2},%
    {tablesignature}{3},%
    {tablebelow}{3},{belowtable}{3},{belowtabular}{3},{bottomattable}{3},%
    {figureheading}{4},{figureabove}{4},{abovefigure}{4},{topatfigure}{4},%
    {figuresignature}{5},{figurebelow}{5},{belowfigure}{5},{bottomatfigure}{5},%
    {oneline}{6},%
    {nooneline}{7},%
    {rightbeside}{8},{besideright}{8},%
    {leftbeside}{9},{besideleft}{9},%
    {innerbeside}{10},{besideinner}{10},%
    {outerbeside}{11},{besideouter}{11},%
    {topbeside}{12},{besidetop}{12},%
    {centeredbeside}{13},{besidecentered}{13},%
    {middlebeside}{13},{besidemiddle}{13},%
    {bottombeside}{14},{besidebottom}{14}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed
    \ifcase \@tempa\relax % heading
      \@tablecaptionabovetrue
      \@figurecaptionabovetrue
      \@captionabovetrue
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{heading}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{signature}%
      \KOMA@kav@add{.\KOMAClassFileName}{captions}{heading}%
   \or % signature
      \@tablecaptionabovefalse
      \@figurecaptionabovefalse
      \@captionabovefalse
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{heading}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{signature}%
      \KOMA@kav@add{.\KOMAClassFileName}{captions}{signature}%
    \or % tableheading
      \@tablecaptionabovetrue
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{tableheading}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{tablesignature}%
      \KOMA@kav@add{.\KOMAClassFileName}{captions}{tableheading}%
    \or % tablesignature
      \@tablecaptionabovefalse
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{tableheading}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{tablesignature}%
      \KOMA@kav@add{.\KOMAClassFileName}{captions}{tablesignature}%
    \or % figureheading
      \@figurecaptionabovetrue
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{figureheading}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{figuresignature}%
      \KOMA@kav@add{.\KOMAClassFileName}{captions}{figureheading}%
    \or % figuresignature
      \@figurecaptionabovefalse
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{figureheading}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{figuresignature}%
      \KOMA@kav@add{.\KOMAClassFileName}{captions}{figuresignature}%
    \or % oneline
      \onelinecaptionstrue
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{oneline}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{nooneline}%
      \KOMA@kav@add{.\KOMAClassFileName}{captions}{oneline}%
    \or % nooneline
      \onelinecaptionsfalse
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{oneline}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{nooneline}%
      \KOMA@kav@add{.\KOMAClassFileName}{captions}{nooneline}%
    \or % rightbeside
      \renewcommand*{\scap@pos}{r}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{rightbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{leftbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{innerbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{outerbeside}%
      \KOMA@kav@add{.\KOMAClassFileName}{captions}{rightbeside}%
    \or % leftbeside
      \renewcommand*{\scap@pos}{l}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{rightbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{leftbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{innerbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{outerbeside}%
      \KOMA@kav@add{.\KOMAClassFileName}{captions}{leftbeside}%
    \or % innerbeside
      \renewcommand*{\scap@pos}{i}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{rightbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{leftbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{innerbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{outerbeside}%
      \KOMA@kav@add{.\KOMAClassFileName}{captions}{innerbeside}%
    \or % outerbeside
      \renewcommand*{\scap@pos}{o}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{rightbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{leftbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{innerbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{outerbeside}%
      \KOMA@kav@add{.\KOMAClassFileName}{captions}{outerbeside}%
    \or % topbeside
      \renewcommand*{\scap@valign}{t}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{topbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{centeredbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{bottombeside}%
      \KOMA@kav@add{.\KOMAClassFileName}{captions}{topbeside}%
    \or % centeredbeside
      \renewcommand*{\scap@valign}{c}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{topbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{centeredbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{bottombeside}%
      \KOMA@kav@add{.\KOMAClassFileName}{captions}{centeredbeside}%
    \or % bottombeside
      \renewcommand*{\scap@valign}{b}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{topbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{centeredbeside}%
      \KOMA@kav@remove{.\KOMAClassFileName}{captions}{bottombeside}%
      \KOMA@kav@add{.\KOMAClassFileName}{captions}{bottombeside}%
    \fi
  \fi
}
\KOMA@kav@add{.\KOMAClassFileName}{captions}{signature}
\KOMA@kav@add{.\KOMAClassFileName}{captions}{tablesignature}
\KOMA@kav@add{.\KOMAClassFileName}{captions}{figuresignature}
\KOMA@kav@add{.\KOMAClassFileName}{captions}{oneline}
\KOMA@kav@add{.\KOMAClassFileName}{captions}{rightbeside}
\KOMA@kav@add{.\KOMAClassFileName}{captions}{bottombeside}
\KOMA@DeclareDeprecatedOption{tablecaptionabove}{captions=tableheading}
\KOMA@DeclareDeprecatedOption{tablecaptionbelow}{captions=tablesignature}
\newif\if@komalongtable\@komalongtabletrue
\DeclareOption{origlongtable}{\@komalongtablefalse}
\KOMA@DeclareDeprecatedOption{onelinecaption}{captions=oneline}
\KOMA@DeclareDeprecatedOption{noonelinecaption}{captions=nooneline}
%%% From File: $Id: scrkernel-footnotes.dtx 2180 2015-08-24 09:28:16Z kohm $
\KOMA@key{footnotes}{%
  \ifx\@footnotemark\scr@saved@footnotemark
  \else
    \ifx\@footnotemark\scr@footnotemark
    \else
      \ClassWarning{\KOMAClassName}{%
        Change of `\string\@footnotemark' detected!\MessageBreak
        Use of `footnotes=#1' may break\MessageBreak
        another package!\MessageBreak
        Maybe you should remove the usage of\MessageBreak
        option `footnotes=#1'}%
    \fi
  \fi
  \ifstr{#1}{multiple}{%
    \let\@footnotemark\scr@footnotemark
    \def\FN@mf@prepare{\scr@mf@prepare}%
    \def\scr@footmisc@options{multiple}%
    \FamilyKeyStateProcessed
    \KOMA@kav@replacevalue{.%
      \KOMAClassFileName
    }{footnotes}{multiple}%
  }{%
    \ifstr{#1}{nomultiple}{%
      \let\@footnotemark\scr@saved@footnotemark
      \let\FN@mf@prepare\relax
      \let\scr@footmisc@options\@empty
      \FamilyKeyStateProcessed
      \KOMA@kav@replacevalue{.%
      \KOMAClassFileName
      }{footnotes}{nomultiple}%
    }{%
      \KOMA@unknown@keyval{footnotes}{#1}{`multiple' and `nomultiple'}%
    }%
  }%
}
\AtBeginDocument{%
  \ifx\@footnotemark\scr@saved@footnotemark
    \KOMA@kav@removekey{.%
      \KOMAClassFileName
    }{footnotes}%
    \KOMA@kav@add{.%
    \KOMAClassFileName
    }{footnotes}{nomultiple}%
  \else\ifx\@footnotemark\scr@footnotemark
    \KOMA@kav@removekey{.%
      \KOMAClassFileName
    }{footnotes}%
    \KOMA@kav@add{.%
      \KOMAClassFileName
    }{footnotes}{multiple}%
  \fi\fi
}
\newcommand*{\scr@footmisc@options}{}
\PassOptionsToPackage{\noexpand\scr@footmisc@options}{footmisc}
\newcommand*{\scr@saved@footnotemark}{%
  \leavevmode
  \ifhmode\edef\@x@sf{\the\spacefactor}\nobreak\fi
  \@makefnmark
  \ifhmode\spacefactor\@x@sf\fi
  \relax}
\expandafter\CheckCommand\expandafter*\expandafter\@footnotemark
\expandafter{\scr@saved@footnotemark}
\newcommand*{\scr@footnotemark}{%
  \leavevmode
  \ifhmode\edef\@x@sf{\the\spacefactor}\FN@mf@check\nobreak\fi
  \@makefnmark
  \csname FN@mf@prepare\endcsname
  \ifhmode\spacefactor\@x@sf\fi
  \relax}
%%% From File: $Id: scrkernel-listsof.dtx 2206 2015-09-27 08:08:34Z kohm $
\newif\if@tocleft
\KOMA@key{toc}{%
  \KOMA@set@ncmdkey{toc}{@tempa}{%
    {noindex}{0},{noidx}{0},%
    {index}{1},{idx}{1},%
    {indexnumbered}{2},%
    {nolistof}{3},%
    {listof}{4},%
    {listofnumbered}{5},{numberedlistof}{5},%
    {nobibliography}{6},{nobib}{6},%
    {bibliography}{7},{bib}{7},%
    {bibliographynumbered}{8},{bibnumbered}{8},{numberedbibliography}{8},%
    {numberedbib}{8},%
    {flat}{9},{left}{9},%
    {graduated}{10},{indent}{10},{indented}{10},%
    {indenttextentries}{11},{indentunnumbered}{11},{numberline}{11},%
    {leftaligntextentries}{12},{leftalignunnumbered}{12},{nonumberline}{12},%
    {chapterentrywithdots}{13},{chapterentrydotfill}{13},
    {chapterentrywithoutdots}{14},{chapterentryfill}{14}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed
    \ifcase \@tempa\relax % noindex
      \KOMAoptions{index=notoc}%
    \or % index
      \KOMAoptions{index=totoc}%
    \or % indexnumbered
      \KOMAoptions{index=numbered}%
    \or % listof
      \KOMAoptions{listof=notoc}%
    \or % nolistof
      \KOMAoptions{listof=totoc}%
    \or % listofnumbered
      \KOMAoptions{listof=numbered}%
    \or % nobibliography
      \KOMAoptions{bibliography=nottotoc}%
    \or % bibliography
      \KOMAoptions{bibliography=totoc}%
    \or % bibliographynumbered
      \KOMAoptions{bibliography=totocnumbered}%
    \or % flat
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{flat}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{graduated}%
      \KOMA@kav@add{.\KOMAClassFileName}{toc}{flat}%
      \@toclefttrue
    \or % graduated
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{flat}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{graduated}%
      \KOMA@kav@add{.\KOMAClassFileName}{toc}{graduated}%
      \@tocleftfalse
    \or % indenttextentries
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{indenttextentries}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{leftaligntextentries}%
      \KOMA@kav@add{.\KOMAClassFileName}{toc}{indenttextentries}%
      \setuptoc{toc}{numberline}%
    \or % leftaligntextentries
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{indenttextentries}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{leftaligntextentries}%
      \KOMA@kav@add{.\KOMAClassFileName}{toc}{leftaligntextentries}%
      \unsettoc{toc}{numberline}%
    \or % chapterentrywithdots/sectionentrywithdots
      \KOMAoptions{chapterentrydots=true}%
    \or % chapterentrywithoutdots/sectionentrywithoutdots
      \KOMAoptions{chapterentrydots=false}%
    \fi
  \fi
}
\KOMA@DeclareDeprecatedOption{tocleft}{toc=flat}
\KOMA@DeclareDeprecatedOption{tocindent}{toc=graduated}
\newcommand*{\float@@listhead}{%
  \chapter*
}
\newif\if@dynlist
\KOMA@key{listof}{%
  \KOMA@set@ncmdkey{listof}{@tempa}{%
    {notoc}{0},{nottotoc}{0},{plainheading}{0},%
    {totoc}{1},{toc}{1},{notnumbered}{1},%
    {numbered}{2},{totocnumbered}{2},{tocnumbered}{2},{numberedtotoc}{2},%
    {numberedtoc}{2},%
    {flat}{3},{left}{3},%
    {graduated}{4},{indent}{4},{indented}{4},%
    {leveldown}{5},
    {entryprefix}{6},
    {indenttextentries}{7},{indentunnumbered}{7},{numberline}{7},%
    {leftaligntextentries}{8},{leftalignunnumbered}{8},{nonumberline}{8},%
    {chapterentry}{9},{withchapterentry}{9},%
    {nochaptergap}{10},{ignorechapter}{10},%
    {chaptergapsmall}{11},{smallchaptergap}{11},%
    {chaptergapline}{12},{onelinechaptergap}{12}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed
    \ifcase \@tempa\relax % notoc
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{nolistof}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{listof}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{listofnumbered}%
      \KOMA@kav@add{.\KOMAClassFileName}{toc}{nolistof}%
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{notoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{totoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{numbered}%
      \KOMA@kav@add{.\KOMAClassFileName}{listof}{notoc}%
      \renewcommand*{\float@@listhead}{%
      \chapter*
      }%
      \doforeachtocfile[float]{%
        \unsettoc{\@currext}{numbered}%
        \unsettoc{\@currext}{totoc}%
      }%
      \AtAddToTocList[float]{%
        \unsettoc{\@currext}{numbered}%
        \unsettoc{\@currext}{totoc}%
      }%
    \or% totoc
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{nolistof}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{listof}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{listofnumbered}%
      \KOMA@kav@add{.\KOMAClassFileName}{toc}{listof}%
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{notoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{totoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{numbered}%
      \KOMA@kav@add{.\KOMAClassFileName}{listof}{totoc}%
      \renewcommand*{\float@@listhead}{%
      \addchap
      }%
      \doforeachtocfile[float]{%
        \unsettoc{\@currext}{numbered}%
        \setuptoc{\@currext}{totoc}%
      }%
      \AtAddToTocList[float]{%
        \unsettoc{\@currext}{numbered}%
        \setuptoc{\@currext}{totoc}%
      }%
    \or% numbered
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{nolistof}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{listof}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{listofnumbered}%
      \KOMA@kav@add{.\KOMAClassFileName}{toc}{listofnumbered}%
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{notoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{totoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{numbered}%
      \KOMA@kav@add{.\KOMAClassFileName}{listof}{numbered}%
      \renewcommand*{\float@@listhead}{%
      \chapter
      }%
      \doforeachtocfile[float]{%
        \setuptoc{\@currext}{numbered}%
        \setuptoc{\@currext}{totoc}%
      }%
      \AtAddToTocList[float]{%
        \setuptoc{\@currext}{numbered}%
        \setuptoc{\@currext}{totoc}%
      }%
    \or% flat
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{flat}%
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{graduated}%
      \KOMA@kav@add{.\KOMAClassFileName}{listof}{flat}%
      \@dynlisttrue
    \or% graduated
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{flat}%
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{graduated}%
      \KOMA@kav@add{.\KOMAClassFileName}{listof}{graduated}%
      \@dynlistfalse
    \or% leveldown
      \KOMA@kav@add{.\KOMAClassFileName}{listof}{leveldown}%
      \doforeachtocfile[float]{%
        \setuptoc{\@currext}{leveldown}%
      }%
      \AtAddToTocList[float]{%
        \setuptoc{\@currext}{leveldown}%
      }%
    \or% entryprefix
      \KOMA@kav@add{.\KOMAClassFileName}{listof}{entryprefix}%
      \@dynlisttrue
      \doforeachtocfile[float]{%
        \BeforeStartingTOC[\@currext]{%
          \scr@ifundefinedorrelax{listof\@currext entryname}{}{%
            \expandafter\def\expandafter\numberline@prefix
            \expandafter{\csname listof\@currext entryname\endcsname
              \nobreakspace}%
          }%
        }%
      }%
      \AtAddToTocList[float]{%
        \BeforeStartingTOC[\@currext]{%
          \scr@ifundefinedorrelax{listof\@currext entryname}{}{%
            \expandafter\def\expandafter\numberline@prefix
            \expandafter{\csname listof\@currext entryname\endcsname
              \nobreakspace}%
          }%
        }%
      }%
    \or% indenttextentries
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{indenttextentries}%
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{leftaligntextentries}%
      \KOMA@kav@add{.\KOMAClassFileName}{listof}{indenttextentries}%
      \doforeachtocfile[float]{%
        \setuptoc{\@currext}{numberline}%
      }%
      \AtAddToTocList[float]{%
        \setuptoc{\@currext}{numberline}%
      }
    \or% leftaligntextentries
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{indenttextentries}%
      \KOMA@kav@remove{.\KOMAClassFileName}{listof}{leftaligntextentries}%
      \KOMA@kav@add{.\KOMAClassFileName}{listof}{leftaligntextentries}%
      \doforeachtocfile[float]{%
        \unsettoc{\@currext}{numberline}%
      }%
      \AtAddToTocList[float]{%
        \unsettoc{\@currext}{numberline}%
      }
    \or% chapterentry
      \KOMAoptions{chapteratlists=entry}%
    \or% chaptergap
      \KOMAoptions{chapteratlists=\z@}%
    \or% chaptergapsmall
      \KOMAoptions{chapteratlists=10\p@}%
    \or% chaptergapline
      \KOMAoptions{chapteratlists=\baselineskip}%
    \fi
  \fi
}
\KOMA@kav@add{.\KOMAClassFileName}{toc}{nolistof}
\KOMA@kav@add{.\KOMAClassFileName}{listof}{notoc}
\KOMA@kav@add{.\KOMAClassFileName}{listof}{graduated}
\KOMA@kav@add{.\KOMAClassFileName}{listof}{leftaligntextentries}
\KOMA@DeclareDeprecatedOption{liststotoc}{listof=totoc}
\KOMA@DeclareDeprecatedOption{liststotocnumbered}{listof=numbered}
\KOMA@DeclareDeprecatedOption{listsleft}{listof=flat}
\KOMA@DeclareDeprecatedOption{listsindent}{listof=graduated}
\newcommand*{\@chapterlistsgap}{10\p@}
\newif\if@chaptertolists\@chaptertolistsfalse
\KOMA@key{chapteratlists}[entry]{%
  \FamilyKeyStateProcessed
  \KOMA@kav@remove{.\KOMAClassFileName}{listof}{chapterentry}%
  \KOMA@kav@remove{.\KOMAClassFileName}{listof}{chaptergap}%
  \KOMA@kav@remove{.\KOMAClassFileName}{listof}{chaptergapsmall}%
  \KOMA@kav@remove{.\KOMAClassFileName}{listof}{chaptergapline}%
  \ifstr{#1}{entry}{%
    \@chaptertoliststrue\renewcommand*{\@chapterlistsgap}{\z@}%
    \KOMA@kav@replacevalue{.\KOMAClassFileName}{chapteratlists}{entry}%
    \KOMA@kav@add{.\KOMAClassFileName}{listof}{chapterentry}%
  }{%
    \@chaptertolistsfalse\renewcommand*{\@chapterlistsgap}{#1}%
    \KOMA@kav@replacevalue{.\KOMAClassFileName}{chapteratlists}%
                                               {\@chapterlistsgap}%
    \def\reserved@a{\z@}%
    \ifx\@chapterlistsgap\reserved@a
      \KOMA@kav@add{.\KOMAClassFileName}{listof}{chaptergap}%
    \else
      \def\reserved@a{10\p@}%
      \ifx\@chapterlistsgap\reserved@a
        \KOMA@kav@add{.\KOMAClassFileName}{listof}{chaptergapsmall}%
      \else
        \def\reserved@a{\baselineskip}%
        \ifx\@chapterlistsgap\reserved@a
          \KOMA@kav@add{.\KOMAClassFileName}{listof}{chaptergapline}%
        \fi
      \fi
    \fi
  }%
}
\BeforeTOCHead{\@chaptertolistsfalse}
\KOMA@kav@add{.\KOMAClassFileName}{chapteratlists}{10\p@}%
\KOMA@kav@add{.\KOMAClassFileName}{listof}{chaptergapsmall}%
%%% From File: $Id: scrkernel-bibliography.dtx 2144 2015-06-17 15:38:01Z kohm $
\newcommand{\newbibstyle}[3][]{%
  \scr@ifundefinedorrelax{scr@bibstyle@#2}{%
    \scr@ifundefinedorrelax{scr@bibstyle@#1}{%
      \ClassError{\KOMAClassName}{%
        parent bibliography style `#1' does not exist}{%
        You've told me to define the new bibliography style `#2'\MessageBreak
        to be a child of bibliography style `#1', but bibliography
        style\MessageBreak
        `#1' does not exist.\MessageBreak
        You have to remove the parent declaration or use an existing parent!
        See the KOMA-Script manual for more information.%
      }%
    }{%
      \@namedef{scr@bibstyle@#2}{%
        \let\@openbib@code\@empty
        \let\newblock\@empty
        \let\bib@beginhook\@empty
        \let\bib@endhook\@empty
        \@ifundefined{scr@current@bibstyle}{}{%
          \ifstr{\scr@current@bibstyle}{}{}{%
            \edef\reserved@a{%
              \noexpand\KOMA@kav@remove{.\KOMAClassFileName}{bibliography}%
                                       {\scr@current@bibstyle}%
            }\reserved@a
          }%
        }%
        \def\scr@current@bibstyle{#2}%
        \KOMA@kav@xadd{.\KOMAClassFileName}{bibliography}{#2}%
        \csname scr@bibstyle@#1\endcsname
        #3%
      }%
      \g@addto@macro\scr@bibstylelist{, `#2'}%
    }%
  }{%
    \ClassError{\KOMAClassName}{bibliography style `#2' already exists}{%
      You've told me to define the new bibliography style `#2',\MessageBreak
      but this style already exists.\MessageBreak
      You have to use another bibliography style name.\MessageBreak
      See the KOMA-Script manual for more information.%
    }%
  }%
}
\newcommand*{\scr@bibstyle@}{}
\newcommand*{\bib@beginhook}{}
\newcommand*{\bib@endhook}{}
\newcommand*{\scr@bibstylelist}{\@gobble}
\newcommand*{\@openbib@code}{}
\newcommand*{\newblock}{}
\newbibstyle{openstyle}{%
  \renewcommand*{\@openbib@code}{%
    \advance\leftmargin\bibindent
    \itemindent -\bibindent
    \listparindent \itemindent
    \parsep \z@
  }%
  \renewcommand*{\newblock}{\par}%
}
\newbibstyle{oldstyle}{%
  \renewcommand*{\newblock}{\hskip .11em\@plus.33em\@minus.07em}%
}
\scr@bibstyle@oldstyle
\newcommand*\bib@heading{%
  \ifbib@leveldown
    \section*{\bibname}%
    \scr@ifundefinedorrelax{@mkright}{%
      \ifx\@mkboth\@gobbletwo\else\markright{\MakeMarkcase{\bibname}}\fi
    }{%
      \@mkright{\MakeMarkcase{\bibname}}%
    }%
  \else
    \chapter*{\bibname}%
    \scr@ifundefinedorrelax{@mkdouble}{%
      \@mkboth{\MakeMarkcase{\bibname}}{\MakeMarkcase{\bibname}}%
    }{%
      \@mkdouble{\MakeMarkcase{\bibname}}%
    }%
  \fi
}%
\newif\ifbib@leveldown
\KOMA@key{bibliography}{%
  \scr@ifundefinedorrelax{scr@bibstyle@#1}{%
    \KOMA@set@ncmdkey{bibliography}{@tempa}{%
      {notoc}{0},{nottotoc}{0},{plainheading}{0},%
      {totoc}{1},{toc}{1},{notnumbered}{1},%
      {numbered}{2},{totocnumbered}{2},{tocnumbered}{2},{numberedtotoc}{2},%
      {numberedtoc}{2},%
      {leveldown}{3},%
      {standardlevel}{4}%
    }{#1}%
    \ifcase \@tempa\relax % notoc
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{nobibliography}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{bibliography}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{bibliographynumbered}%
      \KOMA@kav@add{.\KOMAClassFileName}{toc}{nobibliography}%
      \KOMA@kav@remove{.\KOMAClassFileName}{bibliography}{notoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{bibliography}{totoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{bibliography}{numbered}%
      \KOMA@kav@add{.\KOMAClassFileName}{bibliography}{notoc}%
      \renewcommand*\bib@heading{%
        \ifbib@leveldown
          \section*{\bibname}%
          \ifx\@mkboth\@gobble\else\markright{\MakeMarkcase{\bibname}}\fi
        \else
          \chapter*{\bibname}%
          \@mkboth{\MakeMarkcase{\bibname}}{\MakeMarkcase{\bibname}}%
        \fi
      }%
    \or% totoc
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{nobibliography}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{bibliography}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{bibliographynumbered}%
      \KOMA@kav@add{.\KOMAClassFileName}{toc}{bibliography}%
      \KOMA@kav@remove{.\KOMAClassFileName}{bibliography}{notoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{bibliography}{totoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{bibliography}{numbered}%
      \KOMA@kav@add{.\KOMAClassFileName}{bibliography}{totoc}%
      \renewcommand*\bib@heading{%
        \ifbib@leveldown
          \addsec{\bibname}
        \else
          \if@chaptertolists
            \@chaptertolistsfalse\addchap{\bibname}\@chaptertoliststrue
          \else
            \addchap{\bibname}
          \fi
          \@mkboth{\MakeMarkcase{\bibname}}{\MakeMarkcase{\bibname}}%
        \fi
      }%
    \or% numbered
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{nobibliography}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{bibliography}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{bibliographynumbered}%
      \KOMA@kav@add{.\KOMAClassFileName}{toc}{bibliographynumbered}%
      \KOMA@kav@remove{.\KOMAClassFileName}{bibliography}{notoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{bibliography}{totoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{bibliography}{numbered}%
      \KOMA@kav@add{.\KOMAClassFileName}{bibliography}{numbered}%
      \renewcommand*\bib@heading{%
        \ifbib@leveldown
          \section{\bibname}%
        \else
          \if@chaptertolists
            \@chaptertolistsfalse\chapter{\bibname}\@chaptertoliststrue
          \else
            \chapter{\bibname}
          \fi
          \@mkboth{\MakeMarkcase{\chaptermarkformat \bibname}}%
                  {\MakeMarkcase{\chaptermarkformat \bibname}}%
        \fi
      }
    \or% leveldown
      \KOMA@kav@remove{.\KOMAClassFileName}{bibliography}{leveldown}%
      \KOMA@kav@remove{.\KOMAClassFileName}{bibliography}{standardlevel}%
      \KOMA@kav@add{.\KOMAClassFileName}{bibliography}{leveldown}%
      \bib@leveldowntrue
    \or% standardlevel
      \KOMA@kav@remove{.\KOMAClassFileName}{bibliography}{leveldown}%
      \KOMA@kav@remove{.\KOMAClassFileName}{bibliography}{standardlevel}%
      \KOMA@kav@add{.\KOMAClassFileName}{bibliography}{standardlevel}%
      \bib@leveldownfalse
    \fi
  }{%
    \FamilyKeyStateProcessed
    \edef\reserved@a{%
      \noexpand\KOMA@kav@remove{.\KOMAClassFileName}{bibliography}%
                               {\scr@current@bibstyle}%
    }\reserved@a
    \csname scr@bibstyle@#1\endcsname
  }%
}
\KOMA@DeclareStandardOption{openbib}{bibliography=openstyle}
\KOMA@DeclareDeprecatedOption{bibtotoc}{bibliography=totoc}
\KOMA@DeclareDeprecatedOption{bibtotocnumbered}{bibliography=totocnumbered}
%%% From File: $Id: scrkernel-index.dtx 2182 2015-08-25 09:10:08Z kohm $
\newcommand*{\idx@@heading}{%
  \ifidx@leveldown
    \expandafter\section
  \else
    \expandafter\chapter
  \fi*%
}
\newif\ifidx@leveldown
\KOMA@key{index}{%
  \KOMA@set@ncmdkey{index}{@tempa}{%
    {notoc}{0},{nottotoc}{0},{default}{0},{plainheading}{0},%
    {totoc}{1},{toc}{1},{notnumbered}{1},%
    {numbered}{2},{totocnumbered}{2},%
    {leveldown}{3},%
    {standardlevel}{4}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed
    \ifcase \@tempa\relax
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{noindex}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{indexnumbered}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{index}%
      \KOMA@kav@remove{.\KOMAClassFileName}{index}{notoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{index}{numbered}%
      \KOMA@kav@remove{.\KOMAClassFileName}{index}{toc}%
      \KOMA@kav@add{.\KOMAClassFileName}{toc}{noindex}%
      \KOMA@kav@add{.\KOMAClassFileName}{index}{notoc}%
      \renewcommand*{\idx@@heading}{%
        \ifidx@leveldown
        \expandafter\section
        \else
        \expandafter\chapter
        \fi*%
      }%
    \or
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{noindex}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{indexnumbered}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{index}%
      \KOMA@kav@remove{.\KOMAClassFileName}{index}{notoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{index}{numbered}%
      \KOMA@kav@remove{.\KOMAClassFileName}{index}{toc}%
      \KOMA@kav@add{.\KOMAClassFileName}{toc}{index}%
      \KOMA@kav@add{.\KOMAClassFileName}{index}{toc}%
      \renewcommand*{\idx@@heading}{%
        \ifidx@leveldown
        \expandafter\addsec
        \else
        \expandafter\addchap
        \fi
      }%
    \or
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{noindex}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{indexnumbered}%
      \KOMA@kav@remove{.\KOMAClassFileName}{toc}{index}%
      \KOMA@kav@remove{.\KOMAClassFileName}{index}{notoc}%
      \KOMA@kav@remove{.\KOMAClassFileName}{index}{numbered}%
      \KOMA@kav@remove{.\KOMAClassFileName}{index}{toc}%
      \KOMA@kav@add{.\KOMAClassFileName}{toc}{indexnumbered}%
      \KOMA@kav@add{.\KOMAClassFileName}{index}{numbered}%
      \renewcommand*{\idx@@heading}{%
        \ifidx@leveldown
        \expandafter\section
        \else
        \expandafter\chapter
        \fi
      }%
    \or
      \KOMA@kav@remove{.\KOMAClassFileName}{index}{leveldown}%
      \KOMA@kav@remove{.\KOMAClassFileName}{index}{standardlevel}%
      \KOMA@kav@add{.\KOMAClassFileName}{index}{leveldown}%
      \idx@leveldowntrue
    \or
      \KOMA@kav@remove{.\KOMAClassFileName}{index}{leveldown}%
      \KOMA@kav@remove{.\KOMAClassFileName}{index}{standardlevel}%
      \KOMA@kav@add{.\KOMAClassFileName}{index}{standardlevel}%
      \idx@leveldownfalse
    \fi
  \fi
}
\KOMA@kav@add{.\KOMAClassFileName}{toc}{noindex}
\KOMA@kav@add{.\KOMAClassFileName}{index}{notoc}
\KOMA@kav@add{.\KOMAClassFileName}{index}{standardlevel}
\KOMA@DeclareDeprecatedOption{idxtotoc}{index=totoc}
%%% From File: $Id: scrkernel-listsandtabulars.dtx 2028 2015-03-23 12:19:51Z kohm $
%%% From File: $Id: scrkernel-sections.dtx 2212 2015-10-03 12:51:00Z kohm $
%%%            (run: execoption)
\KOMAExecuteOptions{headings=openany}
\KOMAExecuteOptions{numbers=autoendperiod}
%%% From File: $Id: scrkernel-miscellaneous.dtx 2028 2015-03-23 12:19:51Z kohm $
\KOMAExecuteOptions{%
  parskip=false,%
  headings=big%
}
\KOMAProcessOptions\relax
%%% From File: $Id: scrkernel-compatibility.dtx 2213 2015-10-03 12:59:03Z kohm $
%%% From File: $Id: scrkernel-fonts.dtx 2181 2015-08-24 09:30:25Z kohm $
\newcommand*\scr@setlength[4]{%
  \expandafter\ifnum\scr@v@is@lt{3.12}\relax
    \setlength{#1}{#2 \@plus#3 \@minus#4}%
  \else
    \ifdim #2<\ifdim #2=\z@ \z@ \else \p@\fi
      \ifdim #3<\ifdim #3=\z@ \z@ \else \p@\fi
        \ifdim #4<\ifdim #4=\z@ \z@ \else \p@\fi
          \setlength{#1}{\p@ \@plus\p@ \@minus\p@}%
        \else
          \setlength{#1}{\p@ \@plus\p@ \@minus#4}%
        \fi
      \else
        \ifdim #4<\ifdim #4=\z@ \z@ \else \p@\fi
          \setlength{#1}{\p@ \@plus#3 \@minus\p@}%
        \else
          \setlength{#1}{\p@ \@plus#3 \@minus#4}%
        \fi
      \fi
    \else
      \ifdim #3<\ifdim #3=\z@ \z@ \else \p@\fi
        \ifdim #4<\ifdim #4=\z@ \z@ \else \p@\fi
          \setlength{#1}{#2 \@plus\p@ \@minus\p@}%
        \else
          \setlength{#1}{#2 \@plus\p@ \@minus#4}%
        \fi
      \else
        \ifdim #4<\ifdim #4=\z@ \z@ \else \p@\fi
          \setlength{#1}{#2 \@plus#3 \@minus\p@}%
        \else
          \setlength{#1}{#2 \@plus#3 \@minus#4}%
        \fi
      \fi
    \fi
  \fi
}
\providecommand*{\simple@changefontsizes}[2][1.2\@tempdima]{%
  \KOMA@kav@removekey{.%
    \KOMAClassFileName
  }{fontsize}%
  \@defaultunits\@tempdima#2pt\relax\@nnil
  \setlength{\@tempdimc}{\@tempdima}%
  \addtolength{\@tempdimc}{-10\p@}%
  \edef\@ptsize{\strip@pt\@tempdimc}%
  \@defaultunits\@tempdimb#1pt\relax\@nnil
  \setlength{\@tempdimc}{\dimexpr (100\@tempdimb / \@tempdima * \p@)}%
  \edef\@tempb{\the\@tempdimc}%
  \setlength{\@tempdimc}{\@tempdima}%
  \def\@tempa##1##2##3##4##5\@nnil{\def##1{##2.##3##4}}%
  \expandafter\@tempa\expandafter\@tempb\@tempb\@nnil%
  \expandafter\ifnum\scr@v@is@lt{3.12}\relax
    \setlength{\abovedisplayskip}{%
      \@tempdima \@plus .25\@tempdima \@minus .58\@tempdima}%
    \setlength{\abovedisplayshortskip}{\z@ \@plus .25\@tempdima}%
    \setlength{\belowdisplayshortskip}{%
      .55\@tempdima \@plus .3\@tempdima \@minus .25\@tempdima}%
  \else
    \scr@setlength{\abovedisplayskip}%
                  {.8333\@tempdimb}{.1667\@tempdimb}{.5\@tempdimb}%
    \scr@setlength{\abovedisplayshortskip}{\z@}{.25\@tempdimb}{\z@}%
    \scr@setlength{\belowdisplayshortskip}%
                  {.5\@tempdimb}{.25\@tempdimb}{.25\@tempdimb}%
  \fi
  \setlength{\belowdisplayskip}{\abovedisplayskip}%
  \edef\normalsize{%
    \noexpand\@setfontsize\noexpand\normalsize
    {\the\@tempdima}{\the\@tempdimb}%
    \abovedisplayskip \the\abovedisplayskip
    \abovedisplayshortskip \the\abovedisplayshortskip
    \belowdisplayskip \the\belowdisplayskip
    \belowdisplayshortskip \the\belowdisplayshortskip
    \let\noexpand\@listi\noexpand\@listI
  }%
  \setlength{\@tempdima}{0.9125\@tempdimc}%
  \setlength{\@tempdimb}{\@tempb\@tempdima}%
  \expandafter\ifnum\scr@v@is@lt{3.12}\relax
    \setlength{\abovedisplayskip}{%
      \@tempdima \@plus .25\@tempdima \@minus .58\@tempdima}%
    \setlength{\abovedisplayshortskip}{\z@ \@plus .25\@tempdima}%
    \setlength{\belowdisplayshortskip}{%
      .55\@tempdima \@plus .3\@tempdima \@minus .25\@tempdima}%
  \else
    \scr@setlength{\abovedisplayskip}%
                  {.8333\@tempdimb}{.1667\@tempdimb}{.5\@tempdimb}%
    \scr@setlength{\abovedisplayshortskip}{\z@}{.25\@tempdimb}{\z@}%
    \scr@setlength{\belowdisplayshortskip}%
                  {.5\@tempdimb}{.25\@tempdimb}{.25\@tempdimb}%
  \fi
  \setlength{\belowdisplayskip}{\abovedisplayskip}%
  \edef\small{%
    \noexpand\@setfontsize\noexpand\small
    {\the\@tempdima}{\the\@tempdimb}%
    \abovedisplayskip \the\abovedisplayskip
    \abovedisplayshortskip \the\abovedisplayshortskip
    \belowdisplayskip \the\belowdisplayskip
    \belowdisplayshortskip \the\belowdisplayshortskip
    \let\noexpand\@listi\noexpand\@listi@small
  }%
  \setlength{\@tempdima}{.83334\@tempdimc}%
  \setlength{\@tempdimb}{\@tempb\@tempdima}%
  \expandafter\ifnum\scr@v@is@lt{3.12}\relax
    \setlength{\abovedisplayskip}{%
      \@tempdima \@plus .25\@tempdima \@minus .58\@tempdima}%
    \setlength{\abovedisplayshortskip}{\z@ \@plus .25\@tempdima}%
    \setlength{\belowdisplayshortskip}{%
      .55\@tempdima \@plus .3\@tempdima \@minus .25\@tempdima}%
  \else
    \scr@setlength{\abovedisplayskip}%
                  {.8333\@tempdimb}{.1667\@tempdimb}{.5\@tempdimb}%
    \scr@setlength{\abovedisplayshortskip}{\z@}{.25\@tempdimb}{\z@}%
    \scr@setlength{\belowdisplayshortskip}%
                  {.5\@tempdimb}{.25\@tempdimb}{.25\@tempdimb}%
  \fi
  \setlength{\belowdisplayskip}{\abovedisplayskip}%
  \edef\footnotesize{%
    \noexpand\@setfontsize\noexpand\footnotesize
    {\the\@tempdima}{\the\@tempdimb}%
    \abovedisplayskip \the\abovedisplayskip
    \abovedisplayshortskip \the\abovedisplayshortskip
    \belowdisplayskip \the\belowdisplayskip
    \belowdisplayshortskip \the\belowdisplayshortskip
    \let\noexpand\@listi\noexpand\@listi@footnotesize
  }%
  \setlength{\@tempdima}{.66667\@tempdimc}%
  \setlength{\@tempdimb}{\@tempb\@tempdima}%
  \edef\scriptsize{%
    \noexpand\@setfontsize\noexpand\scriptsize
    {\the\@tempdima}{\the\@tempdimb}%
  }%
  \setlength{\@tempdima}{.5\@tempdimc}%
  \setlength{\@tempdimb}{\@tempb\@tempdima}%
  \edef\tiny{%
    \noexpand\@setfontsize\noexpand\tiny
    {\the\@tempdima}{\the\@tempdimb}%
  }%
  \setlength{\@tempdima}{1.2\@tempdimc}%
  \setlength{\@tempdimb}{\@tempb\@tempdima}%
  \edef\large{%
    \noexpand\@setfontsize\noexpand\large
    {\the\@tempdima}{\the\@tempdimb}%
  }%
  \setlength{\@tempdima}{1.44\@tempdimc}%
  \setlength{\@tempdimb}{\@tempb\@tempdima}%
  \edef\Large{%
    \noexpand\@setfontsize\noexpand\Large
    {\the\@tempdima}{\the\@tempdimb}%
  }%
  \setlength{\@tempdima}{1.728\@tempdimc}%
  \setlength{\@tempdimb}{\@tempb\@tempdima}%
  \edef\LARGE{%
    \noexpand\@setfontsize\noexpand\LARGE
    {\the\@tempdima}{\the\@tempdimb}%
  }%
  \setlength{\@tempdima}{2.074\@tempdimc}%
  \setlength{\@tempdimb}{\@tempb\@tempdima}%
  \edef\huge{%
    \noexpand\@setfontsize\noexpand\huge
    {\the\@tempdima}{\the\@tempdimb}%
  }%
  \setlength{\@tempdima}{2.488\@tempdimc}%
  \setlength{\@tempdimb}{\@tempb\@tempdima}%
  \edef\Huge{%
    \noexpand\@setfontsize\noexpand\Huge
    {\the\@tempdima}{\the\@tempdimb}%
  }%
  \normalsize
  \expandafter\ifnum\scr@v@is@ge{3.17}\@nameuse{par@updaterelative}\fi
  \expandafter\ifnum\scr@v@is@lt{3.12}\relax
    \setlength{\footnotesep}{.7\@tempdimc}%
    \setlength{\skip\footins}{.9\@tempdimc \@plus .3333\@tempdimc \@minus
      .6\@tempdimc}%
    \setlength{\floatsep}{\@tempdimc \@plus .1667\@tempdimc \@minus
      .3333\@tempdimc}%
    \setlength{\textfloatsep}{1.6667\@tempdimc \@plus .1667\@tempdimc \@minus
      .3333\@tempdimc}%
    \setlength{\intextsep}{\@tempb\@tempdimc \@plus .3333\@tempdimc \@minus
      .3333\@tempdimc}%
    \setlength{\dblfloatsep}{\@tempb\@tempdimc \@plus .1667\@tempdimc \@minus
      .3333\@tempdimc}%
    \setlength{\dbltextfloatsep}{\textfloatsep}%
    \setlength{\@fptop}{0\p@ \@plus 1fil}%
    \setlength{\@fpsep}{.8333\@tempdimc \@plus 2fil}%
    \setlength{\@fpbot}{\@fptop}%
    \setlength{\@dblfptop}{0\p@ \@plus 1fil}%
    \setlength{\@dblfpsep}{.8333\@tempdimc \@plus 2fil}%
    \setlength{\@dblfpbot}{\@fptop}%
  \fi
  \expandafter\ifnum\scr@v@is@lt{3.12}\relax
    \setlength{\topsep}{.8333\@tempdimc \@plus .3333\@tempdimc \@minus
      .5\@tempdimc}%
    \setlength{\parsep}{.4167\@tempdimc \@plus .2083\@tempdimc \@minus \p@}%
  \else
    \setlength{\@tempdimb}{\f@baselineskip}%
    \scr@setlength{\parsep}%
                  {.3333\@tempdimb}{.1667\@tempdimb}{.0833\@tempdimb}%
    \scr@setlength{\topsep}%
                  {.6667\@tempdimb}{.1667\@tempdimb}{.3333\@tempdimb}%
  \fi
  \@tempswafalse
  \begingroup
    \def\@list@extra{\aftergroup\@tempswatrue}%
    \csname @listi\endcsname
  \endgroup
  \edef\@listi{\leftmargin\leftmargini
    \topsep \the\topsep
    \parsep \the\parsep
    \itemsep \parsep
    \if@tempswa\noexpand\@list@extra\fi
  }%
  \let\@listI\@listi
  \expandafter\ifnum\scr@v@is@lt{3.12}\relax
    \setlength{\topsep}{.75\@tempdimc \@plus .25\@tempdimc \@minus
      .41667\@tempdimc}%
    \setlength{\parsep}{.375\@tempdimc \@plus .16667\@tempdimc \@minus \p@}%
  \else
    \scr@setlength{\parsep}%
                  {.1667\@tempdimb}{.0833\@tempdimb}{.0833\@tempdimb}%
    \scr@setlength{\topsep}%
                  {.3333\@tempdimb}{.1667\@tempdimb}{.1667\@tempdimb}%
  \fi
  \@tempswafalse
  \begingroup
    \def\@list@extra{\aftergroup\@tempswatrue}%
    \csname @listi\endcsname
  \endgroup
  \edef\@listi@small{\leftmargin\leftmargini
    \topsep \the\topsep
    \parsep \the\parsep
    \itemsep \parsep
    \if@tempswa\noexpand\@list@extra\fi
  }%
  \expandafter\ifnum\scr@v@is@lt{3.12}\relax
    \setlength{\topsep}{.5\@tempdimc \@plus .16667\@tempdimc \@minus
      .16667\@tempdimc}%
    \setlength{\parsep}{.25\@tempdimc \@plus .16667\@tempdimc \@minus \p@}%
  \else
    \scr@setlength{\parsep}%
                  {.125\@tempdimb}{.0625\@tempdimb}{.0625\@tempdimb}%
    \scr@setlength{\topsep}%
                  {.25\@tempdimb}{.125\@tempdimb}{.125\@tempdimb}%
  \fi
  \@tempswafalse
  \begingroup
    \def\@list@extra{\aftergroup\@tempswatrue}%
    \csname @listi\endcsname
  \endgroup
  \edef\@listi@footnotesize{\leftmargin\leftmargini
    \topsep \the\topsep
    \parsep \the\parsep
    \itemsep \parsep
    \if@tempswa\noexpand\@list@extra\fi
  }%
  \expandafter\ifnum\scr@v@is@lt{3.12}\relax
    \setlength{\topsep}{.4167\@tempdimc \@plus .2083\@tempdimc \@minus \p@}%
    \setlength{\parsep}{.2083\@tempdimc \@plus \p@ \@minus \p@}%
  \else
    \scr@setlength{\parsep}%
                  {.1667\@tempdimb}{.0833\@tempdimb}{.0833\@tempdimb}%
    \scr@setlength{\topsep}%
                  {.3333\@tempdimb}{.1667\@tempdimb}{.0833\@tempdimb}%
  \fi
  \@tempswafalse
  \begingroup
    \def\@list@extra{\aftergroup\@tempswatrue}%
    \csname @listii\endcsname
  \endgroup
  \edef\@listii{\leftmargin\leftmarginii
    \labelwidth=\dimexpr \leftmargin-\labelsep
    \topsep \the\topsep
    \parsep \the\parsep
    \itemsep \parsep
    \if@tempswa\noexpand\@list@extra\fi
  }%
  \expandafter\ifnum\scr@v@is@lt{3.12}\relax
    \setlength{\topsep}{.2083\@tempdimc \@plus \p@ \@minus \p@}%
  \else
    \scr@setlength{\topsep}%
                  {.1667\@tempdimb}{.0833\@tempdimb}{.0833\@tempdimb}%
  \fi
  \setlength{\partopsep}{\z@ \@plus\z@ \@minus\p@}%
  \@tempswafalse
  \begingroup
    \def\@list@extra{\aftergroup\@tempswatrue}%
    \csname @listiii\endcsname
  \endgroup
  \edef\@listiii{\leftmargin\leftmarginiii
    \labelwidth=\dimexpr \leftmargin-\labelsep
    \topsep \the\topsep
    \parsep \z@
    \partopsep \the\partopsep
    \itemsep \topsep
    \if@tempswa\noexpand\@list@extra\fi
  }%
  \@tempswafalse
  \begingroup
    \def\@list@extra{\aftergroup\@tempswatrue}%
    \csname @listiv\endcsname
  \endgroup
  \edef\@listiv{\leftmargin\leftmarginiv
    \labelwidth=\dimexpr \leftmargin-\labelsep\relax
    \if@tempswa\noexpand\@list@extra\fi
  }%
  \@tempswafalse
  \begingroup
    \def\@list@extra{\aftergroup\@tempswatrue}%
    \csname @listv\endcsname
  \endgroup
  \edef\@listv{\leftmargin\leftmarginv
    \labelwidth=\dimexpr \leftmargin-\labelsep\relax
    \if@tempswa\noexpand\@list@extra\fi
  }%
  \@tempswafalse
  \begingroup
    \def\@list@extra{\aftergroup\@tempswatrue}%
    \csname @listvi\endcsname
  \endgroup
  \edef\@listvi{\leftmargin\leftmarginvi
    \labelwidth=\dimexpr \leftmargin-\labelsep\relax
    \if@tempswa\noexpand\@list@extra\fi
  }%
  \@listi
  \expandafter\ifnum\scr@v@is@lt{3.12}\relax
    \setlength{\@tempdimb}{\@tempb\@tempdima}%
    \setlength{\@tempdima}{\dimexpr \@tempdimb-\@tempdimc}%
    \setlength\intextsep{\@tempdimb \@plus.2\@tempdima \@minus.2\@tempdima}%
    \setlength\dblfloatsep\intextsep
    \setlength\partopsep{.2\@tempdimc \@plus.1\@tempdimc \@minus.1\@tempdimc}%
  \else
    \setlength{\@tempdimb}{\f@baselineskip}%
    \setlength{\footnotesep}{.555\@tempdimb}%
    \scr@setlength{\skip\footins}%
                  {.75\@tempdimb}{.3333\@tempdimb}{.1667\@tempdimb}%
    \scr@setlength{\floatsep}%
                  {\@tempdimb}{.1667\@tempdimb}{.1667\@tempdimb}%
    \scr@setlength{\textfloatsep}%
                  {1.6667\@tempdimb}{.1667\@tempdimb}{.3333\@tempdimb}%
    \setlength{\intextsep}{\floatsep}%
    \setlength{\dblfloatsep}{\floatsep}%
    \setlength{\dbltextfloatsep}{\textfloatsep}%
    \setlength{\@fptop}{\z@ \@plus 1fil}%
    \setlength{\@fpsep}{.6667\@tempdimb \@plus 2fil}%
    \setlength{\@fpbot}{\@fptop}%
    \setlength{\@dblfptop}{\@fptop}%
    \setlength{\@dblfpsep}{\@fpsep}%
    \setlength{\@dblfpbot}{\@fptop}%
    \scr@setlength{\partopsep}{.2\@tempdimb}{.1\@tempdimb}{.1\@tempdimb}%
  \fi
}
\scr@ifundefinedorrelax{changefontsizes}{%
  \let\changefontsizes\simple@changefontsizes
}{%
  \ClassWarning{\KOMAClassName}{%
    \string\changefontsizes\space already defined.\MessageBreak
    I hope, the definition is compatible,\MessageBreak
    because I do not change it%
  }%
}
\expandafter\@defaultunits\expandafter\@tempdima\@ptsize pt\relax\@nnil
\edef\@tempa{\@ptsize}%
\setlength{\@tempdimb}{\@tempdima}%
\edef\@tempb{\strip@pt\@tempdimb}%
\addtolength{\@tempdimb}{-10\p@}%
\edef\@ptsize{\strip@pt\@tempdimb}%
\InputIfFileExists{\@fontsizefilebase\@tempa.clo}{%
  \ClassInfo{\KOMAClassName}{%
    File `\@fontsizefilebase\@tempa.clo' used to setup font sizes}%
  \KOMA@kav@removekey{.\KOMAClassFileName}{fontsize}%
  \KOMA@kav@xadd{.\KOMAClassFileName}{fontsize}{\@tempa}%
}{%
  \InputIfFileExists{\@fontsizefilebase\@tempb pt.clo}{%
    \ClassInfo{\KOMAClassName}{%
      File `\@fontsizefilebase\@tempb pt.clo' used instead of\MessageBreak
      file `\@fontsizefilebase\@tempa.clo' to setup font sizes}%
    \KOMA@kav@removekey{.\KOMAClassFileName}{fontsize}%
    \KOMA@kav@xadd{.\KOMAClassFileName}{fontsize}{\@tempb pt}%
  }{%
      \InputIfFileExists{size\@tempb.clo}{%
        \ClassInfo{\KOMAClassName}{%
          File `size\@tempb.clo' used to setup font sizes}%
        \KOMA@kav@removekey{.\KOMAClassFileName}{fontsize}%
        \KOMA@kav@xadd{.\KOMAClassFileName}{fontsize}{\@tempb}%
      }{%
        \edef\@tempa{%
          \noexpand\changefontsizes{\@tempa}%
          \noexpand\KOMA@kav@xadd{.\KOMAClassFileName}{fontsize}{\@tempa}%
        }\@tempa
      }%
  }%
}
\newcommand*{\scr@DeclareOldFontCommand}[3]{%
  \DeclareRobustCommand #1{\@fontswitch {%
      \ClassWarning{\KOMAClassName}{%
        Usage of deprecated font command `\string#1'!\MessageBreak
        You should note, that in 1994 font command `\string#1' has\MessageBreak
        been defined for compatiblitiy to Script 2.0 only.\MessageBreak
        Now, after two decades of LaTeX2e and NFSS2, you\MessageBreak
        shouldn't use such commands any longer and within\MessageBreak
        KOMA-Script usage of `\string#1' is definitely deprecated.\MessageBreak
        See `fntguide.pdf' for more information about\MessageBreak
        recommended font commands.\MessageBreak
        Note also, that KOMA-Script will remove the definition\MessageBreak
        of `\string#1' anytime until release of about version 3.20.\MessageBreak
        But for now, KOMA-Script will replace deprecated
        `\string#1'\MessageBreak
        by `\detokenize{#2}'%
      }%
      #2%
    }{%
      \ClassWarning{\KOMAClassName}{%
        Usage of deprecated font command `\string#1'!\MessageBreak
        You should note, that in 1994 font command `\string#1' has\MessageBreak
        been defined for compatiblitiy to Script 2.0 only.\MessageBreak
        Now, after two decades of LaTeX2e and NFSS2, you\MessageBreak
        shouldn't use such commands any longer and within\MessageBreak
        KOMA-Script usage of `\string#1' is definitely deprecated.\MessageBreak
        See `fntguide.pdf' for more information about\MessageBreak
        recommended font commands.\MessageBreak
        Note also, that KOMA-Script will remove the definition\MessageBreak
        of `\string#1' anytime until release of about version 3.20.\MessageBreak
        But for now, KOMA-Script will replace deprecated
        `\string#1'\MessageBreak
        by `\detokenize{#3}'%
      }%
      #3%
    }%
  }%
}
\scr@DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\scr@DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\scr@DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\scr@DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\scr@DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\scr@DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\scr@DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\scr@DeclareOldFontCommand{\sfb}{\normalfont\sffamily\bfseries}{%
  \@nomath\sfb}
\DeclareRobustCommand*{\cal}{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*{\mit}{\@fontswitch\relax\mathnormal}
%%% From File: $Id: scrkernel-language.dtx 2151 2015-07-03 09:25:42Z kohm $
      \def\today{\ifcase\month\or
        January\or February\or March\or April\or May\or June\or
        July\or August\or September\or October\or November\or December\fi
        \space\number\day, \number\year}%
%%% From File: $Id: scrkernel-typearea.dtx 2166 2015-07-26 08:15:44Z kohm $
\let\@BCOR                =\relax
\let\@@BCOR               =\relax
\let\@DIV                 =\relax
\let\@@DIV                =\relax
\let\@headlines           =\relax
\let\@@headlines          =\relax
\let\x@paper              =\relax
\let\x@@paper             =\relax
\let\scr@pti@nerr@r       =\relax
\RequirePackage{typearea}[\KOMAScriptVersion]
\if@scr@emulatestandardclasses
  \ifnum\@lastdiv=\z@
    \setlength{\textwidth}{\dimexpr \paperwidth-2in\relax}
    \ifdim \f@size\p@<10.5\p@
        \setlength{\@tempdimb}{345\p@}
    \else\ifdim \f@size\p@<11.5\p@
        \setlength{\@tempdimb}{360\p@}
      \else
        \setlength{\@tempdimb}{390\p@}
      \fi
    \fi
    \if@twocolumn
      \ifdim\@textwidth>2\@tempdimb\relax
        \setlength{\textwidth}{2\@tempdimb}
      \fi
    \else
      \ifdim\textwidth>\@tempdimb
        \setlength{\textwidth}{\@tempdimb}
      \fi
    \fi
    \@settopoint\textwidth
    \setlength{\@tempdima}{\dimexpr \paperheight-3.5in\relax}
    \divide\@tempdima\baselineskip
    \@tempcnta=\@tempdima
    \setlength{\textheight}{\@tempcnta\baselineskip}
    \addtolength{\textheight}{\topskip}
    \edef\reserved@a{%
      \noexpand\@areasetadvancedtrue
      \noexpand\areaset[current]{\noexpand\textwidth}{\noexpand\textheight}%
      \if@areasetadvanced\else\noexpand\@areasetadvancedfalse\fi
    }\reserved@a
  \fi
\fi
%%% From File: $Id: scrkernel-paragraphs.dtx 2179 2015-08-22 06:36:48Z kohm $
\setlength{\lineskip}{\p@}
\setlength{\normallineskip}{\p@}
\setlength{\columnsep}{10\p@}
\setlength{\columnseprule}{\z@}
\newcommand*{\scr@selectfont}{}
\expandafter\let\expandafter\scr@selectfont\csname selectfont \endcsname
\BeforePackage{everysel}{%
  \AtBeginDocument{%
    \expandafter\ifx\csname selectfont \endcsname\scr@new@selectfont\else
      \ClassWarningNoLine{\KOMAClassName}{discard change of \string\selectfont}%
    \fi
    \expandafter\let\csname selectfont \endcsname\scr@selectfont
  }%
}
\AfterPackage{everysel}{%
  \scr@ifundefinedorrelax{@EverySelectfont@Init}{%
    \expandafter\ifx\csname selectfont \endcsname\scr@new@selectfont
      \ClassWarningNoLine{\KOMAClassName}{%
        \string\selectfont\space already changed}%
    \else
      \expandafter\g@addto@macro\csname selectfont \endcsname{\par@update}%
      \expandafter\let\expandafter\scr@new@selectfont
        \csname selectfont \endcsname
    \fi
  }{%
    \g@addto@macro\@EverySelectfont@Init{%
      \expandafter\g@addto@macro\csname selectfont \endcsname{\par@update}%
      \expandafter\let\expandafter\scr@new@selectfont
        \csname selectfont \endcsname
    }%
  }%
}
\AfterPackage{tracefnt}{%
  \expandafter\let\expandafter\scr@selectfont\csname selectfont \endcsname
  \expandafter\g@addto@macro\csname selectfont \endcsname{\par@update}%
  \expandafter\let\expandafter\scr@new@selectfont\csname selectfont \endcsname
}
\expandafter\g@addto@macro\csname selectfont \endcsname{\par@update}
\newcommand*{\scr@new@selectfont}{}
\expandafter\let\expandafter\scr@new@selectfont\csname selectfont \endcsname
\newcommand*{\par@updaterelative}{%
  \begingroup
    \edef\@tempa{\the\parindent}\ifx\@tempa\f@parindent
      \aftergroup\parindent@update
    \fi
    \edef\@tempa{\the\parskip}\ifx\@tempa\f@parskip
      \aftergroup\parskip@update
    \fi
    \edef\@tempa{\the\parfillskip}\ifx\@tempa\f@parfillskip
      \aftergroup\parfillskip@update
    \fi
  \endgroup
}
\newcommand*{\parindent@update}{%
  \scr@defaultunits\parindent\scr@parindent
  \begingroup
    \let\@tempb\endgroup
    \edef\@tempa{\the\parindent}\ifx\@tempa\f@parindent\else
      \def\@tempb{\endgroup\edef\f@parindent{\the\parindent}}%
    \fi
  \@tempb
}
\newcommand*{\parskip@update}{%
  \scr@defaultunits\parskip\scr@parskip
  \begingroup
    \let\@tempb\endgroup
    \edef\@tempa{\the\parskip}\ifx\@tempa\f@parskip\else
      \def\@tempb{\endgroup\edef\f@parskip{\the\parskip}}%
    \fi
  \@tempb
}
\newcommand*{\parfillskip@update}{%
  \scr@defaultunits\parfillskip\scr@parfillskip
  \begingroup
    \let\@tempb\endgroup
    \edef\@tempa{\the\parfillskip}\ifx\@tempa\f@parfillskip\else
      \def\@tempb{\endgroup\edef\f@parfillskip{\the\parfillskip}}%
    \fi
  \@tempb
}
\newcommand*{\scr@defaultunits}[2]{%
  \begingroup
    \edef\@tempa{#2}%
    \expandafter\scr@@defaultunits\expandafter#1\@tempa plusplus\@nnil
    \edef\@tempa{\noexpand\endgroup\noexpand#1\the\glueexpr #1\relax}%
  \@tempa
}
\newcommand*{\scr@@defaultunits}{}
\def\scr@@defaultunits#1#2plus#3plus#4\@nnil{%
  \ifx\relax#3\relax
    \scr@@@defaultunits#1{}#2minusminus\@nnil
  \else
    \scr@@@defaultunits#1{#2}#3minusminus\@nnil
  \fi
}
\newcommand*{\scr@@@defaultunits}{}
\def\scr@@@defaultunits#1#2#3minus#4minus#5\@nnil{%
  \ifx\relax#2\relax
    \@defaultunits\@tempskipa#3pt\relax\@nnil
    #1\@tempskipa
  \else
    \@defaultunits\@tempskipa\z@\@plus#3pt\relax\@nnil
    #1\@tempskipa
    \@defaultunits\@tempskipa#2pt\relax\@nnil
    \advance#1\@tempskipa
  \fi
  \ifx\relax#4\relax\else
    \@defaultunits\@tempskipa\z@\@minus #4pt\relax\@nnil
    \advance#1\@tempskipa
  \fi
}
\newcommand*{\@list@extra}{%
  \ifdim\parskip>\z@\topsep\z@\parsep\parskip\itemsep\z@\fi
}
\newcommand*{\add@extra@listi}[1]{%
  \expandafter\let\csname #1@listi\endcsname=\@listi
  \def\@listi{\csname #1@listi\endcsname\@list@extra}%
}
  \l@addto@macro{\@listi}{\@list@extra}%
  \let\@listI=\@listi
  \l@addto@macro{\@listii}{\@list@extra}%
  \l@addto@macro{\@listiii}{\@list@extra}%
  \l@addto@macro{\footnotesize}{\protect\add@extra@listi{ftns}}%
  \l@addto@macro{\small}{\protect\add@extra@listi{sml}}%
\@lowpenalty  = 51
\@medpenalty  =151
\@highpenalty =301
%%% From File: $Id: scrkernel-title.dtx 2182 2015-08-25 09:10:08Z kohm $
\newcommand*{\@extratitle}{}%
\newcommand{\extratitle}[1]{\gdef\@extratitle{%
    #1%
}}%
\newcommand*{\@titlehead}{}%
\newcommand{\titlehead}[1]{\gdef\@titlehead{%
    #1%
}}%
\newcommand*{\@subject}{}%
\newcommand*{\subject}[1]{\gdef\@subject{%
    #1%
}}%
\newcommand*{\subtitle}[1]{\gdef\@subtitle{%
    #1%
}}%
\newcommand*{\@subtitle}{}%
\newcommand*{\@publishers}{}%
\newcommand{\publishers}[1]{\gdef\@publishers{%
    #1%
}}%
\newcommand*{\@uppertitleback}{}%
\newcommand{\uppertitleback}[1]{\gdef\@uppertitleback{%
    #1%
}}%
\newcommand*{\@lowertitleback}{}%
\newcommand{\lowertitleback}[1]{\gdef\@lowertitleback{%
    #1%
}}%
\newcommand*{\@dedication}{}%
\newcommand{\dedication}[1]{\gdef\@dedication{%
    #1%
}}%
\newcommand*{\next@tpage}{%
  \@thanks\global\let\@thanks\@empty
  \clearpage
  \csname titlepage@restore\endcsname
  \thispagestyle{empty}%
  \let\footnote\thanks
  \setcounter{footnote}{0}%
}
\newcommand*{\next@tdpage}{%
  \next@tpage\if@twoside \ifodd\value{page}\else\null\next@tpage\fi\fi
}
\newcommand*\maketitle[1][1]{%
  \expandafter\ifnum \csname scr@v@3.12\endcsname>\scr@compatibility\relax
  \else
    \def\and{%
      \end{tabular}%
      \hskip 1em \@plus.17fil%
      \begin{tabular}[t]{c}%
    }%
  \fi
  \if@titlepage
    \begin{titlepage}
      \setcounter{page}{%
        #1%
      }%
      \if@titlepageiscoverpage
        \edef\titlepage@restore{%
          \noexpand\endgroup
          \noexpand\global\noexpand\@colht\the\@colht
          \noexpand\global\noexpand\@colroom\the\@colroom
          \noexpand\global\vsize\the\vsize
          \noexpand\global\noexpand\@titlepageiscoverpagefalse
          \noexpand\let\noexpand\titlepage@restore\noexpand\relax
        }%
        \begingroup
        \topmargin=\dimexpr \coverpagetopmargin-1in\relax
        \oddsidemargin=\dimexpr \coverpageleftmargin-1in\relax
        \evensidemargin=\dimexpr \coverpageleftmargin-1in\relax
        \textwidth=\dimexpr
        \paperwidth-\coverpageleftmargin-\coverpagerightmargin\relax
        \textheight=\dimexpr
        \paperheight-\coverpagetopmargin-\coverpagebottommargin\relax
        \headheight=0pt
        \headsep=0pt
        \footskip=\baselineskip
        \@colht=\textheight
        \@colroom=\textheight
        \vsize=\textheight
        \columnwidth=\textwidth
        \hsize=\columnwidth
        \linewidth=\hsize
      \else
        \let\titlepage@restore\relax
      \fi
      \let\footnotesize\small
      \let\footnoterule\relax
      \let\footnote\thanks
      \renewcommand*\thefootnote{\@fnsymbol\c@footnote}%
      \let\@oldmakefnmark\@makefnmark
      \renewcommand*{\@makefnmark}{\rlap\@oldmakefnmark}%
      \ifx\@extratitle\@empty \else
        \noindent\@extratitle\next@tdpage
      \fi
      \setparsizes{\z@}{\z@}{\z@\@plus 1fil}\par@updaterelative
      \ifx\@titlehead\@empty \else
        \begin{minipage}[t]{\textwidth}%
          \usekomafont{titlehead}{\@titlehead\par}%
        \end{minipage}\par
      \fi
      \null\vfill
      \begin{center}
        \ifx\@subject\@empty \else
          {\usekomafont{subject}{\@subject\par}}%
          \vskip 3em
        \fi
        {\usekomafont{title}{\huge \@title\par}}%
        \vskip 1em
        {\ifx\@subtitle\@empty\else\usekomafont{subtitle}{\@subtitle\par}\fi}%
        \vskip 2em
        {%
          \usekomafont{author}{%
            \lineskip 0.75em
            \begin{tabular}[t]{c}
              \@author
            \end{tabular}\par
          }%
        }%
        \vskip 1.5em
        {\usekomafont{date}{\@date \par}}%
        \vskip \z@ \@plus3fill
        {\usekomafont{publishers}{\@publishers \par}}%
        \vskip 3em
      \end{center}\par
      \@thanks\let\@thanks\@empty
      \vfill\null
      \if@twoside
        \@tempswatrue
        \expandafter\ifnum \@nameuse{scr@v@3.12}>\scr@compatibility\relax
        \else
          \ifx\@uppertitleback\@empty\ifx\@lowertitleback\@empty
            \@tempswafalse
          \fi\fi
        \fi
        \if@tempswa
          \next@tpage
          \begin{minipage}[t]{\textwidth}
            \@uppertitleback
          \end{minipage}\par
          \vfill
          \begin{minipage}[b]{\textwidth}
            \@lowertitleback
          \end{minipage}\par
          \@thanks\let\@thanks\@empty
        \fi
      \fi
      \ifx\@dedication\@empty
      \else
        \next@tdpage\null\vfill
        {\centering\usekomafont{dedication}{\@dedication \par}}%
        \vskip \z@ \@plus3fill
        \@thanks\let\@thanks\@empty
        \cleardoubleemptypage
      \fi
      \ifx\titlepage@restore\relax\else\clearpage\titlepage@restore\fi
    \end{titlepage}
  \else
    \par
    \@tempcnta=%
    #1%
    \relax\ifnum\@tempcnta=1\else
      \ClassWarning{\KOMAClassName}{%
        Optional argument of \string\maketitle\space ignored
        at\MessageBreak
        notitlepage-mode%
      }%
    \fi
    \begingroup
      \let\titlepage@restore\relax
      \renewcommand*\thefootnote{\@fnsymbol\c@footnote}%
      \let\@oldmakefnmark\@makefnmark
      \renewcommand*{\@makefnmark}{\rlap\@oldmakefnmark}%
      \next@tdpage
      \if@twocolumn
        \ifnum \col@number=\@ne
          \ifx\@extratitle\@empty\else
            \@makeextratitle
            \next@tdpage
          \fi
          \@maketitle
        \else
          \ifx\@extratitle\@empty\else
            \twocolumn[\@makeextratitle]\next@tdpage
          \fi
          \twocolumn[\@maketitle]%
        \fi
      \else
        \ifx\@extratitle\@empty\else
          \@makeextratitle\next@tdpage
        \fi
        \@maketitle
      \fi
      \ifx\titlepagestyle\@empty\else\thispagestyle{\titlepagestyle}\fi
      \@thanks
    \endgroup
  \fi
  \setcounter{footnote}{0}%
  \expandafter\ifnum \csname scr@v@3.12\endcsname>\scr@compatibility\relax
    \let\thanks\relax
    \let\maketitle\relax
    \let\@maketitle\relax
    \global\let\@thanks\@empty
    \global\let\@author\@empty
    \global\let\@date\@empty
    \global\let\@title\@empty
    \global\let\@subtitle\@empty
    \global\let\@extratitle\@empty
    \global\let\@titlehead\@empty
    \global\let\@subject\@empty
    \global\let\@publishers\@empty
    \global\let\@uppertitleback\@empty
    \global\let\@lowertitleback\@empty
    \global\let\@dedication\@empty
    \global\let\author\relax
    \global\let\title\relax
    \global\let\extratitle\relax
    \global\let\titlehead\relax
    \global\let\subject\relax
    \global\let\publishers\relax
    \global\let\uppertitleback\relax
    \global\let\lowertitleback\relax
    \global\let\dedication\relax
    \global\let\date\relax
  \fi
  \global\let\and\relax
}%
\newcommand*{\@makeextratitle}{%
  \ifx\@extratitle\@empty \else
    \noindent\@extratitle\par
  \fi
}
\newcommand*{\@maketitle}{%
  \global\@topnum=\z@
  \setparsizes{\z@}{\z@}{\z@\@plus 1fil}\par@updaterelative
  \ifx\@titlehead\@empty \else
    \begin{minipage}[t]{\textwidth}
      \usekomafont{titlehead}{\@titlehead\par}%
    \end{minipage}\par
  \fi
  \null
  \vskip 2em%
  \begin{center}%
    \ifx\@subject\@empty \else
      {\usekomafont{subject}{\@subject \par}}%
      \vskip 1.5em
    \fi
    {\usekomafont{title}{\huge \@title \par}}%
    \vskip .5em
    {\ifx\@subtitle\@empty\else\usekomafont{subtitle}\@subtitle\par\fi}%
    \vskip 1em
    {%
      \usekomafont{author}{%
        \lineskip .5em%
        \begin{tabular}[t]{c}
          \@author
        \end{tabular}\par
      }%
    }%
    \vskip 1em%
    {\usekomafont{date}{\@date \par}}%
    \vskip \z@ \@plus 1em
    {\usekomafont{publishers}{\@publishers \par}}%
    \ifx\@dedication\@empty \else
      \vskip 2em
      {\usekomafont{dedication}{\@dedication \par}}%
    \fi
  \end{center}%
  \par
  \vskip 2em
}%
\newcommand*{\coverpagetopmargin}{%
  \dimexpr \topmargin+1in\relax
}
\newcommand*{\coverpagebottommargin}{%
  2\dimexpr\coverpagetopmargin\relax
}
\newcommand*{\coverpageleftmargin}{%
  \dimexpr \evensidemargin+1in\relax
}
\newcommand*{\coverpagerightmargin}{\coverpageleftmargin}
\newenvironment{titlepage}{%
  \cleardoublepage
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse\newpage
  \fi
  \thispagestyle{empty}%
  \if@compatibility
    \setcounter{page}{0}%
  \fi
}{%
  \if@restonecol\twocolumn \else \newpage \fi
}%
\newcommand*\titlefont{\sectfont}%
\newcommand*{\subject@font}{\normalfont\normalcolor\bfseries\Large}%
\newkomafont{subtitle}{\usekomafont{title}\large}%
\newkomafont{titlehead}{}%
\newkomafont{author}{\Large}
\newkomafont{date}{\Large}
\newkomafont{publishers}{\Large}
\newkomafont{dedication}{\Large}
\newcommand*{\scr@fnt@title}{\titlefont}%
\newcommand*{\scr@fnt@subject}{\subject@font}%
\newenvironment{abstract}{%
  \if@titlepage
    \titlepage
    \null\vfil
    \@beginparpenalty\@lowpenalty
    \if@abstrt
      \begin{center}
        \normalfont\sectfont\nobreak\abstractname
        \@endparpenalty\@M
      \end{center}
    \fi
  \else
    \if@twocolumn\if@abstrt
        \addsec*{\abstractname}
      \fi
    \else
      \if@abstrt
        \small
        \begin{center}
          {\normalfont\sectfont\nobreak\abstractname
            \vspace{-.5em}\vspace{\z@}}%
        \end{center}
      \fi
      \quotation
    \fi
  \fi
}{%
  \if@titlepage
    \par\vfil\null\endtitlepage
  \else
    \if@twocolumn\else\endquotation\fi
  \fi
}
\newcommand*\abstractname{Abstract}
%%% From File: $Id: scrkernel-sections.dtx 2212 2015-10-03 12:51:00Z kohm $
%%%            (run: body)
\setcounter{secnumdepth}{2}
\newcommand*{\ifnumbered}[1]{%
  \scr@ifundefinedorrelax{#1numdepth}{%
    \@secondoftwo
  }{%
    \expandafter\ifnum \@nameuse{#1numdepth}>\c@secnumdepth
      \expandafter\@secondoftwo
    \else
      \expandafter\@firstoftwo
    \fi
  }%
}
\newcommand*{\ifunnumbered}[1]{%
  \scr@ifundefinedorrelax{#1numdepth}{%
    \@firstoftwo
  }{%
    \expandafter\ifnum \@nameuse{#1numdepth}>\c@secnumdepth
      \expandafter\@firstoftwo
    \else
      \expandafter\@secondoftwo
    \fi
  }%
}
\BeforeClosingMainAux{%
  \if@autodot\if@filesw\immediate\write\@mainaux{%
      \string\global\string\@altsecnumformattrue}%
  \fi\fi}
\newcommand{\@maybeautodot}[1]{\if@autodot\else\begingroup%
  \expandafter\@@maybeautodot #1\@stop\endgroup\fi
}
\newcommand*{\@@maybeautodot}[1]{%
  \ifx #1\@stop\let\@@maybeautodot\relax
  \else
    \ifx #1\Alph \@autodottrue\fi
    \ifx #1\alph \@autodottrue\fi
    \ifx #1\Roman \@autodottrue\fi
    \ifx #1\roman \@autodottrue\fi
    \ifx #1\@Alph \@autodottrue\fi
    \ifx #1\@alph \@autodottrue\fi
    \ifx #1\@Roman \@autodottrue\fi
    \ifx #1\@roman \@autodottrue\fi
    \ifx #1\romannumeral \@autodottrue\fi
  \fi
  \@@maybeautodot
}
\newcommand*\autodot{\if@altsecnumformat.\fi}
\newcommand*{\scr@saved@startsection}[6]{%
  \if@noskipsec \leavevmode \fi
  \par
  \@tempskipa #4\relax
  \@afterindenttrue
  \ifdim \@tempskipa <\z@
    \@tempskipa -\@tempskipa \@afterindentfalse
  \fi
  \if@nobreak
    \everypar{}%
  \else
    \addpenalty\@secpenalty\addvspace\@tempskipa
  \fi
  \@ifstar
    {\@ssect{#3}{#4}{#5}{#6}}%
    {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}%
}
\ifx\@startsection\scr@saved@startsection
  \newcommand*{\scr@startsection}[6]{%
    \if@noskipsec \leavevmode \fi
    \par
    \@tempskipa \glueexpr #4\relax
    \@afterindenttrue
    \ifdim \@tempskipa <\z@
      \@tempskipa -\@tempskipa \@afterindentfalse
    \fi
    \csname scr@startsection@hook\endcsname
    \if@nobreak
      \everypar{}%
    \else
      \addpenalty\@secpenalty\addvspace\@tempskipa
    \fi
    \@ifstar {%
      \csname scr@preto@ssect@hook\endcsname
      \def\scr@s@ct@@nn@m@{#1}%
      \@ssect{\glueexpr #3\relax}{\glueexpr #4\relax}{\glueexpr #5\relax}{#6}%
    }{%
      \csname scr@preto@sect@hook\endcsname
      \scr@section@dblarg{%
        \@sect{#1}{\numexpr #2\relax}{\glueexpr #3\relax}{\glueexpr #4\relax}%
        {\glueexpr #5\relax}{#6}%
      }%
    }%
  }
\else
  \ClassWarningNoLine{\KOMAClassName}{`\string\@startsection' has been
    changed.\MessageBreak
    \KOMAClassName\space needs it's own Definition of
    `\string\@startsection'\MessageBreak
    to provide extended features for the optional argument\MessageBreak
    of `\string\section` etc.\MessageBreak
    Generally it defines `\string\@startsection` completely new\MessageBreak
    to achieve this. Because of the unexpected definition\MessageBreak
    an alternative approach will be used.\MessageBreak
    If this fails and if there isn't a new release of\MessageBreak
    KOMA-Scriptt that fixes the problem, please\MessageBreak
    send a report to the KOMA-Script author.\MessageBreak
    Note, that this alternative approach does not\MessageBreak
    execute `\string\scr@startsection@hook', \MessageBreak
    `\string\scr@preto@ssect@hook', or `\string\scr@preto@sect@hook'%
  }%
  \let\scr@saved@startsection\@startsection
  \newcommand*{\scr@startsection}[6]{%
    \@ifstar {%
      \scr@saved@startsection{#1}{\numexpr #2\relax}{\glueexpr #3\relax}%
      {\glueexpr #4\relax}{\glueexpr #5\relax}{#6}*%
    }{%
      \scr@section@dblarg{%
        \scr@saved@startsection{#1}{\numexpr #2\relax}{\glueexpr #3\relax}%
        {\glueexpr #4\relax}{\glueexpr #5\relax}{#6}}%
    }%
  }
\fi
\newcommand*{\At@startsection}[1]{%
  \@ifundefined{scr@startsection@hook}{\let\scr@startsection@hook\@empty}{}%
  \l@addto@macro{\scr@startsection@hook}{#1}%
}
\newcommand*{\Before@ssect}[1]{%
  \@ifundefined{scr@preto@ssect@hook}{\let\scr@preto@ssect@hook\@empty}{}%
  \l@addto@macro{\scr@preto@ssect@hook}{#1}%
}
\newcommand*{\Before@sect}[1]{%
  \@ifundefined{scr@preto@sect@hook}{\let\scr@preto@sect@hook\@empty}{}%
  \l@addto@macro{\scr@preto@sect@hook}{#1}%
}
\newcommand{\scr@section@dblarg}[1]{%
  \kernel@ifnextchar[%]
    {#1}%
    {\scr@section@xdblarg{#1}}%
}
\newcommand{\scr@section@xdblarg}[2]{%
  \begingroup
    \edef\reserved@a{%
      \unexpanded{\endgroup\let\scr@osectarg\z@#1[{#2}]{#2}\def\scr@osectarg}%
      {\scr@osectarg}}%
  \reserved@a
}
\renewcommand*{\@startsection}{%
  \ifnum \scr@osectarg=\z@
    \expandafter\scr@saved@startsection
  \else
    \expandafter\scr@startsection
  \fi
}
\newcommand*{\SecDef}[2]{\@ifstar{#2}{\scr@section@dblarg{#1}}}
\CheckCommand*{\secdef}[2]{\@ifstar{#2}{\@dblarg{#1}}}
\let\secdef\SecDef
\def\@tempa#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}
\ifx\@sect\@tempa\else
  \ClassWarning{\KOMAClassName}{%
    Unexpected definition of \string\@sect!\MessageBreak
    Please send information about this to\MessageBreak
    the KOMA-Script maintainer!\MessageBreak
    Maybe LaTeX will be broken by the redefinition\MessageBreak
    of \string\@sect\space}%
\fi
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum \scr@osectarg=\z@
    \@scr@tempswafalse
  \else
    \scr@istest#7=\@nil
  \fi
  \if@scr@tempswa
    \setkeys{KOMAarg.section}{tocentry={#8},head={#8},#7}%
  \else
    \ifcase \scr@osectarg\relax
      \setkeys{KOMAarg.section}{tocentry={#7},head={#7}}%
    \or
      \setkeys{KOMAarg.section}{tocentry={#8},head={#7}}%
    \or
      \setkeys{KOMAarg.section}{tocentry={#7},head={#8}}%
    \or
      \setkeys{KOMAarg.section}{tocentry={#7},head={#7}}%
    \fi
  \fi
  \let\IfUsePrefixLine\@secondoftwo
  \ifnum \numexpr #2\relax>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \expandafter\@maybeautodot\csname the#1\endcsname
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa \glueexpr #5\relax\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{\interlinepenalty \@M
        \sectionlinesformat{#1}{\glueexpr #3\relax}\@svsec{#8}\@@par}%
    \endgroup
    \expandafter\csname #1mark\expandafter\endcsname\expandafter{\scr@ds@head}%
    \ifx\scr@ds@tocentry\@empty\else
      \scr@ifundefinedorrelax{add#1tocentry}{%
        \expandafter\global\expandafter\def
        \csname add#1tocentry\endcsname##1##2{%
          \addtocentrydefault{#1}{##1}{##2}%
        }%
      }{}%
      \ifnum \numexpr #2\relax>\c@secnumdepth
        \csname add#1tocentry\endcsname{}{\scr@ds@tocentry}%
      \else
        \csname add#1tocentry\endcsname{\csname the#1\endcsname}{%
          \scr@ds@tocentry}%
      \fi
    \fi
  \else
    \def\@svsechd{%
      #6{\sectioncatchphraseformat{#1}{\glueexpr #3\relax}\@svsec{#8}}%
       \expandafter\csname #1mark\expandafter\endcsname
       \expandafter{\scr@ds@head}%
      \ifx\scr@ds@tocentry\@empty\else
        \scr@ifundefinedorrelax{add#1tocentry}{%
          \expandafter\global\expandafter\def
          \csname add#1tocentry\endcsname####1####2{%
            \addtocentrydefault{#1}{####1}{####2}%
          }%
        }{}%
        \ifnum \numexpr #2\relax>\c@secnumdepth
          \csname add#1tocentry\endcsname{}{\scr@ds@tocentry}%
        \else
          \csname add#1tocentry\endcsname{\csname the#1\endcsname}{%
            \scr@ds@tocentry}%
        \fi
      \fi
    }%
  \fi
  \let\IfUsePrefixLine\scr@IfUsePrefixLineWarning
  \@xsect{\glueexpr #5\relax}%
}
\DefineFamily{KOMAarg}
\DefineFamilyMember[.section]{KOMAarg}
\DefineFamilyKey[.section]{KOMAarg}{tocentry}{\def\scr@ds@tocentry{#1}}
\DefineFamilyKey[.section]{KOMAarg}{head}{\def\scr@ds@head{#1}}
\newcommand*\scr@ds@tocentry{}
\newcommand*\scr@ds@head{}
\newcommand*{\scr@istest}{}
\def\scr@istest#1=#2\@nil{%
  \ifx\relax#2\relax\@scr@tempswafalse\else\@scr@tempswatrue\fi
}
\newif\if@scr@tempswa
\newcommand{\sectionlinesformat}[4]{%
  \@hangfrom{\hskip #2#3}{#4}%
}
\newcommand{\sectioncatchphraseformat}[4]{%
  \hskip #2#3#4%
}
\def\@tempa#1#2#3#4#5{%
  \@tempskipa #3\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #4{%
        \@hangfrom{\hskip #1}%
          \interlinepenalty \@M #5\@@par}%
    \endgroup
  \else
    \def\@svsechd{#4{\hskip #1\relax #5}}%
  \fi
  \@xsect{#3}}
\ifx\@ssect\@tempa\else
  \ClassWarning{\KOMAClassName}{%
    Unexpected definition of \string\@ssect!\MessageBreak
    Please send information about this to\MessageBreak
    the KOMA-Script maintainer!\MessageBreak
    Maybe LaTeX will be broken by the redefinition\MessageBreak
    of \string\@ssect\space}%
\fi
\def\@ssect#1#2#3#4#5{%
  \scr@ifundefinedorrelax{scr@s@ct@@nn@m@}{%
    \ClassWarning{\KOMAClassName}{incompatible usage of
      \string\@ssect\space detected.\MessageBreak
      You've used the KOMA-Script implementation of
      \string\@ssect\MessageBreak
      from within a non compatible caller, that does not\MessageBreak
      \string\scr@s@ct@@nn@m@\space locally.\MessageBreak
      This could result in several error messages}%
    \def\scr@s@ct@@nn@m@{\string\scr@s@ct@@nn@m@}%
  }{}%
  \@tempskipa #3\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #4{\interlinepenalty \@M
        \expandafter\sectionlinesformat\expandafter{\scr@s@ct@@nn@m@}%
        {\glueexpr #1\relax}\@empty{#5}\@@par}%
    \endgroup
  \else
    \edef\@svsechd{%
      \unexpanded{#4}{%
        \noexpand\sectioncatchphraseformat{\scr@s@ct@@nn@m@}%
        \unexpanded{{\glueexpr #1\relax}\@empty{#5}}%
      }%
    }%
  \fi
  \let\scr@s@ct@@nn@m@\relax
  \@xsect{\glueexpr #3\relax}%
}
\newcommand*{\scr@IfUsePrefixLineWarning}[2]{%
  \ClassWarning{\KOMAClassName}{%
    usage of \string\IfUsePrefixLine\space outside
    section command\MessageBreak
    style makes no sense, because the behaviour not only\MessageBreak
    depends on class options but also on the run-time\MessageBreak
    section command style.\MessageBreak
    Neither the then-code nor the else-code will be\MessageBreak
    executed.\MessageBreak
    You may change this and avoid the warning by LOCALLY\MessageBreak
    setting \string\IsUsePrefixLine\space to either
    \string\@firstoftwo\space or\MessageBreak
    \string\@secondoftwo\space before using it%
  }%
}
\newcommand*{\IfUsePrefixLine}[2]{}
\let\IfUsePrefixLine\scr@IfUsePrefixLineWarning
\newcommand*{\raggedsection}{}
\let\raggedsection\raggedright
\DefineFamily{KOMAarg}
\DefineFamilyMember[.dsc]{KOMAarg}
\newcommand*{\DeclareSectionCommandStyleOption}[3]{%
  \DeclareSectionCommandDummyOption{#2}%
  \expandafter\g@addto@macro\csname scr@dsc@style@#1@options\endcsname{%
    \DefineFamilyKey[.dsc]{KOMAarg}{#2}{#3}%
  }%
}
\newcommand*{\DeclareSectionCommandDummyOption}[1]{%
  \@ifstar {%
    \g@addto@macro{\scr@dsc@dummyoptions}{%
      \DefineFamilyKey[.dsc]{KOMAarg}{#1}[]{\FamilyKeyStateProcessed}%
    }%
  }{%
    \g@addto@macro{\scr@dsc@dummyoptions}{%
      \DefineFamilyKey[.dsc]{KOMAarg}{#1}{\FamilyKeyStateProcessed}%
    }%
  }%
}
\newcommand*{\scr@dsc@dummyoptions}{}
\newcommand*{\DeclareSectionCommandStyleLengthOption}[4]{%
  \DeclareSectionCommandStyleOption{#1}{#2}{%
    \FamilySetLength{KOMAarg}{#2}{\@tempskipa}{##1}%
    \ifx\FamilyKeyState\FamilyKeyStateProcessed
      \ifscr@dsc@expandtopt
        \expandafter\edef\csname #3\scr@dsc@current#4\endcsname{%
          \the\@tempskipa}%
      \else
        \expandafter\edef\csname #3\scr@dsc@current#4\endcsname{##1}%
      \fi
    \fi
  }%
}
\newcommand*{\DeclareSectionCommandStyleNumberOption}[4]{%
  \DeclareSectionCommandStyleOption{#1}{#2}{%
    \FamilySetCounter{KOMAarg}{#2}{\@tempcnta}{##1}%
    \ifx\FamilyKeyState\FamilyKeyStateProcessed
      \expandafter\edef\csname #3\scr@dsc@current#4 \endcsname{\the\@tempcnta}%
    \fi
  }%
}
\newcommand*{\DeclareSectionCommandStyleFontOption}[4]{%
  \DeclareSectionCommandStyleOption{#1}{#2}{%
    \IfExistskomafont{#3\scr@dsc@current#4}{%
      \setkomafont
    }{%
      \newkomafont
    }{#3\scr@dsc@current#4}{##1}%
    \FamilyKeyStateProcessed
  }%
}
\DeclareSectionCommandDummyOption{style}
\DeclareSectionCommandDummyOption{expandtopt}*
\DeclareSectionCommandDummyOption{increaselevel}
\DeclareSectionCommandDummyOption{level}
\DeclareSectionCommandDummyOption{toclevel}
\DeclareSectionCommandDummyOption{tocindent}
\DeclareSectionCommandDummyOption{tocnumwidth}
\newcommand*{\scr@dsc@style@section@options}{}
\DeclareSectionCommandStyleLengthOption{section}
                                       {indent}{scr@}{@sectionindent}
\DeclareSectionCommandStyleLengthOption{section}
                                       {beforeskip}{scr@}{@beforeskip}
\DeclareSectionCommandStyleLengthOption{section}
                                       {afterskip}{scr@}{@afterskip}
\DeclareSectionCommandStyleFontOption{section}{font}{}{}
\newcommand*{\scr@dsc@def@style@section@command}[1]{%
  \@namedef{#1}{%
    \scr@startsection{#1}%
    {\csname #1numdepth\endcsname}%
    {\csname scr@#1@sectionindent\endcsname}%
    {\csname scr@#1@beforeskip\endcsname}%
    {\csname scr@#1@afterskip\endcsname}%
    {%
      \ifdim\glueexpr\csname scr@#1@beforeskip\endcsname <\z@
        \expandafter\ifnum\scr@v@is@gt{2.96}\relax
          \setlength{\parfillskip}{\z@ plus 1fil}%
        \fi
      \fi
      \raggedsection\normalfont\sectfont\nobreak
      \usekomafont{#1}%
    }%
  }%
}
\newcommand*{\scr@dsc@style@chapter@options}{}
\DeclareSectionCommandStyleOption{chapter}{pagestyle}{%
  \@namedef{\scr@dsc@current pagestyle}{#1}%
  \FamilyKeyStateProcessed
}%
\DeclareSectionCommandStyleLengthOption{chapter}
                                       {beforeskip}{scr@}{@beforeskip}
\DeclareSectionCommandStyleLengthOption{chapter}
                                       {innerskip}{scr@}{@innerskip}
\DeclareSectionCommandStyleLengthOption{chapter}
                                       {afterskip}{scr@}{@afterskip}
\DeclareSectionCommandStyleFontOption{chapter}{font}{}{}
\DeclareSectionCommandStyleFontOption{chapter}{prefixfont}{}{prefix}
\newcommand*{\scr@dsc@def@style@chapter@command}[1]{%
  \@namedef{#1}{\scr@startchapter{#1}}%
  \@namedef{@#1}{\scr@@startchapter{#1}}%
  \@namedef{@s#1}{\scr@@startschapter{#1}}%
  \@namedef{@make#1head}{\scr@makechapterhead{#1}}%
  \@namedef{@makes#1head}{\scr@makeschapterhead{#1}}%
  \@namedef{@@make#1head}{\scr@@makechapterhead{#1}}%
  \@namedef{@@makes#1head}{\scr@@makeschapterhead{#1}}%
  \@namedef{set#1preamble}{\set@preamble{#1}}%
}
\newcommand*{\scr@dsc@style@part@options}{}
\DeclareSectionCommandStyleOption{part}{pagestyle}{%
  \@namedef{\scr@dsc@current pagestyle}{#1}%
  \FamilyKeyStateProcessed
}%
\DeclareSectionCommandStyleLengthOption{part}
                                       {beforeskip}{scr@}{@beforeskip}
\DeclareSectionCommandStyleLengthOption{part}
                                       {innerskip}{scr@}{@innerskip}
\DeclareSectionCommandStyleLengthOption{part}
                                       {afterskip}{scr@}{@afterskip}
\DeclareSectionCommandStyleFontOption{part}{font}{}{}
\DeclareSectionCommandStyleFontOption{part}{prefixfont}{}{prefix}
\newcommand*{\scr@dsc@def@style@part@command}[1]{%
  \@namedef{#1}{\scr@startpart{#1}}%
  \@namedef{@#1}{\scr@@startpart{#1}}%
  \@namedef{@s#1}{\scr@@startspart{#1}}%
  \@namedef{@end#1}{\scr@@endpart{#1}}%
  \@namedef{set#1preamble}{\set@preamble{#1}}%
}
\newcommand*{\scr@dsc@style@section@neededoptionstest}{%
  \scr@ifundefinedorrelax{scr@\scr@dsc@current @sectionindent}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{section indent}{indent}%
  }{}%
  \scr@ifundefinedorrelax{scr@\scr@dsc@current @beforeskip}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{before section skip}
    {beforeskip}%
  }{}%
  \scr@ifundefinedorrelax{scr@\scr@dsc@current @afterskip}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{after section skip}
    {afterskip}%
  }{}%
  \IfExistskomafont{\scr@dsc@current}{}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{font}{font}%
  }{}%
}
\newcommand*{\scr@dsc@style@chapter@neededoptionstest}{%
  \scr@ifundefinedorrelax{\scr@dsc@current pagestyle}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{initial page style}
    {pagestyle}%
  }{}%
  \scr@ifundefinedorrelax{scr@\scr@dsc@current @innerskip}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{inner chapter skip}
    {innerskip}%
  }{}%
  \scr@ifundefinedorrelax{scr@\scr@dsc@current @beforeskip}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{before chapter skip}
    {beforeskip}%
  }{}%
  \scr@ifundefinedorrelax{scr@\scr@dsc@current @afterskip}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{after chaper skip}
    {afterskip}%
  }{}%
  \IfExistskomafont{\scr@dsc@current}{}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{font}{font}%
  }{}%
  \IfExistskomafont{\scr@dsc@current prefix}{}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{prefix line font}
    {prefixfont}%
  }{}%
}
\newcommand*{\scr@dsc@style@part@neededoptionstest}{%
  \scr@ifundefinedorrelax{\scr@dsc@current pagestyle}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{initial page style}
    {pagestyle}%
  }{}%
  \scr@ifundefinedorrelax{scr@\scr@dsc@current @innerskip}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{inner part skip}
    {innerskip}%
  }{}%
  \scr@ifundefinedorrelax{scr@\scr@dsc@current @beforeskip}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{before part skip}
    {beforeskip}%
  }{}%
  \scr@ifundefinedorrelax{scr@\scr@dsc@current @afterskip}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{after part skip}
    {afterskip}%
  }{}%
  \IfExistskomafont{\scr@dsc@current}{}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{font}{font}%
  }{}%
  \IfExistskomafont{\scr@dsc@current prefix}{}{%
    \scr@declaresectioncommanderror{\scr@dsc@current}{number font}
    {prefixfont}%
  }{}%
}
\newif\ifscr@dsc@parametersonly
\newcommand*{\DeclareSectionCommand}[2][]{%
  \edef\scr@dsc@current{#2}%
  \scr@dsc@dummyoptions
  \scr@dsc@parametersonlyfalse
  \DefineFamilyKey[.dsc]{KOMAarg}{style}{%
    \ifstr{##1}{}{%
      \ifscr@dsc@parametersonlytrue
      \FamilyKeyStateProcessed
    }{%
      \scr@ifundefinedorrelax{scr@dsc@def@style@##1@command}{%
        \FamilyKeyStateUnknownValue
      }{%
        \@namedef{scr@\scr@dsc@current @style}{##1}%
        \FamilyKeyStateProcessed
      }%
    }%
  }%
  \FamilyExecuteOptions[.dsc]{KOMAarg}{#1}%
  \begingroup
    \scr@ifundefinedorrelax{scr@\scr@dsc@current @style}{%
      \scr@declaresectioncommanderror{\scr@dsc@current}
                                     {section command style}{style}%
    }{}%
  \endgroup
  \@firstofone{%
    \scr@dsc@dummyoptions
    \@nameuse{scr@dsc@style@\@nameuse{scr@\scr@dsc@current @style}@options}%
    \FamilyBoolKey[.dsc]{KOMAarg}{expandtopt}{scr@dsc@expandtopt}%
    \scr@dsc@expandtoptfalse
    \scr@ifundefinedorrelax{scr@local@levelincrease}{%
      \RelaxFamilyKey[.dsc]{KOMAarg}{increaselevel}%
    }{%
      \FamilyCounterMacroKey[.dsc]{KOMAarg}{increaselevel}[1]%
                            {\scr@local@levelincrease}%
    }%
    \scr@ifundefinedorrelax{scr@local@leveloffset}{%
      \edef\reserved@a{%
        \noexpand\FamilyCounterMacroKey[.dsc]{KOMAarg}{level}{%
          \expandafter\noexpand\csname \scr@dsc@current numdepth\endcsname}%
      }\reserved@a
    }{%
      \edef\reserved@a{%
        \noexpand\DefineFamilyKey[.dsc]{KOMAarg}{level}{%
          \noexpand\FamilySetCounterMacro{KOMAarg}{level}{%
            \expandafter\noexpand\csname \scr@dsc@current numdepth\endcsname
          }%
          \unexpanded{%
            {\numexpr ##1+\scr@local@leveloffset\relax}%
            \edef\scr@local@leveloffset{%
              \the\numexpr\scr@local@leveloffset+\scr@local@levelincrease\relax
            }%
          }%
        }%
      }\reserved@a
    }%
    \FamilyStringKey[.dsc]{KOMAarg}{counterwithout}{\scr@local@counterwithout}%
    \let\scr@local@counterwithout\relax
    \FamilyStringKey[.dsc]{KOMAarg}{counterwithin}{\scr@local@counterwithin}%
    \let\scr@local@counterwithin\relax
    \scr@ifundefinedorrelax{scr@local@tocleveloffset}{%
      \edef\reserved@a{%
        \noexpand\FamilyCounterMacroKey[.dsc]{KOMAarg}{toclevel}{%
          \expandafter\noexpand\csname \scr@dsc@current tocdepth\endcsname}%
      }\reserved@a
    }{%
      \edef\reserved@a{%
        \noexpand\DefineFamilyKey[.dsc]{KOMAarg}{toclevel}{%
          \noexpand\FamilySetCounterMacro{KOMAarg}{toclevel}{%
            \expandafter\noexpand\csname \scr@dsc@current tocdepth\endcsname
          }%
          \unexpanded{%
            {\numexpr ##1+\scr@local@tocleveloffset\relax}%
            \edef\scr@local@tocleveloffset{%
              \the\numexpr\scr@local@tocleveloffset
              +\scr@local@levelincrease\relax
            }%
          }%
        }%
      }\reserved@a
    }%
    \DefineFamilyKey[.dsc]{KOMAarg}{tocindent}{%
      \FamilySetLength{KOMAarg}{#2}{\@tempskipa}{##1}%
      \ifx\FamilyKeyState\FamilyKeyStateProcessed
        \ifscr@dsc@expandtopt
          \expandafter\edef\csname scr@\scr@dsc@current @tocindent\endcsname{%
            \the\@tempskipa}%
        \else
          \expandafter\edef\csname scr@\scr@dsc@current @tocindent\endcsname{%
            ##1}%
        \fi
      \fi
    }%
    \DefineFamilyKey[.dsc]{KOMAarg}{tocnumwidth}{%
      \FamilySetLength{KOMAarg}{#2}{\@tempskipa}{##1}%
      \ifx\FamilyKeyState\FamilyKeyStateProcessed
        \ifscr@dsc@expandtopt
          \expandafter\edef\csname scr@\scr@dsc@current @tocnumwidth\endcsname{%
            \the\@tempskipa}%
        \else
          \expandafter\edef\csname scr@\scr@dsc@current @tocnumwidth\endcsname{%
            ##1}%
        \fi
      \fi
    }%
    \FamilyExecuteOptions[.dsc]{KOMAarg}{#1}%
    \begingroup
      \scr@ifundefinedorrelax{\scr@dsc@current numdepth}{%
        \scr@declaresectioncommanderror{\scr@dsc@current}{section level}{level}%
      }{}%
      \scr@ifundefinedorrelax{scr@\scr@dsc@current @tocindent}{%
        \scr@declaresectioncommanderror{\scr@dsc@current}{toc entry indent}
        {tocindent}%
      }{}%
      \scr@ifundefinedorrelax{scr@\scr@dsc@current @tocnumwidth}{%
        \scr@declaresectioncommanderror{\scr@dsc@current}{toc entry number
          width}{tocnumwidth}%
      }{}%
      \@nameuse{scr@dsc@style@%
        \@nameuse{scr@\scr@dsc@current @style}%
        @neededoptionstest}%
    \endgroup
    \@firstofone{%
      \@ifundefined{c@#2}{\newcounter{#2}}{}%
      \ifx\scr@local@counterwithout\relax
      \else\ifx\scr@local@counterwithout\@empty
        \else
          \@removefromreset{#2}{\scr@local@counterwithout}%
        \fi
        \@namedef{the#2}{\arabic{#2}}%
      \fi
      \ifx\scr@local@counterwithin\relax
      \else\ifx\scr@local@counterwithin\@empty
          \@namedef{the#2}{\arabic{#2}}%
        \else
          \@removefromreset{#2}{\scr@local@counterwithin}%
          \@addtoreset{#2}{\scr@local@counterwithin}%
          \expandafter\def\csname the#2\expandafter\endcsname{%
            \csname the\scr@local@counterwithin\endcsname.\arabic{#2}}%
        \fi
      \fi
      \@ifundefined{#2format}{%
        \@namedef{#2format}{\csname the#2\endcsname\autodot\enskip}%
      }{}%
      \ifscr@dsc@parametersonly
        \ClassInfo{\KOMAClassName}{%
          not defining `\expandafter\string\csname #2\endcsname' due
          to\MessageBreak
          empty section style option%
        }%
      \else
        \scr@ifundefinedorrelax{%
          scr@dsc@def@style@\@nameuse{scr@#2@style}@command%
        }{%
          \ClassWarning{\KOMAClassName}{%
            not defining `\expandafter\string\csname #2\endcsname'
            due\MessageBreak
            to not yet defined section style\MessageBreak
            `\@nameuse{scr@#2@style}'%
          }%
        }{%
          \@nameuse{scr@dsc@def@style@\@nameuse{scr@#2@style}@command}{#2}%
        }%
      \fi
      \@ifundefined{DeclareSectionNumberDepth}{%
        \@ifundefined{#2markformat}{%
          \@namedef{#2markformat}{\csname the#2\endcsname\autodot\enskip}%
        }{}%
        \@ifundefined{#2mark}{%
          \expandafter\let\csname #2mark\endcsname\@gobble
        }{}%
      }{%
        \DeclareSectionNumberDepth{#2}{\csname #2numdepth\endcsname}%
      }%
      \scr@ifundefinedorrelax{#2tocdepth}{%
        \expandafter\let\csname #2tocdepth\expandafter\endcsname
        \csname #2numdepth\endcsname
      }{}%
      \expandafter\providecommand\expandafter*%
      \csname add#2tocentry\endcsname[2]{%
        \addtocentrydefault{#2}{##1}{##2}%
      }%
      \scr@ifundefinedorrelax{l@#2}{%
        \expandafter\edef\csname l@#2\endcsname{%
          \noexpand\bprot@dottedtocline
          \expandafter\noexpand\csname #2tocdepth\endcsname
          \expandafter\noexpand\csname scr@#2@tocindent\endcsname
          \expandafter\noexpand\csname scr@#2@tocnumwidth\endcsname
        }%
      }{}%
    }%
  }%
  \let\scr@dsc@current\relax
}
\newcommand*{\scr@declaresectioncommanderror}[3]{%
  \ClassError{\KOMAClassName}{%
    #2 of \expandafter\string\csname #1\endcsname\space unknown%
  }{%
    Please use option `#3' to declare the #2.\MessageBreak
    If you'll continue, declaration will be ignored%
  }%
  \aftergroup\@gobbletwo
}
\newcommand*{\DeclareNewSectionCommand}[2][]{%
  \@ifundefined{#2}{%
    \DeclareSectionCommand[{#1}]{#2}%
  }{%
    \ClassError{\KOMAClassName}{%
      command `\expandafter\string\csname #1\endcsname` already defined%
    }{%
      You've tried to define the section command `\expandafter\string\csname
      #1\endcsname` newly,\MessageBreak
      but a command, token, box or length with this name already
      exists.\MessageBreak
      Maybe you should use one of \string\DeclareSectionCommand,
      \string\RedeclareSectionCommand,\MessageBreak
      or \string\ProvideSectionCommand.\MessageBreak
      If you'll continue, the command will be irgnored.%
    }%
  }%
}
\newcommand*{\RedeclareSectionCommand}[2][]{%
  \@ifundefined{#2}{%
    \ClassError{\KOMAClassName}{%
      command `\expandafter\string\csname #1\endcsname` not defined%
    }{%
      You've tried to re-define the section command `\expandafter\string\csname
      #1\endcsname`,\MessageBreak
      but a command with this name does not exists.\MessageBreak
      Maybe you should use one of \string\DeclareSectionCommand,
      \string\DeclareNewSectionCommand,\MessageBreak
      or \string\ProvideSectionCommand.\MessageBreak
      If you'll continue, the command will be irgnored.%
    }%
  }{%
    \DeclareSectionCommand[{#1}]{#2}%
  }%
}
\newcommand*{\ProvideSectionCommand}[2][]{%
  \@ifundefined{#2}{%
    \DeclareSectionCommand[{#1}]{#2}%
  }{%
    \ClassInfo{\KOMAClassName}{%
      \string\ProvideSectionCommand{#1} ignored%
    }%
  }%
}
\newcommand*{\DeclareSectionCommands}[2][]{%
  \edef\reserved@a{#2}%
  \let\scr@local@levelincrease\z@
  \let\scr@local@leveloffset\z@
  \let\scr@local@tocleveloffset\z@
  \@for\reserved@a:=\reserved@a\do{%
    \edef\reserved@a{%
      \unexpanded{\DeclareSectionCommand[{#1}]}{\reserved@a}%
    }%
    \reserved@a
  }%
  \let\scr@local@levelincrease\relax
  \let\scr@local@leveloffset\relax
  \let\scr@local@tocleveloffset\relax
}
\newcommand*{\DeclareNewSectionCommands}[2][]{%
  \edef\reserved@a{#2}%
  \let\scr@local@levelincrease\z@
  \let\scr@local@leveloffset\z@
  \let\scr@local@tocleveloffset\z@
  \@for\reserved@a:=\reserved@a\do{%
    \@ifundefined{\reserved@a}{}{%
      \ClassError{\KOMAClassName}{%
        command `\expandafter\string\csname\reserved@a\endcsname` already
        defined%
      }{%
        You've tried to define the section command
        `\expandafter\string\csname\reserved@a\endcsname` newly,\MessageBreak
        but a command, token, box or length with this name already
        exists.\MessageBreak
        Maybe you should use one of \string\DeclareSectionCommand,
        \string\RedeclareSectionCommand,\MessageBreak
        or \string\ProvideSectionCommand.\MessageBreak
        Nevertheless, if you'll continue, the command will be defined.%
      }%
    }%
    \edef\reserved@a{%
      \unexpanded{\DeclareSectionCommand[{#1}]}{\reserved@a}%
    }%
    \reserved@a
  }%
  \let\scr@local@levelincrease\relax
  \let\scr@local@leveloffset\relax
  \let\scr@local@tocleveloffset\relax
}
\newcommand*{\RedeclareSectionCommands}[2][]{%
  \edef\reserved@a{#2}%
  \let\scr@local@levelincrease\z@
  \let\scr@local@leveloffset\z@
  \let\scr@local@tocleveloffset\z@
  \@for\reserved@a:=\reserved@a\do{%
    \@ifundefined{\reserved@a}{%
      \ClassError{\KOMAClassName}{%
        command `\expandafter\string\csname\reserved@a\endcsname` not defined%
      }{%
        You've tried to re-define the section command
        `\expandafter\string\csname\reserved@a\endcsname`,\MessageBreak
        but a command with this name does not exists.\MessageBreak
        Maybe you should use one of \string\DeclareSectionCommand,
        \string\DeclareNewSectionCommand,\MessageBreak
        or \string\ProvideSectionCommand.\MessageBreak
        Nevertheless, if you'll continue, the command will be defined.%
      }%
    }{}%
    \edef\reserved@a{%
      \unexpanded{\DeclareSectionCommand[{#1}]}{\reserved@a}%
    }%
    \reserved@a
  }%
  \let\scr@local@levelincrease\relax
  \let\scr@local@leveloffset\relax
  \let\scr@local@tocleveloffset\relax
}
\newcommand*{\ProvideSectionCommands}[2][]{%
  \edef\reserved@a{#2}%
  \let\scr@local@levelincrease\z@
  \let\scr@local@leveloffset\z@
  \let\scr@local@tocleveloffset\z@
  \@for\reserved@a:=\reserved@a\do{%
    \@ifundefined{\reserved@a}{%
      \edef\reserved@a{%
        \unexpanded{\DeclareSectionCommand[{#1}]}{\reserved@a}%
      }%
      \reserved@a
    }{%
      \scr@dsc@dummyoptions
      \FamilyCounterMacroKey[.dsc]{KOMAarg}{increaselevel}[1]%
        {\scr@local@levelincrease}%
      \DefineFamilyKey[.dsc]{KOMAarg}{level}{%
        \FamilySetCounterMacro{KOMAarg}{level}{\reserved@b}{##1}%
        \edef\scr@local@leveloffset{%
          \the\numexpr\scr@local@leveloffset+\scr@local@levelincrease\relax
        }%
        \edef\scr@local@tocleveloffset{%
          \the\numexpr\scr@local@tocleveloffset+\scr@local@levelincrease\relax
        }%
      }%
      \FamilyExecuteOptions[.dsc]{KOMAarg}{#1}%
    }%
  }%
  \let\scr@local@levelincrease\relax
  \let\scr@local@leveloffset\relax
  \let\scr@local@tocleveloffset\relax
}
\newcommand*{\use@preamble}[1]{%
  \@ifundefined{#1@preamble}{}{%
    \@nameuse{#1@preamble}%
    \global\expandafter\let\csname#1@preamble\endcsname=\relax
  }%
}
\newcommand*{\set@preamble}[1]{%
  \@ifnextchar [%]
  {\set@@preamble{#1}}{\set@@@preamble{#1}[][\hsize]}%
}
\newcommand*{\set@@preamble}{}
\def\set@@preamble#1[#2]{%
  \@ifnextchar [%]
  {\set@@@preamble{#1}[{#2}]}{\set@@@preamble{#1}[{#2}][\hsize]}%
}
\newcommand{\set@@@preamble}{}
\long\def\set@@@preamble#1[#2][#3]#4{%
  \begingroup
    \def\prmbl@pos{#2}\let\prmbl@hpos\relax\let\prmbl@vpos\relax
    \expandafter \@tfor \expandafter \@tempa
      \expandafter :\expandafter =\prmbl@pos
    \do{%
      \if \@tempa l%
        \set@preamble@hpos{0}{#2}%
      \fi%
      \if \@tempa c%
        \set@preamble@hpos{1}{#2}%
      \fi%
      \if \@tempa r%
        \set@preamble@hpos{2}{#2}%
      \fi%
      \if \@tempa u%
        \set@preamble@vpos{0}{#2}%
      \fi%
      \if \@tempa b%
        \set@preamble@vpos{0}{#2}%
      \fi
      \if \@tempa o%
        \set@preamble@vpos{1}{#2}%
      \fi%
      \if \@tempa t%
        \set@preamble@vpos{1}{#2}%
      \fi
    }%
    \@ifundefined{prmbl@hpos}{\def\prmbl@hpos{0}}{}%
    \@ifundefined{prmbl@vpos}{\def\prmbl@vpos{0}}{}%
    \ifcase\prmbl@hpos
      \ifcase\prmbl@vpos
        \set@@@@preamble{#1@u}{t}{#3}{}{\hfil}{#4}%
      \else
        \set@@@@preamble{#1@o}{b}{#3}{}{\hfil}{#4}%
      \fi
    \or
      \ifcase\prmbl@vpos
        \set@@@@preamble{#1@u}{t}{#3}{\hfil}{\hfil}{#4}%
      \else
        \set@@@@preamble{#1@o}{b}{#3}{\hfil}{\hfil}{#4}%
      \fi
    \else
      \ifcase\prmbl@vpos
        \set@@@@preamble{#1@u}{t}{#3}{\hfil}{}{#4}%
      \else
        \set@@@@preamble{#1@o}{b}{#3}{\hfil}{}{#4}%
      \fi
    \fi
  \endgroup
}
\newcommand{\set@@@@preamble}[6]{%
  \expandafter\gdef\csname #1@preamble\endcsname{%
    \hbox to\hsize{#4\parbox[{#2}]{#3}{#6\par}#5\par}%
  }%
}
\newcommand*{\set@preamble@hpos}[2]{%
  \@ifundefined{prbml@hpos}{%
    \def\prmbl@hpos{#1}%
  }{%
    \ifnum \prmbl@hpos=0\relax\else%
      \ClassError{\KOMAClassName}{%
        inconsistent hpos options%
      }{%
        You've said `#2' as position option. But you have
        to\MessageBreak
        use only one of `l', `r', or `c' not two of
        these.\MessageBreak
        If you'll continue only first hpos option will be
        used%
      }%
    \fi
  }%
}
\newcommand*{\set@preamble@vpos}[2]{%
  \@ifundefined{prbml@vpos}{%
    \def\prmbl@vpos{#1}%
  }{%
    \ifnum \prmbl@vpos=0\relax\else%
      \ClassError{\KOMAClassName}{%
        inconsistent vpos options%
      }{%
        You've said `#2' as position option. But you have
        to\MessageBreak
        use only one of `t', `o', `b', or `u' not two of
        these.\MessageBreak
        If you'll continue only first vpos option will be
        used%
      }%
    \fi
  }%
}
\newcommand*{\bprot@dottedtocline}[5]{%
  \expandafter\ifnum\scr@v@is@gt{2.96}\relax
    \ifnum #1>\c@tocdepth \else
      \begingroup
        \@tempcnta 20010
        \advance \@tempcnta by -#1
      \ifnum \@tempcnta>\lastpenalty
        \endgroup
        \addpenalty{\@lowpenalty}%
      \else
        \endgroup
      \fi
      \@dottedtocline{#1}{#2}{#3}{#4}{#5}%
      \@tempcnta 20009
      \advance \@tempcnta by -#1
      \penalty\@tempcnta
    \fi
  \else
    \@dottedtocline{#1}{#2}{#3}{#4}{#5}%
  \fi
}
\newcommand*\appendix{\par%
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}%
  \csname appendixmore\endcsname
}
\newcommand*{\scr@startpart}[1]{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \scr@ifundefinedorrelax{#1pagestyle}{}{%
    \ifstr{#1pagestyle}{}{}{%
      \thispagestyle{\@nameuse{#1pagestyle}}%
    }%
  }%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \@tempskipa=\glueexpr\@nameuse{scr@#1@beforeskip}\relax\relax
  \ifdim\@tempskipa<\z@\@tempskipa-\@tempskipa\fi
  \partheadstartvskip
  \vbox to\z@{\vss\use@preamble{#1@o}\strut\par}%
  \vskip-\baselineskip\nobreak
  \expandafter\SecDef\csname @#1\expandafter\endcsname\csname @s#1\endcsname
}
\newcommand{\scr@@startpart}{}
\long\def\scr@@startpart#1[#2]#3{%
  \ifnum \scr@osectarg=\z@
    \@scr@tempswafalse
  \else
    \scr@istest#2=\@nil
  \fi
  \if@scr@tempswa
    \setkeys{KOMAarg.section}{tocentry={#3},head={#3},#2}%
  \else
    \ifcase \scr@osectarg\relax
      \setkeys{KOMAarg.section}{tocentry={#2},head={#2}}%
    \or
      \setkeys{KOMAarg.section}{tocentry={#3},head={#2}}%
    \or
      \setkeys{KOMAarg.section}{tocentry={#2},head={#3}}%
    \or
      \setkeys{KOMAarg.section}{tocentry={#2},head={#2}}%
    \fi
  \fi
  \ifnumbered{#1}{%
    \refstepcounter{#1}%
    \@maybeautodot\thepart%
    \expandafter\@maybeautodot\csname the#1\endcsname
    \typeout{#1 \csname the#1\endcsname.}%
    \ifx\scr@ds@tocentry\@empty\else
      \scr@ifundefinedorrelax{add#1tocentry}{%
        \addtocentrydefault{#1}%
      }{%
        \@nameuse{add#1tocentry}%
      }{\csname the#1\endcsname}{\scr@ds@tocentry}%
    \fi
  }{%
    \expandafter\ifnum\scr@v@is@lt{3.18}\relax\else
      \begingroup
        \let\@elt\@stpelt
        \csname cl@#1\endcsname
      \endgroup
    \fi
    \typeout{#1 without number}%
    \ifx\scr@ds@tocentry\@empty\else
      \hy@insteadofrefstepcounter{#1}%
      \scr@ifundefinedorrelax{add#1tocentry}{%
        \addtocentrydefault{#1}%
      }{%
        \@nameuse{add#1tocentry}%
      }{}{\scr@ds@tocentry}%
    \fi
  }%
  \begingroup
    \setparsizes{\z@}{\z@}{\z@\@plus 1fil}\par@updaterelative
    \raggedpart
    \interlinepenalty \@M
    \normalfont\sectfont\nobreak
    \ifnumbered{#1}{%
      \usekomafont{#1prefix}{\@nameuse{#1format}}%
      \setlength{\@tempskipa}{\@nameuse{scr@#1@innerskip}}%
      \partheadmidvskip
    }{}%
    \usekomafont{part}{#3}\strut
    \expandafter\ifx\csname #1mark\endcsname\@gobble
      \@mkboth{}{}%
    \else
      \csname #1mark\expandafter\endcsname\expandafter{\scr@ds@head}%
    \fi
    \par
  \endgroup
  \@nameuse{@end#1}%
}
\newcommand{\scr@@startspart}[2]{%
  \begingroup
    \let\@mkboth\@gobbletwo
    \hy@insteadofrefstepcounter{#1}%
  \endgroup
  \begingroup
    \setparsizes{\z@}{\z@}{\z@\@plus 1fil}\par@updaterelative
    \raggedpart
    \interlinepenalty \@M
    \normalfont
    \sectfont\nobreak\usekomafont{#1}{#2}\strut\@mkboth{}{}\par
  \endgroup
  \@nameuse{@end#1}%
}
\newcommand*{\scr@@endpart}[1]{%
  \vbox to\z@{\use@preamble{#1@u}\vss}%
  \@tempskipa=\glueexpr\csname scr@#1@afterskip\endcsname\relax\relax
  \ifdim\@tempskipa<\z@\@tempskipa-\@tempskipa\fi
  \partheadendvskip
  \partheademptypage
  \if@tempswa
    \twocolumn
  \fi
}
\newcommand*{\hy@insteadofrefstepcounter}[1]{}
\let\hy@insteadofrefstepcounter\@gobble
\BeforePackage{hyperref}{%
  \let\scr@orig@chapter\@chapter
  \let\scr@orig@schapter\@schapter
  \let\scr@orig@addchap\@addchap
}
\AfterPackage!{hyperref}{%
  \let\@chapter\scr@orig@chapter
  \let\@schapter\scr@orig@schapter
  \let\@addchap\scr@orig@addchap
  \ifx\hy@insteadofrefstepcounter\@gobble
    \renewcommand*{\hy@insteadofrefstepcounter}[1]{%
      \Hy@MakeCurrentHrefAuto{#1*}%
      \Hy@raisedlink{%
        \hyper@anchorstart{\@currentHref}\hyper@anchorend
      }%
    }%
  \fi
}
\newcommand*{\addparttocentry}[2]{%
  \addtocentrydefault{part}{#1}{#2}%
}
\newcommand\addpart{%
  \SecDef\@addpart\@saddpart
}
\newcommand*{\@addpart}{}
\long\def\@addpart[#1]#2{%
  \edef\reserved@a{%
    \unexpanded{%
      \part[{#1}]{#2}%
      \c@secnumdepth=
    }\the\c@secnumdepth\relax
  }%
  \c@secnumdepth=\numexpr \partnumdepth-1\relax
  \reserved@a
}
\newcommand{\@saddpart}[1]{%
  \part*{#1}%
  \addpartmark{}%
}
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth <\parttocdepth \else
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength{\@tempdima}{\scr@part@tocnumwidth}%
    \if@tocleft
      \ifx\toc@l@number\@empty\else
        \setlength\@tempdima{0\toc@l@number}%
      \fi
    \fi
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      \usekomafont{partentry}{#1\nobreak
        \usekomafont{partentrypagenumber}{\hfil\nobreak
          \hb@xt@\@pnumwidth{\hss#2}}}\par
      \expandafter\ifnum\scr@v@is@gt{2.96}\relax
      \endgroup
      \penalty20010
      \else
          \penalty\@highpenalty
      \endgroup
    \fi
  \fi
}
\newcounter{part}
\renewcommand*{\thepart}{\@Roman\c@part}
\newcommand*{\partformat}{\partname~\thepart\autodot}
\newcommand*\partname{Part}
\newcommand*{\partmark}[1]{\@mkboth{}{}}
\newcommand*\addpartmark[1]{%
  \begingroup
    \expandafter\let\csname if@mainmatter\expandafter\endcsname
    \csname iffalse\endcsname
    \c@secnumdepth=\numexpr \partnumdepth-1\relax
    \partmark{#1}%
  \endgroup
}
\newcommand*{\raggedpart}{}
\let\raggedpart\centering
\newcommand*{\scr@fnt@part}{\size@part}
\newcommand*{\scr@fnt@partnumber}{\size@partnumber}
\aliaskomafont{partprefix}{partnumber}
\newkomafont{partentry}{\usekomafont{disposition}\large}
\newkomafont{partentrypagenumber}{}
\newcommand*{\scr@startchapter}[1]{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \scr@ifundefinedorrelax{#1pagestyle}{}{%
    \ifstr{#1pagestyle}{}{}{%
      \thispagestyle{\@nameuse{#1pagestyle}}%
    }%
  }%
  \global\@topnum\z@
  \@afterindentfalse
  \expandafter\SecDef\csname @#1\expandafter\endcsname\csname @s#1\endcsname
}
\newcommand*{\scr@@startchapter}{}
\def\scr@@startchapter#1[#2]#3{%
  \ifnum \scr@osectarg=\z@
    \@scr@tempswafalse
  \else
    \scr@istest#2=\@nil
  \fi
  \if@scr@tempswa
    \setkeys{KOMAarg.section}{tocentry={#3},head={#3},#2}%
  \else
    \ifcase \scr@osectarg\relax
      \setkeys{KOMAarg.section}{tocentry={#2},head={#2}}%
    \or
      \setkeys{KOMAarg.section}{tocentry={#3},head={#2}}%
    \or
      \setkeys{KOMAarg.section}{tocentry={#2},head={#3}}%
    \or
      \setkeys{KOMAarg.section}{tocentry={#2},head={#2}}%
    \fi
  \fi
  \ifnumbered{#1}{%
      \@tempswatrue
  }{\@tempswafalse}%
  \if@tempswa
    \refstepcounter{#1}%
    \expandafter\@maybeautodot\csname the#1\endcsname
    \typeout{#1 \csname the#1\endcsname.}%
    \ifx\scr@ds@tocentry\@empty\else
      \scr@ifundefinedorrelax{add#1tocentry}{%
        \addtocentrydefault{#1}%
      }{%
        \@nameuse{add#1tocentry}%
      }{\csname the#1\endcsname}{\scr@ds@tocentry}%
    \fi
  \else
    \expandafter\ifnum\scr@v@is@lt{3.15}\relax\else
      \begingroup
        \let\@elt\@stpelt
        \csname cl@#1\endcsname
      \endgroup
    \fi
    \typeout{#1 without number}%
    \ifx\scr@ds@tocentry\@empty\else
      \hy@insteadofrefstepcounter{#1}%
      \scr@ifundefinedorrelax{add#1tocentry}{%
        \addtocentrydefault{#1}%
      }{%
        \@nameuse{add#1tocentry}%
      }{}{\scr@ds@tocentry}%
    \fi
  \fi
  \csname #1mark\expandafter\endcsname\expandafter{\scr@ds@head}%
  \ifdim \@chapterlistsgap>\z@
    \doforeachtocfile{%
      \iftocfeature{\@currext}{chapteratlist}{%
        \addtocontents{\@currext}{\protect\addvspace{\@chapterlistsgap}}%
      }{}%
    }%
    \@ifundefined{float@addtolists}{}{%
      \scr@float@addtolists@warning
      \float@addtolists{\protect\addvspace{\@chapterlistsgap}}%
    }%
  \fi
  \if@twocolumn
    \if@at@twocolumn
      \@nameuse{@make#1head}{#3}%
    \else
      \@topnewpage[\@nameuse{@make#1head}{#3}]%
    \fi
  \else
    \@nameuse{@make#1head}{#3}%
  \fi
  \@afterheading
}
\newcommand*{\scr@@startschapter}[2]{%
  \begingroup
    \let\@mkboth\@gobbletwo
    \hy@insteadofrefstepcounter{#1}%
  \endgroup
  \if@twocolumn
    \if@at@twocolumn
      \@nameuse{@makes#1head}{#2}%
    \else
      \@topnewpage[\@nameuse{@makes#1head}{#2}]%
    \fi
  \else
    \@nameuse{@makes#1head}{#2}%
  \fi
  \@afterheading
}
%% \begin{macro}{\if@at@twocolumn}
\newif\if@at@twocolumn
\newcommand*\scr@topnewpage{}
\let\scr@topnewpage\@topnewpage
\long\def\@topnewpage[#1]{%
  \@at@twocolumntrue\scr@topnewpage[{#1}]\@at@twocolumnfalse
}
\newcommand*{\scr@makechapterhead}[2]{%
  \use@chapter@o@preamble{#1}%
  \@nameuse{@@make#1head}{#2}%
  \use@preamble{#1@u}%
}
\newcommand*{\scr@makeschapterhead}[2]{%
  \use@chapter@o@preamble{#1}%
  \@nameuse{@@makes#1head}{#2}%
  \use@preamble{#1@u}%
}
\newcommand*{\scr@@makechapterhead}[2]{%
  \@tempskipa=\glueexpr \csname scr@#1@beforeskip\endcsname\relax\relax
  \ifdim\@tempskipa<\z@\@tempskipa-\@tempskipa\fi
  \chapterheadstartvskip
  {%
    \setlength{\parindent}{\z@}\setlength{\parfillskip}{\fill}%
    \def\IfUseNumber{\ifnumbered{#1}}%
    \if@chapterprefix
      \let\IfUsePrefixLine\@firstoftwo
    \else
      \let\IfUsePrefixLine\@secondoftwo
    \fi
    \normalfont\usekomafont{disposition}{%
      \usekomafont{#1}{%
        \settoheight{\@tempskipa}{%
          {\usekomafont{#1prefix}{%
              \vrule \@width\z@ \@height\csname scr@#1@innerskip\endcsname}}%
        }%
        \raggedchapter
        \IfUseNumber{%
          \IfUsePrefixLine{%
            \chapterlineswithprefixformat{#1}%
            {{\usekomafont{#1prefix}{\csname #1format\endcsname%
                  \setlength{\@tempskipa}{\csname scr@#1@innerskip\endcsname}%
                  \chapterheadmidvskip}}}%
            {\interlinepenalty \@M#2\@@par}%
          }{%
            \chapterlinesformat{#1}%
            {\csname #1format\endcsname}%
            {\interlinepenalty \@M#2\@@par}%
          }%
        }{%
          \IfUsePrefixLine{%
            \chapterlineswithprefixformat{#1}%
            {}%
            {\interlinepenalty \@M#2\@@par}%
          }{%
            \chapterlinesformat{#1}%
            {}%
            {\interlinepenalty \@M#2\@@par}%
          }%
        }%
      }%
    }%
  }%
  \nobreak\par\nobreak
  \@tempskipa=\glueexpr \csname scr@#1@afterskip\endcsname\relax\relax
  \ifdim\@tempskipa<\z@\@tempskipa-\@tempskipa\fi
  \chapterheadendvskip
}
\newcommand*{\scr@@makeschapterhead}[2]{%
  \@tempskipa=\glueexpr \csname scr@#1@beforeskip\endcsname\relax\relax
  \ifdim\@tempskipa<\z@\@tempskipa-\@tempskipa\fi
  \chapterheadstartvskip
  {%
    \setlength{\parindent}{\z@}\setlength{\parfillskip}{\fill}%
    \let\IfUseNumber\secondoftwo
    \if@chapterprefix
      \let\IfUsePrefixLine\@firstoftwo
    \else
      \let\IfUsePrefixLine\@secondoftwo
    \fi
    \normalfont\usekomafont{disposition}{%
      \usekomafont{#1}{%
        \raggedchapter
        \IfUsePrefixLine{%
          \chapterlineswithprefixformat{#1}%
          {}%
          {\interlinepenalty \@M#2\@@par}%
        }{%
          \chapterlinesformat{#1}%
          {}%
          {\interlinepenalty \@M#2\@@par}%
        }%
      }%
    }%
  }%
  \nobreak\par\nobreak
  \@tempskipa=\glueexpr \csname scr@#1@afterskip\endcsname\relax\relax
  \ifdim\@tempskipa<\z@\@tempskipa-\@tempskipa\fi
  \chapterheadendvskip
}
\newcommand{\chapterlinesformat}[3]{%
  \@hangfrom{#2}{#3}%
}
\newcommand{\chapterlineswithprefixformat}[3]{%
  #2#3%
}
\newcommand*{\use@chapter@o@preamble}[1]{%
  {%
    \settoheight{\@tempdima}{%
      \@tempskipa=\glueexpr \csname scr@#1@beforeskip\endcsname\relax\relax
      \ifdim\@tempskipa<\z@\@tempskipa-\@tempskipa\fi
      \vbox{\chapterheadstartvskip}%
    }%
    \settodepth{\@tempdimb}{%
      \@tempskipa=\glueexpr \csname scr@#1@beforeskip\endcsname\relax\relax
      \ifdim\@tempskipa<\z@\@tempskipa-\@tempskipa\fi
      \vbox{\chapterheadstartvskip}%
    }%
    \addtolength{\@tempdima}{\@tempdimb}%
    \setbox\z@\vbox{%
      \use@preamble{#1@o}%
    }%
    \setlength{\@tempdimb}{\ht0}%
    \addtolength{\@tempdimb}{\dp0}%
    \vbox to \z@{%
      \vskip-\baselineskip
      \vbox to \@tempdima{%
        \vfill
        \box\z@
      }%
      \vss
    }\vskip-\parskip\vskip-\baselineskip
    \ifdim \@tempdimb>\@tempdima%
      \addtolength{\@tempdimb}{-\@tempdima}%
      \ifdim\@tempdimb<\vfuzz
        \ClassInfo{\KOMAClassName}{%
          preamble before #1 is \the\@tempdimb\space to high.\MessageBreak
          Tolerated without warning because of\MessageBreak
          \string\vfuzz\space = \the\vfuzz\space >= \the\@tempdimb
        }%
      \else
      \ClassWarning{\KOMAClassName}{%
        preamble before #1 is \the\@tempdimb\space to high.\MessageBreak
        To avoid the overfull \string\vbox\space you may
        change\MessageBreak
        the `beforeskip' value using
        \string\RedeclareSectionCommand\MessageBreak
        at the preamble of your document.\MessageBreak
        You may also change \string\setchapterpreamble\MessageBreak
        before the command, which generates the message
        about\MessageBreak
        an overfull \string\vbox
      }%
      \fi
    \fi%
  }%
}
\newcommand*{\addchaptertocentry}[2]{%
  \addtocentrydefault{chapter}{#1}{#2}%
  \if@chaptertolists
    \doforeachtocfile{%
      \iftocfeature{\@currext}{chapteratlist}{%
        \addxcontentsline{\@currext}{chapteratlist}[{#1}]{#2}%
      }{}%
    }%
    \@ifundefined{float@addtolists}{}{\scr@float@addtolists@warning}%
  \fi
}
\newcommand\addchap{%
  \SecDef\@addchap\@saddchap
}%
\newcommand*{\@addchap}{}%
\long\def\@addchap[#1]#2{%
  \edef\reserved@a{%
    \unexpanded{%
      \chapter[{#1}]{#2}%
      \c@secnumdepth=
    }\the\c@secnumdepth\relax
  }%
  \c@secnumdepth=\numexpr \chapternumdepth-1\relax
  \reserved@a
}
\newcommand{\@saddchap}[1]{%
  \chapter*{#1}%
  \addchapmark{}%
}%
\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth <\chaptertocdepth \else
    \ifnum \lastpenalty<20010
      \addpenalty{-\@highpenalty}%
    \fi
    \expandafter\ifnum\scr@v@is@lt{3.15}%
      \vskip 1.0em \@plus\p@
    \else
      \addvspace{1.0em \@plus\p@}%
    \fi
    \setlength\@tempdima{\scr@chapter@tocnumwidth}%
    \if@tocleft
      \ifx\toc@l@number\@empty\else
        \setlength\@tempdima{0\toc@l@number}%
      \fi
    \fi
    \begingroup
      \raggedchapterentry
      \parindent \z@ \advance\rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \interlinepenalty\@M
      \leavevmode
      \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
      \edef\@pnumwidth{\the\dimexpr\@pnumwidth\relax}%
      \usekomafont{chapterentry}{#1\nobreak
        \usekomafont{chapterentrypagenumber}{%
          {\usekomafont{chapterentrydots}{%
              \if@chapterentrywithdots
                \leaders\hbox{$\m@th
                  \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
                  mu$}%
              \fi
              \hfill}}\nobreak
          \hb@xt@\@pnumwidth{\hss#2}}}\par
      \expandafter\ifnum\scr@v@is@gt{2.96}\relax
      \endgroup
      \penalty20009
      \else
        \penalty\@highpenalty
      \endgroup
    \fi
  \fi
}
\newcommand*{\raggedchapterentry}{}
\newcommand*{\l@chapteratlist}{\l@chapter}
\newcounter{chapter}
\renewcommand*{\thechapter}{\@arabic\c@chapter}
\newcommand*{\chapterformat}{%
  \mbox{\chapappifchapterprefix{\nobreakspace}\thechapter\autodot
    \IfUsePrefixLine{}{\enskip}}%
}
\newcommand*\chaptermarkformat{\chapappifchapterprefix{\ }%
  \thechapter\autodot\enskip}
\newcommand*\chaptername{Chapter}
\newcommand*\appendixname{Appendix}
\newcommand*{\chapappifprefix}[1][]{%
  \ClassWarning{\KOMAClassName}{%
    Please don't use obsolete command
    \string\chapappifprefix.\MessageBreak
    The new command \string\chapappifchapterprefix\space has
    an\MessageBreak
    obligatory instead of an optional argument. Use that\MessageBreak
    new command%
  }%
  \chapappifchapterprefix{#1}%
}
\newcommand*{\chapappifchapterprefix}[1]{%
  \IfChapterUsesPrefixLine{\chapapp#1}{}%
}
\newcommand*{\IfChapterUsesPrefixLine}{%
  \if@chapterprefix\expandafter\@firstoftwo\else\expandafter\@secondoftwo\fi
}
\newcommand*{\chapapp}{\@chapapp}
\newcommand*\@chapapp{\chaptername}
\newcommand*\chaptermark[1]{}
\newcommand*\addchapmark[1]{%
  \begingroup
    \expandafter\let\csname if@mainmatter\expandafter\endcsname
    \csname iffalse\endcsname
    \c@secnumdepth=\numexpr \chapternumdepth-1\relax
    \chaptermark{#1}%
  \endgroup
}
\newcommand*{\raggedchapter}{\raggedsection}
\newcommand*{\scr@fnt@chapter}{\size@chapter}
\newcommand*{\scr@fnt@chapterprefix}{\size@chapterprefix}
\newkomafont{chapterentry}{\usekomafont{disposition}}
\newkomafont{chapterentrypagenumber}{}
\newkomafont{chapterentrydots}{\normalfont}
\newcommand\addsec{\SecDef\@addsec\@saddsec}
\newcommand*{\@addsec}{}
\def\@addsec[#1]#2{%
  \edef\reserved@a{%
    \unexpanded{%
      \section[{#1}]{#2}%
      \c@secnumdepth=
    }\the\c@secnumdepth\relax
  }%
  \c@secnumdepth=\numexpr \sectionnumdepth-1\relax
  \reserved@a
}
\newcommand*{\@saddsec}[1]{%
  \section*{#1}\addsecmark{}%
}
\newkomafont{minisec}{}
\newcommand\minisec[1]{%
  \expandafter\ifnum\scr@v@is@lt{3.13a}\relax
    \@afterindentfalse \vskip 1.5ex
  \else
    \if@noskipsec \leavevmode \fi
    \par
    \@afterindentfalse
    \if@nobreak
      \everypar{}%
    \else
      \addpenalty\@secpenalty\addvspace{1.5ex}%
    \fi
  \fi
  {\parindent \z@
    \expandafter\ifnum\scr@v@is@gt{2.96}\relax
      \setlength{\parfillskip}{\z@ plus 1fil}\fi
    \raggedsection\normalfont\sectfont\nobreak
    \usekomafont{minisec}#1\par\nobreak}\nobreak%
  \@afterheading
}
\newcommand*{\addsectiontocentry}[2]{%
  \addtocentrydefault{section}{#1}{#2}%
}
\newcommand*{\addsubsectiontocentry}[2]{%
  \addtocentrydefault{subsection}{#1}{#2}%
}
\newcommand*{\addparagraphtocentry}[2]{%
  \addtocentrydefault{paragraph}{#1}{#2}%
}
\newcommand*{\addsubparagraphtocentry}[2]{%
  \addtocentrydefault{subparagraph}{#1}{#2}%
}
\newcounter{section}[chapter]
\renewcommand*\thesection{%
  \thechapter.%
  \@arabic\c@section
}
\newcommand*\sectionmarkformat{\thesection\autodot\enskip}
\newcounter{subsection}[section]
\renewcommand*{\thesubsection}{\thesection.\@arabic\c@subsection}
\newcounter{subsubsection}[subsection]
\renewcommand*{\thesubsubsection}{%
  \thesubsection.\@arabic\c@subsubsection
}
\newcounter{paragraph}[subsubsection]
\renewcommand*{\theparagraph}{\thesubsubsection.\@arabic\c@paragraph}
\newcounter{subparagraph}[paragraph]
\renewcommand*{\thesubparagraph}{%
  \theparagraph.\@arabic\c@subparagraph
}
\newcommand*{\othersectionlevelsformat}[3]{#3\autodot\enskip}
\renewcommand*{\@seccntformat}[1]{%
  \expandafter\ifnum\scr@v@is@lt{3.17}\relax
    \protect\othersectionlevelsformat{#1}{%
      \expandafter\aftergroup\noexpand\@gobble}{\csname the#1\endcsname}%
  \else
    \scr@ifundefinedorrelax{#1format}{%
      \protect\othersectionlevelsformat{#1}{%
        \expandafter\aftergroup\noexpand\@gobble}{\csname the#1\endcsname}%
    }{\expandafter\protect\csname #1format\endcsname}%
  \fi
}
\newcommand*\addsecmark[1]{%
  \begingroup
    \c@secnumdepth=\numexpr \sectionnumdepth-1\relax
    \sectionmark{#1}%
  \endgroup
}
\newcommand*{\scr@fnt@section}{\size@section}
\newcommand*{\scr@fnt@subsection}{\size@subsection}
\newcommand*{\scr@fnt@subsubsection}{\size@subsubsection}
\newcommand*{\scr@fnt@paragraph}{\size@paragraph}
\newcommand*{\scr@fnt@subparagraph}{\size@subparagraph}
\DeclareSectionCommand[%
  style=part,%
  level=\m@ne,%
  pagestyle=plain,%
  toclevel=\m@ne,%
  tocindent=\z@,%
  tocnumwidth=2em
]{part}
\DeclareSectionCommand[%
  style=chapter,%
  level=\z@,%
  pagestyle=plain,%
  tocindent=\z@,%
  tocnumwidth=1.5em
]{chapter}
\DeclareSectionCommand[%
  style=section,%
  level=1,%
  indent=\z@,%
  beforeskip=-3.5ex \@plus -1ex \@minus -.2ex,%
  afterskip=2.3ex \@plus.2ex,%
  tocindent=1.5em,%
  tocnumwidth=2.3em%
]{section}
\DeclareSectionCommand[%
  style=section,%
  level=2,%
  indent=\z@,%
  beforeskip=-3.25ex\@plus -1ex \@minus -.2ex,%
  afterskip=1.5ex \@plus .2ex,%
  tocindent=3.8em,%
  tocnumwidth=3.2em%
]{subsection}
\DeclareSectionCommand[%
  style=section,%
  level=3,%
  indent=\z@,%
  beforeskip=-3.25ex\@plus -1ex \@minus -.2ex,%
  afterskip=1.5ex \@plus .2ex,%
  tocindent=7.0em,%
  tocnumwidth=4.1em%
]{subsubsection}
\DeclareSectionCommand[%
  style=section,%
  level=4,%
  indent=\z@,%
  beforeskip=3.25ex \@plus1ex \@minus.2ex,%
  afterskip=-1em,%
  tocindent=10em,%
  tocnumwidth=5em%
]{paragraph}
\DeclareSectionCommand[%
  style=section,%
  level=5,%
  indent=\scr@parindent,%
  beforeskip=3.25ex \@plus1ex \@minus .2ex,%
  afterskip=-1em,%
  tocindent=12em,%
  tocnumwidth=6em%
]{subparagraph}
\expandafter\ifnum\scr@v@is@lt{3.15}\relax
  \let\scr@subparagraph@sectionindent\parindent
\else
  \def\scr@subparagraph@sectionindent{\scr@parindent}%
\fi
\newcommand*{\scr@fnt@disposition}{\sectfont}
\aliaskomafont{sectioning}{disposition}
%%% From File: $Id: scrkernel-miscellaneous.dtx 2028 2015-03-23 12:19:51Z kohm $
\newif\if@restonecol
\newcommand{\dictum}[2][]{\par%
  \begingroup
    \raggeddictum\parbox{\dictumwidth}{%
      {\@dictumfont{\raggeddictumtext #2\strut\par}%
        \def\@tempa{#1}\ifx\@tempa\@empty\else%
          {\raggeddictumtext\dictumrule}%
          \raggeddictumauthor\@dictumauthorfont\dictumauthorformat{#1}%
          \strut\par%
        \fi%
      }%
    }\par%
  \endgroup
}
\newcommand*{\dictumrule}{\vskip-1ex\hrulefill\par}%
\newcommand*{\dictumwidth}{.3333\textwidth}
\newcommand*{\raggeddictum}{\raggedleft}
\newcommand*{\dictumauthorformat}[1]{(#1)}
\newcommand*{\raggeddictumtext}{\raggedright}
\newcommand*{\raggeddictumauthor}{\raggedleft}
\newkomafont{dictum}{\normalfont\normalcolor\sffamily\small}
\newkomafont{dictumauthor}{\itshape}
\aliaskomafont{dictumtext}{dictum}
\setlength{\skip\@mpfootins}{\skip\footins}
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset{equation}{chapter}
\renewcommand*\theequation{%
  \thechapter.%
  \@arabic\c@equation
}
\newcommand*{\new@tpo@label}{\@newl@bel{tpo}}
\newcommand*{\scr@tpo}{0}
\newcommand*{\is@thispageodd}[1][\is@thispageodd@setlabel]{%
  \@bsphack
  \begingroup
    \@tempcnta=\scr@tpo
    \advance\@tempcnta by\@ne
    \xdef\scr@tpo{\the\@tempcnta}%
    \expandafter\ifx\csname tpo@\scr@tpo\endcsname\relax
      \protect\G@refundefinedtrue
      \ClassWarning{\KOMAClassName}{%
        odd/even page label number \scr@tpo\space undefined}%
      \edef\@tempa{\the\value{page}}%
    \else
      \edef\@tempa{\csname tpo@\scr@tpo\endcsname}%
    \fi
    \ifodd\number\@tempa
      \aftergroup\thispagewasoddtrue
    \else
      \aftergroup\thispagewasoddfalse
    \fi
  \endgroup
  \edef\is@thispageodd@setlabel{%
    \unexpanded{\protected@write\@auxout{\let\arabic\relax}}{%
      \noexpand\string
      \noexpand\new@tpo@label{\scr@tpo}{\noexpand\arabic{page}}}%
  }%
  #1%
  \@esphack
}
\newcommand*{\is@thispageodd@setlabel}{}
\newif\ifthispagewasodd
\newcommand{\ifthispageodd}{%
  \is@thispageodd
  \ifthispagewasodd
    \expandafter\@firstoftwo
  \else
    \expandafter\@secondoftwo
  \fi
}
\DeclareRobustCommand*\textsubscript[1]{%
  \@textsubscript{\selectfont#1}%
}
\providecommand*{\@textsubscript}[1]{%
  {\m@th\ensuremath{_{\mbox{\fontsize\sf@size\z@#1}}}}%
}
\newcommand*{\scr@package@not@recommended}[2]{%
  \BeforePackage{#1}{%
    \ClassWarning{\KOMAClassName}{%
      Usage of package `#1' together\MessageBreak
      with a KOMA-Script class is not recommended.\MessageBreak
      \if\relax\detokenize{#2}\relax\else
        I'd suggest to use #2.\MessageBreak
      \fi
      Nevertheless, using requested\MessageBreak
      package `#1'%
    }%
  }%
}%
\scr@package@not@recommended{emptypage}{%
  option\MessageBreak
  `cleardoublepage' with one of it's\MessageBreak
  several values}
\scr@package@not@recommended{parskip}{%
  option\MessageBreak
  `parskip' with one of it's several values}
\scr@package@not@recommended{fancyhdr}{%
  \MessageBreak
  package `scrlayer-scrpage'}
\scr@package@not@recommended{titlesec}{%
  the package only\MessageBreak
  if you really need it, because it breaks several\MessageBreak
  KOMA-Script features, i.e., option `headings' and\MessageBreak
  the extended optional argument of the section\MessageBreak
  commands}
\scr@package@not@recommended{titleps}{%
  package `scrlayer-scrpage`}
\BeforePackage{titlesec}{%
  \let\scr@ttl@saved@section\section
  \let\scr@ttl@saved@subsection\subsection
  \let\scr@ttl@saved@subsubsection\subsubsection
  \let\scr@ttl@saved@paragraph\paragraph
  \let\scr@ttl@saved@subparagraph\subparagraph
}
\AfterPackage{titlesec}{%
  \@ifpackagelater{titlesec}{2014/10/09}{%
    \ClassInfo{\KOMAClassName}{%
      Deactivating the `titlesec` workaround,\MessageBreak
      because package is newer than expected%
    }%
  }{%
    \PackageWarning{\KOMAClassName}{%
      Activating an ugly workaround for a missing\MessageBreak
      feature of package `titlesec`%
    }%
    \def\scr@ttl@@extract#1\scr@startsection#2#3#4#5#6#7#8{%
      \@tempskipa=#5
      \@tempskipb=#6
      \ifdim\@tempskipa<\z@
        \toks@{\titlespacing*#8{#4}}%
        \@tempskipa-\@tempskipa
      \else
        \toks@{\titlespacing#8{#4}}%
      \fi
      \@ifundefined{ttl@space}{}{%
        \ttl@assign\@tempskipa*\ttl@space\relax\beforetitleunit}%
      \ifdim\@tempskipb<\z@
        \if@tempswa
          \titleformat#8[runin]%
             {\ttl@fonts\ttl@sizes{#3}}{\@seccntformat{#2}}%
             {\z@}\ttl@passexplicit
        \else
          \titleformat#8[runin]%
             {#7}{\@seccntformat{#2}}%
             {\z@}\ttl@passexplicit
        \fi
        \@tempskipb-\@tempskipb
      \else
        \if@tempswa
          \titleformat#8%
            {\ttl@fil\ttl@fonts\ttl@sizes{#3}}{\@seccntformat{#2}}%
            {\z@}\ttl@passexplicit
        \else
          \titleformat#8%
            {#7}{\@seccntformat{#2}}%
            {\z@}\ttl@passexplicit
        \fi
        \@ifundefined{ttl@space}{}{%
          \ttl@assign\@tempskipb*\ttl@space\relax\aftertitleunit}%
      \fi
      \edef\ttl@a{\the\toks@{\the\@tempskipa}{\the\@tempskipb}}
      \ttl@a}%
    \expandafter\scr@ttl@@extract\scr@ttl@saved@section\section
    \expandafter\scr@ttl@@extract\scr@ttl@saved@subsection\subsection
    \expandafter\scr@ttl@@extract\scr@ttl@saved@subsubsection\subsubsection
    \expandafter\scr@ttl@@extract\scr@ttl@saved@paragraph\paragraph
    \expandafter\scr@ttl@@extract\scr@ttl@saved@subparagraph\subparagraph
    \let\scr@ttl@saved@section\relax
    \let\scr@ttl@saved@subsection\relax
    \let\scr@ttl@saved@subsubsection\relax
    \let\scr@ttl@saved@paragraph\relax
    \let\scr@ttl@saved@subparagraph\relax
    \let\scr@ttl@@extract\relax
  }%
}
%%% From File: $Id: scrkernel-pagestyles.dtx 2162 2015-07-15 07:30:52Z kohm $
\newcommand*{\set@tempdima@hw}{%
  \setlength{\@tempdima}{\textwidth}%
  \if@mincl
    \addtolength{\@tempdima}{\marginparsep}%
    \addtolength{\@tempdima}{\marginparwidth}%
  \fi
}
\newcommand*{\pnumfont}{\normalfont\normalcolor}
\newcommand*{\headfont}{\normalfont\normalcolor\slshape}
\newcommand*{\footfont}{}
\newcommand*{\scr@fnt@pagenumber}{\pnumfont}
\aliaskomafont{pagination}{pagenumber}
\newcommand*{\scr@fnt@pageheadfoot}{\headfont}
\aliaskomafont{pagehead}{pageheadfoot}
\newcommand*{\scr@fnt@pagefoot}{\footfont}
\newcommand*{\scr@fnt@wrn@pagefoot}[1]{%
  This class does not use font element `pagefoot'!\MessageBreak
  Maybe you should load package `scrlayer-scrpage',\MessageBreak
  before using this element%
}
\newcommand*{%
  \pagemark
}{%
  {\usekomafont{pagenumber}{%
    \thepage}}}
\renewcommand*{\ps@plain}{%
  \renewcommand*{\@oddhead}{}%
  \let\@evenhead\@oddhead
  \renewcommand*{\@evenfoot}{%
    \set@tempdima@hw\hss\hb@xt@ \@tempdima{\vbox{%
        \if@fsl \hrule \vskip 3\p@ \fi
        \hb@xt@ \@tempdima{{\pagemark\hfil}}}}}%
  \renewcommand*{\@oddfoot}{%
    \set@tempdima@hw\hb@xt@ \@tempdima{\vbox{%
        \if@fsl \hrule \vskip 3\p@ \fi
        \hb@xt@ \@tempdima{{\hfil\pagemark
            \if@twoside\else\hfil\fi}}}}\hss}%
}%
\newcommand*{\ps@headings}{\let\@mkboth\markboth
  \renewcommand*{\@evenhead}{%
    \set@tempdima@hw\hss\hb@xt@ \@tempdima{\vbox{%
        \hb@xt@ \@tempdima{{\headfont\strut\leftmark\hfil}}%
        \if@hsl \vskip 1.5\p@ \hrule \fi}}}%
  \renewcommand*{\@oddhead}{%
    \set@tempdima@hw\hb@xt@ \@tempdima{\vbox{%
        \hb@xt@ \@tempdima{{\headfont\hfil\strut\rightmark
            \if@twoside\else\hfil\fi}}%
        \if@hsl \vskip 1.5\p@ \hrule \fi}}\hss}%
  \renewcommand*{\@evenfoot}{%
    \set@tempdima@hw\hss\hb@xt@ \@tempdima{\vbox{%
        \if@fsl \hrule \vskip 3\p@ \fi
        \hb@xt@ \@tempdima{{\pagemark\hfil}}}}}%
  \renewcommand*{\@oddfoot}{%
    \set@tempdima@hw\hb@xt@ \@tempdima{\vbox{%
        \if@fsl \hrule \vskip 3\p@ \fi
        \hb@xt@ \@tempdima{{\hfil\pagemark
            \if@twoside\else\hfil\fi}}}}\hss}%
  \renewcommand*{\chaptermark}[1]{%
    \if@twoside\expandafter\markboth\else\expandafter\markright\fi
    {\MakeMarkcase{\ifnumbered{chapter}{%
          \chaptermarkformat
      }{}##1}%
    }{}%
  }%
  \renewcommand*{\sectionmark}[1]{%
    \if@twoside
      \markright{\MakeMarkcase{\ifnumbered{section}{\sectionmarkformat}{}%
        ##1}}%
    \fi
  }%
}%
\newcommand*{\ps@myheadings}{\let\@mkboth\@gobbletwo
  \renewcommand*{\@evenhead}{%
    \set@tempdima@hw\hss\hb@xt@ \@tempdima{\vbox{%
        \hb@xt@ \@tempdima{{\headfont\strut\leftmark\hfil}}%
        \if@hsl \vskip 1.5\p@ \hrule \fi}}}%
  \renewcommand*{\@oddhead}{%
    \set@tempdima@hw\hb@xt@ \@tempdima{\vbox{%
        \hb@xt@ \@tempdima{{\headfont\hfil\strut\rightmark
            \if@twoside\else\hfil\fi}}%
        \if@hsl \vskip 1.5\p@ \hrule \fi}}\hss}%
  \renewcommand*{\@evenfoot}{%
    \set@tempdima@hw\hss\hb@xt@ \@tempdima{\vbox{%
        \if@fsl \hrule \vskip 3\p@ \fi
        \hb@xt@ \@tempdima{{\pagemark\hfil}}}}}%
  \renewcommand*{\@oddfoot}{%
    \set@tempdima@hw\hb@xt@ \@tempdima{\vbox{%
        \if@fsl \hrule \vskip 3\p@ \fi
        \hb@xt@ \@tempdima{{\hfil\pagemark
            \if@twoside\else\hfil\fi}}}}\hss}%
  \renewcommand*{\chaptermark}[1]{}%
  \renewcommand*{\sectionmark}[1]{}%
}
\newcommand*{\titlepagestyle}{plain}
\newcommand*{\indexpagestyle}{plain}
\pagestyle{plain}
\pagenumbering{arabic}
%%% From File: $Id: scrkernel-floats.dtx 2002 2015-03-12 12:06:17Z kohm $
\newcommand\marginline[1]{%
  \marginpar[\raggedleft{#1}]{\raggedright #1}%
}
\newlength{\abovecaptionskip}
\newlength{\belowcaptionskip}
\setlength{\abovecaptionskip}{10\p@}
\setlength{\belowcaptionskip}{0\p@}
\newcommand*{\captionformat}{:\ }
\newcommand{\scr@caption}{}
\AtBeginDocument{\let\scr@caption\caption}
\newcommand{\captionabove}{\@captionabovetrue\scr@caption}
\newcommand{\captionbelow}{\@captionabovefalse\scr@caption}
\newcommand*{\scap@caption}{}
\newcommand*{\scap@width}{\linewidth}
\newcommand*{\scap@move}{\z@}
\newcommand*{\scap@currentlabel}{}
\newif\ifscap@alt
\newcommand*{\@captionbeside}{}
\long\def\@captionbeside[#1]#2{%
  \@ifnextchar [%]
    {\@@captionbeside[{#1}]{#2}}
    {\c@pti@nb@sid@[{#1}]{#2}}%
}
\newcommand*{\@@captionbeside}{}
\long\def\@@captionbeside[#1]#2[#3]{%
  \def\scap@pos{#3}%
  \@ifnextchar [%]
    {\@@@captionbeside[{#1}]{#2}}
    {\c@pti@nb@sid@[{#1}]{#2}}%
}
\newcommand*{\@@@captionbeside}{}
\long\def\@@@captionbeside[#1]#2[#3]{%
  \def\scap@width{#3}%
  \@ifnextchar [%]
    {\@@@@captionbeside[{#1}]{#2}}
    {\setlength{\@tempdima}{#3}%
      \addtolength{\@tempdima}{-\linewidth}%
      \setlength{\@tempdima}{-.5\@tempdima}%
      \edef\scap@move{\the\@tempdima}%
      \c@pti@nb@sid@[{#1}]{#2}}%
}
\newcommand*{\@@@@captionbeside}{}
\long\def\@@@@captionbeside[#1]#2[#3]{%
  \def\scap@move{#3}%
  \@ifstar
    {\scap@alttrue\c@pti@nb@sid@[{#1}]{#2}}
    {\scap@altfalse\c@pti@nb@sid@[{#1}]{#2}}%
}
\newbox\c@pti@nb@sid@b@x
\newcommand{\c@pti@nb@sid@}{}
\long\def\c@pti@nb@sid@[#1]#2{%
  \def\scap@caption{%
    \if c\scap@valign
      \setlength{\abovecaptionskip}{\z@}%
    \else \if t\scap@valign
        \setlength{\abovecaptionskip}{-\ht\strutbox}%
      \else \if b\scap@valign
          \setlength{\abovecaptionskip}{\z@}%
        \fi
      \fi
    \fi
    \setlength{\belowcaptionskip}{-\dp\strutbox}%
    \captionbelow[{#1}]{#2}%
  }%
  \begin{lrbox}{\c@pti@nb@sid@b@x}%
}
\newenvironment*{captionbeside}{%
  \@dblarg\@captionbeside%
}{%
  \end{lrbox}%
  \settowidth{\@tempdima}{\usebox\c@pti@nb@sid@b@x}%
  \setlength{\@tempdimb}{\scap@width}%
  \addtolength{\@tempdimb}{-\@tempdima}%
  \addtolength{\@tempdimb}{-\columnsep}%
  \ifdim \@tempdimb<2em
    \ClassWarning{\KOMAClassName}{%
      caption beside will be very, very small.\MessageBreak
      In most cases this will result in overfull and\MessageBreak
      underfull \string\hbox\space messages%
    }%
  \fi
  \onelinecaptionsfalse
  \setcapwidth[r]{\@tempdimb}%
  \let\@tempa\scap@pos
  \setlength{\@tempdimc}{\scap@move}%
  \if i\scap@pos\def\@tempa{l}\fi
  \if o\scap@pos\def\@tempa{r}\fi
  \if@twoside
    \ifthispageodd{}{%
      \if o\scap@pos\def\@tempa{l}\fi
      \if i\scap@pos\def\@tempa{r}\fi
      \ifscap@alt
        \addtolength{\@tempdimc}{\scap@width}%
        \addtolength{\@tempdimc}{-\linewidth}%
        \setlength{\@tempdimc}{-\@tempdimc}%
      \fi
    }%
  \fi
  \hspace*{\@tempdimc}%
  \if l\@tempa
    \rlap{%
      \parbox[\scap@valign]{\@tempdimb}{\scap@caption
        \global\let\scap@currentlabel\@currentlabel}%
      \nobreak\hskip\columnsep
      \parbox[\scap@valign]{\wd\c@pti@nb@sid@b@x}{\usebox\c@pti@nb@sid@b@x}%
    }%
  \else
    \rlap{%
      \parbox[\scap@valign]{\wd\c@pti@nb@sid@b@x}{\usebox\c@pti@nb@sid@b@x}%
      \nobreak\hskip\columnsep
      \parbox[\scap@valign]{\@tempdimb}{\scap@caption
        \global\let\scap@currentlabel\@currentlabel}%
    }%
  \fi
  \par
  \aftergroup\let\aftergroup\@currentlabel
  \aftergroup\scap@currentlabel
}
\newcommand*\capfont{\normalfont\normalcolor}
\newcommand*\caplabelfont{\normalfont\normalcolor}
\newcommand*{\scr@fnt@caption}{\capfont}
\newcommand*{\scr@fnt@captionlabel}{\caplabelfont}
\newif\ifdofullc@p
\dofullc@ptrue
\newif\if@capbreak\@capbreakfalse
\newcommand*{\setcapindent}{\@ifstar{\@@setcapindent}{\@setcapindent}}
\newcommand*{\@setcapindent}[1]{%
  \setlength{\@tempdima}{#1}%
  \ifdim\@tempdima>\hsize
    \addtolength{\@tempdima}{-\hsize}\@capbreaktrue
  \else
    \@capbreakfalse
  \fi
  \edef\cap@indent{\the\@tempdima}%
  \dofullc@pfalse
}
\newcommand*{\@@setcapindent}[1]{%
  \setlength{\@tempdima}{#1}%
  \edef\cap@indent{\the\@tempdima}%
  \dofullc@pfalse\@capbreaktrue
}
\AfterPackage{caption2}{%
  \renewcommand*{\setcapindent}{%
    \ClassWarning{\KOMAClassName}{%
      You're using package `caption2'.\MessageBreak
      Because of this you should also use `\string\captionstyle'
      and\MessageBreak
      set length '\string\captionindent' instead of
      using\MessageBreak
      `\string\setcapindent'%
    }%
    \captionstyle{indent}%
    \@ifstar{\setlength{\captionindent}}{\setlength{\captionindent}}%
  }%
}
\newcommand*{\setcaphanging}{\dofullc@ptrue\@capbreakfalse}
\AfterPackage{caption2}{%
  \renewcommand*{\setcaphanging}{%
    \ClassWarning{\KOMAClassName}{%
      You're using package `caption2'.\MessageBreak
      Because of this you should also use
      `\string\captionstyle'\MessageBreak
      instead of `\string\setcaphang'%
    }
    \captionstyle{hang}%
  }%
}
\newcommand{\@makecaption}[2]{%
  \if@captionabove
    \vskip\belowcaptionskip
  \else
    \vskip\abovecaptionskip
  \fi
  \@@makecaption\@firstofone{#1}{#2}%
  \if@captionabove
    \vskip\abovecaptionskip
  \else
    \vskip\belowcaptionskip
  \fi
}
\newcommand*{\cap@width}{\hsize}
\newcommand*{\cap@left}{\hfill}
\newcommand*{\cap@right}{\hfill}
\newcommand*{\setcapwidth}[2][]{%
  \begingroup%
    \setlength{\@tempdima}{#2}%
    \ifdim\@tempdima <\z@
      \@tempdima\z@
      \ClassWarning{\KOMAClassName}{%
        caption width less than 0pt not allowed.\MessageBreak
        Setting caption width to 0pt%
      }%
    \fi
    \edef\@tempa{\endgroup\def\noexpand\cap@width{\the\@tempdima}}%
  \@tempa
  \begingroup
    \edef\@tempa{#1}%
    \def\@tempb{c}\ifx\@tempa\@tempb
      \endgroup
      \def\cap@margin{\let\cap@left=\hfill\let\cap@right=\hfill}%
    \else
      \def\@tempb{l}\ifx\@tempa\@tempb
        \endgroup
        \def\cap@margin{\let\cap@left=\relax\let\cap@right\hfill}%
      \else
        \def\@tempb{r}\ifx\@tempa\@tempb
          \endgroup
          \def\cap@margin{\let\cap@left=\hfill\let\cap@right=\relax}%
        \else
          \def\@tempb{i}\ifx\@tempa\@tempb
            \endgroup
            \def\cap@margin{%
              \let\cap@left=\relax
              \let\cap@right=\hfill
              \if@twoside
                \ifthispageodd{}{%
                  \let\cap@left=\hfill
                  \let\cap@right=\relax
                }%
              \fi
            }%
          \else
            \def\@tempb{o}\ifx\@tempa\@tempb
              \endgroup
              \def\cap@margin{%
                \let\cap@left=\hfill
                \let\cap@right=\relax
                \if@twoside
                  \ifthispageodd{}{%
                    \let\cap@left=\relax
                    \let\cap@right=\hfill
                  }%
                \fi
              }%
            \else
              \ifx \@tempa\@empty\else
                \ClassError{\KOMAClassName}{%
                  unknown optional position argument%
                }{%
                  You've used `#1' as position argument at
                  \string\setcaptionwidth,\MessageBreak
                  but only ONE of `c', `l', `r', `i`, `o` ist
                  allowed.\MessageBreak
                  Argument will be ignored, if you'll continue.%
                }%
              \fi
              \endgroup
  \fi\fi\fi\fi\fi
}
\AfterPackage{caption2}{%
  \renewcommand*{\setcapwidth}[2][]{%
    \ClassWarning{\KOMAClassName}{%
      Ignorring optional argument of `\string\setcapwidth'!\MessageBreak
      You're using package `caption2'.\MessageBreak
      Because of this you should also use
      `\string\setcaptionwidth'\MessageBreak
      instead of `\string\setcapwidth'%
    }%
    \setcaptionwidth{#2}%
  }%
}%
\newcommand*{\cap@margin}{}
\let\cap@margin=\relax%
\newcommand*{\setcapmargin}{\@ifstar{\@setcapmargin}{\@@setcapmargin}}
\newcommand*{\@setcapmargin}[2][\@tempdimb]{%
  \def\cap@margin{%
    \onelinecaptionsfalse
    \begingroup
      \setlength{\@tempdima}{\hsize}%
      \setlength{\@tempdimb}{#2}%
      \addtolength{\@tempdima}{-\@tempdimb}%
      \setlength{\@tempdimc}{#1}%
      \addtolength{\@tempdima}{-\@tempdimc}%
      \edef\@tempa{\endgroup
        \def\noexpand\cap@width{\the\@tempdima}%
        \noexpand\if@twoside
          \noexpand\ifthispageodd{%
            \def\noexpand\cap@left{\noexpand\hspace*{\the\@tempdimc}}%
            \def\noexpand\cap@right{\noexpand\hspace*{\the\@tempdimb}}%
          }{%
            \def\noexpand\cap@right{\noexpand\hspace*{\the\@tempdimc}}%
            \def\noexpand\cap@left{\noexpand\hspace*{\the\@tempdimb}}%
          }%
        \noexpand\else
          \def\noexpand\cap@left{\noexpand\hspace*{\the\@tempdimc}}%
          \def\noexpand\cap@right{\noexpand\hspace*{\the\@tempdimb}}%
        \noexpand\fi
      }%
    \@tempa
  }%
}
\newcommand*{\@@setcapmargin}[2][\@tempdimb]{%
  \def\cap@margin{%
    \onelinecaptionsfalse
    \begingroup
      \setlength{\@tempdima}{\hsize}%
      \setlength{\@tempdimb}{#2}%
      \addtolength{\@tempdima}{-\@tempdimb}%
      \setlength{\@tempdimc}{#1}%
      \addtolength{\@tempdima}{-\@tempdimc}%
      \edef\@tempa{\endgroup
        \def\noexpand\cap@width{\the\@tempdima}%
        \def\noexpand\cap@left{\noexpand\hspace*{\the\@tempdimc}}%
        \def\noexpand\cap@right{\noexpand\hspace*{\the\@tempdimb}}%
      }%
    \@tempa
  }%
}
\AfterPackage{caption2}{%
  \renewcommand*{\@setcapmargin}[2][\@tempdimb]{%
    \setlength{\@tempdimb}{#2}%
    \setlength{\@tempdima}{#1}%
    \ifdim\@tempdima\@tempdimb\else
      \ClassWarning{\KOMAClassName}{%
        Can set only centered caption!\MessageBreak
        You're using package `caption2'.\MessageBreak
        Because of this you should also use
        `\string\setcaptionmargin'\MessageBreak
        instead of `\string\setcapmargin'%
      }%
    \fi
    \addtolength{\@tempdimb}{\@tempdimb}%
    \setcaptionmargin{.5\@tempdimb}}%
  \let\@@setcapmargin=\@setcapmargin
}
\newcommand{\@@makecaption}[3]{%
  \cap@margin
  \ifonelinecaptions
    \@tempcnta=\value{mpfootnote}\@tempcntb=\value{footnote}%
    \let\scr@tmp@footnotetext=\@footnotetext
    \let\@footnotetext=\@gobble
    \sbox\@tempboxa{%
      {\usekomafont{caption}{\strut\ignorespaces
        #1{{\usekomafont{captionlabel}{#2\captionformat}}}%
        #3\unskip\strut}}%
    }%
    \let\@footnotetext=\scr@tmp@footnotetext
    \let\scr@tmp@footnotetext=\undefined
    \setcounter{footnote}{\@tempcntb}%
    \setcounter{mpfootnote}{\@tempcnta}%
  \else
    \sbox\@tempboxa{\hspace*{2\cap@width}}%
  \fi
  \begingroup%
    \setlength{\@tempdima}{\cap@width}%
    \ifdim \wd\@tempboxa >\@tempdima
      \hb@xt@\hsize{%
        \setbox\@tempboxa\vbox{\hsize=\cap@width
          \ifdofullc@p
            {\usekomafont{caption}{\@hangfrom{\scr@smashdp{\strut\ignorespaces
                  #1{{\usekomafont{captionlabel}{#2\captionformat}}}}}%
              {#3\unskip\strut\par}}}%
          \else%
            \ifdim\cap@indent<\z@
              {\usekomafont{caption}{\strut\ignorespaces
                #1{{\usekomafont{captionlabel}{#2\captionformat\par}}}%
                \noindent\hspace*{-\cap@indent}#3\unskip\strut\par}}%
            \else%
              \if@capbreak
                {\usekomafont{caption}{\strut\ignorespaces
                  #1{{\usekomafont{captionlabel}{#2\captionformat\par}}}%
                  \noindent\@hangfrom{\hspace*{\cap@indent}}{#3\par}}}%
              \else
                {\usekomafont{caption}{%
                    \@hangfrom{\scr@smashdp\strut\hspace*{\cap@indent}}%
                  {\hspace{-\cap@indent}\scr@smashdp{\ignorespaces#1%
                    {{\usekomafont{captionlabel}{%
                          #2\captionformat}}}}#3\unskip\strut\par}}}%
              \fi
            \fi
          \fi
        }%
        \setlength{\@tempdima}{\ht\@tempboxa}%
        \addtolength{\@tempdima}{\dp\@tempboxa}%
        \addtolength{\@tempdima}{-\ht\strutbox}%
        \ht\@tempboxa\ht\strutbox
        \dp\@tempboxa\@tempdima
        \strut\cap@left
        \box\@tempboxa
        \cap@right\strut
      }%
    \else
      \global \@minipagefalse
      \sbox\@tempboxa{%
        {\usekomafont{caption}{\scr@smashdp{\strut\ignorespaces
          #1{{\usekomafont{captionlabel}{#2\captionformat}}}}%
          #3}}%
      }%
      {\usesizeofkomafont{caption}{%
          \hb@xt@\hsize{\strut\cap@left\box\@tempboxa\cap@right\strut}}}%
    \fi
  \endgroup
}
\newcommand*{\scr@caption@before@longtable@warning}[1]{%
  \ClassWarning{\KOMAClassName}{%
    you've loaded package `#1' before package\MessageBreak
    `longtable'!\MessageBreak
    Because of this package `#1' isn't able to\MessageBreak
    control `\string\caption' at longtables. \space After loading
    \MessageBreak
    package `#1' KOMA-Script also doesn't control\MessageBreak
    `\string\caption'.\MessageBreak
    I think, you should load package `caption' after\MessageBreak
    package `longtable'%
  }%
}
\AfterPackage{longtable}{%
  \@ifpackageloaded{caption2}{\@komalongtablefalse
    \scr@caption@before@longtable@warning{caption2}%
  }{}%
  \if@komalongtable
    \renewcommand{\LT@makecaption}[3]{%
      \noalign{%
        \if@captionabove
          \vskip\belowcaptionskip
        \else
          \vskip\abovecaptionskip
        \fi
      }%
      \LT@mcol\LT@cols c{%
        \hbox to\z@{\hss\parbox[t]\linewidth{%
            \@@makecaption{#1}{#2}{#3}%
            \endgraf
            \if@captionabove
              \vskip\abovecaptionskip
            \else
              \vskip\belowcaptionskip
            \fi
          }%
          \hss
        }%
      }%
    }%
    \newcommand*{\scr@LT@array}{}%
    \let\scr@LT@array=\LT@array
    \renewcommand*{\LT@array}{%
      \let\scr@caption=\LT@caption
      \def\captionabove{\noalign{\global\@captionabovetrue}%
        \scr@caption}%
      \def\captionbelow{\noalign{\global\@captionabovefalse}%
        \scr@caption}%
      \if@tablecaptionabove
        \let\LT@caption=\captionabove
      \else
        \let\LT@caption=\captionbelow
      \fi
      \scr@LT@array
    }%
    \ClassInfo{\KOMAClassName}{%
      longtable captions redefined%
    }%
  \fi
}
\newcommand*{\fs@komaabove}{%
  \let\@fs@capt\floatc@komascript
  \let\@fs@pre\@empty
  \def\@fs@mid{\vskip\abovecaptionskip}%
  \let\@fs@post\@empty
  \let\@fs@iftopcapt\iftrue}
\newcommand*{\fs@komabelow}{%
  \let\@fs@capt\floatc@komascript
  \let\@fs@pre\@empty
  \def\@fs@mid{\vskip\abovecaptionskip}%
  \let\@fs@post\@empty
  \let\@fs@iftopcapt\iffalse}
\newcommand{\floatc@komascript}{\@@makecaption\@firstofone}
\setcounter{topnumber}{2}
\renewcommand*\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand*\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand*\textfraction{.2}
\renewcommand*\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand*\dbltopfraction{.7}
\renewcommand*\dblfloatpagefraction{.5}
\newcommand*{\captionof}[1]{\def\@captype{#1}%
  \begingroup\expandafter\expandafter\expandafter\endgroup
  \expandafter\ifx\csname if@#1captionabove\endcsname\iftrue
    \@captionabovetrue
  \fi
  \scr@caption}
\newcommand*{\captionaboveof}{\@captionabovetrue\captionof}
\newcommand*{\captionbelowof}{\@captionabovefalse\captionof}
\BeforePackage{capt-of}{\let\captionof\relax}
\newenvironment{captionofbeside}[1]{%
  \def\@captype{#1}%
  \captionbeside
}{%
  \endcaptionbeside
}
\newcommand*\figurename{Figure}
\newcommand*\tablename{Table}
\newcounter{figure}[chapter]
\renewcommand*\thefigure{%
  \thechapter.%
  \@arabic\c@figure
}
\newcommand*{\figureformat}{%
  \figurename~\thefigure%
  \autodot%
}
\newcommand*{\fps@figure}{tbp}
\newcommand*{\ftype@figure}{1}
\newcommand*{\ext@figure}{lof}
\newcommand*{\fnum@figure}{\figureformat}
\newenvironment{figure}{%
  \if@figurecaptionabove\let\caption\captionabove
  \else\let\caption\captionbelow\fi
  \@float{figure}%
}{%
  \end@float
}
\newenvironment{figure*}{%
  \if@figurecaptionabove\let\caption\captionabove
  \else\let\caption\captionbelow\fi
  \@dblfloat{figure}%
}{%
  \end@dblfloat
}
\newcounter{table}[chapter]
\renewcommand*\thetable{%
  \thechapter.%
  \@arabic\c@table
}
\newcommand*{\tableformat}{%
  \tablename~\thetable%
  \autodot%
}
\newcommand*{\fps@table}{tbp}
\newcommand*{\ftype@table}{2}
\newcommand*{\ext@table}{lot}
\newcommand*{\fnum@table}{\tableformat}
\newenvironment{table}{%
  \if@tablecaptionabove\let\caption\captionabove
  \else\let\caption\captionbelow\fi
  \@float{table}%
}{%
  \end@float
}
\newenvironment{table*}{%
  \if@tablecaptionabove\let\caption\captionabove
  \else\let\caption\captionbelow\fi
  \@dblfloat{table}%
}{%
  \end@dblfloat
}
%%% From File: $Id: scrkernel-footnotes.dtx 2180 2015-08-24 09:28:16Z kohm $
\renewcommand*\footnoterule{%
  \normalsize\ftn@rule@test@values
  \kern-\dimexpr 2.6\p@+\ftn@rule@height\relax
  \ifx\@textbottom\relax\else\vskip \z@ \@plus.05fil\fi
  {\usekomafont{footnoterule}{%
      \hrule \@height\ftn@rule@height \@width\ftn@rule@width}}%
  \kern 2.6\p@}
\newcommand*{\ftn@rule@test@values}{%
  \ifdim\ftn@rule@height <\z@
    \ClassWarning{\KOMAClassName}{%
      You might get into trouble, because the\MessageBreak
      height of the footnote rule has a value\MessageBreak
      less than 0%
    }%
  \else
    \ifdim\ftn@rule@height >\dimexpr\skip\footins -2.6\p@\relax
      \ClassWarning{\KOMAClassName}{%
        You might get into trouble, because the\MessageBreak
        height of the footnote rule has a value\MessageBreak
        greater than \the\dimexpr\skip\footins -2.6\p@\relax
      }%
    \fi
  \fi
  \ifdim\ftn@rule@width <\z@
    \ClassWarning{\KOMAClassName}{%
      You might get into trouble, because the width\MessageBreak
      or length of the footnote rule has a value\MessageBreak
      less than 0pt%
    }%
  \else
    \ifdim\ftn@rule@width >\columnwidth
      \ClassWarning{\KOMAClassName}{%
        You might get into trouble, because the width\MessageBreak
        or length of the footnote rule has a value\MessageBreak
        greater than \string\columnwidth
      }%
    \fi
  \fi
}
\newkomafont{footnoterule}{}
\newcommand*{\ftn@rule@width}{.4\columnwidth}
\newcommand*{\ftn@rule@height}{.4\p@}
\newcommand*{\setfootnoterule}[2][]{%
  \ifstr{#1}{}{}{%
    \renewcommand*{\ftn@rule@height}{#1}%
  }%
  \ifstr{#2}{}{}{%
    \renewcommand*{\ftn@rule@width}{#2}%
  }%
  \ftn@rule@test@values
}
\@addtoreset{footnote}{chapter}
\newcommand\deffootnote[4][]{%
  \long\def\@makefntext##1{%
    \setlength{\@tempdimc}{#3}%
    \def\@tempa{#1}\ifx\@tempa\@empty
      \@setpar{\@@par
        \@tempdima = \hsize
        \addtolength{\@tempdima}{-#2}%
        \parshape \@ne #2 \@tempdima}%
    \else
      \addtolength{\@tempdimc}{#2}%
      \addtolength{\@tempdimc}{-#1}%
      \@setpar{\@@par
        \@tempdima = \hsize
        \addtolength{\@tempdima}{-#1}%
        \@tempdimb = \hsize
        \addtolength{\@tempdimb}{-#2}%
        \parshape \tw@ #1 \@tempdima #2 \@tempdimb
      }%
    \fi
    \par
    \parindent\@tempdimc\noindent
    \ftn@font\hbox to \z@{\hss\@@makefnmark}##1%
  }%
  \def\@@makefnmark{\hbox{\ftnm@font{#4}}}%
}
\newcommand*{\ftn@font}{\normalfont}
\newcommand*{\scr@fnt@footnote}{\ftn@font}
\newcommand*{\ftnm@font}{}
\newcommand*{\scr@fnt@footnotenumber}{\ftnm@font}
\newcommand*{\scr@fnt@footnotelabel}{\ftnm@font}
\newcommand*{\scr@fnt@instead@footnotetext}{footnote}
\newcommand*\deffootnotemark[1]{%
  \def\@makefnmark{\hbox{\ftntm@font{#1}}}%
}
\newcommand*{\ftntm@font}{}
\newcommand*{\scr@fnt@footnotereference}{\ftntm@font}
\newcommand*{\scr@fnt@footnoteref}{\ftntm@font}
\newcommand*{\FN@mf@check}{%
  \ifdim\lastkern=\multiplefootnotemarker\relax
    \edef\@x@sf{\the\spacefactor}%
    \unkern\multiplefootnoteseparator
    \spacefactor\@x@sf\relax
  \fi
}
\newcommand*{\scr@mf@prepare}{%
  \kern-\multiplefootnotemarker
  \kern\multiplefootnotemarker\relax
}
\@ifundefined{FN@mf@prepare}{}{}
\newcommand{\scr@saved@footnotetext}{}
\let\scr@saved@footnotetext\@footnotetext
\renewcommand{\@footnotetext}[1]{%
  \scr@saved@footnotetext{#1}%
  \csname FN@mf@prepare\endcsname
}
\BeforePackage{footmisc}{%
  \ifx\@footnotemark\scr@footnotemark
    \let\@footnotemark\scr@saved@footnotemark
  \fi
  \let\@footnotetext\scr@saved@footnotetext
}
\BeforePackage{setspace}{%
  \let\@footnotetext\scr@saved@footnotetext
}
\AfterPackage{setspace}{%
  \let\scr@saved@footnotetext\@footnotetext
  \renewcommand{\@footnotetext}[1]{%
    \scr@saved@footnotetext{#1}%
    \csname FN@mf@prepare\endcsname
  }%
}
\newcommand*{\multiplefootnoteseparator}{%
  \begingroup\let\thefootnotemark\multfootsep\@makefnmark\endgroup
}
\newcommand*{\multfootsep}{,}
\newcommand*{\multiplefootnotemarker}{3sp}
\newcommand*{\thefootnotemark}{\@thefnmark}
\deffootnote[1em]{1.5em}{1em}{\textsuperscript{\thefootnotemark}}
\deffootnotemark{\textsuperscript{\thefootnotemark}}
\newcommand*{\footref}[1]{%
  \begingroup
    \unrestored@protected@xdef\@thefnmark{\ref{#1}}%
  \endgroup
  \@footnotemark
}
%%% From File: $Id: scrkernel-listsof.dtx 2206 2015-09-27 08:08:34Z kohm $
\doforeachtocfile[float]{%
  \setuptoc{\@currext}{chapteratlist}%
}
\AtAddToTocList[float]{%
  \setuptoc{\@currext}{chapteratlist}%
}
\renewcommand*{\numberline}[1]{%
  \numberline@box{%
    \numberline@prefix
    \ifstr{#1}{}{#1}{\numberline@numberformat{#1}}%
    \numberline@postfix
  }%
}
\newcommand*{\numberline@prefix}{}
\newcommand*{\numberline@postfix}{\hfil}
\newcommand*{\numberline@numberformat}[1]{\ifstr{#1}{}{}{#1\autodot}}
\newcommand*{\numberline@box}[1]{\hb@xt@\@tempdima{#1}}
\newcommand*\@pnumwidth{1.55em}
\newcommand*\@tocrmarg {2.55em}
\newcommand*\@dotsep{4.5}
\newcommand*{\scr@dottedtocline}{}
\newcommand*{\last@l@number}{}
\newcommand*{\@l@number}{}
\newcommand*{\set@l@number}[1]{%
  \settowidth{\@tempdima}{#1\enskip}%
  \ifdim\@tempdima >\@l@number
    \xdef\@l@number{\the\@tempdima}%
  \fi%
  \ifdim\@tempdima >\last@l@number \else
    \setlength{\@tempdima}{\last@l@number}%
  \fi%
}
\newcommand*{\before@starttoc}[1]{
  \let\scr@dottedtocline=\@dottedtocline
  \renewcommand*{\@dottedtocline}[3]{%
    \scr@dottedtocline{##1}{\z@}{\last@l@number}}%
  \renewcommand*{\numberline@box}[1]{%
    \set@l@number{##1}\hb@xt@\@tempdima{##1}}%
  \gdef\@l@number{\z@}%
  \@ifundefined{#1@l@number}{%
    \def\last@l@number{2em}%
  }{%
    \expandafter\ifx\csname #1@l@number\endcsname\@empty
      \let\last@l@number\z@
    \else
      \expandafter\let\expandafter\last@l@number
      \expandafter=\csname#1@l@number\endcsname
    \fi
  }%
}
\newcommand*{\after@starttoc}[1]{%
  \protected@write\@auxout{}{%
    \string\gdef\expandafter\string\csname#1@l@number\endcsname{%
      \@l@number}}%
  }
\g@addto@macro\tocbasic@@before@hook{%
  \if@dynlist\expandafter\before@starttoc\expandafter{\@currext}\fi
}
\g@addto@macro\tocbasic@@after@hook{%
  \if@dynlist\expandafter\after@starttoc\expandafter{\@currext}\fi
}
\newcommand*\contentsname{Contents}
\newcommand*\listoftocname{\contentsname}
\setcounter{tocdepth}{2}
\newcommand*\toc@heading{%
  \ClassWarning{\KOMAClassName}{%
    usage of deprecated \string\toc@heading!\MessageBreak
    You should use the features of package `tocbasic'\MessageBreak
    instead of \string\toc@heading.\MessageBreak
    Definition of \string\toc@heading\space may be removed from\MessageBreak
    KOMA-Script soon, so it should not be used
  }%
  \chapter*{\contentsname}%
  \@mkboth{\MakeMarkcase{\contentsname}}{\MakeMarkcase{\contentsname}}%
}
\newcommand*{\toc@l@number}{}
\newcommand*{\tableofcontents}{%
  \begingroup\let\if@dynlist\if@tocleft\listoftoc{toc}\endgroup
}
\newcommand{\addtocentrydefault}[3]{%
  \tocbasic@addxcontentsline{toc}{#1}{#2}{#3}%
}
\newcommand*{\float@listhead}[1]{%
  \scr@float@listhead@warning
  \float@@listhead{#1}%
  \@mkboth{\MakeMarkcase{#1}}{\MakeMarkcase{#1}}%
  \if@dynlist%
    \newcommand*{\scr@starttoc}{}%
    \let\scr@starttoc=\@starttoc
    \renewcommand*{\@starttoc}[1]{%
      \before@starttoc{##1}\scr@starttoc{##1}\after@starttoc{##1}%
    }%
  \fi
}
\newcommand*{\scr@float@listhead@warning}{%
  \ClassWarning{\KOMAClassName}{%
    \string\float@listhead\space detected!\MessageBreak
    Implementation of \string\float@listhead\space became\MessageBreak
    deprecated in KOMA-Script v3.01 2008/11/14 and\MessageBreak
    has been replaced by several more flexible\MessageBreak
    features of package `tocbasic`.\MessageBreak
    Maybe implementation of \string\float@listhead\space will\MessageBreak
    be removed from KOMA-Script soon.\MessageBreak
    Loading of package `scrhack' may help to\MessageBreak
    avoid this warning, if you are using a\MessageBreak
    a package that still implements the\MessageBreak
    deprecated \string\float@listhead\space interface
  }%
}
\newcommand*{\scr@float@addtolists@warning}{%
  \ClassWarningNoLine{\KOMAClassName}{%
    \string\float@addtolists\space detected!\MessageBreak
    Implementation of \string\float@addtolist\space became\MessageBreak
    deprecated in KOMA-Script v3.01 2008/11/14 and\MessageBreak
    has been replaced by several more flexible\MessageBreak
    features of package `tocbasic`.\MessageBreak
    Since Version 3.12 support for deprecated\MessageBreak
    \string\float@addtolist\space interface has been\MessageBreak
    restricted to only some of the KOMA-Script\MessageBreak
    features and been removed from others.\MessageBreak
    Loading of package `scrhack' may help to\MessageBreak
    avoid this warning, if you are using a\MessageBreak
    a package that still implements the\MessageBreak
    deprecated \string\float@addtolist\space interface
  }%
  \global\let\scr@float@addtolists@warning\relax
}
\newcommand*\listfigurename{List of Figures}
\newcommand*\listoflofname{\listfigurename}
\newcommand*\listoflofentryname{\figurename}
\newcommand*\listtablename{List of Tables}
\newcommand*\listoflotname{\listtablename}
\newcommand*\listoflotentryname{\tablename}
\newcommand*\listoffigures{\listoftoc{lof}}
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*\listoftables{\listoftoc{lot}}
\let\l@table\l@figure
%%% From File: $Id: scrkernel-bibliography.dtx 2144 2015-06-17 15:38:01Z kohm $
\newcommand*\bibname{Bibliography}
\newcommand*{\bibpreamble}{\relax}
\let\bibpreamble\relax
\newcommand{\setbibpreamble}[1]{\def\bibpreamble{#1}}
\newdimen\bibindent
\bibindent=1.5em
\newenvironment{thebibliography}[1]{%
  \if@bib@break@
    \bib@beginhook
  \else
    \ifx\bibpreamble\relax\else\ifx\bibpreamble\@empty\else
        \setchapterpreamble{\bibpreamble}%
    \fi\fi
    \bib@heading
    \bib@beginhook
    \bib@before@hook
  \fi
  \renewcommand{\BreakBibliography}[1]{%
    \@bib@break
    \end{thebibliography}%
    \begingroup ##1\endgroup
    \begin{thebibliography}{#1}
  }%
  \list{%
    \@biblabel{\@arabic\c@enumiv}%
  }{%
    \settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \@openbib@code
    \if@bib@break@
      \edef\@tempa{%
        \noexpand\usecounter{enumiv}%
        \noexpand\setcounter{enumiv}{\the\c@enumiv}%
      }\@tempa
      \no@bib@break
    \else
      \usecounter{enumiv}%
    \fi
    \let\p@enumiv\@empty
    \renewcommand*\theenumiv{\@arabic\c@enumiv}%
  }%
  \sloppy\clubpenalty4000 \widowpenalty4000
  \sfcode`\.=\@m
}{%
  \if@bib@break@
    \def\@noitemerr{%
      \@latex@warning{%
        \string\BreakBibliography\space at begin of `thebibliography'
        environment\MessageBreak
        or following \string\BreakBibliography}%
    }%
  \else
    \def\@noitemerr{%
      \@latex@warning{%
        Empty `thebibliography' environment or
        \string\BreakBibliography\MessageBreak
        before end of `thebibliography' environment}%
    }%
  \fi
  \endlist
  \if@bib@break@
  \else
    \bib@after@hook
    \let\bib@before@hook\@empty
    \let\bib@after@hook\@empty
  \fi
  \bib@endhook
}
\newif\if@bib@break@
\newcommand{\no@bib@break}{\global\let\if@bib@break@\iffalse}
\newcommand*{\@bib@break}{\global\let\if@bib@break@\iftrue}
\newcommand*{\bib@before@hook}{}
\newcommand*{\bib@after@hook}{}
\newcommand{\BreakBibliography}[1]{%
  \ClassWarning{\KOMAClassName}{%
    You've used \string\BreakBibliography\space either outside of\MessageBreak
    the bibliography or `thebibliography' was redefined\MessageBreak
    incompatible, e.g., using a bibliography package.\MessageBreak
    \string\BreakBibliography\space ignored%
  }%
}
\newcommand{\AfterBibliographyPreamble}{\g@addto@macro\bib@before@hook}
\newcommand{\AtEndBibliography}{\g@addto@macro\bib@after@hook}
%%% From File: $Id: scrkernel-index.dtx 2182 2015-08-25 09:10:08Z kohm $
\newcommand*{\index@preamble}{}
\let\index@preamble=\relax
\newcommand{\setindexpreamble}[1]{\def\index@preamble{#1}}
\newcommand*{\idx@heading}{%
  \if@openright\cleardoublepage\else\clearpage\fi%
  \twocolumn[%
    \@chaptertolistsfalse
                  \idx@@heading{\indexname}]%
  \ifidx@leveldown
    \scr@ifundefinedorrelax{@mkright}{%
      \ifx\@mkboth\@gobble\else\markright{\MakeMarkcase{\indexname}}\fi
    }{%
      \@mkright{\MakeMarkcase{\indexname}}%
    }%
  \else
    \scr@ifundefinedorrelax{@mkdouble}{%
      \@mkboth{\MakeMarkcase{\indexname}}{\MakeMarkcase{\indexname}}%
    }{%
      \@mkdouble{\MakeMarkcase{\indexname}}%
    }%
  \fi
}
\newenvironment{theindex}{%
  \if@twocolumn
    \@restonecolfalse
  \else
    \@restonecoltrue
  \fi
  \columnseprule \z@
  \columnsep 35\p@
  \setchapterpreamble{\index@preamble}%
  \idx@heading%
  \ifx\indexpagestyle\@empty\else\thispagestyle{\indexpagestyle}\fi
  \parindent\z@
  \setlength{\parskip}{\z@ \@plus .3\p@}%
  \setlength{\parfillskip}{\z@ \@plus 1fil}%
  \let\item\@idxitem
}{%
  \if@restonecol\onecolumn\else\clearpage\fi
}
\newcommand*\@idxitem{\par\hangindent 40\p@}
\newcommand*\subitem{\@idxitem \hspace*{20\p@}}
\newcommand*\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand*\indexspace{%
  \par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax
}
\newcommand*\indexname{Index}
%%% From File: $Id: scrkernel-listsandtabulars.dtx 2028 2015-03-23 12:19:51Z kohm $
\if@twocolumn
  \setlength{\leftmargini}{2em}
\else
  \setlength{\leftmargini}{2.5em}
\fi
\setlength{\leftmarginii}{2.2em}
\setlength{\leftmarginiii}{1.87em}
\setlength{\leftmarginiv}{1.7em}
\if@twocolumn
  \setlength{\leftmarginv}{.5em}
  \setlength{\leftmarginvi}{.5em}
\else
  \setlength{\leftmarginv}{1em}
  \setlength{\leftmarginvi}{1em}
\fi
\setlength{\leftmargin}{\leftmargini}
\setlength{\labelsep}{.5em}
\setlength{\labelwidth}{\leftmargini}
\addtolength{\labelwidth}{-\labelsep}
\@beginparpenalty=-\@lowpenalty
\@endparpenalty  =-\@lowpenalty
\@itempenalty    =-\@lowpenalty
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\renewcommand*\theenumi{\@arabic\c@enumi}
\renewcommand*\theenumii{\@alph\c@enumii}
\renewcommand*\theenumiii{\@roman\c@enumiii}
\renewcommand*\theenumiv{\@Alph\c@enumiv}
\newcommand*\labelenumi{\theenumi.}
\newcommand*\labelenumii{\theenumii)}
\newcommand*\labelenumiii{\theenumiii.}
\newcommand*\labelenumiv{\theenumiv.}
\renewcommand*\p@enumii{\theenumi}
\renewcommand*\p@enumiii{\p@enumii(\theenumii)}
\renewcommand*\p@enumiv{\p@enumiii\theenumiii}
\newcommand*\labelitemi{\textbullet}
\newcommand*\labelitemii{\normalfont\bfseries\textendash}
\newcommand*\labelitemiii{\textasteriskcentered}
\newcommand*\labelitemiv{\textperiodcentered}
\newenvironment{description}{%
  \list{}{\labelwidth\z@ \itemindent-\leftmargin
    \let\makelabel\descriptionlabel}%
}{%
  \endlist
}
\newcommand*{\descriptionlabel}[1]{%
  \hspace{\labelsep}\descfont #1%
}
\newenvironment{labeling}[2][]{%
  \def\sc@septext{#1}%
  \list{}{\settowidth{\labelwidth}{{%
        \usekomafont{labelinglabel}{#2%
          \usekomafont{labelingseparator}{\sc@septext}}%
      }}%
    \leftmargin\labelwidth \advance\leftmargin by \labelsep
    \let\makelabel\labelinglabel
  }%
}{%
  \endlist
}
\newcommand\labelinglabel[1]{%
  \usekomafont{labelinglabel}{#1\hfil
    \usekomafont{labelingseparator}{\sc@septext}}%
}
\newenvironment{verse}{%
  \let\\=\@centercr
  \list{}{\itemsep=\z@
    \itemindent=-1.5em
    \listparindent=\itemindent
    \rightmargin=\leftmargin
    \advance\leftmargin by1.5em
  }%
  \item\relax
}{%
  \endlist
}
\newenvironment{quotation}{%
  \list{}{\listparindent 1em%
    \itemindent    \listparindent
    \rightmargin   \leftmargin
    \parsep        \z@ \@plus\p@
  }%
  \item\relax
}{%
  \endlist
}
\newenvironment{quote}{%
  \list{}{\rightmargin\leftmargin}%
  \item\relax
}{%
  \endlist
}
\newenvironment{addmargin}{%
  \@tempswafalse\@addmargin
}{%
  \advance\@listdepth\@ne
  \endlist
}
\newenvironment{addmargin*}{%
  \@tempswafalse
  \if@twoside\is@thispageodd[]\ifthispagewasodd\else\@tempswatrue\fi\fi
  \edef\scr@addmargin@startpage{\csname tpo@\scr@tpo\endcsname}%
  \@addmargin
}{%
  \unskip\nobreak\ifthispageodd{}{}%
  \expandafter\ifx\csname tpo@\scr@tpo\endcsname\scr@addmargin@startpage\else
    \ClassWarning{\KOMAClassName}{%
      page break inside `addmargin*' environment.\MessageBreak
      A `addmargin*' environment starting on page
      \scr@addmargin@startpage\MessageBreak
      ends on page \csname tpo@\scr@tpo\endcsname.\MessageBreak
      This will result in potential wrong margins on\MessageBreak
      every other page.\MessageBreak
      So maybe you should change the `addmargin*'\MessageBreak
      environment, that ends%
    }%
  \fi
  \advance\@listdepth\@ne
  \endlist
}
\newcommand*{\@addmargin}[2][\@tempa]{%
  \list{}{%
    \if@tempswa
      \def\@tempa{\leftmargin}%
      \setlength{\leftmargin}{#2}%
      \setlength{\rightmargin}{#1}%
    \else
      \def\@tempa{\rightmargin}%
      \setlength{\rightmargin}{#2}%
      \setlength{\leftmargin}{#1}%
    \fi
    \setlength{\listparindent}{\parindent}%
    \setlength{\itemsep}{\parskip}%
    \setlength{\itemindent}{\z@}%
    \setlength{\topsep}{\z@}%
    \setlength{\parsep}{\parskip}%
    \setlength{\partopsep}{\z@}%
    \let\makelabel\@gobble
    \setlength{\labelwidth}{\z@}%
    \advance\@listdepth\m@ne
  }%
  \item\is@thispageodd@setlabel\nobreak\ignorespaces
}
\newcommand*\descfont{\sffamily\bfseries}
\newcommand*{\scr@fnt@descriptionlabel}{\descfont}
\newkomafont{labelinglabel}{}
\newkomafont{labelingseparator}{}
%%% From File: $Id: scrlogo.dtx 1380 2013-10-01 15:31:55Z mjk $
\@ifundefined{KOMAScript}{%
  \DeclareRobustCommand{\KOMAScript}{\textsf{K\kern.05em O\kern.05em%
      M\kern.05em A\kern.1em-\kern.1em Script}}}{}
\endinput
%%
%% End of file `scrreprt.cls'.
