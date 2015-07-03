%%
%% This is file `tudscrposter.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tudscr-version.dtx  (with options: `class,poster')
%% tudscr-base.dtx  (with options: `class,load')
%% tudscr-layout.dtx  (with options: `class,poster,option')
%% tudscr-misc.dtx  (with options: `class,inherit,execute,poster')
%% tudscr-poster.dtx  (with options: `class,body')
%% tudscr-fields.dtx  (with options: `class,inherit,poster')
%% tudscr-locale.dtx  (with options: `class,inherit,poster')
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
  \@TUDVersion{2015/07/03 v2.05 BETA TUD-KOMA-Script}%
\endgroup%
\providecommand*\tudscrmail{tudscr@gmail.com}
\newcommand*\TUD@ProvidesWrapperClass[3]{%
  \newcommand*\TUDClassName@Parent{#2}%
  \newcommand*\TUDClassName{#1}%
  \ProvidesClass{#1}[%
  2015/07/03 v2.05 BETA TUD-KOMA-Script
    ^^J#3 (#2)%
  ]%
  \TUD@ClassInfo%
}
\providecommand*\TUD@ClassInfo{%
  \typeout{+---------------------------------------------------------------}
  \typeout{| The Corporate Design of Technische Universitaet Dresden}
  \typeout{| Class: \TUDClassName}
  \typeout{| Version: \TUDVersion}
  \typeout{| Author: Falk Hanisch (\tudscrmail)}
  \typeout{| Forum: http://latex.wcms-file3.tu-dresden.de/phpBB3/index.php}
  \typeout{+---------------------------------------------------------------}
}
\NeedsTeXFormat{LaTeX2e}
\TUD@ProvidesWrapperClass{tudscrposter}{tudscrartcl}{poster class}
\@ifundefined{TUDScript}{%
  \DeclareRobustCommand{\TUDScript}{%
    \ifdin{TUD-KOMA-SCRIPT}{%
      \textsf{T\kern.05em U\kern.05em D\kern.1em-\kern.1em}\KOMAScript%
    }\csname xspace\endcsname%
  }%
}{}
%%% From File: tudscr-base.dtx
\RequirePackage{tudscrbase}[\TUDVersion]
%%% From File: tudscr-layout.dtx
\newcommand*\tud@layout@switch{}
\edef\tud@layout@switch{%
  \TUD@numkey@bool,%
  {nocolor}{1},{nocolour}{1},{monochrome}{1},{monochromatic}{1},%
  {lite}{2},{colorlite}{2},{litecolor}{2},{colourlite}{2},{litecolour}{2},%
  {light}{2},{colorlight}{2},{lightcolor}{2},{colourlight}{2},{lightcolour}{2},%
  {pale}{2},{colorpale}{2},{palecolor}{2},{colourpale}{2},{palecolour}{2},%
  {colorbar}{3},{barcolor}{3},{colourbar}{3},{barcolour}{3},%
  {bicolor}{4},{bicolour}{4},{twocolor}{4},{twocolour}{4},%
  {bichrome}{4},{bichromatic}{4},{dichrome}{4},{dichromatic}{4},%
  {color}{5},{colour}{5},%
  {full}{6},{colorfull}{6},{fullcolor}{6},{colourfull}{6},{fullcolour}{6}%
}
\BeforeClass{\TUDClassName@Parent}{\undef{\tud@layout@switch}}
\newcommand*\tud@cdstyle{0}
\TUD@key{cdstyle}[true]{%
  \TUD@set@numkey{cdstyle}{tud@cdstyle}{\tud@layout@switch}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@atdocument\tud@style@set\fi%
  \fi%
}
\TUD@key{style}[true]{\TUDoptions{cdstyle=#1}}
%%% From File: tudscr-misc.dtx
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\TUDClassName@Parent}}
\TUDExecuteOptions{cdstyle=bicolor}
\TUDProcessOptions\relax
\LoadClass{\TUDClassName@Parent}
%%% From File: tudscr-poster.dtx
% §§§ verschieben in Layout?
\newcommand*\tud@cdstyle@set{%
  \ifcase\tud@cdstyle\relax% false
    \footcontent{}%
  \else% !false
    \pagestyle{empty.tudheadings}%
    \footcontent{\tud@foot@poster@left}[\tud@foot@poster@right]%
    \ifcase\tud@cdstyle\relax\or% true
      \TUDoptions{cdhead=nocolor,cdfoot=true}%
    \or% litecolor
      \TUDoptions{cdhead=litecolor,cdfoot=true}%
    \or% barcolor
      \TUDoptions{cdhead=barcolor,cdfoot=true}%
    \else% bicolor/color/full
      \TUDoptions{cdhead=bicolor,cdfoot=bicolor}%
    \fi%
  \fi%
}
\AtBeginDocument{\tud@cdstyle@set}
\newcommand*\tud@foot@line@add[3]{%
  \csgdef{@#1}{\trim@spaces{#2}}%
  \ifx#3\@empty\relax%
    \global\csletcs{@#1@foot}{@#1}%
  \else%
    \csgdef{@#1@foot}{\trim@spaces{#3}}%
  \fi%
}
\newcommand*\tud@foot@line@write[1]{%
  \protected@edef\@tempa{\csuse{@#1@foot}}%
  \ifx\@tempa\@empty\else\newline{\csuse{@#1@foot}}\fi%
}
\newcommand*\tud@foot@poster@left{%
  \ifx\contactname\@empty\else{\tud@head@font@bold\contactname}\newline\fi%
  Technische Universit\"at Dresden%
  \tud@foot@line@write{faculty}%
  \tud@foot@line@write{department}%
  \tud@foot@line@write{institute}%
  \tud@foot@line@write{chair}%
  \tud@foot@line@write{professor}%
}
\newcommand*\tud@foot@poster@right{%
  \def\tud@newline{%
    \ifx\@office\@empty\else\newline\@office\fi%
    \ifx\@telephone\@empty\else\newline\@telephone\fi%
    \ifx\@emailaddress\@empty\else\newline\@emailaddress\fi%
  }%
  \ifpatchable{\@author}{\@latex@warning@no@line}{%
    \let\@tempa\@empty%
  }{%
    \let\@tempa\@author%
  }%
  \@tempswafalse%
  \ifx\@tempa\@empty\else%
    \ifx\authorname\@empty\else%
      {\tud@head@font@bold\authorname}\newline%
    \fi%
    \renewcommand*\tud@split@author[2]{%
      \tud@multiple@fields@store{@author}{##1}%
      \tud@multiple@fields@preset{@author}{*}{##1}%
      \ignorespaces##1\tud@newline%
      \tud@multiple@fields@restore{@author}%
      \tud@multiple@@@split{##2}{\newline}%
    }%
    \noindent\tud@multiple@split{@author}%
    \tud@multiple@fields@restore{@author}%
    \tud@newline%
    \@tempswatrue%
  \fi%
  \ifx\@contactperson\@empty\else%
    \if@tempswa\newline\fi%
    \ifx\contactpersonname\@empty\else%
      {\tud@head@font@bold\contactpersonname}\newline%
    \fi%
    \renewcommand*\tud@split@contactperson[2]{%
      \tud@multiple@fields@store{@contactperson}{##1}%
      \tud@multiple@fields@preset{@contactperson}{*}{##1}%
      \ignorespaces##1\tud@newline%
      \tud@multiple@fields@restore{@contactperson}%
      \tud@multiple@@@split{##2}{\newline}%
    }%
    \noindent\tud@multiple@split{@contactperson}%
    \tud@multiple@fields@restore{@contactperson}%
    \tud@newline%
  \fi%
  \ifx\@webpage\@empty\else\newline\@webpage\fi%
}
% §§§ Befehl fuer tudscrsupervisor und tudscrposter in fields.dtx
\patchcmd{\tud@split@author@list}{authormore}{%
  authormore,office,telephone,emailaddress%
}{}{\tud@patch@wrn{tud@split@author@list}}
%%% From File: tudscr-fields.dtx
\newcommand*\@faculty@foot{}
\renewcommand*\faculty[2][\@empty]{\tud@foot@line@add{faculty}{#2}{#1}}
\newcommand*\@department@foot{}
\renewcommand*\department[2][\@empty]{\tud@foot@line@add{department}{#2}{#1}}
\newcommand*\@institute@foot{}
\renewcommand*\institute[2][\@empty]{\tud@foot@line@add{institute}{#2}{#1}}
\newcommand*\@chair@foot{}
\renewcommand*\chair[2][\@empty]{\tud@foot@line@add{chair}{#2}{#1}}
\newcommand*\@professor@foot{}
\renewcommand*\professor[2][\@empty]{\tud@foot@line@add{professor}{#2}{#1}}
% §§§ Trennung von tudscrsupervisor und tudscrposter
\@ifpackageloaded{%
  tudscrsupervisor%
}{}{%
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
          \href{mailto:#2}{#2}%
        \endgroup%
      }%
    }%
  }%
  \newcommand*\tud@multiple@fields@preset[3]{%
    \letcs\@tempa{tud@split#1@list}%
    \let\and\relax%
    \@for\@tempb:=\@tempa\do{%
      \ifx\@tempb\@empty\else%
        \edef\@tempc{\@nameuse{\@tempb}}%
        \ifstr{#2}{*}{%
          \@namedef{@\@tempb}{}%
        }{%
          \begingroup%
            \protected@expandtwoargs\in@{\@tempc}{\@nameuse{#1}}%
            \ifin@%
              \ifcsempty{@\@tempb}{\@tempc{#2}}{}%
            \fi%
          \endgroup%
        }%
      \fi%
    }%
    \begingroup%
      \let\thanks\@gobble%
      \let\footnote\@gobble%
      \sbox\z@{#3}%
    \endgroup%
  }%
  \newcommand*\tud@split@contactperson[2]{}
  \newcommand*\tud@split@contactperson@list{office,telephone,emailaddress}
}
\newcommand*\@webpage{}
\newcommand*\webpage[2][]{\gdef\@webpage{#2}}
\AfterPackage{hyperref}{%
  \renewcommand*\webpage[2][hidelinks]{%
    \gdef\@webpage{%
      \begingroup%
        \hypersetup{#1}%
        \href{#2}{#2}%
      \endgroup%
    }%
  }%
}
%%% From File: tudscr-locale.dtx
\tud@locale@define{\authorname}
\tud@locale@define{\contactname}
\tud@locale@define{\contactpersonname}
\tud@locale@german{\authorname}{Autor}%
\tud@locale@german{\contactname}{Kontakt}%
\tud@locale@german{\contactpersonname}{Ansprechpartner}%
\tud@locale@english{\authorname}{Author}%
\tud@locale@english{\contactname}{Contact}%
\tud@locale@english{\contactpersonname}{Contact}%
\endinput
%%
%% End of file `tudscrposter.cls'.
