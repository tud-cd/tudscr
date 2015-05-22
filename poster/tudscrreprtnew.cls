%%
%% This is file `tudscrreprt.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tudscr-version.dtx  (with options: `class,report')
%% tudscr-base.dtx  (with options: `load')
%% tudscr-fonts.dtx  (with options: `class,option')
%% tudscr-pagestyle.dtx  (with options: `class,report,option')
%% tudscr-layout.dtx  (with options: `class,report,option')
%% tudscr-frontmatter.dtx  (with options: `class,report,option')
%% tudscr-title.dtx  (with options: `class,report,option')
%% tudscr-comp.dtx  (with options: `class,report,option')
%% tudscr-misc.dtx  (with options: `class,report,option')
%% tudscr-misc.dtx  (with options: `class,execute')
%% tudscr-base.dtx  (with options: `class,body')
%% tudscr-fonts.dtx  (with options: `class,body')
%% tudscr-fields.dtx  (with options: `class,body')
%% tudscr-locale.dtx  (with options: `class,report,body')
%% tudscr-pagestyle.dtx  (with options: `class,report,body')
%% tudscr-layout.dtx  (with options: `class,report,body')
%% tudscr-frontmatter.dtx  (with options: `class,report,body')
%% tudscr-title.dtx  (with options: `class,report,body')
%% tudscr-comp.dtx  (with options: `class,report,body')
%% tudscr-misc.dtx  (with options: `class,report,body')
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
  \@TUDVersion{2015/05/18 v2.04 BETA TUD-KOMA-Script}%
\endgroup%
\providecommand*\tudscrmail{tudscr@gmail.com}
\newcommand*\cls@name{report}
\newcommand*\scrcls@name{scrreprt}
\newcommand*\tudcls@name{tudscrreprt}
\NeedsTeXFormat{LaTeX2e}[2011/06/27]
\ProvidesClass{\tudcls@name}[%
  2015/05/18 v2.04 BETA TUD-KOMA-Script
  document class (\cls@name)%
]
\typeout{The Corporate Design of Technische Universitaet Dresden}
\typeout{Class: \tudcls@name}
\typeout{Version: \TUDVersion}
\typeout{Author: Falk Hanisch (\tudscrmail)}
\typeout{http://latex.wcms-file3.tu-dresden.de/phpBB3/index.php}
\@ifundefined{TUDScript}{%
  \DeclareRobustCommand{\TUDScript}{%
    \ifdin{TUD-KOMA-SCRIPT}{%
      \textsf{T\kern.05em U\kern.05em D\kern.1em-\kern.1em}\KOMAScript%
    }\csname xspace\endcsname%
  }%
}{}
%%% From File: tudscr-base.dtx
\RequirePackage{tudscrbase}[\TUDVersion]
%%% From File: tudscr-fonts.dtx
\PreventPackageFromLoading[%
  \ClassWarning{\tudcls@name}{%
    The package `tudscrfonts' must not be used with\MessageBreak%
    a TUD-KOMA-Script class%
  }%
]{tudscrfonts}
\newif\if@tud@univers
\newif\if@tud@dinbold
\newcommand*\tud@univers{lun}
\newcommand*\tud@dinbold{0m6}
\newif\if@tud@fontspec
\TUD@key{fontspec}[true]{%
  \ClassWarning{\tudcls@name}%
  {%
    The option key `fontspec' is deprecated.\MessageBreak%
    You should load the package `fontspec' manually%
  }%
  \TUD@set@ifkey{fontspec}{@tud@fontspec}{#1}%
}
\AtEndOfClass%
{%
  \TUD@key{fontspec}[]%
  {%
    \ClassError{\tudcls@name}%
      {Option `fontspec' too late}{%
      Option `fontspec' can only be set while loading the\MessageBreak%
      class `\tudcls@name'
      but you have tried to set it up later.%
    }%
    \FamilyKeyStateProcessed%
  }%
  \if@tud@fontspec%
    \RequirePackage{fontspec}[2014/06/21]%
  \fi%
}
\AfterPackage*{fontspec}{\@tud@fontspectrue}
\RequirePackage{textcase}[2004/10/07]
\newcommand*\tud@uclcnotmath{%
  \def\footnote##1##{\toks@{\noexpand\footnote##1}\@footnote}%
  \def\@footnote##1{\NoCaseChange{\the\toks@{##1}}}%
  \def\@mkboth##1##2{\NoCaseChange{\@mkboth{##1}{##2}}}%
}
\patchcmd{\@uclcnotmath}{\@nonchangecase\ensuremath}{%
  \@nonchangecase\ensuremath\tud@uclcnotmath
}{}{\tud@patch@wrn{@uclcnotmath}}%
\newcommand*\tud@font@heading{\dinbn\tud@raggedright}
\newcommand*\tud@cdfont{1}
\TUD@key{cdfont}[true]{%
  \TUD@set@numkey{cdfont}{@tempa}{%
    \TUD@numkey@bool,%
    {light}{1},{lightfont}{1},{lite}{1},{litefont}{1},{noheavyfont}{1},%
    {heavy}{2},{heavyfont}{2},%
    {nodin}{3},{nodinbold}{3},{noDIN}{3},{noDINBold}{3},%
    {din}{4},{dinbold}{4},{DIN}{4},{DINBold}{4},%
    {nohead}{5},{nocdhead}{5},{noheadfont}{5},{noheadcdfont}{5},%
    {nocdheadfont}{5},{nobar}{5},{nobarfont}{5},%
    {head}{6},{headfont}{6},{cdhead}{6},{headcdfont}{6},{cdheadfont}{6},%
    {bar}{6},{barfont}{6},%
    {lighthead}{6},{lightheadfont}{6},{lightfonthead}{6},%
    {lightcdhead}{6},{lightheadcdfont}{6},{lightcdheadfont}{6},%
    {lightbar}{6},{lightbarfont}{6},{lightfontbar}{6},%
    {headlight}{6},{headfontlight}{6},{headlightfont}{6},%
    {cdheadlight}{6},{headcdfontlight}{6},{cdheadfontlight}{6},%
    {barlight}{6},{barfontlight}{6},{barlightfont}{6},%
    {litehead}{6},{liteheadfont}{6},{litefonthead}{6},%
    {litecdhead}{6},{liteheadcdfont}{6},{litecdheadfont}{6},%
    {litebar}{6},{litebarfont}{6},{litefontbar}{6},%
    {headlite}{6},{headfontlite}{6},{headlitefont}{6},%
    {cdheadlite}{6},{headcdfontlite}{6},{cdheadfontlite}{6},%
    {barlite}{6},{barfontlite}{6},{barlitefont}{6},%
    {noheavyhead}{6},{noheavyheadfont}{6},{noheavyfonthead}{6},%
    {noheavycdhead}{6},{noheavyheadcdfont}{6},{noheavycdheadfont}{6},%
    {noheavybar}{6},{noheavybarfont}{6},{noheavyfontbar}{6},%
    {headnoheavy}{6},{headfontnoheavy}{6},{headnoheavyfont}{6},%
    {cdheadnoheavy}{6},{headcdfontnoheavy}{6},{cdheadfontnoheavy}{6},%
    {barnoheavy}{6},{barfontnoheavy}{6},{barnoheavyfont}{6},%
    {heavyhead}{7},{heavyheadfont}{7},{heavyfonthead}{7},%
    {heavycdhead}{7},{heavyheadcdfont}{7},{heavycdheadfont}{7},%
    {heavybar}{7},{heavybarfont}{7},{heavyfontbar}{7},%
    {headheavy}{7},{headfontheavy}{7},{headheavyfont}{7},%
    {cdheadheavy}{7},{headcdfontheavy}{7},{cdheadfontheavy}{7},%
    {barheavy}{7},{barfontheavy}{7},{barheavyfont}{7},%
    {nomath}{8},{nocdmath}{8},%
    {serifmath}{8},{serif}{8},{nosansmath}{8},{nosans}{8},%
    {math}{9},{cdmath}{9},{sansmath}{9},{sans}{9},%
    {upgreek}{10},{upright}{10},{uprightgreek}{10},{uprightGreek}{10},%
    {slgreek}{11},{slanted}{11},{slantedgreek}{11},{slantedGreek}{11},%
    {fontspec}{12},{luatex}{12},{lualatex}{12}{xetex}{12},{xelatex}{12},%
    {nofontspec}{13},{nfss}{13},{pdftex}{13},{pdflatex}{13}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \def\tud@cdfont{0}%
      \if@atdocument\tud@font@set\fi%
    \or% true
      \def\tud@cdfont{1}%
      \if@atdocument\tud@font@set\fi%
    \or% heavy
      \def\tud@cdfont{2}%
      \if@atdocument\tud@font@set\fi%
    \or% nodin
      \renewcommand*\tud@font@heading{\tud@RaggedRight}%
    \or% din
      \renewcommand*\tud@font@heading{\dinbn\tud@raggedright}%
    \or% nohead
      \TUDoptions{cdhead=false}%
    \or% head
      \TUDoptions{cdhead=true}%
    \or% heavyhead
      \TUDoptions{cdhead=heavy}%
    \or% nomath
      \TUDoptions{cdmath=false}%
    \or% math
      \TUDoptions{cdmath=true}%
    \or% upgreek
      \TUDoptions{slantedgreek=false}%
    \or% slgreek
      \TUDoptions{slantedgreek=true}%
    \or% fontspec
      \TUDoptions{fontspec=true}%
    \or% nofontspec
      \TUDoptions{fontspec=false}%
    \fi%
  \else%
    \KOMAoptions{fontsize=#1}%
    \ifcase\tud@cdfont\relax% false to true
      \def\tud@cdfont{1}%
      \if@atdocument\tud@font@set\fi%
    \fi%
  \fi%
}
\DefineFamilyMember{KOMA}
\DefineFamilyKey{KOMA}{fontsize}{%
  \AtEndOfFamilyOptions{%
    \tud@ifverlower{2.04}{}{\if@atdocument\tud@font@skip@set\fi}%
  }%
  \FamilyKeyStateProcessed%
}
\bool@lock{@tud@cdmath}
\TUD@key{cdmath}[true]{%
  \TUD@set@numkey{cdmath}{@tempa}{%
    \TUD@numkey@bool,%
    {serifmath}{0},{serif}{0},{nosansmath}{0},{nosans}{0},%
    {sansmath}{1},{sans}{1},%
    {upgreek}{2},{upright}{2},{uprightgreek}{2},{uprightGreek}{2},%
    {slgreek}{3},{slanted}{3},{slantedgreek}{3},{slantedGreek}{3}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \bool@set@lock{@tud@cdmath}{false}%
      \if@atdocument\tud@font@math@set\fi%
    \or% true
      \bool@set@lock{@tud@cdmath}{true}%
      \if@atdocument\tud@font@math@set\fi%
    \or% upgreek
      \TUDoptions{slantedgreek=false}%
    \or% slgreek
      \TUDoptions{slantedgreek=true}%
    \fi%
  \fi%
}
\bool@lock{@tud@slantedgreek}
\TUD@key{slantedgreek}[true]{%
  \TUD@set@ifkey{slantedgreek}{@tud@slantedgreek}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \bool@set@lock{@tud@slantedgreek}{#1}%
    \if@atdocument\tud@font@math@set\fi%
  \fi%
}
\TUD@key{slantedGreek}[true]{\TUDoptions{slantedgreek=#1}}
%%% From File: tudscr-pagestyle.dtx
\newcommand*\tud@ddc@switch{}
\edef\tud@ddc@switch{%
  \TUD@numkey@bool,%
  {color}{2},{colour}{2},{cdcolor}{2},{cdcolour}{2},%
  {colorblack}{3},{colourblack}{3},{cdcolorblack}{3},{cdcolourblack}{3},%
  {gray}{4},{grey}{4},{HKS92}{4},{cdgray}{4},{cdgrey}{4},%
  {black}{5},{cdblack}{5},%
  {blue}{6},{HKS41}{6},{cdblue}{6},{cddarkblue}{6},%
  {white}{7},{cdwhite}{7}%
}
\newcommand*\tud@ddc@save{}
\newif\if@tud@ddc@internal
\newif\if@tud@ddc@autoset
\newcommand*\tud@ddc{0}
\newcommand*\tud@clearpage@iftudps{%
  \if@atdocument\tud@iftudps{\currentpagestyle}{\clearpage}{}\fi%
}
\newcommand*\tud@pagestyle@iftudps{%
  \if@atdocument%
    \tud@iftudps{\currentpagestyle}{%
      \expandafter\pagestyle\expandafter{\currentpagestyle}%
    }{}%
  \fi%
}
\TUD@key{ddc}[true]{%
  \tud@ifverlower{2.04}{\tud@clearpage@iftudps}{}%
  \TUD@set@numkey{ddc}{tud@ddc}{\tud@ddc@switch}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tud@ddc@internal%
      \@tud@ddc@autosetfalse%
    \else%
      \@tud@ddc@internaltrue%
      \TUDoptions{ddchead=false}%
      \TUDoptions{ddcfoot=false}%
      \@tud@ddc@internalfalse%
      \@tud@ddc@autosettrue%
    \fi%
    \global\@tud@head@ddclogo@@settrue%
    \global\@tud@foot@ddclogo@@settrue%
  \fi%
  \tud@ifverlower{2.04}{\tud@pagestyle@iftudps}{}%
}
\newcommand*\tud@ddc@head{0}
\TUD@key{ddchead}[true]{%
  \tud@ifverlower{2.04}{\tud@clearpage@iftudps}{}%
  \TUD@set@numkey{ddchead}{tud@ddc@head}{\tud@ddc@switch}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tud@ddc@internal\else%
      \@tud@ddc@internaltrue%
      \TUDoptions{ddc=false}%
      \TUDoptions{ddcfoot=false}%
      \@tud@ddc@internalfalse%
    \fi%
  \fi%
  \tud@ifverlower{2.04}{\tud@pagestyle@iftudps}{}%
}
\newcommand*\tud@ddc@foot{0}
\TUD@key{ddcfoot}[true]{%
  \tud@ifverlower{2.04}{\tud@clearpage@iftudps}{}%
  \TUD@set@numkey{ddcfoot}{tud@ddc@foot}{\tud@ddc@switch}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tud@ddc@internal\else%
      \@tud@ddc@internaltrue%
      \TUDoptions{ddc=false}%
      \TUDoptions{ddchead=false}%
      \@tud@ddc@internalfalse%
    \fi%
  \fi%
  \tud@ifverlower{2.04}{\tud@pagestyle@iftudps}{}%
}
\newcommand*\tud@ddc@check{%
  \let\@tempa\tud@ddc@head%
  \let\@tempb\tud@ddc@foot%
  \if@tud@ddc@autoset%
    \ifdefvoid{\tud@@headlogo}{%
      \let\@tempa\tud@ddc%
      \let\@tempb\z@%
    }{%
      \let\@tempa\z@%
      \let\@tempb\tud@ddc%
    }%
  \fi%
  \tud@ifverlower{2.03}{%
    \ifcase\@tempb\relax%
      \ifdefvoid{\tud@@footlogo}{}{\let\@tempb\m@ne}%
    \fi%
  }{}%
}
\newcommand*\tud@iftudps[3]{%
  \xifinlist{\GetRealPageStyle{#1}}{\tud@ps@list}{#2}{#3}%
}
\newcommand*\tud@ps@list{}
\forcsvlist{\listadd\tud@ps@list}{%
  tudheadings,plain.tudheadings,empty.tudheadings%
}
\newlength\tud@dim@extrabottommargin
\TUD@key{extrabottommargin}{%
  \TUD@set@lengthkey{extrabottommargin}{\tud@dim@extrabottommargin}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@atdocument\tud@geometry@process\fi%
  \fi%
}
\cs@lock{tud@head@font}{0}
\cs@lock{tud@head@bar}{0}
\bool@lock{@tud@head@widebar}
\TUD@key{cdhead}[true]{%
  \TUD@set@numkey{cdhead}{@tempa}{%
    \TUD@numkey@bool,%
    {nocd}{0},{nocdfont}{0},{nocdfonts}{0},{notudfonts}{0},%
    {cd}{1},{cdfont}{1},{cdfonts}{1},{tudfonts}{1},%
    {light}{1},{lightfont}{1},{lite}{1},{litefont}{1},{noheavyfont}{1},%
    {heavy}{2},{heavyfont}{2},%
    {nocolor}{3},{nocolour}{3},{monochrome}{3},{monochromatic}{3},%
    {colorlite}{4},{litecolor}{4},{colourlite}{4},{litecolour}{4},%
    {colorlight}{4},{lightcolor}{4},{colourlight}{4},{lightcolour}{4},%
    {pale}{4},{colorpale}{4},{palecolor}{4},{colourpale}{4},{palecolour}{4},%
    {colorbar}{5},{barcolor}{5},{colourbar}{5},{barcolour}{5},%
    {bicolor}{6},{bicolour}{6},{twocolor}{6},{twocolour}{6},%
    {bichrome}{6},{bichromatic}{6},{dichrome}{6},{dichromatic}{6},%
    {color}{6},{colour}{6},%
    {full}{6},{colorfull}{6},{fullcolor}{6},{colourfull}{6},{fullcolour}{6},%
    {textwidth}{7},{slim}{7},{slimhead}{7},{nowide}{7},{nowidehead}{7},%
    {paperwidth}{8},{wide}{8},{widehead}{8}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \cs@set@lock{tud@head@font}{0}%
    \or% true
      \cs@set@lock{tud@head@font}{1}%
    \or% heavy
      \cs@set@lock{tud@head@font}{2}%
    \or% nocolor
      \cs@set@lock{tud@head@bar}{0}%
    \or% litecolor
      \cs@set@lock{tud@head@bar}{1}%
    \or% barcolor
      \cs@set@lock{tud@head@bar}{2}%
    \or% color
      \cs@set@lock{tud@head@bar}{3}%
    \or% textwidth
      \bool@set@lock{@tud@head@widebar}{false}%
    \or% paperwidth
      \bool@set@lock{@tud@head@widebar}{true}%
    \fi%
  \fi%
}
\TUD@AfterPackage@Set{scrlayer-scrpage}
\newif\if@tud@foot@colored
\TUD@key{cdfoot}[true]{%
  \TUD@set@numkey{cdfoot}{@tempa}{%
    \TUD@numkey@bool,%
    {nocolor}{2},{nocolour}{2},{monochrome}{2},{monochromatic}{2},%
    {bicolor}{3},{bicolour}{3},{twocolor}{3},{twocolour}{3},%
    {bichrome}{3},{bichromatic}{3},{dichrome}{3},{dichromatic}{3},%
    {color}{3},{colour}{3},%
    {full}{3},{colorfull}{3},{fullcolor}{3},{colourfull}{3},{fullcolour}{3}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \TUD@AfterPackage{scrlayer-scrpage}{%
        \tud@ps@restore{scrheadings}%
        \tud@ps@restore{plain.scrheadings}%
        \tud@font@koma@unset{pageheadfoot}%
      }%
    \or% true
      \TUD@AfterPackage{scrlayer-scrpage}{%
        \tud@ps@store{scrheadings}%
        \tud@ps@store{plain.scrheadings}%
        \tud@font@koma@set{pageheadfoot}{\upshape}%
        \clearpairofpagestyles%
        \ofoot[\pagemark]{%
          \if@twoside\ifodd\value{page}\else\pagemark\quad\fi\fi%
          {\footnotesize\headmark}%
          \if@twoside\ifodd\value{page}\quad\pagemark\fi\else\quad\pagemark\fi%
        }%
      }%
    \or% nocolor
      \@tud@foot@coloredfalse%
    \or% color
      \@tud@foot@coloredtrue%
    \fi%
  \else%
    \TUDoptions{extrabottommargin=#1}%
  \fi%
}
\newcommand*\tud@ps@store[1]{%
  \tud@@ps@store{#1}{odd}{left}{head}%
  \tud@@ps@store{#1}{odd}{right}{head}%
  \tud@@ps@store{#1}{odd}{middle}{head}%
  \tud@@ps@store{#1}{even}{left}{head}%
  \tud@@ps@store{#1}{even}{right}{head}%
  \tud@@ps@store{#1}{even}{middle}{head}%
  \tud@@ps@store{#1}{odd}{left}{foot}%
  \tud@@ps@store{#1}{odd}{right}{foot}%
  \tud@@ps@store{#1}{odd}{middle}{foot}%
  \tud@@ps@store{#1}{even}{left}{foot}%
  \tud@@ps@store{#1}{even}{right}{foot}%
  \tud@@ps@store{#1}{even}{middle}{foot}%
}
\newcommand*\tud@@ps@store[4]{%
  \ifcsdef{@@tud@ps@#1@#2@#3@#4}{}{%
    \csletcs{@@tud@ps@#1@#2@#3@#4}{sls@ps@#1@#2@#3@#4}%
  }%
}
\newcommand*\tud@ps@restore[1]{%
  \tud@@ps@restore{#1}{odd}{left}{head}%
  \tud@@ps@restore{#1}{odd}{right}{head}%
  \tud@@ps@restore{#1}{odd}{middle}{head}%
  \tud@@ps@restore{#1}{even}{left}{head}%
  \tud@@ps@restore{#1}{even}{right}{head}%
  \tud@@ps@restore{#1}{even}{middle}{head}%
  \tud@@ps@restore{#1}{odd}{left}{foot}%
  \tud@@ps@restore{#1}{odd}{right}{foot}%
  \tud@@ps@restore{#1}{odd}{middle}{foot}%
  \tud@@ps@restore{#1}{even}{left}{foot}%
  \tud@@ps@restore{#1}{even}{right}{foot}%
  \tud@@ps@restore{#1}{even}{middle}{foot}%
}
\newcommand*\tud@@ps@restore[4]{%
  \ifcsdef{@@tud@ps@#1@#2@#3@#4}{%
    \csletcs{sls@ps@#1@#2@#3@#4}{@@tud@ps@#1@#2@#3@#4}%
    \csundef{@@tud@ps@#1@#2@#3@#4}%
  }{}%
}
\newcommand*\tud@geometry{0}
\TUD@key@lock{cdgeometry}[true]{%
  \TUD@set@numkey@lock{cdgeometry}{tud@geometry}{%
    \TUD@numkey@bool,%
    {typearea}{0},%
    {cd}{1},{tud}{1},{asymmetric}{1},%
    {symmetric}{2},{centred}{2},{centered}{2},{normal}{2},%
    {twoside}{3},{balanced}{3}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@atdocument\recalctypearea\fi%
  \fi%
}
%%% From File: tudscr-layout.dtx
\cs@lock{tud@layout@cover}{0}
\cs@lock{tud@layout@title}{0}
\cs@lock{tud@layout@part}{0}
\cs@lock{tud@layout@chapter}{0}
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
\newcommand*\tud@cd{0}
\TUD@key{cd}[true]{%
  \TUD@set@numkey{cd}{tud@cd}{\tud@layout@switch}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\tud@cd\relax% false
      \cs@std@lock{tud@layout@cover}{0}%
      \cs@std@lock{tud@layout@title}{0}%
      \cs@std@lock{tud@layout@part}{0}%
      \cs@std@lock{tud@layout@chapter}{0}%
      \TUD@std@ifkey@lock{chapterpage}{false}%
    \or% true
      \cs@std@lock{tud@layout@cover}{1}%
      \cs@std@lock{tud@layout@title}{1}%
      \cs@std@lock{tud@layout@part}{1}%
      \cs@std@lock{tud@layout@chapter}{1}%
      \TUD@std@ifkey@lock{chapterpage}{false}%
    \or% litecolor
      \cs@std@lock{tud@layout@cover}{1}%
      \cs@std@lock{tud@layout@title}{2}%
      \cs@std@lock{tud@layout@part}{2}%
      \cs@std@lock{tud@layout@chapter}{2}%
      \TUD@std@ifkey@lock{chapterpage}{false}%
    \or% barcolor
      \cs@std@lock{tud@layout@cover}{1}%
      \cs@std@lock{tud@layout@title}{3}%
      \cs@std@lock{tud@layout@part}{3}%
      \cs@std@lock{tud@layout@chapter}{3}%
      \TUD@std@ifkey@lock{chapterpage}{false}%
    \or% bicolor
      \cs@std@lock{tud@layout@cover}{1}%
      \cs@std@lock{tud@layout@title}{4}%
      \cs@std@lock{tud@layout@part}{4}%
      \cs@std@lock{tud@layout@chapter}{4}%
      \TUD@std@ifkey@lock{chapterpage}{false}%
    \or% color
      \cs@std@lock{tud@layout@cover}{1}%
      \cs@std@lock{tud@layout@title}{5}%
      \cs@std@lock{tud@layout@part}{5}%
      \cs@std@lock{tud@layout@chapter}{5}%
      \TUD@std@ifkey@lock{chapterpage}{true}%
    \or% full
      \cs@std@lock{tud@layout@cover}{1}%
      \cs@std@lock{tud@layout@title}{6}%
      \cs@std@lock{tud@layout@part}{6}%
      \cs@std@lock{tud@layout@chapter}{6}%
      \TUD@std@ifkey@lock{chapterpage}{true}%
    \fi%
    \if@atdocument%
      \tud@layout@process%
    \else%
      \ifcase\tud@cd\relax% false
        \TUD@std@numkey@lock{cdgeometry}{false}%
      \else% !false
        \TUD@std@numkey@lock{cdgeometry}{true}%
      \fi%
    \fi%
  \fi%
}
\TUD@key{cdcover}[true]{%
  \TUD@set@numkey{cdcover}{@tempa}{\tud@layout@switch}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \cs@set@lock{tud@layout@cover}{0}%
    \or% true
      \cs@set@lock{tud@layout@cover}{1}%
    \or% litecolor
      \cs@set@lock{tud@layout@cover}{2}%
    \or% barcolor
      \cs@set@lock{tud@layout@cover}{3}%
    \or% bicolor
      \cs@set@lock{tud@layout@cover}{4}%
    \or% color
      \cs@set@lock{tud@layout@cover}{5}%
    \or% full
      \cs@set@lock{tud@layout@cover}{6}%
    \fi%
    \if@atdocument\tud@layout@process\fi%
  \fi%
}
\TUD@key{cdtitle}[true]{%
  \TUD@set@numkey{cdtitle}{@tempa}{\tud@layout@switch}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \cs@set@lock{tud@layout@title}{0}%
    \or% true
      \cs@set@lock{tud@layout@title}{1}%
    \or% litecolor
      \cs@set@lock{tud@layout@title}{2}%
    \or% barcolor
      \cs@set@lock{tud@layout@title}{3}%
    \or% bicolor
      \cs@set@lock{tud@layout@title}{4}%
    \or% color
      \cs@set@lock{tud@layout@title}{5}%
    \or% full
      \cs@set@lock{tud@layout@title}{6}%
    \fi%
    \if@atdocument\tud@layout@process\fi%
  \fi%
}
\TUD@key{cdpart}[true]{%
  \TUD@set@numkey{cdpart}{@tempa}{\tud@layout@switch}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \cs@set@lock{tud@layout@part}{0}%
    \or% true
      \cs@set@lock{tud@layout@part}{1}%
    \or% litecolor
      \cs@set@lock{tud@layout@part}{2}%
    \or% barcolor
      \cs@set@lock{tud@layout@part}{3}%
    \or% bicolor
      \cs@set@lock{tud@layout@part}{4}%
    \or% color
      \cs@set@lock{tud@layout@part}{5}%
    \or% full
      \cs@set@lock{tud@layout@part}{6}%
    \fi%
    \if@atdocument\tud@layout@process\fi%
  \fi%
}
\TUD@key{cdchapter}[true]{%
  \TUD@set@numkey{cdchapter}{@tempa}{\tud@layout@switch}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \cs@set@lock{tud@layout@chapter}{0}%
      \TUD@std@ifkey@lock{chapterpage}{false}%
    \or% true
      \cs@set@lock{tud@layout@chapter}{1}%
      \TUD@std@ifkey@lock{chapterpage}{false}%
    \or% litecolor
      \cs@set@lock{tud@layout@chapter}{2}%
      \TUD@std@ifkey@lock{chapterpage}{false}%
    \or% barcolor
      \cs@set@lock{tud@layout@chapter}{3}%
      \TUD@std@ifkey@lock{chapterpage}{false}%
    \or% bicolor
      \cs@set@lock{tud@layout@chapter}{4}%
      \TUD@std@ifkey@lock{chapterpage}{false}%
    \or% color
      \cs@set@lock{tud@layout@chapter}{5}%
      \TUD@std@ifkey@lock{chapterpage}{true}%
    \or% full
      \cs@set@lock{tud@layout@chapter}{6}%
      \TUD@std@ifkey@lock{chapterpage}{true}%
    \fi%
    \if@atdocument\tud@layout@process\fi%
  \fi%
}
\newif\if@tud@parttitle
\TUD@key{parttitle}[true]{%
  \TUD@set@ifkey{parttitle}{@tud@parttitle}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@atdocument\tud@layout@process\fi%
  \fi%
}
\newif\if@tud@chapterpage
\TUD@key@lock{chapterpage}[true]{%
  \TUD@set@ifkey@lock{chapterpage}{@tud@chapterpage}{#1}%
}
\newcommand*\tud@cleardoublepage{\cleardoubleoddpage}
\TUD@key{cleardoublespecialpage}[true]{%
  \TUD@set@ifkey{cleardoublespecialpage}{@tempswa}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tempswa%
      \def\tud@cleardoublepage{\cleardoubleoddpage}%
    \else%
      \def\tud@cleardoublepage{\null\thispagestyle{empty}\newpage}%
    \fi%
  \else%
    \ifstr{#1}{color}{\TUDoptions{clearcolor=true}}{%
    \ifstr{#1}{colour}{\TUDoptions{clearcolor=true}}{%
    \ifstr{#1}{current}{%
      \def\tud@cleardoublepage{\cleardoubleoddstandardpage}%
      \FamilyKeyStateProcessed%
    }{%
      \AfterPreamble{%
        \ifcsdef{ps@#1}{%
          \def\tud@cleardoublepage{\cleardoubleoddpageusingstyle{#1}}%
        }{%
          \ClassError{\tudcls@name}{`#1' is no valid pagestyle}{%
            You tried to use `#1' as a pagestyle for option\MessageBreak%
            `cleardoublespecialpage', but it was never defined.%
          }%
        }%
      }%
      \FamilyKeyStateProcessed%
    }}}%
  \fi%
}
\newcommand*\tud@cleardoublespecialpage[2][]{%
  \begingroup%
    #2%
    \ifboolexpr{bool {@twoside} and bool {@openright}}{%
      \if@tud@clearcolor%
        \def\@tempa{%
          #1%
          \tud@cleardoublepage%
          \endgroup%
        }%
      \else%
        \def\@tempa{%
          \endgroup%
          #1%
          \tud@cleardoublepage%
        }%
      \fi%
    }{%
      \if@tud@clearcolor\tud@clearcolor@wrn\fi%
      \def\@tempa{%
        \endgroup%
        #1%
      }%
    }%
  \@tempa%
  \@afterindentfalse\@afterheading%
}
\newif\if@tud@clearcolor
\TUD@ifkey{clearcolor}{@tud@clearcolor}
\TUD@ifkey{clearcolour}{@tud@clearcolor}
\newcommand*\tud@font@koma@set[2]{%
  \ifcsdef{tud@font@koma@#1}{}{\addtokomafont{#1}{\@nameuse{tud@font@koma@#1}}}%
  \@namedef{tud@font@koma@#1}{#2\nobreak}%
}
\newcommand*\tud@font@koma@reset[1]{%
  \addtokomafont{#1}{\@nameuse{tud@font@koma@#1}}%
}
\newcommand*\tud@font@koma@unset[1]{%
  \ifcsdef{tud@font@koma@#1}{\@namedef{tud@font@koma@#1}{\relax}}{}%
}
\newcommand*\tud@font@heading@size{}
\AtEndOfClass{\let\tud@font@heading@size\size@part}
\DefineFamilyMember{KOMA}
\DefineFamilyKey{KOMA}{headings}{%
  \AtEndOfFamilyOptions{%
    \let\tud@font@heading@size\size@part%
    \if@atdocument%
      \tud@layout@process%
      \ifcase\tud@layout@part\relax\else% !false
        \tud@font@koma@reset{part}%
        \tud@font@koma@reset{partnumber}%
      \fi%
      \ifcase\tud@layout@chapter\relax\else% !false
        \tud@font@koma@reset{chapter}%
        \tud@font@koma@reset{chapterprefix}%
        \tud@font@koma@reset{section}%
        \tud@font@koma@reset{subsection}%
        \tud@font@koma@reset{subsubsection}%
        \tud@font@koma@reset{minisec}%
      \fi%
    \fi%
  }%
}
%%% From File: tudscr-frontmatter.dtx
\newcommand*\tud@fm@switch{%
  {section}{2},{sect}{2},{sec}{2},{addsec}{2},%
  {chapter}{3},{chap}{3},{addchap}{3},%
  {new}{3},{standard}{3},{heading}{3},%
  {single}{4},{one}{4},{simple}{4},%
  {multiple}{5},{multi}{5},{all}{5},{aggregate}{5},%
  {two}{5},{both}{5},{double}{5},%
  {nofil}{6},{nofill}{6},{novfil}{6},{novfill}{6},%
  {fil}{7},{fill}{7},{vfil}{7},{vfill}{7},%
  {markboth}{8},{mark}{8},%
  {nomarkboth}{9},{nomark}{9},%
  {nottotoc}{10},{notoc}{10},%
  {totoc}{11},{toc}{11},{totoclevelup}{11},{toclevelup}{11},{levelup}{11},%
  {totocleveldown}{12},{tocleveldown}{12},{leveldown}{12},%
  {tocmultiple}{13},{tocmulti}{13},{tocall}{13},{tocaggregate}{13},%
  {totocmultiple}{13},{totocmulti}{13},{totocall}{13},{totocaggregate}{13}%
}
\newcommand*\tud@abstract@level{0}
\cs@lock{tud@abstract@toc}{0}
\newif\if@tud@abstract@multi
\@tud@abstract@multitrue
\newif\if@tud@abstract@fil
\@tud@abstract@filtrue
\newif\if@tud@abstract@markboth
\TUD@key{abstract}[true]{%
  \edef\@tempb{\TUD@numkey@bool,\tud@fm@switch}%
  \TUD@set@numkey{abstract}{@tempa}{\@tempb}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \def\tud@abstract@level{0}%
      \cs@std@lock{tud@abstract@toc}{0}%
    \or% true
      \def\tud@abstract@level{1}%
      \cs@std@lock{tud@abstract@toc}{0}%
    \or% section
      \def\tud@abstract@level{2}%
      \cs@std@lock{tud@abstract@toc}{1}%
    \or% chapter
      \def\tud@abstract@level{3}%
      \cs@std@lock{tud@abstract@toc}{1}%
    \or% single
      \@tud@abstract@multifalse%
    \or% multiple
      \@tud@abstract@multitrue%
    \or% nofil
      \@tud@abstract@filfalse%
    \or% fil
      \@tud@abstract@filtrue%
    \or% markboth
      \@tud@abstract@markbothtrue%
    \or% nomarkboth
      \@tud@abstract@markbothfalse%
    \or% nottotoc
      \cs@set@lock{tud@abstract@toc}{0}%
    \or% totoc
      \ifnum\tud@abstract@toc<\thr@@\relax%
        \cs@set@lock{tud@abstract@toc}{1}%
      \else%
        \cs@set@lock{tud@abstract@toc}{3}%
      \fi%
    \or% totocleveldown
      \ifnum\tud@abstract@toc<\thr@@\relax%
        \cs@set@lock{tud@abstract@toc}{2}%
      \else%
        \cs@set@lock{tud@abstract@toc}{4}%
      \fi%
    \or% totocmutliple
      \ifnum\tud@abstract@toc=\z@\relax%
        \cs@set@lock{tud@abstract@toc}{1}%
      \fi%
      \ifnum\tud@abstract@toc<\thr@@\relax%
        \edef\@tempa{%
          \noexpand\cs@set@lock{tud@abstract@toc}{%
            \the\numexpr\tud@abstract@toc+2\relax%
          }%
        }\@tempa%
      \fi%
    \fi%
  \fi%
}
\newcommand*\tud@declaration@level{1}
\cs@lock{tud@declaration@toc}{0}
\newif\if@tud@declaration@multi
\@tud@declaration@multitrue
\newif\if@tud@declaration@fil
\@tud@declaration@filtrue
\newif\if@tud@declaration@markboth
\TUD@key{declaration}[true]{%
  \edef\@tempb{\TUD@numkey@bool,\tud@fm@switch}%
  \TUD@set@numkey{declaration}{@tempa}{\@tempb}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \def\tud@declaration@level{0}%
      \cs@std@lock{tud@declaration@toc}{0}%
    \or% true
      \def\tud@declaration@level{1}%
      \cs@std@lock{tud@declaration@toc}{0}%
    \or% section
      \def\tud@declaration@level{2}%
      \cs@std@lock{tud@declaration@toc}{1}%
    \or% chapter
      \def\tud@declaration@level{3}%
      \cs@std@lock{tud@declaration@toc}{1}%
    \or% single
      \@tud@declaration@multifalse%
    \or% multiple
      \@tud@declaration@multitrue%
    \or% nofil
      \@tud@declaration@filfalse%
    \or% fil
      \@tud@declaration@filtrue%
    \or% markboth
      \@tud@declaration@markbothtrue%
    \or% nomarkboth
      \@tud@declaration@markbothfalse%
    \or% nottotoc
      \cs@set@lock{tud@declaration@toc}{0}%
    \or% totoc
      \ifnum\tud@declaration@toc<\thr@@\relax%
        \cs@set@lock{tud@declaration@toc}{1}%
      \else%
        \cs@set@lock{tud@declaration@toc}{3}%
      \fi%
    \or% totocleveldown
      \ifnum\tud@declaration@toc<\thr@@\relax%
        \cs@set@lock{tud@declaration@toc}{2}%
      \else%
        \cs@set@lock{tud@declaration@toc}{4}%
      \fi%
    \or% totocmutliple
      \ifnum\tud@declaration@toc=\z@\relax%
        \cs@set@lock{tud@declaration@toc}{1}%
      \fi%
      \ifnum\tud@declaration@toc<\thr@@\relax%
        \edef\@tempa{%
          \noexpand\cs@set@lock{tud@declaration@toc}{%
            \the\numexpr\tud@declaration@toc+2\relax%
          }%
        }\@tempa%
      \fi%
    \fi%
  \fi%
}
%%% From File: tudscr-title.dtx
\newif\if@tud@subjectthesis
\TUD@key@lock{subjectthesis}[true]{%
  \TUD@set@ifkey@lock{subjectthesis}{@tud@subjectthesis}{#1}%
}
%%% From File: tudscr-comp.dtx
\newcommand*\TUD@deprecated@key[2]{%
  \ClassWarning{\tudcls@name}%
  {%
    The option key `#1' is deprecated.\MessageBreak%
    It's recommended to use `#2'\MessageBreak%
    instead%
  }%
  \TUDoptions{#2}%
}
\TUD@key{cdfonts}[true]{%
  \TUD@set@ifkey{cdfonts}{@tempswa}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tempswa%
      \TUD@deprecated@key{cdfonts=#1}{cdfont=true}%
    \else%
      \TUD@deprecated@key{cdfonts=#1}{cdfont=false}%
    \fi%
  \fi%
}
\TUD@key{tudfonts}[true]{%
  \TUD@set@ifkey{tudfonts}{@tempswa}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tempswa%
      \TUD@deprecated@key{tudfonts=#1}{cdfont=true}%
    \else%
      \TUD@deprecated@key{tudfonts=#1}{cdfont=false}%
    \fi%
  \fi%
}
\TUD@key{heavyfont}[true]{%
  \TUD@set@ifkey{heavyfont}{@tempswa}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tempswa%
      \TUD@deprecated@key{heavyfont}{cdfont=heavy}%
    \else%
      \TUD@deprecated@key{heavyfont=#1}{cdfont=true}%
    \fi%
  \fi%
}
\TUD@key{din}[true]{%
  \TUD@set@ifkey{din}{@tempswa}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tempswa%
      \TUD@deprecated@key{din}{cdfont=din}%
    \else%
      \TUD@deprecated@key{din=#1}{cdfont=nodin}%
    \fi%
  \fi%
}
\TUD@key{nodin}[true]{%
  \TUD@set@ifkey{nodin}{@tempswa}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tempswa%
      \TUD@deprecated@key{nodin}{cdfont=nodin}%
    \else%
      \TUD@deprecated@key{nodin=#1}{cdfont=din}%
    \fi%
  \fi%
}
\TUD@key{noDIN}[true]{%
  \TUD@set@ifkey{noDIN}{@tempswa}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tempswa%
      \TUD@deprecated@key{noDIN}{cdfont=nodin}%
    \else%
      \TUD@deprecated@key{noDIN=#1}{cdfont=din}%
    \fi%
  \fi%
}
\TUD@key{sansmath}[true]{%
  \TUD@set@ifkey{sansmath}{@tempswa}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tempswa%
      \TUD@deprecated@key{sansmath}{cdmath=true}%
    \else%
      \TUD@deprecated@key{sansmath=#1}{cdmath=false}%
    \fi%
  \fi%
}
\TUD@key{serifmath}[true]{%
  \TUD@set@ifkey{serifmath}{@tempswa}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tempswa%
      \TUD@deprecated@key{serifmath}{cdmath=false}%
    \else%
      \TUD@deprecated@key{serifmath=#1}{cdmath=true}%
    \fi%
  \fi%
}
\TUD@key{geometry}[true]{\TUD@deprecated@key{geometry=#1}{cdgeometry=#1}}
\TUD@key{barfont}[true]{%
  \TUD@set@numkey{barfont}{@tempa}{%
    \TUD@numkey@bool,%
    {nocd}{0},{nocdfont}{0},{nocdfonts}{0},{notudfonts}{0},%
    {cd}{1},{cdfont}{1},{cdfonts}{1},{tudfonts}{1},%
    {light}{1},{lightfont}{1},{lite}{1},{litefont}{1},{noheavyfont}{1},%
    {heavy}{2},{heavyfont}{2}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \TUD@deprecated@key{barfont=#1}{cdhead=false}%
    \or% true
      \TUD@deprecated@key{barfont=#1}{cdhead=true}%
    \or% heavy
      \TUD@deprecated@key{barfont=#1}{cdhead=heavy}%
    \fi%
  \fi%
}
\TUD@key{widehead}[true]{%
  \TUD@set@ifkey{widehead}{@tempswa}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tempswa%
      \TUD@deprecated@key{widehead}{cdhead=paperwidth}%
    \else%
      \TUD@deprecated@key{widehead=#1}{cdhead=textwidth}%
    \fi%
  \fi%
}
\TUD@key{tudfoot}[true]{%
  \TUD@set@ifkey{tudfoot}{@tempswa}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tempswa%
      \TUD@deprecated@key{tudfoot}{cdfoot=true}%
    \else%
      \TUD@deprecated@key{tudfoot=#1}{cdfoot=false}%
    \fi%
  \fi%
}
\TUD@key{color}[true]{%
  \TUD@set@numkey{color}{@tempa}{%
    \TUD@numkey@bool,%
    {nocolor}{0},{nocolour}{0},{monochrome}{0},{monochromatic}{0},%
    {color}{1},{colour}{1},%
    {lite}{2},{light}{2},{pale}{2},%
    {colorlite}{2},{litecolor}{2},{colourlite}{2},{litecolour}{2},%
    {colorlight}{2},{lightcolor}{2},{colourlight}{2},{lightcolour}{2},%
    {colorpale}{2},{palecolor}{2},{colourpale}{2},{palecolour}{2},%
    {bicolor}{3},{bicolour}{3},{twocolor}{3},{twocolour}{3},%
    {bichrome}{3},{bichromatic}{3},{dichrome}{3},{dichromatic}{3},%
    {full}{4},{colorfull}{4},{fullcolor}{4},{colourfull}{4},{fullcolour}{4}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \TUD@deprecated@key{color=#1}{cd=true}%
    \or% true
      \TUD@deprecated@key{color=#1}{cd=color}%
    \or% litecolor
      \TUD@deprecated@key{color=#1}{cd=pale}%
    \or% bicolor
      \TUD@deprecated@key{color=#1}{cd=bicolor}%
    \or% full
      \TUD@deprecated@key{color=#1}{cd=fullcolor}%
    \fi%
  \fi%
}
\TUD@key{colour}[true]{\TUDoptions{color=#1}}
\newcommand*\tud@v@comp{\tud@v@last}
\TUD@key{tudscrver}[last]{%
  \ifcsvoid{tud@v@#1}{%
    \def\tud@v@comp{0}%
    \ClassWarningNoLine{\tudcls@name}%
    {%
      You have set option `tudscrver' to `#1', but\MessageBreak%
      this value is not supported. Because of this, the\MessageBreak%
      value for `tudscrver' was set to `first'%
    }%
    \FamilyKeyStateProcessed%
  }{%
    \ClassInfoNoLine{\tudcls@name}%
    {%
      Switching compatibility level to `#1'%
    }%
    \edef\tud@v@comp{\@nameuse{tud@v@#1}}%
    \FamilyKeyStateProcessed%
  }%
}
\AtEndOfClass%
{%
  \TUD@key{tudscrver}[]{%
    \ClassError{\tudcls@name}%
    {Option `tudscrver' too late}{%
      Option `tudscrver' can only be set while loading the\MessageBreak%
      class `\tudcls@name'
      but you have tried to set it up later.%
    }%
    \FamilyKeyStateProcessed%
  }%
  \ifcsdef{scr@v@3.17}{%
    \ifnum\scr@compatibility<\@nameuse{scr@v@3.12}\relax%
      \ClassError{\tudcls@name}{%
        KOMA-Script compatibility level too low%
      }{%
        \TUDVersion\space has to be used at least with\MessageBreak%
        KOMA-Script compatibility option `version=v3.12'.%
      }%
    \fi%
  }{%
    \ClassError{\tudcls@name}{%
      KOMA-Script version is outdated%
    }{%
      \TUDVersion\space has to be used at least with KOMA-Script v3.17.%
    }%
  }%
}
\@namedef{tud@v@first}{0}
\@namedef{tud@v@2.02}{0}
\@namedef{tud@v@2.03}{1}
\@namedef{tud@v@2.04}{2}
\@namedef{tud@v@last}{2}
\newcommand*\tud@ifverlower[1]{%
  \ifnum\tud@v@comp<\@nameuse{tud@v@#1}\relax%
    \expandafter\@firstoftwo%
  \else%
    \expandafter\@secondoftwo%
  \fi%
}
%%% From File: tudscr-misc.dtx
\newif\if@tud@symbolheadings
\TUD@key{footnotes}{%
  \TUD@set@numkey{footnotes}{@tempa}{%
    {nosymbolheadings}{0},{numberheadings}{0},%
    {symbolheadings}{1}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% nosymbolheadings
      \@tud@symbolheadingsfalse%
    \or% symbolheadings
      \@tud@symbolheadingstrue%
    \fi%
  \fi%
}
\newif\if@tud@bookmarks
\TUD@ifkey{tudbookmarks}{@tud@bookmarks}
%%% From File: tudscr-misc.dtx
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\scrcls@name}}
\TUDExecuteOptions{cd=true,cdfont=true,tudbookmarks=true}
\TUDProcessOptions\relax
\LoadClass{\scrcls@name}[2015/04/23]
%%% From File: tudscr-base.dtx
\RequirePackage{environ}[2013/04/01]
\AtEndPreamble{%
  \@ifpackageloaded{graphicx}{}{%
    \@ifpackageloaded{graphics}{%
      \ClassWarningNoLine{\tudcls@name}{%
        The package `graphics' was superseded by `graphicx'%
      }%
    }{}%
  }%
  \RequirePackage{graphicx}[1999/02/16]%
  \RequirePackage{tudscrcolor}[\TUDVersion]%
}
\newcommand*\TUD@parameter@defaulthandler[2]{%
  \def\@tempa{#2}%
  \@for\@tempb:=\@tempa\do{%
    \ifx\@tempb\@empty\else%
      \ifstr{\@tempb}{twocolumn}{\def\@tempb{2}}{}%
      \ifxnumber{\@tempb}{%
        \TUD@parameter@set{#1}{columns=\@tempb}%
      }{%
        \TUD@parameter@set{#1}{language=\@tempb}%
      }%
    \fi%
  }%
}
\cs@lock{tud@multicols}{1}
\newcommand*\tud@multicols@check{%
  \ifdef{\multicols}{}{%
    \ifnum\tud@multicols>\@ne\relax%
      \ClassWarning{\tudcls@name}{%
        The option `columns=\tud@multicols' is only supported,\MessageBreak%
        when package `multicol' is loaded%
      }%
      \cs@set@lock{tud@multicols}{1}%
    \fi%
  }%
}
%%% From File: tudscr-fonts.dtx
\newcommand*\tud@font@greek@loop[1]{%
  \@for\@tempa:={%
    Gamma,Delta,Theta,Lambda,Xi,Pi,Sigma,Upsilon,Phi,Psi,Omega%
  }\do{#1{\@tempa}}%
}
\newcommand*\tud@font@greek@declare[1]{%
  \edef\@tempb{%
    \noexpand\DeclareMathSymbol{\csname tud@up#1\endcsname}%
      {\noexpand\mathalpha}{operators}{\the\@tempcnta}%
  }\@tempb%
  \edef\@tempb{%
    \noexpand\DeclareMathSymbol{\csname tud@var#1\endcsname}%
      {\noexpand\mathalpha}{letters}{\the\@tempcnta}%
  }\@tempb%
  \csletcs{tud@#1}{tud@up#1}%
  \advance \@tempcnta by 1%
}
\@tempcnta=\z@
\tud@font@greek@loop\tud@font@greek@declare
\newcommand*\tud@font@check{%
  \if@tud@fontspec%
    \edef\@tempa{%
      \lowercase{\noexpand\IfFileExists{OT1\tud@univers.fd}}%
    }%
    \edef\@tempb{%
      \lowercase{\noexpand\IfFileExists{OT1\tud@dinbold.fd}}%
    }%
    \def\@tempc##1{%
      \ClassInfoNoLine{\tudcls@name}%
      {%
        `##1' fonts for math typesetting not found\MessageBreak%
        Please use one of the installation scripts for the\MessageBreak%
        tudscr-bundle mentioned in the manual%
      }%
    }%
  \else%
    \edef\@tempa{%
      \lowercase{\noexpand\IfFileExists{\encodingdefault\tud@univers.fd}}%
    }%
    \edef\@tempb{%
      \lowercase{\noexpand\IfFileExists{\encodingdefault\tud@dinbold.fd}}%
    }%
    \def\@tempc##1{%
      \@tempswafalse%
      \ifstr{OT1}{\encodingdefault}{\@tempswatrue}{}
      \ifstr{T1}{\encodingdefault}{\@tempswatrue}{}
      \ClassWarningNoLine{\tudcls@name}%
      {%
        `##1' fonts not found for encoding `\encodingdefault'.\MessageBreak%
        \if@tempswa%
          Please use one of the installation scripts for the\MessageBreak%
          tudscr-bundle mentioned in the manual.\MessageBreak%
        \else%
          Please choose a possible encoding (`OT1' or `T1').\MessageBreak%
        \fi%
        A fallback layout is used%
      }%
    }%
  \fi%
  \@tempa{\@tud@universtrue}{\@tempc{Univers}}%
  \@tempb{\@tud@dinboldtrue}{\@tempc{DIN Bold}}%
  \undef\tud@font@check%
}
\newcommand*\tud@font@init{%
  \undef\tud@font@init@fontspec%
  \undef\tud@font@init@nfss%
  \undef\tud@font@init%
}
\newcommand*\tud@font@init@fontspec{%
  \newfontface\univln{Univers Light}[NFSSFamily=UniversLight]%
  \newfontface\univrn{Univers}[NFSSFamily=UniversRegular]%
  \newfontface\univbn{Univers Bold}[NFSSFamily=UniversBold]%
  \newfontface\univxn{Univers Black}[NFSSFamily=UniversBlack]%
  \newfontface\univls{Univers Light Oblique}[NFSSFamily=UniversLightOblique]%
  \newfontface\univrs{Univers Oblique}[NFSSFamily=UniversRegularOblique]%
  \newfontface\univbs{Univers Bold Oblique}[NFSSFamily=UniversBoldOblique]%
  \newfontface\univxs{Univers Black Oblique}[NFSSFamily=UniversBlackOblique]%
  \newcommand*\textuln[1]{{\univln##1}}%
  \newcommand*\texturn[1]{{\univrn##1}}%
  \newcommand*\textubn[1]{{\univbn##1}}%
  \newcommand*\textuxn[1]{{\univxn##1}}%
  \newcommand*\textuls[1]{{\univls##1}}%
  \newcommand*\texturs[1]{{\univrs##1}}%
  \newcommand*\textubs[1]{{\univbs##1}}%
  \newcommand*\textuxs[1]{{\univxs##1}}%
  \newfontface\@dinbn{DIN Bold}[NFSSFamily=DINBold,BoldFont = DIN Bold]%
  \newcommand*\dinbn{\@dinbn\if@tud@dinbold\mathversion{dinbold}\fi}%
  \newcommand*\textdbn[1]{{\dinbn##1}}%
}
\newcommand*\tud@font@init@nfss{%
  \if@tud@univers%
    \newcommand*\univln{\usefont{\encodingdefault}{\tud@univers}{l}{n}}%
    \newcommand*\univrn{\usefont{\encodingdefault}{\tud@univers}{m}{n}}%
    \newcommand*\univbn{\usefont{\encodingdefault}{\tud@univers}{b}{n}}%
    \newcommand*\univxn{\usefont{\encodingdefault}{\tud@univers}{eb}{n}}%
    \newcommand*\univls{\usefont{\encodingdefault}{\tud@univers}{l}{sl}}%
    \newcommand*\univrs{\usefont{\encodingdefault}{\tud@univers}{m}{sl}}%
    \newcommand*\univbs{\usefont{\encodingdefault}{\tud@univers}{b}{sl}}%
    \newcommand*\univxs{\usefont{\encodingdefault}{\tud@univers}{eb}{sl}}%
  \else%
    \newcommand*\univln{}%
    \newcommand*\univrn{}%
    \newcommand*\univbn{}%
    \newcommand*\univxn{}%
    \newcommand*\univls{}%
    \newcommand*\univrs{}%
    \newcommand*\univbs{}%
    \newcommand*\univxs{}%
  \fi%
  \newcommand*\textuln{}%
  \newcommand*\texturn{}%
  \newcommand*\textubn{}%
  \newcommand*\textuxn{}%
  \newcommand*\textuls{}%
  \newcommand*\texturs{}%
  \newcommand*\textubs{}%
  \newcommand*\textuxs{}%
  \DeclareTextFontCommand{\textuln}{\univln}%
  \DeclareTextFontCommand{\texturn}{\univrn}%
  \DeclareTextFontCommand{\textubn}{\univbn}%
  \DeclareTextFontCommand{\textuxn}{\univxn}%
  \DeclareTextFontCommand{\textuls}{\univls}%
  \DeclareTextFontCommand{\texturs}{\univrs}%
  \DeclareTextFontCommand{\textubs}{\univbs}%
  \DeclareTextFontCommand{\textuxs}{\univxs}%
  \if@tud@dinbold%
    \newcommand*\dinbn{%
      \usefont{\encodingdefault}{\tud@dinbold}{b}{n}%
      \mathversion{dinbold}%
    }%
  \else%
    \let\dinbn\sectfont%
  \fi%
  \newcommand*\textdbn{}%
  \DeclareTextFontCommand{\textdbn}{\dinbn}%
}
\newcommand*\cdfont[1]{%
  \@cdfont{#1}%
  \ifx\@tempc\relax\else%
    \ifstr{\@tempc}{dinbn}{\dinbn}{\@nameuse{univ\@tempc}}%
  \fi%
}
\newcommand*\textcdfont[2]{%
  \@cdfont{#1}%
  \ifx\@tempc\relax\else%
    \ifstr{\@tempc}{dinbn}{\textdbn{#2}}{\@nameuse{textu\@tempc}{#2}}%
  \fi%
}
\newcommand*\@cdfont[1]{%
  \tud@trimfontname\@tempa{#1}%
  \ifstr{\@tempa}{univers45}{\def\@tempc{ln}}{%
  \ifstr{\@tempa}{univers55}{\def\@tempc{rn}}{%
  \ifstr{\@tempa}{univers65}{\def\@tempc{bn}}{%
  \ifstr{\@tempa}{univers75}{\def\@tempc{xn}}{%
  \ifstr{\@tempa}{univers45oblique}{\def\@tempc{ls}}{%
  \ifstr{\@tempa}{univers55oblique}{\def\@tempc{rs}}{%
  \ifstr{\@tempa}{univers65oblique}{\def\@tempc{bs}}{%
  \ifstr{\@tempa}{univers75oblique}{\def\@tempc{xs}}{%
  \ifstr{\@tempa}{universoblique45}{\def\@tempc{ls}}{%
  \ifstr{\@tempa}{universoblique55}{\def\@tempc{rs}}{%
  \ifstr{\@tempa}{universoblique65}{\def\@tempc{bs}}{%
  \ifstr{\@tempa}{universoblique75}{\def\@tempc{xs}}{%
  \ifstr{\@tempa}{din}{\def\@tempc{dinbn}}{%
  \ifstr{\@tempa}{din65}{\def\@tempc{dinbn}}{%
    \let\@tempc\relax%
    \PackageWarning{tudscrfonts}{The font `#1' is unknown}%
  }}}}}}}}}}}}}}%
}
\newcommand*\tud@trimfontname[2]{%
  \protected@edef\@tempa{\trim@spaces{#2}}%
  \tud@lowerstring{\@tempa}{\@tempa}%
  \tud@@trimfontname{ }{}%
  \tud@@trimfontname{-}{}%
  \tud@@trimfontname{_}{}%
  \tud@@trimfontname{~}{}%
  \tud@@trimfontname{ce}{}%
  \tud@@trimfontname{ff}{}%
  \tud@@trimfontname{60}{65}%
  \tud@@trimfontname{light}{45}%
  \tud@@trimfontname{regular}{55}%
  \tud@@trimfontname{bold}{65}%
  \tud@@trimfontname{black}{75}%
  \tud@@trimfontname{4545}{45}%
  \tud@@trimfontname{5555}{55}%
  \tud@@trimfontname{6565}{65}%
  \tud@@trimfontname{7575}{75}%
  \tud@@trimfontname{italic}{oblique}%
  \tud@@trimfontname{slanted}{oblique}%
  \let#1\@tempa%
}
\newcommand*\tud@@trimfontname[2]{%
  \def\@tempb##1#1##2\relax{\def\@tempa{##1#2##2}}%
  \@expandtwoargs\in@{#1}{\@tempa}%
  \@whilesw\ifin@\fi{%
    \expandafter\@tempb\@tempa\relax%
    \@expandtwoargs\in@{#1}{\@tempa}%
  }%
}
\newcommand*\mv@univers{}%
\newcommand*\mv@universbold{}%
\newcommand*\mv@dinbold{}%
\newcommand*\tud@font@math@init{%
  \if@tud@fontspec\if@tud@univers\if@tud@dinbold%
    \@ifpackagewith{fontspec}{no-math}{}{%
      \ClassWarningNoLine{\tudcls@name}%
      {%
        It's recommended to load package `fontspec' with\MessageBreak%
        option `no-math'%
      }%
    }%
  \fi\fi\fi%
  \if@tud@univers%
    \DeclareMathVersion{univers}%
    \DeclareMathVersion{universbold}%
    \SetSymbolFont{operators}{univers}{OT1}{\tud@univers}{l}{n}%
    \SetSymbolFont{operators}{universbold}{OT1}{\tud@univers}{b}{n}%
    \SetSymbolFont{letters}{univers}{OML}{\tud@univers}{l}{sl}%
    \SetSymbolFont{letters}{universbold}{OML}{\tud@univers}{b}{sl}%
    \SetSymbolFont{symbols}{univers}{OMS}{\tud@univers}{l}{n}%
    \SetSymbolFont{symbols}{universbold}{OMS}{\tud@univers}{b}{n}%
    \SetSymbolFont{largesymbols}{univers}{OMX}{iwona}{m}{n}%
    \SetSymbolFont{largesymbols}{universbold}{OMX}{iwona}{b}{n}%
    \SetMathAlphabet{\mathcal}{univers}{OMS}{lmsy}{m}{n}%
    \SetMathAlphabet{\mathcal}{universbold}{OMS}{lmsy}{b}{n}%
    \SetMathAlphabet{\mathbf}{univers}{OT1}{\tud@univers}{b}{n}%
    \SetMathAlphabet{\mathbf}{universbold}{OT1}{\tud@univers}{eb}{n}%
    \SetMathAlphabet{\mathsf}{univers}{OT1}{\tud@univers}{l}{n}%
    \SetMathAlphabet{\mathsf}{universbold}{OT1}{\tud@univers}{b}{n}%
    \SetMathAlphabet{\mathit}{univers}{OT1}{\tud@univers}{l}{sl}%
    \SetMathAlphabet{\mathit}{universbold}{OT1}{\tud@univers}{b}{sl}%
    \SetMathAlphabet{\mathtt}{univers}{OT1}{\tud@univers t}{l}{n}%
    \SetMathAlphabet{\mathtt}{universbold}{OT1}{\tud@univers t}{b}{n}%
    \@ifpackageloaded{amsfonts}{%
      \DeclareFontFamily{U}{\tud@univers a}{}%
      \DeclareFontShape{U}{\tud@univers a}{m}{n}{<->cmbras10}{}%
      \SetSymbolFont{AMSa}{univers}{U}{\tud@univers a}{m}{n}%
      \SetSymbolFont{AMSa}{universbold}{U}{\tud@univers a}{m}{n}%
      \DeclareFontFamily{U}{\tud@univers b}{}%
      \DeclareFontShape{U}{\tud@univers b}{m}{n}{<->cmbrbs10}{}%
      \SetSymbolFont{AMSb}{univers}{U}{\tud@univers b}{m}{n}%
      \SetSymbolFont{AMSb}{universbold}{U}{\tud@univers b}{m}{n}%
      \SetMathAlphabet{\mathfrak}{univers}{U}{euf}{m}{n}%
      \SetMathAlphabet{\mathfrak}{universbold}{U}{euf}{b}{n}%
    }{}%
  \fi%
  \if@tud@dinbold%
    \DeclareMathVersion{dinbold}%
    \SetSymbolFont{operators}{dinbold}{OT1}{\tud@dinbold}{b}{n}%
    \SetSymbolFont{letters}{dinbold}{OML}{\tud@dinbold}{b}{sl}%
    \SetSymbolFont{symbols}{dinbold}{OMS}{\tud@dinbold}{b}{n}%
    \SetSymbolFont{largesymbols}{dinbold}{OMX}{iwona}{ebc}{n}%
    \SetMathAlphabet{\mathbf}{dinbold}{OT1}{\tud@dinbold}{b}{n}%
    \SetMathAlphabet{\mathsf}{dinbold}{OT1}{\tud@dinbold}{b}{n}%
    \SetMathAlphabet{\mathit}{dinbold}{OT1}{\tud@dinbold}{b}{sl}%
  \fi%
  \@ifpackageloaded{unicode-math}{%
    \let\tud@font@math@set\relax%
    \bool@set@lock{@tud@cdmath}{false}%
  }{%
    \let\@tempb\relax%
    \let\@tempc\relax%
    \DeclareMathSymbol{\@tempb}{\mathalpha}{letters}{0}%
    \DeclareMathSymbol{\@tempc}{\mathord}{letters}{0}%
    \@tempswafalse%
    \ifnum\Gamma=\@tempb\relax\@tempswatrue\fi%
    \ifnum\Gamma=\@tempc\relax\@tempswatrue\fi%
    \if@tempswa%
      \bool@std@lock{@tud@slantedgreek}{true}%
    \fi%
    \tud@font@greek@loop\tud@font@greek@init%
    \tud@font@math@set%
  }%
  \sbox\z@{\dinbn$ $}%
  \undef\tud@font@math@init%
}
\AtEndPreamble%
{%
  \tud@font@check%
  \if@tud@fontspec%
    \preto\tud@font@init\tud@font@init@fontspec%
  \else%
    \preto\tud@font@init\tud@font@init@nfss%
  \fi%
  \tud@font@init%
  \tud@font@set[nomath]%
  \AtBeginDocument{\tud@font@math@init}%
}
\newcommand*\tud@font@greek@init[1]{%
  \ifcsdef{up#1}{}{%
    \if@tempswa%
      \csletcs{up#1}{tud@up#1}%
    \else%
      \csletcs{up#1}{#1}%
    \fi%
  }%
  \ifcsdef{var#1}{}{%
    \if@tempswa%
      \csletcs{var#1}{#1}%
    \else%
      \csletcs{var#1}{tud@var#1}%
    \fi%
  }%
}
\newif\if@tud@mweights
\AfterPackage*{mweights}{\@tud@mweightstrue}
\newcommand*\tud@font@set[1][]{%
  \if@tud@mweights%
    \ifdef{\bfseries@rm}{}{\edef\bfseries@rm{\bfdefault}}%
    \ifdef{\bfseries@sf}{}{\edef\bfseries@sf{\bfdefault}}%
    \ifdef{\bfseries@tt}{}{\edef\bfseries@tt{\bfdefault}}%
    \ifdef{\mdseries@rm}{}{\edef\mdseries@rm{\mddefault}}%
    \ifdef{\mdseries@sf}{}{\edef\mdseries@sf{\mddefault}}%
    \ifdef{\mdseries@tt}{}{\edef\mdseries@tt{\mddefault}}%
  \fi%
  \ifcase\tud@cdfont\relax% false
    \tud@cmd@restore{rmdefault}%
    \tud@cmd@restore{sfdefault}%
    \tud@cmd@restore{ttdefault}%
    \tud@cmd@restore{bfdefault}%
    \tud@cmd@restore{mddefault}%
    \tud@cmd@restore{itdefault}%
    \tud@cmd@restore{familydefault}%
    \tud@cmd@restore{seriesdefault}%
    \tud@cmd@restore{shapedefault}%
    \if@tud@mweights%
      \tud@cmd@restore{bfseries@rm}%
      \tud@cmd@restore{bfseries@sf}%
      \tud@cmd@restore{bfseries@tt}%
      \tud@cmd@restore{mdseries@rm}%
      \tud@cmd@restore{mdseries@sf}%
      \tud@cmd@restore{mdseries@tt}%
    \fi%
    \bool@std@lock{@tud@cdmath}{false}%
    \cs@std@lock{tud@head@font}{0}%
  \else% true/heavy
    \tud@cmd@store{rmdefault}%
    \tud@cmd@store{sfdefault}%
    \tud@cmd@store{ttdefault}%
    \tud@cmd@store{bfdefault}%
    \tud@cmd@store{mddefault}%
    \tud@cmd@store{itdefault}%
    \tud@cmd@store{familydefault}%
    \tud@cmd@store{seriesdefault}%
    \tud@cmd@store{shapedefault}%
    \if@tud@mweights%
      \tud@cmd@store{bfseries@rm}%
      \tud@cmd@store{bfseries@sf}%
      \tud@cmd@store{bfseries@tt}%
      \tud@cmd@store{mdseries@rm}%
      \tud@cmd@store{mdseries@sf}%
      \tud@cmd@store{mdseries@tt}%
    \fi%
    \bool@std@lock{@tud@cdmath}{true}%
    \cs@std@lock{tud@head@font}{\tud@cdfont}%
    \if@tud@fontspec%
      \ifnum\tud@cdfont=\@ne\relax% true
        \setsansfont{Univers Light}[%
          BoldFont = Univers,%
          ItalicFont = Univers Light Oblique,%
          BoldItalicFont = Univers Oblique,%
        ]%
        \setmonofont{LMMonoLt10-Regular}[%
          BoldFont = LMMono10-Regular,%
          ItalicFont = LMMonoLt10-Oblique,%
          BoldItalicFont = LMMonoSlant10-Regular,%
        ]%
      \else% heavy
        \setsansfont{Univers}[%
          BoldFont = Univers Bold,%
          ItalicFont = Univers Oblique,%
          BoldItalicFont = Univers Bold Oblique,%
        ]%
        \setmonofont{LMMono10-Regular}[%
          BoldFont = LMMonoLt10-Bold,%
          ItalicFont = LMMonoSlant10-Regular,%
          BoldItalicFont = LMMonoLt10-BoldOblique,%
        ]%
      \fi%
    \else%
      \if@tud@univers%
        \renewcommand*\sfdefault{\tud@univers}%
        \renewcommand*\ttdefault{\tud@univers t}%
        \ifnum\tud@cdfont=\@ne\relax% true
          \renewcommand*\bfdefault{m}%
          \renewcommand*\mddefault{l}%
          \if@tud@mweights%
            \def\bfseries@rm{m}%
            \def\bfseries@sf{m}%
            \def\bfseries@tt{m}%
            \def\mdseries@rm{l}%
            \def\mdseries@sf{l}%
            \def\mdseries@tt{l}%
          \fi%
        \else% heavy
          \renewcommand*\bfdefault{b}%
          \renewcommand*\mddefault{m}%
          \if@tud@mweights%
            \def\bfseries@rm{b}%
            \def\bfseries@sf{b}%
            \def\bfseries@tt{b}%
            \def\mdseries@rm{m}%
            \def\mdseries@sf{m}%
            \def\mdseries@tt{m}%
          \fi%
        \fi%
      \fi%
    \fi%
    \renewcommand*\rmdefault{\sfdefault}%
    \renewcommand*\familydefault{\sfdefault}%
    \renewcommand*\seriesdefault{\mddefault}%
    \renewcommand*\shapedefault{\updefault}%
  \fi%
  \if@tud@mweights%
    \edef\rmdef@ult{\rmdefault}%
    \edef\sfdef@ult{\sfdefault}%
    \edef\ttdef@ult{\ttdefault}%
    \edef\bfdef@ult{\bfdefault}%
    \edef\mddef@ult{\mddefault}%
  \fi%
  \tud@ifverlower{2.04}{}{\tud@font@skip@set}%
  \ifstr{#1}{nomath}{}{\tud@font@math@set}%
  \normalfont\selectfont%
  \tud@layout@process%
}
\newcommand*\tud@font@skip@set{%
  \ifcase\tud@cdfont\relax% false
    \tud@skip@restore{smallskipamount}%
    \tud@skip@restore{medskipamount}%
    \tud@skip@restore{bigskipamount}%
    \tud@skip@restore{abovecaptionskip}%
    \tud@skip@restore{belowcaptionskip}%
    \tud@skip@restore{columnsep}%
  \else% true/heavy
    \tud@skip@store{smallskipamount}%
    \tud@skip@store{medskipamount}%
    \tud@skip@store{bigskipamount}%
    \tud@skip@store{abovecaptionskip}%
    \tud@skip@store{belowcaptionskip}%
    \tud@skip@store{columnsep}%
    \tud@font@skip@@set%
  \fi%
}
\newcommand*\tud@font@skip@@set{%
  \setlength{\@tempdimb}{\f@baselineskip}%
  \scr@setlength\smallskipamount{\dimexpr\@tempdimb/4\relax}%
    {\dimexpr\@tempdimb/12\relax}{\dimexpr\@tempdimb/12\relax}%
  \scr@setlength\medskipamount{\dimexpr\@tempdimb/2\relax}%
    {\dimexpr\@tempdimb/6\relax}{\dimexpr\@tempdimb/6\relax}%
  \scr@setlength\bigskipamount{\@tempdimb}%
    {\dimexpr\@tempdimb/3\relax}{\dimexpr\@tempdimb/3\relax}%
  \tud@skip@set\abovecaptionskip{\dimexpr4\@tempdimb/5\relax}%
  \tud@skip@set\belowcaptionskip{\z@}%
  \tud@skip@set\columnsep{1.1\baselineskip}%
}
\newcommand*\tud@font@math@set{%
  \if@tud@univers%
    \if@tud@cdmath%
      \tud@cmd@store{mv@normal}%
      \tud@cmd@store{mv@bold}%
      \let\mv@normal\mv@univers%
      \let\mv@bold\mv@universbold%
      \tud@font@greek@loop\tud@font@greek@set%
    \else%
      \tud@cmd@restore{mv@normal}%
      \tud@cmd@restore{mv@bold}%
      \tud@font@greek@loop\tud@font@greek@reset%
    \fi%
  \fi%
  \if@tud@slantedgreek%
    \tud@font@greek@loop\tud@font@greek@slanted%
  \else%
    \tud@font@greek@loop\tud@font@greek@upright%
  \fi%
  \mathversion{normal}%
}
\newcommand*\tud@font@greek@set[1]{%
  \tud@cmd@store{#1}%
  \tud@cmd@store{up#1}%
  \tud@cmd@store{var#1}%
  \csletcs{#1}{tud@#1}%
  \csletcs{up#1}{tud@up#1}%
  \csletcs{var#1}{tud@var#1}%
}
\newcommand*\tud@font@greek@reset[1]{%
  \tud@cmd@restore{#1}%
  \tud@cmd@restore{up#1}%
  \tud@cmd@restore{var#1}%
}
\newcommand*\tud@font@greek@upright[1]{\csletcs{#1}{up#1}}
\newcommand*\tud@font@greek@slanted[1]{\csletcs{#1}{var#1}}
\newcommand*\tud@head@font@bold{}
\newcommand*\tud@head@font@light{}
\newcommand*\tud@head@font@set{%
  \ifdef{\@raggedtwoe@everyselectfont}{%
    \let\@raggedtwoe@everyselectfont\relax%
    \setlength\spaceskip{\z@}%
    \selectfont%
  }{}%
  \DeclareFixedFont{\tud@head@font@bold}{\encodingdefault}%
    {\sfdefault}{bx}{n}{\tud@head@font@size}%
  \DeclareFixedFont{\tud@head@font@light}{\encodingdefault}%
    {\sfdefault}{\mddefault}{n}{\tud@head@font@size}%
  \@tempswafalse%
  \ifcase\tud@head@font\relax% false
    \ifnum\tud@cdfont>\z@\relax% true/heavy
      \ClassWarning{\tudcls@name}{%
        It isn't possible to use `cdhead=false'\MessageBreak%
        together with `cdfont=true'%
      }%
      \@tempswatrue%
    \fi%
  \else% true/heavy
    \@tempswatrue%
  \fi%
  \if@tempswa% true/heavy
    \if@tud@fontspec%
      \DeclareFixedFont{\tud@head@font@bold}{\encodingdefault}%
        {UniversBold}{m}{n}{\tud@head@font@size}%
      \ifcase\tud@head@font\relax\or% true
        \DeclareFixedFont{\tud@head@font@light}{\encodingdefault}%
          {UniversLight}{m}{n}{\tud@head@font@size}%
      \or% heavy
        \DeclareFixedFont{\tud@head@font@light}{\encodingdefault}%
          {UniversRegular}{m}{n}{\tud@head@font@size}%
      \fi%
    \else%
      \if@tud@univers%
        \DeclareFixedFont{\tud@head@font@bold}{\encodingdefault}%
          {\tud@univers}{b}{n}{\tud@head@font@size}%
        \ifcase\tud@head@font\relax\or% true
          \DeclareFixedFont{\tud@head@font@light}{\encodingdefault}%
            {\tud@univers}{l}{n}{\tud@head@font@size}%
        \or% heavy
          \DeclareFixedFont{\tud@head@font@light}{\encodingdefault}%
            {\tud@univers}{m}{n}{\tud@head@font@size}%
        \fi%
      \fi%
    \fi%
  \fi%
}
\newrobustcmd*\ifdin{%
  \@tempswafalse%
  \@expandtwoargs\in@{DINBold}{\f@family}%
  \ifin@\@tempswatrue\fi%
  \ifx\f@family\tud@dinbold\relax\@tempswatrue\fi%
  \if@tempswa%
    \expandafter\@firstoftwo%
  \else%
    \expandafter\@secondoftwo%
  \fi%
}
\newcommand*\tud@makeuppercase[1]{%
  \ifdin{\begingroup\MakeTextUppercase{#1}\endgroup}{#1}%
  \protect\vphantom{\"A\"O\"U}%
}
\newcommand*\tud@raggedright{\raggedright}
\newcommand*\tud@RaggedRight{\raggedright}
\AfterPackage*{ragged2e}{%
  \ifdef{\LaTeXraggedright}{%
    \renewcommand*\tud@raggedright{\LaTeXraggedright}%
  }{}%
  \renewcommand*\tud@RaggedRight{\RaggedRight}%
}
\AfterPackage*{siunitx}{%
  \providecommand*\lseries{\fontseries{l}\selectfont}
}
%%% From File: tudscr-fields.dtx
\RequirePackage{trimspaces}[2009/09/17]
\newcommand*\@faculty{}
\newcommand*\faculty[2][]{\gdef\@faculty{\trim@spaces{#2}}}
\newcommand*\@department{}
\newcommand*\department[2][]{\gdef\@department{\trim@spaces{#2}}}
\newcommand*\@institute{}
\newcommand*\institute[2][]{\gdef\@institute{\trim@spaces{#2}}}
\newcommand*\@chair{}
\newcommand*\chair[2][]{\gdef\@chair{\trim@spaces{#2}}}
\newcommand*\@extraheadline{}
\newcommand*\extraheadline[1]{\gdef\@extraheadline{\trim@spaces{#1}}}
\newcommand*\@@title{}
\renewcommand*\title[1]{%
  \gdef\@title{#1}%
  \begingroup%
    \let\thanks\@gobble%
    \let\footnote\@gobble%
    \protected@xdef\@@title{\trim@spaces{#1}}%
  \endgroup%
}
\newcommand*\@authormore{}
\newrobustcmd*\authormore[1]{\gdef\@authormore{#1}}
\newcommand*\@thesis{}
\newcommand*\@@thesis{}
\newcommand*\thesis[1]{\tud@thesis{thesis}{#1}}
\newcommand*\tud@thanks{}
\newcommand*\tud@thesis[2]{%
  \begingroup%
    \global\let\tud@thanks\relax%
    \def\thanks##1{\gdef\tud@thanks{##1}}%
    \let\footnote\thanks%
    \sbox\z@{#2}%
    \let\thanks\@gobble%
    \let\footnote\@gobble%
    \tud@lowerstring{\@tempa}{#2}%
    \ifstr{#1}{thesis}{\protected@xdef\@@thesis{#2}}{}%
    \global\let\@tempa\@tempa%
  \endgroup%
  \ifstr{\@tempa}{diss}{\tud@@thesis{#1}{\dissertationname}}{%
  \ifstr{\@tempa}{doctoral}{\tud@@thesis{#1}{\dissertationname}}{%
  \ifstr{\@tempa}{phd}{\tud@@thesis{#1}{\dissertationname}}{%
  \ifstr{\@tempa}{diploma}{\tud@@thesis{#1}{\diplomathesisname}}{%
  \ifstr{\@tempa}{master}{\tud@@thesis{#1}{\masterthesisname}}{%
  \ifstr{\@tempa}{bachelor}{\tud@@thesis{#1}{\bachelorthesisname}}{%
  \ifstr{\@tempa}{student}{\tud@@thesis{#1}{\studentresearchname}}{%
  \ifstr{\@tempa}{project}{\tud@@thesis{#1}{\projectpapername}}{%
  \ifstr{\@tempa}{seminar}{\tud@@thesis{#1}{\seminarpapername}}{%
  \ifstr{\@tempa}{research}{\tud@@thesis{#1}{\researchname}}{%
  \ifstr{\@tempa}{log}{\tud@@thesis{#1}{\logname}}{%
  \ifstr{\@tempa}{report}{\tud@@thesis{#1}{\reportname}}{%
  \ifstr{\@tempa}{internship}{\tud@@thesis{#1}{\internshipname}}{%
    \@namedef{@#1}{#2}%
  }}}}}}}}}}}}}%
}
\newcommand*\tud@@thesis[2]{%
  \ifstr{#1}{subject}{%
    \ifx\@thesis\@empty\else%
      \ClassWarning{\tudcls@name}{Field `thesis' is overwritten by `subject'}%
    \fi%
    \TUD@std@ifkey@lock{subjectthesis}{true}%
  }{%
    \TUD@std@ifkey@lock{subjectthesis}{false}%
  }%
  \ifx\tud@thanks\relax%
    \gdef\@thesis{#2}%
  \else%
    \protected@xdef\@thesis{\noexpand#2\noexpand\thanks{\tud@thanks}}%
  \fi%
  \gdef\@@thesis{#2}%
}
\renewcommand*\subject[1]{\tud@thesis{subject}{#1}}
\newcommand*\@graduation{}
\newcommand*\@graduationabbr{}
\newcommand*\graduation[2][]{%
  \ifxblank{#1}{\gdef\@graduationabbr{}}{\gdef\@graduationabbr{(#1)}}%
  \gdef\@graduation{#2}%
}
\newcommand*\@professor{}
\newcommand*\professor[2][]{\gdef\@professor{#2}}
\newcommand*\@supervisor{}
\newcommand*\supervisor[1]{\gdef\@supervisor{#1}}
\newcommand*\@supporter{}
\newcommand*\supporter[1]{\gdef\@supporter{#1}}
\newcommand*\@company{}
\newcommand*\company[1]{\gdef\@company{#1}}
\newcommand*\@referee{}
\newcommand*\referee[1]{\gdef\@referee{#1}}
\newcommand*\@advisor{}
\newcommand*\advisor[1]{\gdef\@advisor{#1}}
\newcommand*\@matriculationnumber{}
\newrobustcmd*\matriculationnumber[1]{%
  \gdef\@matriculationnumber{#1}%
}
\newcommand*\@matriculationyear{}
\newrobustcmd*\matriculationyear[1]{\gdef\@matriculationyear{#1}}
\newcommand*\@placeofbirth{}
\newrobustcmd*\placeofbirth[1]{\gdef\@placeofbirth{#1}}
\providecommand*\publisher[1]{\publishers{#1}}
\newlength\tud@signatureskip
\setlength\tud@signatureskip{15mm plus 10mm minus 10mm}
\newcommand*\@confirmationclosing{%
  \tud@datecheck%
  \ifx\@date\@empty\else%
    \medskip\noindent%
    \ifx\@place\@empty\else\@place,\nobreakspace\fi\@date%
  \fi%
  \vskip\tud@signatureskip\noindent%
  \begingroup%
    \let\and\hfil%
    \let\thanks\@gobble%
    \let\footnote\@gobble%
    \@author%
    \hfil%
  \endgroup%
}
\newcommand*\confirmationclosing[1]{\gdef\@confirmationclosing{#1}}
\newcommand*\@place{Dresden}
\newcommand*\place[1]{\gdef\@place{#1}}
\newcommand*\printdate[1]{#1}
\BeforePackage{isodate}{\undef\printdate}
\newcommand*\tud@printdate[2]{%
  \ifx\today#2%
    \gdef#1{#2}%
  \else%
    \ifxblank{#2}%
      {\gdef#1{}}%
      {\gdef#1{\printdate{#2}}}%
  \fi%
}
\newcommand*\tud@datecheck{%
  \ifdefvoid{\@duedate}{%
    \ClassWarning{\tudcls@name}{%
      `\string\date' was not given.\MessageBreak%
      Since a thesis is a self-contained work, an end\MessageBreak%
      date should be specified by the author.\MessageBreak%
      Nevertheless, today's date is used%
    }%
  }{%
    \ClassWarning{\tudcls@name}{%
      `\string\date' was not given.\MessageBreak%
      It's substituted by the given due date%
    }%
    \global\let\@date\@duedate%
  }%
  \global\let\tud@datecheck\relax%
}
\newcommand*\@datemore{}
\renewcommand*\date[2][]{%
  \gdef\@datemore{\trim@spaces{#1}}%
  \tud@printdate{\@date}{#2}%
  \global\let\tud@datecheck\relax%
}
\newcommand*\@defensedate{}
\newcommand*\defensedate[1]{\tud@printdate{\@defensedate}{#1}}
\newcommand*\@dateofbirth{}
\newrobustcmd*\dateofbirth[1]{\tud@printdate{\@dateofbirth}{#1}}
\newcommand*\tud@multiple@@split{}%
\newcommand*\tud@multiple@split[1]{%
  \expandafter\ifpatchable\expandafter{\csname#1\endcsname}{%
    \@latex@warning@no@line}{\csuse{#1}\csgdef{#1}{}%
  }{}%
  \def\tud@multiple@@split##1\and##2\relax{%
    \expandafter\csname tud@split#1\endcsname{##1}{##2}%
  }%
  \begingroup%
    \let\and\relax%
    \edef\@tempa{\csname#1\endcsname\and}%
  \expandafter\endgroup%
  \expandafter\tud@multiple@@split\@tempa\relax%
}
\newcommand*\tud@multiple@@@split[2]{%
  \ifx\relax#1\relax%
    \let\@tempb\relax%
  \else%
    \def\@tempb{#2\tud@multiple@@split#1\relax}%
  \fi%
  \@tempb%
}
\newcommand*\tud@multiple@fields@store[2]{%
  \letcs\@tempa{tud@split#1@list}%
  \let\and\relax%
  \@for\@tempb:=\@tempa\do{%
    \ifx\@tempb\@empty\else%
      \ifcsdef{@\@tempb}{\tud@cmd@store{@\@tempb}}{}%
    \fi%
  }%
  \begingroup%
    \let\thanks\@gobble%
    \let\footnote\@gobble%
    \sbox\z@{#2}%
  \endgroup%
}
\newcommand*\tud@multiple@fields@restore[1]{%
  \letcs\@tempa{tud@split#1@list}%
  \let\and\relax%
  \@for\@tempb:=\@tempa\do{%
    \ifx\@tempb\@empty\else%
      \ifcsdef{@\@tempb}{%
        \tud@cmd@restore{@\@tempb}%
        \global\csletcs{@\@tempb}{@\@tempb}%
      }{}%
    \fi%
  }%
}
\newcommand*\tud@split@author[2]{}
\newcommand*\tud@split@author@list{%
  authormore,matriculationyear,enrolmentyear,%
  matriculationnumber,studentid,matriculationid,%
  placeofbirth,birthplace,dateofbirth,birthday,%
}
%%% From File: tudscr-locale.dtx
\newcommand*\tud@locale@define[1]{%
  \providecommand*#1{%
    \ClassError{\tudcls@name}{%
      `\string#1' not defined for language `\languagename'%
    }{%
      Currently the class `\tudcls@name' only supports the\MessageBreak%
      languages german and english an its dialects. You must\MessageBreak%
      define single patterns by yourself, e.g.:\MessageBreak%
      `\string\providecaptionname{\languagename}\string#1{<text>}'\MessageBreak%
      You can send your definitions to \tudscrmail\space in\MessageBreak%
      order to implement support for additional languages.
    }%
  }%
}
\tud@locale@define{\graduationtext}
\tud@locale@define{\supervisorname}
\tud@locale@define{\supervisorothername}
\tud@locale@define{\refereename}
\tud@locale@define{\refereeothername}
\tud@locale@define{\advisorname}
\tud@locale@define{\advisorothername}
\tud@locale@define{\professorname}
\tud@locale@define{\professorothername}
\tud@locale@define{\datetext}
\tud@locale@define{\dateofbirthtext}
\tud@locale@define{\placeofbirthtext}
\tud@locale@define{\defensedatetext}
\tud@locale@define{\matriculationyearname}
\tud@locale@define{\matriculationnumbername}
\tud@locale@define{\coverpagename}
\tud@locale@define{\titlepagename}
\tud@locale@define{\confirmationname}
\tud@locale@define{\confirmationtext}
\tud@locale@define{\blockingname}
\tud@locale@define{\blockingtext}
\tud@locale@define{\listingname}
\tud@locale@define{\listlistingname}
\tud@locale@define{\dissertationname}
\tud@locale@define{\diplomathesisname}
\tud@locale@define{\masterthesisname}
\tud@locale@define{\bachelorthesisname}
\tud@locale@define{\studentresearchname}
\tud@locale@define{\projectpapername}
\tud@locale@define{\seminarpapername}
\tud@locale@define{\researchname}
\tud@locale@define{\logname}
\tud@locale@define{\internshipname}
\tud@locale@define{\reportname}
\newcommand*\tud@locale@german{%
  \providecaptionname{%
    german,ngerman,austrian,naustrian,swissgerman,nswissgerman%
  }%
}
\tud@locale@german{\graduationtext}{zur Erlangung des akademischen Grades}%
\tud@locale@german{\supervisorname}{Betreuer}%
\tud@locale@german{\supervisorothername}{}%
\tud@locale@german{\refereename}{%
  \begingroup%
    \protecting{%
      \global\@tempswafalse%
      \def\and{\global\@tempswatrue}%
      \sbox\z@{\@referee}%
    }%
  \endgroup%
  \if@tempswa%
    Erstgutachter%
  \else%
    Gutachter%
  \fi%
}
\tud@locale@german{\refereeothername}{Zweitgutachter}%
\tud@locale@german{\advisorname}{Fachreferent}%
\tud@locale@german{\advisorothername}{}%
\tud@locale@german{\professorname}{%
  \begingroup%
    \protecting{%
      \global\@tempswafalse%
      \def\and{\global\@tempswatrue}%
      \sbox\z@{\@professor}%
    }%
  \endgroup%
  \if@tempswa%
    Betreuende Hochschullehrer%
  \else%
    Betreuender Hochschullehrer%
  \fi%
}
\tud@locale@german{\professorothername}{}%
\tud@locale@german{\datetext}{Eingereicht am}%
\tud@locale@german{\dateofbirthtext}{Geboren am}%
\tud@locale@german{\placeofbirthtext}{in}%
\tud@locale@german{\defensedatetext}{Verteidigt am}%
\tud@locale@german{\matriculationyearname}{Immatrikulationsjahr}%
\tud@locale@german{\matriculationnumbername}{Matrikelnummer}%
\tud@locale@german{\coverpagename}{Umschlagseite}%
\tud@locale@german{\titlepagename}{Titelblatt}%
\tud@locale@german{\confirmationname}{Selbstst\"andigkeitserkl\"arung}%
\tud@locale@german{\confirmationtext}{%
  Hiermit versichere ich, dass ich die vorliegende
  \ifx\@@thesis\@empty Arbeit \else\@@thesis{} \fi
  \ifx\@@title\@empty\else mit dem Titel \emph{\@@title} \fi
  selbstst\"andig und ohne unzul\"assige Hilfe Dritter verfasst habe. Es
  wurden keine anderen als die in der Arbeit angegebenen Hilfsmittel und
  Quellen benutzt. Die w\"ortlichen und sinngem\"a\ss{} \"ubernommenen
  Zitate habe ich als solche kenntlich gemacht.
  \ifx\@supporter\@empty%
    Es waren keine weiteren Personen an der geistigen Herstellung der
    vorliegenden Arbeit beteiligt.
  \else%
    W\"ahrend der Anfertigung dieser Arbeit wurde ich nur von folgenden
    Personen unterst\"utzt:%
    \begin{quote}\def\and{\newline}\@supporter\end{quote}%
    \noindent Weitere Personen waren an der geistigen Herstellung der
    vorliegenden Arbeit nicht beteiligt.
  \fi%
  Mir ist bekannt, dass die Nichteinhaltung dieser Erkl\"arung zum
  nachtr\"aglichen Entzug des Hochschulabschlusses f\"uhren kann.%
}
\tud@locale@german{\blockingname}{Sperrvermerk}%
\tud@locale@german{\blockingtext}{%
  Diese \ifx\@@thesis\@empty Arbeit \else\@@thesis{} \fi
  \ifx\@@title\@empty\else mit dem Titel \emph{\@@title} \fi
  enth\"alt vertrauliche Informationen\ifx\@company\@empty\else
  , offengelegt durch \emph{\@company}\fi. Ver\"offentlichungen,
  Vervielf\"altigungen und Einsichtnahme~-- auch nur auszugsweise~--
  sind ohne ausdr\"uckliche Genehmigung \ifx\@company\@empty\else
  durch \emph{\@company} \fi nicht gestattet, ebenso wie
  Ver\"offentlichungen \"uber den Inhalt dieser Arbeit. Die
  vorliegende Arbeit ist nur dem Betreuer an der Technischen
  Universit\"at Dresden, den Gutachtern sowie den Mitgliedern des
  Pr\"ufungsausschusses zug\"anglich zu machen.%
}
\tud@locale@german{\listingname}{Quelltext}%
\tud@locale@german{\listlistingname}{Quelltextverzeichnis}%
\tud@locale@german{\dissertationname}{Dissertation}%
\tud@locale@german{\diplomathesisname}{Diplomarbeit}%
\tud@locale@german{\masterthesisname}{Master-Arbeit}%
\tud@locale@german{\bachelorthesisname}{Bachelor-Arbeit}%
\tud@locale@german{\studentresearchname}{Studienarbeit}%
\tud@locale@german{\projectpapername}{Projektarbeit}%
\tud@locale@german{\seminarpapername}{Seminararbeit}%
\tud@locale@german{\researchname}{Forschungsbericht}%
\tud@locale@german{\logname}{Protokoll}%
\tud@locale@german{\internshipname}{Praktikumsbericht}%
\tud@locale@german{\reportname}{Bericht}%
\newcommand*\tud@locale@english{%
  \providecaptionname{%
    american,australian,british,canadian,english,newzealand,UKenglish,USenglish%
  }%
}
\tud@locale@english{\graduationtext}{to achieve the academic degree}%
\tud@locale@english{\supervisorname}{Supervisor}%
\tud@locale@english{\supervisorothername}{}%
\tud@locale@english{\refereename}{%
  \begingroup%
    \protecting{%
      \global\@tempswafalse%
      \def\and{\global\@tempswatrue}%
      \sbox\z@{\@referee}%
    }%
  \endgroup%
  \if@tempswa%
    First referee%
  \else%
    Referee%
  \fi%
}
\tud@locale@english{\refereeothername}{Second referee}%
\tud@locale@english{\advisorname}{Advisor}%
\tud@locale@english{\advisorothername}{}%
\tud@locale@english{\professorname}{%
  \begingroup%
    \protecting{%
      \global\@tempswafalse%
      \def\and{\global\@tempswatrue}%
      \sbox\z@{\@professor}%
    }%
  \endgroup%
  \if@tempswa%
    Supervising professors%
  \else%
    Supervising professor%
  \fi%
}
\tud@locale@english{\professorothername}{}%
\tud@locale@english{\datetext}{Submitted on}%
\tud@locale@english{\dateofbirthtext}{Born on}%
\tud@locale@english{\placeofbirthtext}{in}%
\tud@locale@english{\defensedatetext}{Defended on}%
\tud@locale@english{\matriculationyearname}{Matriculation year}%
\tud@locale@english{\matriculationnumbername}{Matriculation number}%
\tud@locale@english{\coverpagename}{Cover page}%
\tud@locale@english{\titlepagename}{Title page}%
\tud@locale@english{\confirmationname}{Statement of authorship}%
\tud@locale@english{\confirmationtext}{%
  I hereby certify that I have authored this
  \ifx\@@thesis\@empty thesis\else\@@thesis{} \fi
  \ifx\@@title\@empty\else entitled \emph{\@@title} \fi
  independently and without undue assistance from third
  parties. No other than the resources and references
  indicated in this thesis have been used. I have marked
  both literal and accordingly adopted quotations as such.
  \ifx\@supporter\@empty%
    They were no additional persons involved in the spiritual
    preparation of the present thesis.
  \else%
    During the preparation of this thesis I was only supported
    by the following persons:%
    \begin{quote}\def\and{\newline}\@supporter\end{quote}%
    \noindent Additional persons were not involved in the spiritual
    preparation of the present thesis.
  \fi%
  I am aware that violations of this declaration may lead to
  subsequent withdrawal of the degree.%
}
\tud@locale@english{\blockingname}{Restriction note}%
\tud@locale@english{\blockingtext}{%
  This \ifx\@@thesis\@empty thesis \else\@@thesis{} \fi
  \ifx\@@title\@empty\else entitled \emph{\@@title} \fi
  contains confidential data\ifx\@company\@empty\else
  , disclosed by \emph{\@company}\fi. Publications, duplications and
  inspections---even in part---are prohibited without explicit
  permission\ifx\@company\@empty\else\space by \emph{\@company}\fi,
  as well as publications about the content of this thesis.
  This thesis may only be made accessible to the supervisor at
  Technische Universit\"at Dresden, the reviewers and also the
  members of the examination board.%
}
\tud@locale@english{\listingname}{Listing}%
\tud@locale@english{\listlistingname}{List of Listings}%
\tud@locale@english{\dissertationname}{Dissertation}%
\tud@locale@english{\diplomathesisname}{Diploma Thesis}%
\tud@locale@english{\masterthesisname}{Master Thesis}%
\tud@locale@english{\bachelorthesisname}{Bachelor Thesis}%
\tud@locale@english{\studentresearchname}{Student Research Project}%
\tud@locale@english{\projectpapername}{Project Paper}%
\tud@locale@english{\seminarpapername}{Seminar Paper}%
\tud@locale@english{\researchname}{Research Report}%
\tud@locale@english{\logname}{Log}%
\tud@locale@english{\internshipname}{Internship Report}%
\tud@locale@english{\reportname}{Report}%
\AfterPackage{listings}{%
  \renewcommand*\lstlistingname{\listingname}%
  \renewcommand*\lstlistlistingname{\listlistingname}%
}
\AfterPackage{mathswap}{%
  \tud@locale@german{\@commaswap}{,}%
  \tud@locale@german{\@dotswap}{\,}%
  \tud@locale@english{\@commaswap}{\,}%
  \tud@locale@english{\@dotswap}{.}%
}
%%% From File: tudscr-pagestyle.dtx
\newlength\tud@dim@widemargin
\newlength\tud@dim@slimmargin
\newlength\tud@dim@both
\newlength\tud@dim@topmargin
\newlength\tud@dim@barheight
\newlength\tud@dim@headsep
\newlength\tud@dim@footsep
\newlength\tud@dim@logox
\newlength\tud@dim@logoy
\newlength\tud@dim@logowidth
\newlength\tud@dim@line
\newlength\tud@dim@heavyline
\newlength\tud@dim@thinline
\newlength\tud@dim@headdiff
\newlength\tud@dim@headingsvskip
\tud@ifverlower{2.03}{\newlength\tud@dim@ddcdiff}{}
\newcommand*\tud@head@font@size{}
\newcommand*\tud@geometry@set{%
  \ifdim\paperheight<148.1mm\relax%
    \setlength\tud@dim@widemargin{15mm}%
    \setlength\tud@dim@heavyline{0.5pt}%
    \setlength\tud@dim@thinline{0.25pt}%
    \def\tud@head@font@size{4.5}%
  \else\ifdim\paperheight<297.1mm\relax%
    \setlength\tud@dim@widemargin{30mm}%
    \setlength\tud@dim@heavyline{1pt}%
    \setlength\tud@dim@thinline{0.5pt}%
    \def\tud@head@font@size{9}%
  \else\ifdim\paperheight<420.1mm\relax%
    \setlength\tud@dim@widemargin{42.426407mm}%
    \setlength\tud@dim@heavyline{1.414214pt}%
    \setlength\tud@dim@thinline{0.707107pt}%
    \def\tud@head@font@size{12.727922}%
  \else\ifdim\paperheight<594.1mm\relax%
    \setlength\tud@dim@widemargin{60mm}%
    \setlength\tud@dim@heavyline{2pt}%
    \setlength\tud@dim@thinline{1pt}%
    \def\tud@head@font@size{18}%
  \else\ifdim\paperheight<841.1mm\relax%
    \setlength\tud@dim@widemargin{84.852814mm}%
    \setlength\tud@dim@heavyline{2.828427pt}%
    \setlength\tud@dim@thinline{1.414214pt}%
    \def\tud@head@font@size{25.455844}%
  \else%
    \setlength\tud@dim@widemargin{120mm}%
    \setlength\tud@dim@heavyline{4pt}%
    \setlength\tud@dim@thinline{2pt}%
    \def\tud@head@font@size{36}%
  \fi\fi\fi\fi\fi%
  \setlength\tud@dim@slimmargin{\dimexpr2\tud@dim@widemargin/3\relax}%
  \setlength\tud@dim@both{\dimexpr5\tud@dim@widemargin/3\relax}%
  \setlength\tud@dim@topmargin{\dimexpr7\tud@dim@widemargin/6\relax}%
  \setlength\tud@dim@barheight{\dimexpr\tud@dim@widemargin/6\relax}%
  \setlength\tud@dim@headsep{\dimexpr2\tud@dim@widemargin/5\relax}%
  \setlength\tud@dim@logox{\dimexpr1.1\tud@dim@widemargin/3\relax}%
  \setlength\tud@dim@logoy{\dimexpr0.45\tud@dim@widemargin\relax}%
  \setlength\tud@dim@logowidth{\dimexpr1.9\tud@dim@widemargin\relax}%
  \setlength\tud@dim@footsep{%
    \dimexpr\tud@dim@widemargin-.6\tud@dim@topmargin\relax%
  }%
}
\newcommand*\tud@ifsacrop{%
  \ifcsdef{ifsa@crop}{%
    \ifbool{sa@crop}{\@firstoftwo}{\@secondoftwo}%
  }{%
    \@secondoftwo%
  }%
}
\tud@ifsacrop{%
  \PreventPackageFromLoading{scrlayer-scrpage}%
  \pagestyle{empty}%
  \hoffset=-72.27pt%
  \voffset=-72.27pt%
  \topmargin=0pt%
  \headheight=0pt%
  \headsep=0pt%
  \marginparsep=0pt%
  \marginparwidth=0pt%
  \footskip=0pt%
  \marginparpush=0pt%
  \oddsidemargin=0pt%
  \evensidemargin=0pt%
  \topskip=0pt%
  \textheight=\maxdimen%
}{%
  \AtEndPreamble{\RequirePackage{scrlayer-scrpage}[2013/12/14]}%
}
\AfterPackage{scrlayer-scrpage}{%
  \DeclareNewLayer[%
    background,headsep,%
    voffset=\tud@dim@logoy,%
    contents={%
      \if@tud@mainlogo@set\tud@mainlogo@set\fi%
      \hspace*{\dimexpr\tud@dim@logox-\tud@dim@widemargin\relax}%
      \tud@mainlogo%
    },%
  ]{tudheadings.head.mainlogo}%
  \DeclareNewLayer[%
    background,headsep,%
    voffset=\tud@dim@logoy,%
    contents={%
      \if@tud@head@ddclogo@set\tud@head@ddclogo@set\fi%
      \if@tud@head@ddclogo@@set\tud@head@ddclogo@@set\fi%
      \hfill\tud@headlogo%
    },%
  ]{tudheadings.head.ddclogo}%
  \DeclareNewLayer[%
    background,%
    contents={%
      \ifnum\tud@head@bar>\tw@\relax% cdhead=color
        \color{HKS41}%
        \rule{\layerwidth}{\tud@dim@topmargin}%
      \fi%
    },%
  ]{tudheadings.head.back}%
  \DeclareNewLayer[%
    background,%
    voffset=\tud@dim@topmargin,%
    contents={%
      \ifnum\tud@head@bar>\@ne\relax% cdhead=barcolor/color
        \color{HKS41!60}%
        \rule{\layerwidth}{\tud@dim@barheight}%
      \fi%
    },%
  ]{tudheadings.head.bar}%
  \DeclareNewLayer[%
    background,headsep,%
    voffset=\dimexpr\tud@dim@topmargin+\tud@dim@line\relax,%
    contents={\tud@head@text@box},%
  ]{tudheadings.head.text}%
  \DeclareNewLayer[%
    background,headsep,%
    voffset=\dimexpr\tud@dim@topmargin-.5\tud@dim@line\relax,%
    contents={%
      \ifnum\tud@head@bar<\tw@\relax% cdhead=nocolor/litecolor
        \if@tud@head@widebar\else\tud@head@rule{\textwidth}\fi%
      \fi%
    },%
  ]{tudheadings.head.upperline}%
  \DeclareNewLayer[%
    background,headsep,%
    voffset=\dimexpr\tud@dim@topmargin+\tud@dim@barheight%
      -.5\tud@dim@line\relax,%
    contents={%
      \ifnum\tud@head@bar<\tw@\relax% cdhead=nocolor/litecolor
        \if@tud@head@widebar\else\tud@head@rule{\textwidth}\fi%
      \fi%
    },%
  ]{tudheadings.head.lowerline}%
  \DeclareNewLayer[%
    background,%
    voffset=\dimexpr\tud@dim@topmargin-.5\tud@dim@line\relax,%
    contents={%
      \ifnum\tud@head@bar<\tw@\relax% cdhead=nocolor/litecolor
        \if@tud@head@widebar\tud@head@rule{\paperwidth}\fi%
      \fi%
    },%
  ]{tudheadings.head.upperwideline}%
  \DeclareNewLayer[%
    background,%
    voffset=\dimexpr\tud@dim@topmargin+\tud@dim@barheight%
      -.5\tud@dim@line\relax,%
    contents={%
      \ifnum\tud@head@bar<\tw@\relax% cdhead=nocolor/litecolor
        \if@tud@head@widebar\tud@head@rule{\paperwidth}\fi%
      \fi%
    },%
  ]{tudheadings.head.lowerwideline}%
  \DeclareNewLayer[%
    background,foot,%
    hoffset=0pt,%
    width=\paperwidth,%
    addvoffset=-\dp\strutbox,%
    height=\dimexpr\paperheight-\layeryoffset\relax,%
    contents={%
      \if@tud@foot@colored%
        \let\@tempc\relax%
        \ifdefvoid{\tud@pagecolor}{%
          \ifcase\tud@head@bar\relax\or\or% cdhead=barcolor
            \def\@tempc{\color{HKS41!60}}%
          \or% cdhead=color
            \def\@tempc{\color{HKS41}}%
          \fi%
        }{%
          \def\@tempc{\color{HKS41}}%
          \ifstr{\tud@pagecolor}{HKS41}{\def\@tempc{\color{HKS41!60}}}{}%
        }%
        \ifx\@tempc\relax\else%
          \tud@ifverlower{2.03}{%
            \tud@ddc@check%
            \ifcase\@tempb\relax% \tud@ddc@foot=false
              \vbox to \layerheight{%
                \vfil\@tempc%
                \rule{\layerwidth}{%
                  \dimexpr\layerheight-\tud@dim@ddcdiff+\ht\strutbox\relax%
                }%
              }%
            \else% \tud@ddc@foot!=false
              \@tempc\rule{\layerwidth}{\layerheight}%
            \fi%
          }{\@tempc\rule{\layerwidth}{\layerheight}}%
        \fi%
      \fi%
    },%
  ]{tudheadings.foot.back}%
  \DeclareNewLayer[%
    background,foot,%
    height=\dimexpr\paperheight-\layeryoffset\relax,%
    contents={%
      \setlength\@tempdima{\dimexpr\layerheight-\dp\strutbox\relax}%
      \if@tud@foot@ddclogo@set\tud@foot@ddclogo@set{\@tempdima}\fi%
      \if@tud@foot@ddclogo@@set\tud@foot@ddclogo@@set{\@tempdima}\fi%
      \hfill\tud@footlogo@ddc{\@tempdima}%
    },%
  ]{tudheadings.foot.ddclogo}%
  \tud@ifverlower{2.03}{%
    \ModifyLayer[%
      addvoffset=-\tud@dim@ddcdiff+\ht\strutbox+\dp\strutbox,%
      height=\dimexpr.6\tud@dim@topmargin+\dp\strutbox\relax,%
    ]{tudheadings.foot.ddclogo}%
  }{}%
  \DeclareNewLayer[%
    background,foot,%
    height=\dimexpr\paperheight-\layeryoffset\relax,%
    contents={%
      \setlength\@tempdima{\dimexpr\layerheight-\dp\strutbox\relax}%
      \if@tud@foot@logo@set%
        \tud@foot@logo@set{\layerwidth}{\@tempdima}%
      \fi%
      \tud@footlogo{\@tempdima}%
%
%
%      \tud@footlogo@savebox%
%      \usebox\tud@footlogo@box%
%      \let\@tempa\relax%
%      \@for\@tempb:=\tud@@footlogo\do{%
%        \@tempa%
%        \ifx\@tempb\@empty\else%
%          \expandafter\tud@footlogo\expandafter{\@tempb}%
%        \fi%
%        \let\@tempa\footlogosep%
%      }%
%      \vbox to \@tempdima{%
%        \vfil%
%        \hbox to \layerwidth{\hfill\tud@ddclogo}%
%        \vfil\vfil%
%      }%
    },%
  ]{tudheadings.foot.logo}%
  \tud@ifverlower{2.03}{%
    \ModifyLayer[%
      addvoffset=-\tud@dim@ddcdiff+\ht\strutbox+\dp\strutbox,%
      height=\dimexpr.6\tud@dim@topmargin+\dp\strutbox\relax,%
    ]{tudheadings.foot.logo}%
  }{}%
  \DeclareNewLayer[%
    background,foot,%
    height=\dimexpr\paperheight-\layeryoffset\relax,%
    contents={%
      \vbox to \dimexpr\layerheight-\dp\strutbox\relax{%
        \vfil%
        \footlayer%
        \vfil\vfil%
      }%
    },%
  ]{tudheadings.foot.content}%
  \DeclareNewLayer[%
    background,%
    contents=\tud@head@bar@restore,%
  ]{tudheadings.last}%
  \DeclareNewPageStyleByLayers[%
    onselect=\tud@ps@onselect,onbackground=\tud@ps@onbackground%
  ]{tudheadings}{%
    tudheadings.head.back,%
    tudheadings.head.mainlogo,%
    tudheadings.head.ddclogo,%
    tudheadings.head.bar,%
    tudheadings.head.text,%
    tudheadings.head.upperline,%
    tudheadings.head.lowerline,%
    tudheadings.head.upperwideline,%
    tudheadings.head.lowerwideline,%
    tudheadings.foot.back,%
    tudheadings.foot.ddclogo,%
    tudheadings.foot.logo,%
    tudheadings.foot.content,%
    tudheadings.last,%
    scrheadings.foot.odd,%
    scrheadings.foot.even,%
    scrheadings.foot.oneside,%
    scrheadings.foot.above.line,%
    scrheadings.foot.below.line%
  }%
  \DeclareNewPageStyleAlias{tud}{tudheadings}%
  \DeclareNewPageStyleAlias{tudscr}{tudheadings}%
  \DeclareNewPageStyleAlias{tudscrheadings}{tudheadings}%
  \DeclareNewPageStyleByLayers[%
    onselect=\tud@ps@onselect,onbackground=\tud@ps@onbackground%
  ]{plain.tudheadings}{%
    tudheadings.head.back,%
    tudheadings.head.mainlogo,%
    tudheadings.head.ddclogo,%
    tudheadings.head.bar,%
    tudheadings.head.text,%
    tudheadings.head.upperline,%
    tudheadings.head.lowerline,%
    tudheadings.head.upperwideline,%
    tudheadings.head.lowerwideline,%
    tudheadings.foot.back,%
    tudheadings.foot.ddclogo,%
    tudheadings.foot.logo,%
    tudheadings.foot.content,%
    tudheadings.last,%
    plain.scrheadings.foot.odd,%
    plain.scrheadings.foot.even,%
    plain.scrheadings.foot.oneside,%
    plain.scrheadings.foot.above.line,%
    plain.scrheadings.foot.below.line%
  }%
  \DeclareNewPageStyleAlias{plain.tudscrheadings}{plain.tudheadings}%
  \DeclareNewPageStyleAlias{tudplain}{plain.tudheadings}%
  \DeclareNewPageStyleAlias{tudscrplain}{plain.tudheadings}%
  \DeclareNewPageStyleAlias{tudheadingsplain}{plain.tudheadings}%
  \DeclareNewPageStyleAlias{tudscrheadingsplain}{plain.tudheadings}%
  \DeclareNewPageStyleByLayers[%
    onselect=\tud@ps@onselect,onbackground=\tud@ps@onbackground%
  ]{empty.tudheadings}{%
    tudheadings.head.back,%
    tudheadings.head.mainlogo,%
    tudheadings.head.ddclogo,%
    tudheadings.head.bar,%
    tudheadings.head.text,%
    tudheadings.head.upperline,%
    tudheadings.head.lowerline,%
    tudheadings.head.upperwideline,%
    tudheadings.head.lowerwideline,%
    tudheadings.foot.back,%
    tudheadings.foot.ddclogo,%
    tudheadings.foot.logo,%
    tudheadings.foot.content,%
    tudheadings.last%
  }%
  \DeclareNewPageStyleAlias{empty.tudscrheadings}{empty.tudheadings}%
  \DeclareNewPageStyleAlias{tudempty}{empty.tudheadings}%
  \DeclareNewPageStyleAlias{tudscrempty}{empty.tudheadings}%
  \DeclareNewPageStyleAlias{tudheadingsempty}{empty.tudheadings}%
  \DeclareNewPageStyleAlias{tudscrheadingsempty}{empty.tudheadings}%
  \newcommand*\tud@pagecolor{}%
  \DeclareNewLayer[%
    background,page,%
    contents={%
      \ifdefvoid{\tud@pagecolor}{}{%
        \color{\tud@pagecolor}%
        \rule{\layerwidth}{\layerheight}%
      }%
    },%
  ]{tudheadings.pagecolor}%
  \AddLayersToPageStyle{@everystyle@}{tudheadings.pagecolor}%
}
\newcommand*\tud@ps@onselect{%
  \DeclarePageStyleAlias{plain}{plain.tudheadings}%
  \DeclarePageStyleAlias{headings}{tudheadings}%
  \def\sls@currentheadings{tudheadings}%
  \def\sls@currentplain{plain.tudheadings}%
}
\newcommand*\tud@head@logocolor{black}
\newcommand*\tud@head@fontcolor{}
\newcommand*\tud@foot@logocolor{black}
\newcommand*\tud@foot@fontcolor{}
\newcommand*\tud@ps@onbackground{%
  \ifdefvoid{\tud@pagecolor}{%
    \ifcase\tud@head@bar\relax% cdhead=nocolor
      \def\tud@head@logocolor{black}%
      \def\tud@head@fontcolor{}%
      \def\tud@foot@logocolor{black}%
      \def\tud@foot@fontcolor{}%
    \or% cdhead=litecolor
      \def\tud@head@logocolor{HKS41}%
      \def\tud@head@fontcolor{HKS41}%
      \def\tud@foot@logocolor{HKS41}%
      \def\tud@foot@fontcolor{HKS41}%
    \or% cdhead=barcolor
      \def\tud@head@logocolor{HKS41}%
      \def\tud@head@fontcolor{white}%
      \if@tud@foot@colored%
        \def\tud@foot@logocolor{white}%
        \def\tud@foot@fontcolor{white}%
      \else%
        \def\tud@foot@logocolor{HKS41}%
        \def\tud@foot@fontcolor{HKS41}%
      \fi%
    \or% cdhead=color
      \def\tud@head@logocolor{white}%
      \def\tud@head@fontcolor{white}%
      \if@tud@foot@colored%
        \def\tud@foot@logocolor{white}%
        \def\tud@foot@fontcolor{white}%
      \else%
        \def\tud@foot@logocolor{HKS41}%
        \def\tud@foot@fontcolor{HKS41}%
      \fi%
    \fi%
  }{%
    \ifstr{\tud@pagecolor}{HKS41}{%
      \def\tud@head@logocolor{white}%
      \def\tud@head@fontcolor{white}%
      \def\tud@foot@logocolor{white}%
      \if@tud@foot@colored%
        \def\tud@foot@fontcolor{white}%
      \else%
        \def\tud@foot@fontcolor{HKS41!30}%
      \fi%
      \bool@std@lock{@tud@head@widebar}{true}%
    }{%
      \def\tud@head@logocolor{HKS41}%
      \def\tud@head@fontcolor{HKS41}%
      \ifcase\tud@head@bar\relax\or\or\or% cdhead=color
        \def\tud@head@logocolor{white}%
        \def\tud@head@fontcolor{white}%
      \fi%
      \if@tud@foot@colored%
        \def\tud@foot@logocolor{white}%
        \def\tud@foot@fontcolor{white}%
      \else%
        \def\tud@foot@logocolor{HKS41}%
        \def\tud@foot@fontcolor{HKS41}%
      \fi%
      \bool@std@lock{@tud@head@widebar}{true}%
    }%
  }%
  \let\tud@dim@line\tud@dim@thinline%
  \ifstr{\tud@head@fontcolor}{white}{\let\tud@dim@line\tud@dim@heavyline}{}%
  \global\let\tud@foot@fontcolor\tud@foot@fontcolor%
}
\patchcmd{\thispagestyle}{\gdef\@specialstyle{#1}}{%
  \xdef\@specialstyle{\GetRealPageStyle{#1}}
}{}{\tud@patch@wrn{thispagestyle}}
\newcommand*\tud@head@text{}
\newcommand*\tud@head@text@first{}
\newcommand*\tud@head@text@second{}
\newcommand*\tud@head@text@delimiter{}
\newcommand*\tud@head@text@buffer{}
\newcommand*\tud@head@rule[1]{%
  \tud@color{\tud@head@fontcolor}%
  \rule[\ht\strutbox]{#1}{\tud@dim@line}%
}
\newcommand*\tud@head@text@add[3][, ]{%
  \protected@edef\tud@head@text{#3}%
  \ifx\tud@head@text\@empty%
    \def\tud@head@text@delimiter{}%
  \else%
    \edef\tud@head@text@delimiter{\tud@head@text@buffer}%
    \def\tud@head@text@buffer{#1}%
  \fi%
  \if@tempswa\else%
    \def\@tempa{%
      \tud@head@text@first%
      \tud@head@text@delimiter%
      #2%
      \tud@head@text%
    }%
    \settowidth\@tempdima{\@tempa}%
    \ifdim\@tempdima>\textwidth\relax%
      \@tempswatrue%
      \def\tud@head@text@delimiter{}%
    \else%
      \protected@edef\tud@head@text@first{\@tempa}%
    \fi%
  \fi%
  \if@tempswa%
    \protected@edef\tud@head@text@second{%
      \tud@head@text@second%
      \tud@head@text@delimiter%
      #2%
      \tud@head@text%
    }%
  \fi%
}
\newcommand*\tud@head@text@box{%
  \ifx\@faculty\@empty%
    \ClassWarningNoLine{\tudcls@name}{No `\string\faculty' given}%
    \faculty{}%
  \fi%
  \tud@head@font@set%
  \@tempswafalse%
  \def\tud@head@text@first{}%
  \def\tud@head@text@second{}%
  \def\tud@head@text@buffer{}%
  \tud@head@text@add[\enskip]{\tud@head@font@bold}{\@faculty}%
  \tud@head@text@add{\tud@head@font@light}{\@department}%
  \tud@head@text@add{\tud@head@font@light}{\@institute}%
  \tud@head@text@add{\tud@head@font@light}{\@chair}%
  \settowidth\@tempdima{\tud@head@text@second}%
  \ifdim\@tempdima>\textwidth\relax%
    \tud@head@text@wrn{\the\dimexpr\@tempdima-\textwidth\relax}%
    \hfuzz=\@tempdima%
  \fi%
  \vbox{%
    \linespread{0}\selectfont\offinterlineskip%
    \tud@color{\tud@head@fontcolor}%
    \tud@head@text@write{\tud@head@text@first}%
    \ifnum\tud@head@bar>\@ne% cdhead=barcolor/color
      \ifdefvoid{\tud@pagecolor}{\color{HKS41}}{%
        \ifstr{\tud@pagecolor}{HKS41}{\color{white}}{\color{HKS41}}%
      }%
    \fi%
    \ifx\tud@head@text@second\@empty%
      \newline\tud@head@text@write{\tud@head@font@light\@extraheadline}%
    \else%
      \newline\tud@head@text@write{\tud@head@text@second}%
      \ifx\@extraheadline\@empty\else%
        \newline\vbox{\tud@head@font@light\@extraheadline}%
      \fi%
    \fi%
  }%
}
\newcommand*\tud@head@text@write[1]{%
  \raisebox{\dimexpr(\tud@dim@barheight+2\tud@dim@line-\totalheight)/2\relax}[%
    \dimexpr\tud@dim@barheight-\depth\relax%
  ][\dimexpr\depth+\tud@dim@heavyline\relax]{#1\vphantom{gjpqy\"A\"O\"U}}%
}
\newcommand\tud@head@text@wrn[1]{%
  \ClassWarning{\tudcls@name}{%
    The given entries for the headline\MessageBreak%
    (faculty, institute etc.) are #1\MessageBreak%
    too wide for the textwidth%
  }%
  \global\let\tud@head@text@wrn\@gobble%
}
\newcommand*\tud@newlogobox[1]{%
  \expandafter\newsavebox\csname tud@logo@#1\endcsname%
}
\newcommand*\tud@savelogobox[1]{%
  \global\expandafter\sbox\csname tud@logo@#1\endcsname%
}
\newcommand*\tud@uselogobox[1]{%
  \expandafter\usebox\csname tud@logo@#1\endcsname%
}
\tud@newlogobox{main@black}
\tud@newlogobox{main@HKS41}
\tud@newlogobox{main@white}
\newif\if@tud@mainlogo@set
\newlength\tud@mainlogoheight
\newcommand*\tud@mainlogo@set{%
  \def\@tempa{\includegraphics[keepaspectratio,width=\tud@dim@logowidth]}%
  \tud@savelogobox{main@black}{\@tempa{TUD-black}}%
  \tud@savelogobox{main@HKS41}{\@tempa{TUD-blue}}%
  \tud@savelogobox{main@white}{\@tempa{TUD-white}}%
  \setlength\tud@mainlogoheight{\ht\tud@logo@main@black}%
  \global\tud@mainlogoheight=\tud@mainlogoheight%
  \global\@tud@mainlogo@setfalse%
}
\newcommand*\tud@mainlogo{%
  \setlength\@tempdima{%
    \dimexpr\oddsidemargin+1in+\tud@dim@logox-\tud@dim@widemargin\relax%
  }%
  \ifdim\@tempdima<\ta@bcor\relax\tud@mainlogo@wrn{\the\@tempdima}\fi%
  \tud@uselogobox{main@\tud@head@logocolor}%
}
\newcommand*\tud@mainlogo@wrn[1]{%
  \ClassWarning{\tudcls@name}{%
    The selected page layout means that the\MessageBreak%
    logo of TUD extends beyond the printing area.\MessageBreak%
    The inner margin is smaller than BCOR\MessageBreak%
    (`BCOR=\the\ta@bcor', inner margin is #1)\MessageBreak%
    Maybe you should decrease the current value\MessageBreak%
    of DIV (`DIV=\the\ta@div')%
  }%
  \global\let\tud@mainlogo@wrn\@gobble%
}
\tud@newlogobox{head@ddc@black}
\tud@newlogobox{head@ddc@HKS41}
\tud@newlogobox{head@ddc@white}
\tud@newlogobox{head@ddc@option}
\newif\if@tud@head@ddclogo@set
\newcommand*\tud@head@ddclogo@set{%
  \def\@tempa{%
    \includegraphics[keepaspectratio,totalheight=\tud@mainlogoheight]%
  }%
  \tud@savelogobox{head@ddc@black}{\@tempa{DDC-24}}%
  \tud@savelogobox{head@ddc@HKS41}{\@tempa{DDC-27}}%
  \tud@savelogobox{head@ddc@white}{\@tempa{DDC-30}}%
  \global\@tud@head@ddclogo@setfalse%
  \tud@head@ddclogo@@set%
}
\newif\if@tud@head@ddclogo@@set
\newcommand*\tud@head@ddclogo@@set{%
  \def\@tempc##1##2{%
    \tud@savelogobox{head@ddc@option}{%
      \includegraphics[%
        keepaspectratio,totalheight=\tud@mainlogoheight,##2%
      ]{\trim@spaces{##1}}%
    }%
  }%
  \tud@savelogobox{head@ddc@option}{}%
  \tud@ddc@check%
  \ifcase\@tempa\relax% \tud@ddc@head=false
    \ifdefvoid{\tud@@headlogo}{}{%
      \protected@edef\@tempb{%
        \noexpand\@tempc{\tud@@headlogo}{\tud@@@headlogo}%
      }\@tempb%
    }%
  \or\or% \tud@ddc@head=color
    \@tempc{DDC-03}{}%
  \or% \tud@ddc@head=colorblack
    \@tempc{DDC-09}{}%
  \or% \tud@ddc@head=gray
    \@tempc{DDC-21}{}%
  \or% \tud@ddc@head=black
    \@tempc{DDC-24}{}%
  \or% \tud@ddc@head=blue
    \@tempc{DDC-27}{}%
  \or% \tud@ddc@head=white
    \@tempc{DDC-30}{}%
  \fi%
  \global\@tud@head@ddclogo@@setfalse%
}
\newcommand*\tud@@headlogo{}
\newcommand*\tud@@@headlogo{}
\newcommand*\headlogo[2][]{%
  \tud@ifverlower{2.04}{\tud@clearpage@iftudps}{}%
  \def\tud@@headlogo{#2}%
  \def\tud@@@headlogo{#1}%
  \global\@tud@head@ddclogo@@settrue%
  \global\@tud@foot@ddclogo@@settrue%
  \tud@ifverlower{2.04}{\tud@pagestyle@iftudps}{}%
}
\newcommand*\tud@headlogo{%
  \tud@ddc@check%
  \ifnum\@tempa>\z@\relax% \tud@ddc@head!=false
    \ifdefvoid{\tud@@headlogo}{}{\tud@headlogo@wrn}%
  \fi%
  \ifnum\@tempa=\@ne\relax% \tud@ddc@head=true
    \tud@uselogobox{head@ddc@\tud@head@logocolor}%
  \else%
    \tud@uselogobox{head@ddc@option}%
  \fi%
}
\newcommand*\tud@headlogo@wrn{%
  \ClassWarning{\tudcls@name}{%
    The secondary logo `\string\headlogo{\tud@@headlogo}' is\MessageBreak%
    overwritten with DDC logo. Maybe you should use\MessageBreak%
    `ddcfoot' or better `ddc' instead of `ddchead'%
  }%
  \global\let\tud@headlogo@wrn\relax%
}
\newlength\footlogoheight
\newcommand*\tud@get@footlogoheight{%
  \ifdim\footlogoheight>\z@\relax\else%
    \setlength\footlogoheight{\tud@mainlogoheight}%
    \tud@ifverlower{2.03}{%
      \setlength\footlogoheight{.6\tud@dim@topmargin}%
    }{}%
  \fi%
}
\tud@newlogobox{foot@ddc@black}
\tud@newlogobox{foot@ddc@HKS41}
\tud@newlogobox{foot@ddc@white}
\newif\if@tud@foot@ddclogo@set
\newcommand*\tud@foot@ddclogo@set[1]{%
  \tud@foot@ddclogo@@@set{black}{DDC-22}{#1}%
  \tud@foot@ddclogo@@@set{HKS41}{DDC-25}{#1}%
  \tud@foot@ddclogo@@@set{white}{DDC-28}{#1}%
  \global\@tud@foot@ddclogo@setfalse%
  \tud@foot@ddclogo@@set{#1}%
}
\tud@newlogobox{foot@ddc@option}
\newif\if@tud@foot@ddclogo@@set
\newcommand*\tud@foot@ddclogo@@set[1]{%
  \tud@ddc@check%
  \ifcase\@tempb\relax\or\or% \tud@ddc@foot=color
    \tud@foot@ddclogo@@@set{option}{DDC-01}{#1}%
  \or% \tud@ddc@foot=colorblack
    \tud@foot@ddclogo@@@set{option}{DDC-07}{#1}%
  \or% \tud@ddc@foot=gray
    \tud@foot@ddclogo@@@set{option}{DDC-19}{#1}%
  \or% \tud@ddc@foot=black
    \tud@foot@ddclogo@@@set{option}{DDC-22}{#1}%
  \or% \tud@ddc@foot=blue
    \tud@foot@ddclogo@@@set{option}{DDC-25}{#1}%
  \or% \tud@ddc@foot=white
    \tud@foot@ddclogo@@@set{option}{DDC-28}{#1}%
  \fi%
  \global\@tud@foot@ddclogo@@setfalse%
}
\newcommand*\tud@foot@ddclogo@@@set[3]{%
  \begingroup%
    \tud@get@footlogoheight%
    \tud@savelogobox{foot@ddc@#1}{%
      \vbox to #3{\vfil\hbox{%
        \includegraphics[keepaspectratio,totalheight=\footlogoheight]{#2}%
      }\vfil\vfil}%
    }%
  \endgroup%
}
% §§§ zwei varianten der footlogos-box, eine mit phantom-hspace für ddclogo
% §§§ beim abarbeiten von \tud@@footlogo includegraphics nicht direkt verwenden
% §§§ sondern temporäres Makro mit allen inhalten speichern und dann beim 
% §§§ erstellen der zwei boxen aufrufen
\tud@newlogobox{foot@ddc@false}
\tud@newlogobox{foot@ddc@true}
\newif\if@tud@foot@logo@set


%\newcommand*\tud@foot@logo@set[2]{%
%  \ifdefvoid{\tud@@footlogo}{%
%    \tud@savelogobox{foot@ddc@false}{}%
%    \tud@savelogobox{foot@ddc@true}{}%
%  }{%
%%    \protected@edef\@tempa{%
%%      \noexpand\includegraphics[%
%%        keepaspectratio,totalheight=\tud@mainlogoheight,\tud@@@headlogo%
%%      ]%
%%    }%
%%    \tud@savelogobox{tud@headlogo@user}{%
%%      \expandafter\@tempa\expandafter{\tud@@headlogo}%
%%    }%
%%    \tud@savelogobox{foot@ddc@false}{aaaaaaaaaa}%
%%    \tud@savelogobox{foot@ddc@true}{bbbbbbbbbbbbbb}%
%  }%
%  \global\@tud@foot@logo@setfalse%
%}

\newcommand*\footlogosep{\hfill}
\newcommand*\tud@foot@logo@set[2]{%
    \def\@tempc##1##2##3{%
      \hbox to ##1{%
        \let\@tempa\relax%
        \@for\@tempb:=\tud@@footlogo\do{%
          \edef\@tempb{\expandafter\trim@spaces\expandafter{\@tempb}}%
          \@tempa%
          \ifx\@tempb\@empty\else%
            \expandafter\tud@@footlogo@set\expandafter{\@tempb}{##2}%
          \fi%
          \let\@tempa\footlogosep%
        }%
        \ifx##3\@empty\else%
          \@tempa\hphantom{\tud@uselogobox{foot@ddc@black}}%
        \fi
      }%
    }%
    \tud@savelogobox{foot@ddc@false}{%\fbox
    {%
      \@tempc{#1}{#2}{}%
    }%
    }%
    \tud@savelogobox{foot@ddc@true}{%\fbox
    {%
      \@tempc{#1}{#2}{\relax}%
    }%
    }%
    \global\@tud@foot@logo@setfalse%
}
\DeclareListParser{\tud@footlogo@parser}{:}%
\newcommand*\tud@@footlogo@set[2]{%
  \begingroup%
    \def\@tempa{}%
    \def\@tempb{}%
    \@tempswatrue%
    \def\do##1{%
      \if@tempswa%
        \def\@tempa{##1}%
        \@tempswafalse%
      \else%
        \expandafter\def\expandafter\@tempb\expandafter{\@tempb,##1}%
      \fi%
    }%
    \tud@get@footlogoheight%
    \tud@footlogo@parser{#1}%
    \preto\tud@@@footlogo{%
      keepaspectratio,totalheight=\footlogoheight,%
    }%
    \appto\tud@@@footlogo{\@tempb}%
    \protected@edef\@tempc{\noexpand\includegraphics[\tud@@@footlogo]{\@tempa}}%
    \vbox to #2{\vfil\hbox{\@tempc}\vfil\vfil}%
  \endgroup%
}





\newcommand*\tud@footlogo@ddc[1]{%
  \tud@ddc@check%
  \ifcase\@tempb\relax\or% \tud@ddc@foot=true
    \tud@uselogobox{foot@ddc@\tud@foot@logocolor}%
    \tud@footlogo@wrn{#1}%
  \else%
    \tud@uselogobox{foot@ddc@option}%
    \tud@footlogo@wrn{#1}%
  \fi%
}
\newcommand*\tud@@footlogo{}
\newcommand*\tud@@@footlogo{}
\newcommand*\footlogo[2][]{%
  \tud@ifverlower{2.04}{\tud@clearpage@iftudps}{}%
  \def\tud@@footlogo{#2}%
  \def\tud@@@footlogo{#1}%
  \global\@tud@head@ddclogo@@settrue%
  \global\@tud@foot@ddclogo@@settrue%
  \tud@ifverlower{2.04}{\tud@pagestyle@iftudps}{}%
}
\newcommand*\tud@footlogo[1]{%
  \ifdefvoid{\tud@@footlogo}{}{%
    \tud@ddc@check%
    \ifcase\@tempb\relax% \tud@ddc@foot=false
      \tud@uselogobox{foot@ddc@false}%
    \else% \tud@ddc@foot=!false
      \tud@uselogobox{foot@ddc@true}%
    \fi%
    \tud@footlogo@wrn{#1}%
  }%
}
\newcommand*\tud@footlogo@wrn[1]{%
  \begingroup%
    \tud@get@footlogoheight%
    \setlength\@tempdima{\dimexpr\footlogoheight-#1\relax}%
    \ifdim\@tempdima>\vfuzz\relax%
      \ClassWarning{\tudcls@name}{%
        The chosen `\string\footlogoheight'
        (\the\footlogoheight)\MessageBreak%
        is \the\@tempdima\space higher than recommended. You\MessageBreak%
        should decrease this length
        \ifcase\tud@geometry\relax\else% true/symmetric/twoside
          or alternatively\MessageBreak%
          enlarge the bottom margin by using option\MessageBreak%
          `extrabottommargin'%
        \fi%
      }%
      \global\let\tud@footlogo@wrn\@gobble%
    \fi%
  \endgroup%
}










\newkomafont{tudheadings}{%
  \sffamily%
  \tud@color{\tud@foot@fontcolor}%
}
\newcommand*\footcontent{%
  \@ifstar{%
    \@tempswafalse%
    \@footcontent%
  }{%
    \@tempswatrue%
    \@footcontent%
  }%
}
\newcommand*\@footcontent[2][]{%
  \kernel@ifnextchar[%]
    {\@@footcontent{#1}{#2}}%
    {\@@footcontent{#1}{#2}[\@empty]}%
}
\newcommand*\@@footcontent{}
\newcommand*\footlayer{}
\def\@@footcontent#1#2[#3]{%
  \if@tempswa%
    \def\footlayer{%
      \usekomafont{tudheadings}%
      \tud@divide\@tempa{\tud@head@font@size}{\f@size}%
      \linespread{\@tempa}%
      \selectfont%
      \tud@head@font@light%
    }%
  \else%
    \def\footlayer{}%
  \fi%
  \appto\footlayer{%
    #1%
% §§§ notwendig?
%    \tud@get@footlogoheight@default%
    \tud@ddc@check%
    \ifcase\@tempb%
      \setlength\@tempdima{\z@}%
    \else%
      \settowidth\@tempdima{%
% §§§ passende box auswählen
% §§§ Warnung, wenn \tud@@footlogo nicht leer
        \includegraphics[keepaspectratio,totalheight=\footlogoheight]{DDC-22}%
      }%
      \addtolength\@tempdima{\columnsep}%
    \fi%
  }%
  \ifx#3\@empty\relax%
    \appto\footlayer{%
      \begin{minipage}[t]{\dimexpr\textwidth-\@tempdima\relax}%
        #2%
      \end{minipage}%
    }%
  \else%
    \appto\footlayer{%
      \begin{minipage}[t]{\dimexpr (\textwidth-\columnsep)/2\relax}%
        #2%
      \end{minipage}%
      \hspace*{\columnsep}%
      \begin{minipage}[t]{\dimexpr(\textwidth-\columnsep)/2-\@tempdima\relax}%
        #3%
      \end{minipage}%
    }%
  \fi%
}







\tud@ifsacrop{%
  \PreventPackageFromLoading{geometry}%
}{%
  \RequirePackage{geometry}[2010/09/12]%
  \newcommand*\tud@geometry@hmargin{}%
  \newcommand*\tud@geometry@vmargin{}%
  \newcommand*\tud@geometry@tudmargin{}%
  \tud@ifverlower{2.03}{\newcommand*\tud@geometry@ddcmargin{}}{}%
  \newcommand*\tud@newgeometry[1]{%
    \if@atdocument%
      \edef\@tempa{#1}%
      \expandafter\newgeometry\expandafter{#1}%
    \else%
      \edef\@tempa{paperwidth=\the\paperwidth,paperheight=\the\paperheight,#1}%
      \expandafter\geometry\expandafter{\@tempa}%
    \fi%
  }%
  \newcommand*\tud@geometry@process{%
    \tud@geometry@set%
    \ifcase\tud@geometry\relax% false
      \setlength\tud@ta@headdiff{%
        \dimexpr\tud@dim@topmargin+\tud@dim@barheight+\tud@dim@headsep%
          -\tud@ta@topmargin-\tud@ta@headheight-\tud@ta@headsep-1in\relax%
      }%
      \ifdim\tud@ta@headdiff<\z@\relax%
        \addtolength\tud@dim@headsep{-\tud@ta@headdiff}%
      \fi%
      \edef\tud@geometry@hmargin{%
        bindingoffset=\the\ta@bcor,%
        left=\the\dimexpr\oddsidemargin+1in-\ta@bcor\relax,%
        textwidth=\the\textwidth,%
        \tud@geometry@mpincl,%
        marginparwidth=\the\dimexpr\evensidemargin+1in-\tud@ta@headsep\relax,%
        \if@reversemargin%
          reversemarginpar=true,%
          \if@twoside%
            marginparwidth=\the\dimexpr\oddsidemargin+1in%
              -\tud@ta@headsep\relax,%
          \fi%
        \else%
          reversemarginpar=false,%
        \fi%
        marginparsep=\the\dimexpr.5\tud@ta@headsep\relax%
      }%
      \edef\tud@geometry@vmargin{%
        \if@hincl%
          includehead=true,%
          top=\the\dimexpr\tud@ta@topmargin+1in\relax,%
        \else%
          includehead=false,%
          top=\the\dimexpr\tud@ta@topmargin+\tud@ta@headheight+\tud@ta@headsep%
            +1in\relax,%
        \fi%
        headheight=\the\tud@ta@headheight,%
        headsep=\the\tud@ta@headsep,%
        textheight=\the\tud@ta@textheight,%
        \tud@geometry@fincl,%
        footskip=\the\tud@ta@footskip%
      }%
      \ifdim\tud@ta@headdiff<\z@\relax%
        \setlength\@tempdima{\z@}%
      \else%
        \setlength\@tempdima{\tud@ta@headdiff}%
      \fi%
      \edef\tud@geometry@tudmargin{%
        top=\the\dimexpr\tud@dim@topmargin+\tud@dim@barheight%
          +\tud@dim@headsep\relax,%
        headheight=\the\dimexpr\tud@dim@topmargin+\tud@dim@barheight%
          -\tud@dim@logoy\relax,%
        headsep=\the\tud@dim@headsep,%
        textheight=\the\dimexpr\tud@ta@textheight-\@tempdima\relax,%
        ignorehead%
      }%
      \tud@ifverlower{2.03}{%
        \setlength\tud@dim@ddcdiff{%
          \dimexpr.6\tud@dim@topmargin-\tud@ta@footskip+\tud@dim@headsep%
            +\tud@ta@footheight-1.25\baselineskip\relax%
        }%
        \edef\tud@geometry@ddcmargin{%
          textheight=\the\dimexpr\tud@ta@textheight-\tud@ta@headdiff%
            -\tud@dim@ddcdiff\relax,%
          footskip=\the\dimexpr\tud@ta@footskip+\tud@dim@ddcdiff\relax%
        }%
      }{}%
      \ifdim\tud@dim@extrabottommargin=\z@\relax\else%
        \ClassWarning{\tudcls@name}{%
          Option `extrabottommargin' is ineffective when\MessageBreak%
          package typearea is used (`cdgeometry=no')%
        }%
      \fi%
    \else%  true/symmetric/twoside
      \ifcase\tud@geometry\or%  true
        \edef\tud@geometry@hmargin{%
          bindingoffset=\the\ta@bcor,%
          left=\the\tud@dim@widemargin,%
          textwidth=\the\dimexpr\paperwidth-\tud@dim@both-\ta@bcor\relax,%
          \if@twoside asymmetric,\fi%
          \tud@geometry@mpincl,%
          \if@reversemargin%
            reversemarginpar=true,%
            marginparwidth=\the\dimexpr\tud@dim@widemargin%
              -\tud@ta@headsep\relax,%
          \else%
            reversemarginpar=false,%
            marginparwidth=\the\dimexpr\tud@dim@slimmargin%
              -\tud@ta@headsep\relax,%
          \fi%
          marginparsep=\the\dimexpr.5\tud@ta@headsep\relax%
        }%
      \or% symmetric
        \edef\tud@geometry@hmargin{%
          bindingoffset=\the\ta@bcor,%
          left=\the\dimexpr.5\tud@dim@both\relax,%
          textwidth=\the\dimexpr\paperwidth-\tud@dim@both-\ta@bcor\relax,%
          \tud@geometry@mpincl,%
          \if@reversemargin%
            reversemarginpar=true,%
          \else%
            reversemarginpar=false,%
          \fi%
          marginparwidth=\the\dimexpr.5\tud@dim@both-\tud@ta@headsep\relax,%
          marginparsep=\the\dimexpr.5\tud@ta@headsep\relax%
        }%
      \or% twoside
        \edef\tud@geometry@hmargin{%
          bindingoffset=\the\ta@bcor,%
          \if@twoside%
            left=\the\dimexpr.4\tud@dim@both\relax,%
            twoside,%
          \else%
            left=\the\dimexpr.5\tud@dim@both\relax,%
          \fi%
          textwidth=\the\dimexpr\paperwidth-\tud@dim@both-\ta@bcor\relax,%
          \tud@geometry@mpincl,%
          marginparwidth=\the\dimexpr.5\tud@dim@both-\tud@ta@headsep\relax,%
          \if@reversemargin%
            reversemarginpar=true,%
            \if@twoside%
              marginparwidth=\the\dimexpr.4\tud@dim@both%
                -\tud@ta@headsep\relax,%
            \fi%
          \else%
            reversemarginpar=false,%
            \if@twoside%
              marginparwidth=\the\dimexpr.6\tud@dim@both%
                -\tud@ta@headsep\relax,%
            \fi%
          \fi%
          marginparsep=\the\dimexpr.5\tud@ta@headsep\relax%
        }%
      \fi%
      \tud@ifverlower{2.03}{%
        \edef\tud@geometry@vmargin{%
          top=\the\dimexpr.5\tud@dim@both\relax,%
          headheight=\the\tud@ta@headheight,%
          headsep=\the\tud@dim@headsep,%
          bottom=\the\dimexpr.5\tud@dim@both+\tud@dim@extrabottommargin\relax,%
          footskip=\the\dimexpr\tud@dim@headsep+\tud@ta@footheight%
            -1.25\baselineskip\relax,%
          \tud@geometry@hincl,%
          \tud@geometry@fincl%
        }%
      }{%
        \edef\tud@geometry@vmargin{%
          top=\the\tud@dim@slimmargin,%
          headheight=\the\tud@ta@headheight,%
          headsep=\the\tud@ta@headsep,%
          bottom=\the\dimexpr\tud@dim@widemargin%
            +\tud@dim@extrabottommargin\relax,%
          footskip=\the\dimexpr\tud@dim@footsep+\tud@ta@footheight\relax,%
          \tud@geometry@hincl,%
          \tud@geometry@fincl%
        }%
      }%
      \edef\tud@geometry@tudmargin{%
        top=\the\dimexpr\tud@dim@topmargin+\tud@dim@barheight%
          +\tud@dim@headsep\relax,%
        headheight=\the\dimexpr\tud@dim@topmargin+\tud@dim@barheight%
          -\tud@dim@logoy\relax,%
        headsep=\the\tud@dim@headsep,%
        ignorehead%
      }%
      \setlength\tud@ta@headdiff{%
        \dimexpr\tud@dim@topmargin+\tud@dim@barheight+\tud@dim@headsep%
          -\tud@dim@slimmargin\relax%
      }%
      \tud@ifverlower{2.03}{%
        \setlength\tud@ta@headdiff{%
          \dimexpr\tud@dim@topmargin+\tud@dim@barheight+\tud@dim@headsep%
            -.5\tud@dim@both\relax%
        }%
        \setlength\tud@dim@ddcdiff{.6\tud@dim@topmargin}%
        \edef\tud@geometry@ddcmargin{%
          \if@fincl%
            bottom=\the\dimexpr.5\tud@dim@both+\tud@dim@extrabottommargin%
              +\tud@dim@ddcdiff+\tud@dim@headsep+\tud@ta@footheight%
              -1.25\baselineskip\relax,%
          \else%
            bottom=\the\dimexpr.5\tud@dim@both+\tud@dim@extrabottommargin%
              +\tud@dim@ddcdiff\relax,%
          \fi%
          footskip=\the\dimexpr\tud@dim@headsep+\tud@ta@footheight%
            -1.25\baselineskip+\tud@dim@ddcdiff\relax,%
        }%
      }{}%
    \fi%
    \ifdim\tud@ta@headdiff<\z@\relax\setlength\tud@ta@headdiff{\z@}\fi%
    \global\tud@ta@headdiff=\tud@ta@headdiff%
    \setlength\tud@dim@headingsvskip{.6\tud@dim@topmargin}%
    \global\tud@dim@headingsvskip=\tud@dim@headingsvskip%
    \tud@ifverlower{2.03}{%
      \ifdim\tud@dim@ddcdiff<\z@\relax\setlength\tud@dim@ddcdiff{\z@}\fi%
      \global\tud@dim@ddcdiff=\tud@dim@ddcdiff%
    }{}%
    \tud@geometry@@process%
  }%
  \newcommand*\tud@geometry@@process{%
    \edef\Gm@restore@org{\Gm@restore}%
    \tud@ifverlower{2.03}{%
      \edef\@tempa{%
        \tud@geometry@hmargin,%
        \tud@geometry@vmargin,%
        \tud@geometry@tudmargin,%
        \tud@geometry@ddcmargin,%
        ignorehead,ignorefoot%
      }%
      \tud@newgeometry{\@tempa}%
      \savegeometry{tudareaddc}%
    }{}%
    \edef\@tempa{%
      \tud@geometry@hmargin,%
      \tud@geometry@vmargin,%
      \tud@geometry@tudmargin%
    }%
    \tud@newgeometry{\@tempa}%
    \savegeometry{tudarea}%
    \edef\@tempa{%
      \tud@geometry@hmargin,%
      \tud@geometry@vmargin%
    }%
    \tud@newgeometry{\@tempa}%
    \savegeometry{typearea}%
  }%
  \newcommand*\tud@geometry@hincl{%
    \if@hincl%
      includehead=true%
    \else%
      includehead=false%
    \fi%
  }%
  \newcommand*\tud@geometry@fincl{%
    \if@fincl%
      includefoot=true%
    \else%
      includefoot=false%
    \fi%
  }%
  \newcommand*\tud@geometry@mpincl{%
    \if@mincl%
      includemp=true%
    \else%
      includemp=false%
    \fi%
  }%
}
\newcommand*\tud@currentgeometry{}
\newcommand*\tud@BeforeSelectAnyPageStyle[1]{%
  \ifstr{#1}{\GetRealPageStyle{#1}}{%
    \tud@iftudps{#1}{%
      \tud@ifverlower{2.03}{%
        \tud@ddc@check%
        \ifcase\@tempb\relax% \tud@ddc@foot=false
          \ifstr{\tud@currentgeometry}{tudarea}{}{%
            \loadgeometry{tudarea}%
            \gdef\tud@currentgeometry{tudarea}%
          }%
        \else% \tud@ddc@foot!=false
          \ifstr{\tud@currentgeometry}{tudareaddc}{}{%
            \loadgeometry{tudareaddc}%
            \gdef\tud@currentgeometry{tudareaddc}%
          }%
        \fi%
      }{%
        \ifstr{\tud@currentgeometry}{tudarea}{}{%
          \loadgeometry{tudarea}%
          \gdef\tud@currentgeometry{tudarea}%
        }%
      }%
      \setlength\tud@dim@headdiff{\z@}%
      \tud@font@koma@set{pagefoot}{\usekomafont{tudheadings}}%
      \tud@font@koma@set{pagenumber}{\usekomafont{tudheadings}}%
    }{%
      \ifstr{\tud@currentgeometry}{typearea}{}{%
        \loadgeometry{typearea}%
        \gdef\tud@currentgeometry{typearea}%
      }%
      \setlength\tud@dim@headdiff{\tud@ta@headdiff}%
      \ifcase\tud@geometry\relax\else% true/symmetric/twoside
        \if@hincl%
          \addtolength\tud@dim@headdiff{%
            \dimexpr-\tud@ta@headheight-\tud@dim@headsep\relax%
          }%
        \fi%
      \fi%
      \tud@font@koma@unset{pagefoot}%
      \tud@font@koma@unset{pagenumber}%
    }%
    \global\tud@dim@headdiff=\tud@dim@headdiff%
  }{}%
}
\patchcmd{\cleardoubleoddpageusingstyle}{\pagestyle}{%
  \let\tud@BeforeSelectAnyPageStyle\@gobble\pagestyle%
}{}{\tud@patch@wrn{cleardoubleoddpageusingstyle}}
\patchcmd{\cleardoubleevenpageusingstyle}{\pagestyle}{%
  \let\tud@BeforeSelectAnyPageStyle\@gobble\pagestyle%
}{}{\tud@patch@wrn{cleardoubleevenpageusingstyle}}
\patchcmd{\cleardoublepageusingstyle}{\pagestyle}{%
  \let\tud@BeforeSelectAnyPageStyle\@gobble\pagestyle%
}{}{\tud@patch@wrn{cleardoublepageusingstyle}}
\tud@ifverlower{2.03}{%
  \newcommand*\tud@ddc@enlargepage[1][]{%
    \tud@iftudps{#1}{%
      \ifstr{\tud@currentgeometry}{tudareaddc}{}{%
        \tud@ddc@check%
        \ifcase\@tempb\relax\else% \tud@ddc@foot!=false
          \enlargethispage{-\tud@dim@ddcdiff}%
        \fi%
      }%
    }{}%
  }%
}{}
\newlength\tud@ta@textheight
\newlength\tud@ta@topmargin
\newlength\tud@ta@headheight
\newlength\tud@ta@headsep
\newlength\tud@ta@footheight
\newlength\tud@ta@footskip
\newlength\tud@ta@headdiff
\newcommand*\tud@AfterChangingArea{%
  \setlength\tud@ta@textheight{\textheight}%
  \setlength\tud@ta@topmargin{\topmargin}%
  \setlength\tud@ta@headheight{\headheight}%
  \setlength\tud@ta@headsep{\headsep}%
  \ifcsvoid{ta@fh}{%
    \setlength\tud@ta@footheight{\footheight}%
  }{%
    \setlength\tud@ta@footheight{\ta@fh}%
  }%
  \setlength\tud@ta@footskip{\footskip}%
  \tud@geometry@process%
  \global\@tud@mainlogo@settrue%
  \global\@tud@head@ddclogo@settrue%
  \global\@tud@foot@ddclogo@settrue%
  \global\@tud@foot@logo@settrue%
  \gdef\tud@currentgeometry{}%
  \expandafter\pagestyle\expandafter{\currentpagestyle}%
}
\AtEndPreamble{%
  \tud@ifsacrop{}{%
    \AfterCalculatingTypearea{\tud@AfterChangingArea}%
    \AfterSettingArea{\tud@AfterChangingArea}%
%    \AfterRestoreareas{\tud@AfterChangingArea}%
    \BeforeSelectAnyPageStyle{\tud@BeforeSelectAnyPageStyle{#1}}%
    \recalctypearea%
  }%
}
\newcommand*\tud@ps{tudheadings}
\newcommand*\tud@ps@select{%
  \expandafter\pagestyle\expandafter{\tud@ps}%
  \ifstr{\GetRealPageStyle{\tud@ps}}{empty}{%
    \renewcommand*\titlepagestyle{empty}%
    \renewcommand*\partpagestyle{empty}%
    \renewcommand*\chapterpagestyle{empty}%
    \renewcommand*\indexpagestyle{empty}%
  }{}%
  \ifstr{\GetRealPageStyle{\tud@ps}}{empty.tudheadings}{%
    \renewcommand*\titlepagestyle{empty.tudheadings}%
    \renewcommand*\partpagestyle{empty.tudheadings}%
    \renewcommand*\chapterpagestyle{empty.tudheadings}%
    \renewcommand*\indexpagestyle{empty.tudheadings}%
  }{}%
}
\newcommand*\tud@currentpagestyle{}
\newcommand*\tud@currentpagestyle@set{%
  \ifdefvoid{\tud@currentpagestyle}{%
    \xdef\tud@currentpagestyle{\currentpagestyle}%
  }{}%
}
\newcommand*\tud@currentpagestyle@reset{%
  \ifdefvoid{\tud@currentpagestyle}{}{%
    \expandafter\pagestyle\expandafter{\tud@currentpagestyle}%
    \let\tud@currentpagestyle\relax%
  }%
}
\NewEnviron{tudpage}[1][]{%
  \tud@currentpagestyle@set%
  \clearpage%
  \def\tud@ps{tudheadings}%
  \TUD@parameter@set{tudpage}{#1}%
  \tud@ps@select%
  \tud@multicols@check%
  \ifnum\tud@multicols>\@ne\relax%
    \begin{multicols}{\tud@multicols}%
  \fi%
  \BODY%
  \ifnum\tud@multicols>\@ne\relax%
    \end{multicols}%
  \fi%
}[%
  \aftergroup\tud@currentpagestyle@reset%
  \clearpage%
]
\newcommand*\TUD@parameter@define@ps[1]{%
  \TUD@parameter@define{cdfont}[true]{\TUDoption{cdfont}{#1}}%
  \TUD@parameter@define{cdhead}[true]{\TUDoption{cdhead}{#1}}%
  \TUD@parameter@define{cdfoot}[true]{\TUDoption{cdfoot}{#1}}%
  \TUD@parameter@define{headlogo}{\headlogo{#1}}%
  \TUD@parameter@define{footlogo}{\footlogo{#1}}%
  \TUD@parameter@define{ddc}[true]{\TUDoption{ddc}{#1}}%
  \TUD@parameter@define{ddchead}[true]{\TUDoption{ddchead}{#1}}%
  \TUD@parameter@define{ddcfoot}[true]{\TUDoption{ddcfoot}{#1}}%
  \TUD@parameter@define{cdfonts}[true]{\TUDoption{cdfonts}{#1}}%
  \TUD@parameter@define{tudfonts}[true]{\TUDoption{tudfonts}{#1}}%
  \TUD@parameter@define{barfont}[true]{\TUDoption{barfont}{#1}}%
  \TUD@parameter@define{widehead}[true]{\TUDoption{widehead}{#1}}%
  \TUD@parameter@define{tudfoot}[true]{\TUDoption{tudfoot}{#1}}%
  \TUD@parameter@let{logo}{headlogo}%
}
\TUD@parameter{tudpage}{%
  \TUD@parameter@define{language}{\selectlanguage{#1}}%
  \TUD@parameter@define{columns}{\cs@std@lock{tud@multicols}{#1}}%
  \TUD@parameter@define{pagestyle}{%
    \tud@iftudps{#1}{\renewcommand*\tud@ps{#1}}{%
      \ifstr{#1}{empty}{\renewcommand*\tud@ps{empty.tudheadings}}{%
      \ifstr{#1}{plain}{\renewcommand*\tud@ps{plain.tudheadings}}{%
      \ifstr{#1}{headings}{\renewcommand*\tud@ps{tudheadings}}{%
        \TUD@parameter@error{pagestyle}{%
          headings, plain, empty or any tudheadings page style type%
        }%
      }}}%
    }%
  }%
  \TUD@parameter@define@ps{#1}%
  \TUD@parameter@sethandler{\TUD@parameter@defaulthandler{tudpage}{#1}}%
}
%%% From File: tudscr-layout.dtx
\newcommand*\tud@part@fontcolor{}
\newcommand*\tud@chapter@fontcolor{}
\newkomafont{parttitle}{%
  \tud@font@heading%
  \tud@color{\tud@part@fontcolor}%
  \usesizeofkomafont{section}%
}
\newlength\pageheadingsvskip
\newlength\headingsvskip
\newcommand*\tud@headmidvskip{\par\nobreak\vspace{.5\baselineskip}}
\newcommand*\tud@headmidvskip@neg{%
  \setbox\z@\vbox{\tud@headmidvskip}%
  \vspace*{\dimexpr-\dp\strutbox-\ht\strutbox-\ht\z@\relax}%
}
\newcommand*\tud@layout@process{%
  \ifcase\tud@layout@cover\relax% false
    \bool@std@lock{@tud@cover@cdgeometry}{false}%
  \else% !false
    \bool@std@lock{@tud@cover@cdgeometry}{true}%
  \fi%
  \ifcase\tud@layout@title\relax% false
    \tud@cmd@restore{maketitle}%
    \tud@cmd@restore{@maketitle}%
    \tud@cmd@restore{titlepagestyle}%
    \tud@font@koma@unset{titlehead}%
    \tud@font@koma@unset{title}%
    \tud@font@koma@unset{subtitle}%
    \tud@font@koma@unset{subject}%
    \tud@font@koma@unset{author}%
    \tud@font@koma@unset{date}%
    \tud@font@koma@unset{publishers}%
  \else% !false
    \tud@cmd@store{maketitle}%
    \tud@cmd@store{@maketitle}%
    \tud@cmd@store{titlepagestyle}%
    \tud@font@koma@set{titlehead}{\usekomafont{titlepage}}%
    \tud@font@koma@set{title}{%
      \usekomafont{disposition}%
      \tud@font@heading%
      \tud@font@heading@size%
      \tud@color{\tud@title@fontcolor}%
    }%
    \tud@font@koma@set{subtitle}{%
      \tud@font@heading%
      \usesizeofkomafont{section}%
      \tud@color{\tud@title@fontcolor}%
    }%
    \tud@font@koma@set{subject}{%
      \fontfamily{\sfdefault}%
      \fontseries{\bfdefault}%
      \selectfont%
      \tud@color{\tud@title@fontcolor}%
    }%
    \tud@font@koma@set{author}{\usekomafont{subject}}%
    \tud@font@koma@set{date}{\usekomafont{titlepage}}%
    \tud@font@koma@set{publishers}{\usekomafont{author}}%
    \let\maketitle\tud@maketitle%
    \renewcommand*\titlepagestyle{plain.tudheadings}%
  \fi%
  \ifcase\tud@layout@part\relax% false
    \tud@cmd@restore{partheadstartvskip}%
    \tud@cmd@restore{partheadendvskip}%
    \tud@cmd@restore{partheademptypage}%
    \tud@cmd@restore{partpagestyle}%
    \tud@cmd@restore{@part}%
    \tud@cmd@restore{@spart}%
    \tud@sectioning@reset[addpart]{part}%
    \tud@font@koma@unset{partnumber}%
  \else% !false
    \tud@cmd@store{partheadstartvskip}%
    \tud@cmd@store{partheadendvskip}%
    \tud@cmd@store{partheademptypage}%
    \tud@cmd@store{partpagestyle}%
    \tud@cmd@store{@part}%
    \tud@cmd@store{@spart}%
    \if@tud@parttitle%
      \tud@sectioning@set[addpart]{part}{\usekomafont{parttitle}}%
      \tud@font@koma@set{partnumber}{\usekomafont{parttitle}}%
    \else%
      \tud@sectioning@set[addpart]{part}{%
        \tud@font@heading%
        \tud@color{\tud@part@fontcolor}%
      }%
      \tud@font@koma@set{partnumber}{%
        \tud@font@heading%
        \tud@color{\tud@part@fontcolor}%
      }%
    \fi%
    \let\partheadstartvskip\tud@partheadstartvskip%
    \let\partheadendvskip\tud@partheadendvskip%
    \let\partheademptypage\relax%
    \renewcommand*\partpagestyle{plain.tudheadings}%
    \let\@part\tud@@part%
    \let\@spart\tud@@spart%
  \fi%
  \ifcase\tud@layout@chapter\relax% false
    \tud@cmd@restore{chapterheadstartvskip}%
    \tud@cmd@restore{chapterformat}%
    \tud@cmd@restore{@chapter}%
    \tud@cmd@restore{@schapter}%
    \tud@cmd@restore{@@makechapterhead}%
    \tud@sectioning@reset[addchap]{chapter}%
    \tud@font@koma@unset{chapterprefix}%
    \tud@sectioning@reset[addsec]{section}%
    \tud@sectioning@reset{subsection}%
    \tud@sectioning@reset{subsubsection}%
    \tud@sectioning@reset{minisec}%
  \else% !false
    \tud@cmd@store{chapterheadstartvskip}%
    \tud@cmd@store{chapterformat}%
    \tud@cmd@store{@chapter}%
    \tud@cmd@store{@schapter}%
    \tud@cmd@store{@@makechapterhead}%
    \tud@sectioning@set[addchap]{chapter}{%
      \tud@font@heading%
      \tud@font@heading@size%
      \tud@color{\tud@chapter@fontcolor}%
    }%
    \tud@font@koma@set{chapterprefix}{\usesizeofkomafont{partnumber}}%
    \tud@sectioning@set[addsec]{section}{\tud@font@heading}%
    \tud@sectioning@set{subsection}{\tud@font@heading}%
    \tud@sectioning@set{subsubsection}{\tud@font@heading}%
    \tud@sectioning@set{minisec}{\tud@font@heading}%
    \let\chapterheadstartvskip\tud@chapterheadstartvskip%
    \let\@@makechapterhead\tud@@@makechapterhead%
  \fi%
}
\newcommand*\tud@layout@specialpage@set[1]{%
  \tud@font@koma@set{footnote}{%
    \edef\@tempa{%
      \noexpand\tud@color{%
        \expandafter\noexpand\csname tud@#1@fontcolor\endcsname%
      }%
    }\@tempa%
  }%
  \tud@cmd@store{footnoterule}%
  \let\footnoterule\relax%
}
\newcommand*\tud@layout@specialpage@unset{%
  \tud@font@koma@unset{footnote}%
  \tud@cmd@restore{footnoterule}%
}
\newcommand*\tud@partheadstartvskip{%
  \def\tud@part@fontcolor{}% false/true
  \ifcase\tud@layout@part\relax\or\or% litecolor
    \def\tud@part@fontcolor{HKS41}%
  \or% barcolor
    \def\tud@part@fontcolor{HKS41}%
  \or% bicolor
    \def\tud@part@fontcolor{HKS41}%
  \or% color
    \def\tud@part@fontcolor{HKS41!30}%
  \or% full
    \def\tud@part@fontcolor{HKS41!30}%
  \fi%
  \tud@layout@specialpage@set{part}%
  \begingroup%
    \vspace*{%
      \dimexpr\tud@dim@headdiff+\tud@dim@headingsvskip-\baselineskip%
        +\parskip\relax%
    }%
    \vspace*{\pageheadingsvskip}%
    \setparsizes{\z@}{\z@}{\z@\@plus1fil}\par@updaterelative%
    \if@tud@parttitle%
      \begingroup%
        \tud@font@heading%
        \tud@font@heading@size%
        \tud@color{\tud@part@fontcolor}%
        \ifx\@@title\@empty%
          \ClassWarning{\tudcls@name}{%
            You activated the option `parttitle' but\MessageBreak%
            no title was given%
          }%
          \tud@makeuppercase{\strut}%
        \else%
          \tud@makeuppercase{\@@title}%
        \fi%
        \par\nobreak%
        {\usekomafont{titlepage}{\vskip 2ex\@plus1ex\@minus1ex}}%
      \endgroup%
    \else%
      \usekomafont{partnumber}{\tud@headmidvskip@neg}%
    \fi%
  \endgroup%
}
\newcommand*\tud@partheadendvskip{%
  \tud@cleardoublespecialpage{%
    \def\tud@pagecolor{}%
    \ifcase\tud@layout@part\relax\or% true
      \cs@std@lock{tud@head@bar}{0}%
    \or% litecolor
      \cs@set@lock{tud@head@bar}{1}%
    \or% barcolor
      \cs@set@lock{tud@head@bar}{2}%
    \or% bicolor
      \cs@set@lock{tud@head@bar}{3}%
    \or% color
      \def\tud@pagecolor{HKS41}%
      \cs@set@lock{tud@head@bar}{1}%
    \or% full
      \def\tud@pagecolor{HKS41}%
      \cs@set@lock{tud@head@bar}{3}%
    \fi%
    \addtokomafont{pagenumber}{\usekomafont{tudheadings}}%
    \addtokomafont{pagefoot}{\usekomafont{tudheadings}}%
    \clearpage%
  }%
  \tud@layout@specialpage@unset%
}
\let\tud@@part\@part
\patchcmd{\tud@@part}{%
  \ifnumbered{part}{%
    \size@partnumber{\partformat}%
    \setlength{\@tempskipa}{\scr@part@innerskip}%
    \partheadmidvskip%
  }{}%
}{%
  \ifnumbered{part}{%
    \size@partnumber{\tud@makeuppercase{\partformat}}%
    \if@tud@parttitle%
      \enskip%
    \else%
      \tud@headmidvskip%
    \fi%
  }{%
    \if@tud@parttitle\else%
      \size@partnumber{\vphantom{\partname}}%
      \tud@headmidvskip%
    \fi%
  }%
}{}{\tud@patch@wrn{@part}}%
\let\tud@@spart\@spart
\patchcmd{\tud@@spart}{%
  \normalfont
  \sectfont\nobreak\size@part
}{%
  \normalfont\sectfont\nobreak%
  \if@tud@parttitle\else%
    \size@partnumber{\vphantom{\partname}}%
    \tud@headmidvskip\nobreak%
  \fi%
  \size@part%
}{}{\tud@patch@wrn{@spart}}
\newcommand*\tud@partpreamble{%
  \ifnum\tud@abstract@level>\@ne\relax\def\tud@abstract@level{1}\fi% sec/chap
  \KOMAoptions{titlepage=false}%
  \addtokomafont{disposition}{\tud@color{\tud@part@fontcolor}}%
  \addtokomafont{dictumtext}{\tud@color{\tud@part@fontcolor}}%
  \tud@color{\tud@part@fontcolor}%
  \vskip\dimexpr\topskip+.9\baselineskip\relax%
  \@afterindentfalse\@afterheading%
}
\newcommand*\tud@chapterheadstartvskip{%
  \def\tud@chapter@fontcolor{}%
  \ifcase\tud@layout@chapter\relax\or\else% *color
    \def\tud@chapter@fontcolor{HKS41}%
  \fi%
  \vspace*{%
    \dimexpr\tud@dim@headdiff+\tud@dim@headingsvskip+\parskip\relax%
  }%
  \if@tud@chapterpage%
    \vspace*{\pageheadingsvskip}%
  \else%
    \vspace*{\headingsvskip}%
  \fi%
}%
\newcommand*\tud@@@makechapterhead{}
\let\tud@@@makechapterhead\@@makechapterhead
\patchcmd{\tud@@@makechapterhead}{%
  \chapterformat
  \setlength{\@tempskipa}{\scr@chapter@innerskip}%
  \chapterheadmidvskip
}{%
  \tud@headmidvskip@neg%
  \tud@makeuppercase{\chapterformat}%
  \tud@headmidvskip%
}{}{\tud@patch@wrn{@@makechapterhead}}%
\patchcmd{\tud@@@makechapterhead}{\IfUsePrefixLine{}{\raggedchapter}}{%
  \IfUsePrefixLine{\IfUseNumber{\setlength\parskip{\z@}}{}}{\raggedchapter}%
}{}{\tud@patch@wrn{@@makechapterhead}}%
\newcommand*\tud@chapterpreamble{%
  \ifnum\tud@abstract@level>\@ne\relax\def\tud@abstract@level{1}\fi% sec/chap
  \KOMAoptions{titlepage=false}%
  \if@tud@chapterpage%
    \ifcase\tud@cdfont\relax\or% true
      \TUDoptions{cdfont=true}%
    \or% heavy
      \TUDoptions{cdfont=heavy}%
    \fi%
    \addtokomafont{disposition}{\tud@color{\tud@chapter@fontcolor}}%
    \addtokomafont{dictumtext}{\tud@color{\tud@chapter@fontcolor}}%
    \tud@color{\tud@chapter@fontcolor}%
  \fi%
  \@afterindentfalse\@afterheading%
}
\patchcmd{\set@@@@preamble}{%
  \hbox to\hsize{#4\parbox[{#2}]{#3}{#6\par}#5\par}%
}{%
  \def\@tempa####1@####2{%
    \@nameuse{tud@####1preamble}%
    \KOMAoptionOf[\KOMAoption{parskip}]{\KOMAClassFileName}{parskip}%
  }%
  \hbox to\hsize{%
    \let\phantomsection\relax%
    #4\parbox[{#2}]{#3}{\@tempa#1#6\par}#5\par%
  }%
}{}{\tud@patch@wrn{set@@@@preamble}}
\newcommand*\tud@chapter@pre{%
  \if@tud@chapterpage%
    \@restonecolfalse%
    \if@twocolumn\@restonecoltrue\onecolumn\fi%
    \tud@layout@specialpage@set{chapter}%
  \fi%
}
\newcommand*\tud@head@bar@store{}%
\let\tud@head@bar@store\relax%
\newcommand*\tud@head@bar@restore{}%
\let\tud@head@bar@restore\relax%
\newcommand*\tud@chapter@app{%
  \if@tud@chapterpage%
    \tud@cleardoublespecialpage{%
      \def\tud@pagecolor{}%
      \let\tud@foot@fontcolor\tud@chapter@fontcolor%
      \ifcase\tud@layout@chapter\relax\or% true
        \cs@std@lock{tud@head@bar}{0}%
      \or% litecolor
        \cs@set@lock{tud@head@bar}{1}%
      \or% barcolor
        \cs@set@lock{tud@head@bar}{2}%
      \or% bicolor
        \cs@set@lock{tud@head@bar}{3}%
      \or% color
        \def\tud@pagecolor{HKS41!10}%
        \cs@set@lock{tud@head@bar}{1}%
      \or% fullcolor
        \def\tud@pagecolor{HKS41!10}%
        \cs@set@lock{tud@head@bar}{3}%
      \fi%
      \addtokomafont{pagenumber}{\usekomafont{tudheadings}}%
      \addtokomafont{pagefoot}{\usekomafont{tudheadings}}%
      \clearpage%
    }%
    \tud@layout@specialpage@unset%
    \if@restonecol\twocolumn\fi%
  \else%
    \edef\tud@head@bar@store{\tud@head@bar}%
    \edef\tud@head@bar@restore{%
      \gdef\noexpand\tud@head@bar{\tud@head@bar@store}%
      \global\let\noexpand\tud@head@bar@store\relax%
      \global\let\noexpand\tud@head@bar@restore\relax%
    }%
    \ifcase\tud@layout@chapter\relax\or% true
      \cs@std@lock{tud@head@bar}{0}%
    \or% litecolor
      \cs@set@lock{tud@head@bar}{1}%
    \or% barcolor
      \cs@set@lock{tud@head@bar}{2}%
    \or% bicolor
      \cs@set@lock{tud@head@bar}{3}%
    \or% color
      \cs@set@lock{tud@head@bar}{1}%
    \or% fullcolor
      \cs@set@lock{tud@head@bar}{3}%
    \fi%
    \tud@ifverlower{2.03}{\tud@ddc@enlargepage[\chapterpagestyle]}{}%
  \fi%
  \if@twocolumn%
    \@afterindentfalse\@afterheading%
  \fi%
}
\newcommand*\tud@clearcolor@wrn{%
  \ClassWarning{\tudcls@name}{%
    Option `clearcolor' is only available together with\MessageBreak%
    options `twoside' and `open=right'%
  }%
  \global\let\tud@clearcolor@wrn\relax%
}
\newcommand*\tud@part{}
\newcommand*\tud@spart{}
\newcommand*\tud@addpart{}
\newcommand*\tud@saddpart{}
\newcommand*\tud@chapter{}
\newcommand*\tud@schapter{}
\newcommand*\tud@addchap{}
\newcommand*\tud@saddchap{}
\newcommand*\tud@section{}
\newcommand*\tud@ssection{}
\newcommand*\tud@addsec{}
\newcommand*\tud@saddsec{}
\newcommand*\tud@subsection{}
\newcommand*\tud@ssubsection{}
\newcommand*\tud@subsubsection{}
\newcommand*\tud@ssubsubsection{}
\newcommand*\tud@sectioning@set[3][]{%
  \tud@cmd@store{#2}%
  \ifstr{#2}{minisec}{%
    \renewcommand\minisec[1]{\@@tud@minisec{\tud@makeuppercase{##1}}}%
  }{%
    \tud@sectioning@case{#2}%
    \ifblank{#1}{}{%
      \tud@cmd@store{#1}%
      \tud@sectioning@case{#1}%
    }%
  }%
  \tud@font@koma@set{#2}{#3}%
}
\newcommand*\tud@sectioning@case[1]{%
  \csedef{#1}{%
    \noexpand\SecDef%
    \expandafter\expandafter\expandafter\noexpand%
      \expandafter\csname tud@#1\endcsname%
    \expandafter\expandafter\expandafter\noexpand%
      \expandafter\csname tud@s#1\endcsname%
  }%
  \csedef{tud@#1}[##1]##2{%
    \expandafter\expandafter\expandafter\noexpand%
      \expandafter\csname @@tud@#1\endcsname%
      [{##1}]{\noexpand\tud@sectioning@uppercase{##2}}%
  }%
  \csedef{tud@s#1}##1{%
    \expandafter\expandafter\expandafter\noexpand%
      \expandafter\csname @@tud@#1\endcsname*%
      {\noexpand\tud@sectioning@uppercase{##1}}%
  }%
  \ifstr{#1}{addsec}{%
    \def\tud@addsec[##1]##2{%
      \@@tud@addsec[{##1}]{\tud@sectioning@uppercase##2}%
    }%
    \def\tud@saddsec##1{%
      \@@tud@addsec*{\tud@sectioning@uppercase##1}%
    }%
  }{}%
  \@tempswafalse%
  \ifstr{#1}{chapter}{\@tempswatrue}{}%
  \ifstr{#1}{addchap}{\@tempswatrue}{}%
  \if@tempswa%
    \def\@tempa{,s}%
    \@for\@tempb:=\@tempa\do{%
      \expandafter\pretocmd\expandafter{\csname tud@\@tempb#1\endcsname}{%
        \tud@chapter@pre%
      }{}{\tud@patch@wrn{tud@sectioning@case}}%
      \expandafter\apptocmd\expandafter{\csname tud@\@tempb#1\endcsname}{%
        \tud@chapter@app%
      }{}{\tud@patch@wrn{tud@sectioning@case}}%
    }%
  \fi%
}
\newcommand*\tud@sectioning@reset[2][]{%
  \tud@cmd@restore{#2}%
  \ifblank{#1}{}{\tud@cmd@restore{#1}}%
  \tud@font@koma@unset{#2}%
}
\robustify{\footnote}%
\newcommand*\tud@sectioning@uppercase[1]{%
  \begingroup%
    \if@tud@symbolheadings%
      \let\c@footnote\c@symbolheadings%
      \renewcommand*\thefootnote{\fnsymbol{symbolheadings}}%
    \fi%
    \tud@makeuppercase{#1}%
  \endgroup%
}
%%% From File: tudscr-frontmatter.dtx
\newcommand*\tud@fm@check[2]{%
  \global\let\tud@fm@set\tud@fm@first%
  \ifnumless{\@nameuse{tud@#1@level}}{3}{% false/true/section
    \ifboolexpr{%
      bool {@titlepage} and bool {@tud@#1@fil} and bool {@tud@#1@multi}%
    }{%
      \sbox\z@{\vbox{#2}}%
      \ifdim\textheight<\dimexpr\ht\z@+\dp\z@\relax%
        \ClassWarning{\tudcls@name}{%
          The given content within the `#1'\MessageBreak%
          environment is too large, so it wasn't possible\MessageBreak%
          to center the body vertically. Setting the option\MessageBreak%
          `#1=nofill' would be a solution. You\MessageBreak%
          could also use multiple `#1' environments%
        }%
        \boolfalse{@tud@#1@fil}%
      \fi%
    }{}%
  }{% chapter
    \boolfalse{@tud@#1@multi}%
    \boolfalse{@tud@#1@fil}%
  }%
  \ifnum\@nameuse{tud@#1@toc}>\tw@\relax%
    \tud@fm@toc{#1}{#2}%
  \fi%
  \global\let\tud@fm@set\tud@fm@first%
  #2%
}
\newcommand*\tud@fm@@toc{}
\newcommand*\tud@fm@@@toc{}
\newcommand*\tud@fm@toc[2]{%
  \ifbool{@tud@#1@multi}{%
    \begingroup%
      \let\tud@fm@@@toc\@empty%
      \renewcommand*\tud@fm@head[2]{%
        \protected@edef\@tempa{##2}%
        \protected@xdef\tud@fm@@toc{\tud@fm@@@toc\@tempa}%
        \protected@xdef\tud@fm@@@toc{\tud@fm@@toc/}%
      }%
      \let\clearpage\relax%
      \sbox\z@{\vbox{#2}}%
      \protected@edef\@tempa{%
        \noexpand\endgroup%
        \noexpand\ifnumodd{\csname tud@#1@toc\endcsname}{%
          \noexpand\addchaptertocentry{}{\tud@fm@@toc}%
        }{%
          \noexpand\addsectiontocentry{}{\tud@fm@@toc}%
        }%
      }%
    \@tempa%
  }{%
    \ClassWarning{\tudcls@name}{%
      It isn't possible to use `#1=single'\MessageBreak%
      or `#1=chapter'
      with `#1=tocmultiple'%
    }%
    \edef\@tempa{%
      \noexpand\cs@set@lock{tud@#1@toc}{%
        \the\numexpr\@nameuse{tud@#1@toc}-2\relax%
      }%
    }%
    \@tempa%
  }%
}
\newcommand\tud@fm@set[1]{}
\newcommand\tud@fm@first[1]{%
  \global\let\tud@fm@set\tud@fm@next%
  \if@twocolumn\else%
    \if@titlepage%
      \ifbool{@tud@#1@fil}{%
        \null\vfil%
        \ifnum\@nameuse{tud@#1@level}=\tw@\relax% section
          \vspace{\dimexpr-\parskip-\baselineskip\relax}%
          {\usekomafont{section}{\vspace{-\baselineskip}}}%
        \fi%
      }{}%
    \fi%
  \fi%
}
\newcommand\tud@fm@next[1]{%
  \if@twocolumn%
    \ifbool{@tud@#1@multi}{\par}{\newpage}%
  \else%
    \if@titlepage%
      \ifbool{@tud@#1@multi}{%
        \ifbool{@tud@#1@fil}{\vfil}{}%
      }{%
        \ifbool{@tud@#1@fil}{\null\clearpage\null\vfil}{\clearpage}%
      }%
    \else%
      \ifnum\@nameuse{tud@#1@level}=\z@%
        \ifdef{\main@language}{\vspace*{-\baselineskip}}{}%
      \fi%
    \fi%
  \fi%
}
\newcommand*\tud@fm@body@start[3]{%
  \begingroup%
    \TUD@parameter@set{#1}{#2}%
    \tud@fm@set{#1}%
    \if@twocolumn\else\if@titlepage\else\relax%
      \ifnum\@nameuse{tud@#1@level}<\tw@\begin{\tud@quoting}\fi% false/true
    \fi\fi%
    \ifnum\tud@multicols>\@ne\relax%
      \setlength\multicolsep{\z@}%
      \begin{multicols}{\tud@multicols}[{\tud@fm@head{#1}{#3}}]%
    \else%
      \tud@fm@head{#1}{#3}%
    \fi%
}
\newcommand*\tud@fm@body@end[1]{%
    \ifnum\tud@multicols>\@ne\relax%
      \end{multicols}%
    \else%
      \par%
    \fi%
    \if@twocolumn\else\if@titlepage\else\relax%
      \ifnum\@nameuse{tud@#1@level}<\tw@\end{\tud@quoting}\par\fi% false/true
    \fi\fi%
  \endgroup%
}
\newcommand*\tud@fm@head[2]{%
  \ifcase\@nameuse{tud@#1@level}\relax% false
    \if@titlepage\endgraf\fi%
    \csname phantomsection\endcsname%
    \ifstr{\@currenvir}{\tud@quoting}{}{%
      \if@twocolumn%
        \vskip\dimexpr\smallskipamount-\parskip\relax%
      \else%
        \vskip\dimexpr\bigskipamount-\parskip\relax%
      \fi%
    }%
  \or% true
    \if@titlepage\endgraf\fi%
    \csname phantomsection\endcsname%
    \@afterindentfalse%
    \ifstr{\@currenvir}{\tud@quoting}{}{%
      \vskip\dimexpr\bigskipamount-\parskip\relax%
    }%
    \begingroup%
      \noindent\centering%
      \normalfont\sectfont\nobreak#2%
      \@endparpenalty\@M%
      \endgraf%
    \endgroup%
    \nopagebreak%
    \vskip\dimexpr\medskipamount-\parskip\relax%
    \@afterheading%
  \or% section
    \section*{#2}%
    \ifx\@mkboth\@gobbletwo\else\markright{\MakeMarkcase{#2}}\fi%
  \or% chapter
    \chapter*{#2}%
    \@mkdouble{\MakeMarkcase{#2}}%
  \fi%
  \ifbool{@tud@#1@markboth}{%
    \markboth{\MakeMarkcase{#2}}{\MakeMarkcase{#2}}%
  }{}%
  \ifnum\@nameuse{tud@#1@toc}>\z@\relax%
    \ifnum\@nameuse{tud@#1@toc}<\thr@@\relax%
      \ifnumodd{\csname tud@#1@toc\endcsname}{%
        \addchaptertocentry{}{#2}%
      }{%
        \addsectiontocentry{}{#2}%
      }%
    \fi%
  \fi%
}
\newcommand*\tud@fm@pagestyle[2]{%
  \if@titlepage%
    \ifcsdef{ps@#2}{\def\tud@ps{#2}}{%
      \ClassError{\tudcls@name}{`#2' is no valid pagestyle}{%
        You tried to use `#2' as a pagestyle for the\MessageBreak%
        `#1' environment, but it was never defined.%
      }%
    }%
  \else%
    \ClassWarning{\tudcls@name}{%
      The key `pagestyle' can only be used either with\MessageBreak%
      activated option `titlepage' or with chapter\MessageBreak%
      headings (`#1=chapter')%
    }%
  \fi%
}
\newcommand*\tud@quoting{quotation}
\AfterPackage{quoting}{\renewcommand*\tud@quoting{quoting}}
\csundef{abstract}
\csundef{endabstract}
\NewEnviron{abstract}[1][]{%
  \ifnum\@nameuse{tud@abstract@level}>\tw@\relax\@titlepagetrue\fi% chapter
  \let\tud@ps\relax%
  \TUD@parameter@set{abstract}{#1}%
  \tud@multicols@check%
  \if@titlepage%
    \tud@currentpagestyle@set%
    \ifx\tud@ps\relax\def\tud@ps{empty}\fi%
    \clearpage%
    \tud@ps@select%
  \fi%
  \renewcommand*\nextabstract[1][]{%
    \tud@fm@body@end{abstract}%
    \tud@fm@body@start{abstract}{##1}{\abstractname}%
  }%
  \tud@fm@check{abstract}{%
    \tud@fm@body@start{abstract}{#1}{\abstractname}%
      \BODY%
    \tud@fm@body@end{abstract}%
  }%
}[%
  \if@titlepage%
    \if@tud@abstract@fil\vfil\null\fi%
    \aftergroup\tud@currentpagestyle@reset%
    \clearpage%
  \fi%
]
\TUD@parameter{abstract}{%
  \TUD@parameter@define{language}{\selectlanguage{#1}}%
  \TUD@parameter@define{columns}{\cs@std@lock{tud@multicols}{#1}}%
  \TUD@parameter@define{pagestyle}{\tud@fm@pagestyle{abstract}{#1}}%
  \TUD@parameter@define{markboth}[true]{%
    \ifstrbool{#1}{%
      \@tud@abstract@markbothtrue%
      \ifx\tud@ps\relax\def\tud@ps{headings}\fi%
    }{%
      \@tud@abstract@markbothfalse%
    }{%
      \@tud@abstract@markbothfalse%
      \ifx\tud@ps\relax\def\tud@ps{headings}\fi%
      \manualmark\markboth{#1}{#1}%
    }%
  }%
  \TUD@parameter@define{abstract}{\TUDoption{abstract}{#1}}%
  \TUD@parameter@let{option}{abstract}%
  \TUD@parameter@sethandler{\TUD@parameter@defaulthandler{abstract}{#1}}%
}
\newcommand*\nextabstract[1][]{%
  \ClassError{\tudcls@name}{Incorrect usage of `\string\nextabstract'}{%
    The command `\string\nextabstract' can only be used within\MessageBreak%
    the environment `abstract'.%
  }%
}
\newif\if@tud@declarations
\NewEnviron{declarations}[1][]{%
  \@tud@declarationstrue%
  \ifnum\@nameuse{tud@declaration@level}>\tw@\relax\@titlepagetrue\fi% chapter
  \let\tud@ps\relax%
  \TUD@parameter@set{declaration}{#1}%
  \tud@multicols@check%
  \if@titlepage%
    \tud@currentpagestyle@set%
    \ifx\tud@ps\relax\def\tud@ps{empty}\fi%
    \clearpage%
    \tud@ps@select%
  \fi%
  \tud@fm@check{declaration}{\BODY}%
}[%
  \if@titlepage%
    \if@tud@declaration@fil\vfil\null\fi%
    \aftergroup\tud@currentpagestyle@reset%
    \clearpage%
  \fi%
]
\TUD@parameter{declaration}{%
  \TUD@parameter@define{language}{\selectlanguage{#1}}%
  \TUD@parameter@define{columns}{\cs@std@lock{tud@multicols}{#1}}%
  \TUD@parameter@define{pagestyle}{\tud@fm@pagestyle{declaration}{#1}}%
  \TUD@parameter@define{markboth}[true]{%
    \ifstrbool{#1}{%
      \@tud@declaration@markbothtrue%
      \ifx\tud@ps\relax\def\tud@ps{headings}\fi%
    }{%
      \@tud@declaration@markbothfalse%
    }{%
      \@tud@declaration@markbothfalse%
      \ifx\tud@ps\relax\def\tud@ps{headings}\fi%
      \manualmark\markboth{#1}{#1}%
    }%
  }%
  \TUD@parameter@define{company}{\def\@company{#1}}%
  \TUD@parameter@define{supporter}{\def\@supporter{#1}}%
  \TUD@parameter@define{place}{\def\@place{#1}}%
  \TUD@parameter@define{closing}{\def\@confirmationclosing{#1}}%
  \TUD@parameter@let{confirmationclosing}{closing}%
  \TUD@parameter@define{declaration}{\TUDoption{declaration}{#1}}%
  \TUD@parameter@let{option}{declaration}%
  \TUD@parameter@sethandler{\TUD@parameter@defaulthandler{declaration}{#1}}%
}
\newcommand*\declaration[1][]{%
  \ifbool{@tud@declarations}{%
    \begingroup%
      \tud@fm@confirmation[#1]%
      \tud@fm@blocking[#1]%
    \endgroup%
  }{%
    \begin{declarations}[#1]%
      \tud@fm@confirmation%
      \tud@fm@blocking%
    \end{declarations}%
  }%
}
\newcommand*\nextdeclaration[3][]{%
  \ifbool{@tud@declarations}{%
    \tud@fm@body@start{declaration}{#1}{#2}
      #3%
    \tud@fm@body@end{declaration}%
  }{%
    \ClassError{\tudcls@name}{Incorrect usage of `\string\nextdeclaration'}{%
      The command `\string\nextdeclaration' can only be used\MessageBreak%
      within the environment `declarations'.%
    }%
  }%
}
\newcommand*\confirmation[1][]{%
  \TUD@parameter@sethandler[declaration]{%
    \TUD@parameter@set{declaration}{supporter=##1}%
  }%
  \ifbool{@tud@declarations}{%
    \begingroup%
      \tud@fm@confirmation[#1]%
    \endgroup%
  }{%
    \begin{declarations}[#1]%
      \tud@fm@confirmation%
    \end{declarations}%
  }%
  \TUD@parameter@sethandler[declaration]{%
    \TUD@parameter@defaulthandler{declaration}{##1}%
  }%
}
\newcommand*\tud@fm@confirmation[1][]{%
  \tud@fm@body@start{declaration}{#1}{\confirmationname}%
    \confirmationtext\vskip\z@\@confirmationclosing%
  \tud@fm@body@end{declaration}%
}
\newcommand*\blocking[1][]{%
  \TUD@parameter@sethandler[declaration]{%
    \TUD@parameter@set{declaration}{company=##1}%
  }%
  \ifbool{@tud@declarations}{%
    \begingroup%
      \tud@fm@blocking[#1]%
    \endgroup%
  }{%
    \begin{declarations}[#1]%
      \tud@fm@blocking%
    \end{declarations}%
  }%
  \TUD@parameter@sethandler[declaration]{%
    \TUD@parameter@defaulthandler{declaration}{##1}%
  }%
}
\newcommand*\tud@fm@blocking[1][]{%
  \tud@fm@body@start{declaration}{#1}{\blockingname}%
    \blockingtext%
  \tud@fm@body@end{declaration}%
}
%%% From File: tudscr-title.dtx
\newkomafont{thesis}{\usekomafont{title}\LARGE}
\newkomafont{titlepage}{%
  \usekomafont{subject}%
  \fontseries{\mddefault}%
  \selectfont%
  \large%
}
\newcommand*\tud@title@fontcolor{}
\newcommand*\tud@titlepagenumber{}%
\let\tud@titlepagenumber\relax%
\newcommand*\tud@maketitle[1][]{%
  \begingroup%
    \TUD@parameter@set{title}{#1}%
    \ifcase\tud@layout@title\relax% false
      \ifx\tud@titlepagenumber\relax\gdef\tud@titlepagenumber{1}\fi%
      \tud@cmd@use{maketitle}[\tud@titlepagenumber]%
    \else% !false
      \if@titlepage%
        \tud@maketitlepage%
      \else%
        \def\tud@title@fontcolor{}%
        \ifcase\tud@layout@title\relax\or\else% *color
          \def\tud@title@fontcolor{HKS41}%
        \fi%
        \let\@maketitle\tud@@maketitle%
        \ifx\tud@titlepagenumber\relax\gdef\tud@titlepagenumber{1}\fi%
        \if@twocolumn%
          \tud@title@twocolumn{\tud@cmd@use{maketitle}[\tud@titlepagenumber]}%
        \else%
          \tud@cmd@use{maketitle}[\tud@titlepagenumber]%
        \fi%
      \fi%
    \fi%
  \endgroup%
}
\TUD@parameter{title}{%
  \TUD@parameter@define{cdtitle}[true]{\TUDoption{cdtitle}{#1}}%
  \TUD@parameter@let{cd}{cdtitle}%
  \TUD@parameter@define{pagenumber}{\def\tud@titlepagenumber{#1}}%
  \TUD@parameter@define@ps{#1}%
  \TUD@parameter@sethandler{\TUD@parameter@set{title}{pagenumber=#1}}%
}%
\robustify{\thanks}%
\robustify{\footnotemark}%
\newcommand*\tud@titleback{}%
\newcommand*\tud@maketitlepage{%
  \def\tud@title@fontcolor{}%
  \ifcase\tud@layout@title\relax\or\or% litecolor
    \def\tud@title@fontcolor{HKS41}%
  \or% barcolor
    \def\tud@title@fontcolor{HKS41}%
  \or% bicolor
    \def\tud@title@fontcolor{HKS41}%
  \or% color
    \def\tud@title@fontcolor{HKS41!30}%
  \or% full
    \def\tud@title@fontcolor{HKS41!30}%
  \fi%
  \begin{titlepage}%
    \tud@layout@specialpage@set{title}%
    \ifx\tud@titlepagenumber\relax\else%
      \setcounter{page}{\tud@titlepagenumber}%
    \fi%
    \if@tud@cover\else%
      \let\footnotesize\small%
      \let\footnoterule\relax%
      \let\footnote\thanks%
      \renewcommand*\thefootnote{\@fnsymbol\c@footnote}%
      \let\@oldmakefnmark\@makefnmark%
      \renewcommand*\@makefnmark{\rlap\@oldmakefnmark}%
      \tud@footnote@unhyper%
      \ifx\@extratitle\@empty%
        \if@titlepageiscoverpage%
          \ClassWarning{\tudcls@name}{%
            Using option `titlepage=firstiscover' is only\MessageBreak%
            possible with an extra title. Alternatively you can\MessageBreak%
            create a cover with `\string\makecover'%
          }%
        \fi%
      \else%
        \if@titlepageiscoverpage%
          \edef\titlepage@restore{%
            \noexpand\endgroup%
            \noexpand\global\noexpand\@colht\the\@colht%
            \noexpand\global\noexpand\@colroom\the\@colroom%
            \noexpand\global\vsize\the\vsize%
            \noexpand\global\noexpand\@titlepageiscoverpagefalse%
            \noexpand\let\noexpand\titlepage@restore\noexpand\relax%
          }%
          \begingroup%
          \topmargin=\dimexpr\coverpagetopmargin-1in\relax%
          \oddsidemargin=\dimexpr\coverpageleftmargin-1in\relax%
          \evensidemargin=\dimexpr\coverpageleftmargin-1in\relax%
          \textwidth=\dimexpr\paperwidth-\coverpageleftmargin%
            -\coverpagerightmargin\relax%
          \textheight=\dimexpr\paperheight-\coverpagetopmargin%
            -\coverpagebottommargin\relax%
          \headheight=0pt%
          \headsep=0pt%
          \footskip=\baselineskip%
          \@colht=\textheight%
          \@colroom=\textheight%
          \vsize=\textheight%
          \columnwidth=\textwidth%
          \hsize=\columnwidth%
          \linewidth=\hsize%
        \else%
          \let\titlepage@restore\relax%
        \fi%
        \noindent\@extratitle\next@tdpage%
      \fi%
    \fi%
    \if@tud@bookmarks%
      \if@tud@cover%
        \tudbookmark[0]{\coverpagename}{cover}%
        \ifdef{\bookmarksetup}{\bookmarksetup{startatroot}}{}%
      \else%
        \tudbookmark[0]{\titlepagename}{title}%
        \ifdef{\bookmarksetup}{\bookmarksetup{startatroot}}{}%
      \fi%
    \fi%
    \vspace*{%
      \dimexpr\tud@dim@headdiff+\tud@dim@headingsvskip-\baselineskip%
        +\parskip\relax%
    }%
    \vspace*{\pageheadingsvskip}%
    \setparsizes{\z@}{\z@}{\z@\@plus1fil}\par@updaterelative%
    \begingroup%
      \usekomafont{titlepage}%
      \setlength\@tempdima{\z@}%
      \ifx\@titlehead\@empty\else%
        \sbox\z@{\vbox{%
          \begin{minipage}[t]{\textwidth}%
            {\usekomafont{titlehead}{\@titlehead\par\null}}%
          \end{minipage}\newline\null%
        }}%
        \addtolength\@tempdima{\dimexpr\ht\z@+\dp\z@\relax}%
      \fi%
      \tud@letsubjectthesis%
      \ifx\@subject\@empty\else%
        \sbox\@ne{\vbox{{\usekomafont{subject}{\@subject\par\null}}}}%
        \addtolength\@tempdima{\dimexpr\ht\@ne+\dp\@ne+\p@\relax}%
      \fi%
      \vspace*{-\@tempdima}%
      \ifx\@titlehead\@empty\else\usebox\z@\par\fi%
      \ifx\@subject\@empty\else\usebox\@ne\par\fi%
      {\usekomafont{title}{\tud@title@uppercase{\@title}\par}}%
      \vskip 2ex\@plus1ex\@minus1ex%
      \ifx\@subtitle\@empty\else%
        {\usekomafont{subtitle}{\tud@title@uppercase{\@subtitle}\par}}%
        \vskip 2ex\@plus1ex\@minus1ex%
      \fi%
      \vskip 2\bigskipamount%
      \let\tud@split@author\tud@split@author@title%
      \tud@multiple@split{@author}\par%
      \vskip 2ex\@plus1ex\@minus1ex%
      \ifx\@thesis\@empty%
        \if@tud@cover\else%
          \ifx\@date\@empty\else%
            \vskip 2ex\@plus.1fill%
            {\usekomafont{date}{\@date\nobreakspace\@datemore\par}}%
          \fi%
        \fi%
        \vskip 2ex\@plus.25fill%
      \else%
        \vskip 2ex\@plus.25fill%
        \if@tud@subjectthesis\else%
          {\usekomafont{thesis}{\tud@title@uppercase{\@thesis}\par}}%
          \vskip 2ex\@plus1ex\@minus1ex%
        \fi%
        \if@tud@cover\else%
          \ifx\@graduation\@empty\else%
            \def\@tempc{%
              \@graduation%
              \ifx\@graduationabbr\@empty\else\nobreakspace\@graduationabbr\fi%
            }%
            {\usekomafont{titlepage}{\graduationtext\par}}%
            \vskip 2ex\@plus1ex\@minus1ex%
            \if@tud@subjectthesis%
              {\usekomafont{subject}{\@tempc\par}}%
            \else%
              {\usekomafont{thesis}{\tud@title@uppercase{\@tempc}\par}}%
            \fi%
            \vskip 3ex\@plus1ex\@minus1ex%
          \fi%
        \fi%
        \vskip 2ex\@plus.5fill%
      \fi%
      \if@tud@cover\else%
        \tud@title@names{supervisor}%
        \tud@title@names{referee}%
        \tud@title@names{advisor}%
        \tud@title@names{professor}%
        \ifx\@thesis\@empty\else%
          \tud@datecheck%
          \ifx\@date\@empty\else%
            \vskip 2ex\@plus1ex\@minus1ex%
            \ifstr{\datetext}{}{}{\datetext\@titledelim}%
            {\usekomafont{date}{\@date\nobreakspace\@datemore\par}}%
            \ifx\@defensedate\@empty\else%
              \ifstr{\defensedatetext}{}{}{\defensedatetext\@titledelim}%
              {\usekomafont{date}{\@defensedate\par}}%
            \fi%
          \fi%
        \fi%
      \fi%
      \ifx\@publishers\@empty\else%
        \vskip 2ex\@plus.25fill%
        {\usekomafont{publishers}{\@publishers\par}}%
        \vskip\z@\@plus.25fill%
      \fi%
    \endgroup%
    \let\tud@titleback\relax%
    \if@twoside%
      \@tempswatrue%
      \ifx\@uppertitleback\@empty\ifx\@lowertitleback\@empty%
        \@tempswafalse%
      \fi\fi%
      \if@tempswa%
        \gdef\tud@titleback{%
          \next@tpage%
          \begin{minipage}[t]{\textwidth}%
            \@uppertitleback%
          \end{minipage}\par%
          \vfill%
          \begin{minipage}[b]{\textwidth}%
            \@lowertitleback%
          \end{minipage}\par%
          \@thanks\let\@thanks\@empty%
        }%
      \fi%
    \fi%
    \def\@tempa{%
      \def\tud@pagecolor{}%
      \ifcase\tud@layout@title\relax\or% true
        \cs@std@lock{tud@head@bar}{0}%
      \or% litecolor
        \cs@set@lock{tud@head@bar}{1}%
      \or% barcolor
        \cs@set@lock{tud@head@bar}{2}%
      \or% bicolor
        \cs@set@lock{tud@head@bar}{3}%
      \or% color
        \def\tud@pagecolor{HKS41}%
        \cs@set@lock{tud@head@bar}{1}%
      \or% full
        \def\tud@pagecolor{HKS41}%
        \cs@set@lock{tud@head@bar}{3}%
      \fi%
      \tud@color{\tud@title@fontcolor}%
      \addtokomafont{pagenumber}{\usekomafont{tudheadings}}%
      \addtokomafont{pagefoot}{\usekomafont{tudheadings}}%
      \thispagestyle{empty.tudheadings}%
      \tud@ifverlower{2.03}{\tud@ddc@enlargepage}{}%
    }%
    \if@tud@cover%
      \begingroup%
        \@tempa%
        \cleardoubleemptypage%
      \endgroup%
    \else%
      \tud@cleardoublespecialpage[\tud@titleback]{%
        \@tempa%
        \begingroup%
          \let\thispagestyle\@gobble%
          \next@tpage%
        \endgroup%
      }%
      \ifx\@dedication\@empty\else%
        \next@tdpage\null\vfill%
        {\centering\usekomafont{dedication}{\@dedication\par}}%
        \vskip\z@\@plus3fill%
        \@thanks\let\@thanks\@empty%
        \cleardoubleemptypage%
      \fi%
    \fi%
  \end{titlepage}%
  \if@tud@cover\else%
    \setcounter{footnote}{0}%
    \global\let\and\relax%
  \fi%
}
\newcommand*\tud@title@uppercase[1]{%
  \let\@tempa\relax%
  \begingroup%
    \def\thanks##1{\gdef\@tempa{##1}}%
    \let\footnote\thanks%
    \sbox\z@{#1}%
    \let\thanks\@gobble%
    \let\footnote\@gobble%
    \tud@makeuppercase{#1}%
  \endgroup%
  \ifx\@tempa\relax\else\thanks\@tempa\fi%
}
\newcommand*\tud@title@names[1]{%
  \letcs\@tempa{@#1}%
  \ifx\@tempa\@empty\else%
    \def\and{%
      \ifcsvoid{#1othername}{\par}{%
        \vskip 1ex\@plus.5ex\@minus.5ex%
        {\usekomafont{titlepage}{\@nameuse{#1othername}\par}}%
      }%
      \let\and\par%
    }%
    \vskip 1ex\@plus.5ex\@minus.5ex%
    {\usekomafont{titlepage}{\@nameuse{#1name}\par}}%
    {\usekomafont{author}{\@nameuse{@#1}\par}}%
  \fi%
}
\newcommand*\@titledelim{:\nobreakspace}
\newcommand*\titledelimiter[1]{\gdef\@titledelim{#1}}
\newcommand*\tud@@maketitle{%
  \global\@topnum=\z@%
  \vspace*{%
    \dimexpr\tud@dim@headdiff+\tud@dim@headingsvskip-\baselineskip%
      +\parskip\relax%
  }%
  \vspace*{\headingsvskip}%
  \setparsizes{\z@}{\z@}{\z@\@plus1fil}\par@updaterelative%
  \begingroup%
    \usekomafont{titlepage}%
    \tud@footnote@unhyper%
    \setlength\@tempdima{\z@}%
    \ifx\@titlehead\@empty\else%
      \sbox\z@{\vbox{%
        \begin{minipage}[t]{\textwidth}%
          {\usekomafont{titlehead}{\@titlehead\par\null}}%
        \end{minipage}\newline\null%
      }}%
      \addtolength\@tempdima{\dimexpr\ht\z@+\dp\z@\relax}%
    \fi%
    \TUDoptions{subjectthesis=true}%
    \tud@letsubjectthesis%
    \ifx\@subject\@empty\else%
      \sbox\@ne{\vbox{{\usekomafont{subject}{\@subject\par\null}}}}%
      \addtolength\@tempdima{\dimexpr\ht\@ne+\dp\@ne+\p@\relax}%
    \fi%
    \vspace*{-\@tempdima}%
    \ifx\@titlehead\@empty\else\usebox\z@\par\fi%
    \ifx\@subject\@empty\else\usebox\@ne\par\fi%
    {\usekomafont{title}{\tud@title@uppercase{\@title}\par}}%
    \vskip 2ex\@plus1ex\@minus1ex%
    \ifx\@subtitle\@empty\else%
      {\usekomafont{subtitle}{\tud@title@uppercase{\@subtitle}\par}}%
      \vskip 2ex\@plus1ex\@minus1ex%
    \fi%
    \vskip 2\bigskipamount%
    \let\tud@split@author\tud@split@author@title%
    \tud@multiple@split{@author}\par%
    \vskip 2ex\@plus1ex\@minus1ex%
    {\usekomafont{date}{\@date\nobreakspace\@datemore\par}}%
    \ifx\@publishers\@empty\else%
      \vskip 2ex\@plus1ex\@minus1ex%
      {\usekomafont{publishers}{\@publishers\par}}%
    \fi%
    \ifx\@dedication\@empty\else%
      \vskip 2ex\@plus1ex\@minus1ex%
      {\centering\usekomafont{dedication}{\@dedication\par}}%
    \fi%
    \ifx\@graduation\@empty\else\tud@title@wrn{graduation}\fi%
    \ifx\@supervisor\@empty\else\tud@title@wrn{supervisor}\fi%
    \ifx\@referee\@empty\else\tud@title@wrn{referee}\fi%
    \ifx\@professor\@empty\else\tud@title@wrn{professor}\fi%
    \vskip 2\bigskipamount%
    \tud@ifverlower{2.03}{\tud@ddc@enlargepage[\titlepagestyle]}{}%
  \endgroup%
}
\newcommand*\tud@newline{}
\newcommand*\tud@split@author@title[2]{%
  \tud@multiple@fields@store{@author}{#1}%
  \def\tud@newline{\vskip .5ex\let\tud@newline\newline}%
  {\usekomafont{author}{\ignorespaces#1}}%
  \if@tud@cover\else%
    \ifx\@authormore\@empty\else%
      \tud@newline%
      \@authormore%
    \fi%
    \ifx\@dateofbirth\@empty\else%
      \if@titlepage%
        \tud@newline%
        \ifstr{\dateofbirthtext}{}%
          {}{\dateofbirthtext\@titledelim}\@dateofbirth%
        \ifx\@placeofbirth\@empty\else%
          \nobreakspace\placeofbirthtext\nobreakspace\@placeofbirth%
        \fi%
      \else%
        \tud@title@wrn{dateofbirth}%
      \fi%
    \fi%
    \ifx\@matriculationnumber\@empty\else%
      \if@titlepage%
        \tud@newline%
        \ifstr{\matriculationnumbername}{}%
          {}{\matriculationnumbername\@titledelim}%
        \@matriculationnumber%
      \else%
        \tud@title@wrn{matriculationnumber}%
      \fi%
    \fi%
    \ifx\@matriculationyear\@empty\else%
      \if@titlepage%
        \tud@newline%
        \ifstr{\matriculationyearname}{}%
          {}{\matriculationyearname\@titledelim}%
        \@matriculationyear%
      \else%
        \tud@title@wrn{matriculationyear}%
      \fi%
    \fi%
  \fi%
  \tud@multiple@fields@restore{@author}%
  \tud@multiple@@@split{#2}{\vskip 2ex}%
}
\newcommand\maketitleonecolumn[2][]{%
  \if@twocolumn%
    \if@titlepage%
      \maketitle[#1]%
      \onecolumn{#2}\twocolumn%
    \else%
      \tud@title@twocolumn{\maketitle[#1]{#2}}%
    \fi%
  \else%
    \ClassError{\tudcls@name}{%
      `\string\maketitleonecolumn' can only be used in twocolumn mode%
    }{}%
  \fi%
}
\newsavebox\tud@title@twocolumn@box
\newcommand\tud@title@twocolumn[1]{%
  \onecolumn%
  \begingroup%
    \let\clearpage\relax%
    \let\newpage\relax%
    \global\setbox\tud@title@twocolumn@box\vbox{%
      \vspace*{.9\baselineskip}#1\bigskip%
    }%
  \endgroup%
  \setlength\@tempdima{\textheight}%
  \tud@ifverlower{2.03}{%
    \tud@ddc@check%
    \ifcase\@tempb\relax\else% \tud@ddc@foot!=false
      \setlength\@tempdima{\dimexpr\textheight-\tud@dim@ddcdiff\relax}%
      \@tempswatrue%
    \fi%
  }{}%
  \ifdim\ht\tud@title@twocolumn@box>\@tempdima\relax%
    \@whiledim\ht\tud@title@twocolumn@box>\@tempdima\do{%
      \splittopskip\topskip%
      \splitmaxdepth\maxdepth%
      \vsplit\tud@title@twocolumn@box to \@tempdima%
      \clearpage%
      \setlength\@tempdima{\textheight}%
      \tud@ifverlower{2.03}{\@tempswafalse}{}%
    }%
  \else%
    \setbox\tud@title@twocolumn@box\vbox{#1\bigskip}%
  \fi%
  \twocolumn[\unvbox\tud@title@twocolumn@box]%
  \tud@ifverlower{2.03}{%
    \if@tempswa%
      \ClassWarning{\tudcls@name}{%
        You are using a two-column title along with\MessageBreak%
        the DDC-logo. Unfortunately in this case, the\MessageBreak%
        type area hast to be adjusted manually. Please\MessageBreak%
        use `\string\enlargethispage{-\the\tud@dim@ddcdiff}'\MessageBreak%
        in both columns after the title%
      }%
    \fi%
  }{}%
}
\newcommand*\tud@letsubjectthesis{%
  \if@tud@subjectthesis\ifx\@thesis\@empty\else%
    \ifx\@subject\@empty\else%
      \ClassWarning{\tudcls@name}{%
        The option `subjectthesis' was activated.\MessageBreak%
        The field `subject' will be overwritten with the\MessageBreak%
        given thesis%
      }%
    \fi%
    \let\@subject\@thesis%
  \fi\fi%
}
\newcommand*\tud@title@wrn[1]{%
  \ClassWarning{\tudcls@name}{%
    `\@backslashchar#1' has to be used with\MessageBreak%
    activated titlepage option%
  }%
}
\newif\if@tud@cover
\newcommand*\makecover[1][]{%
  \if@titlepageiscoverpage%
    \ClassWarning{\tudcls@name}{%
      Using both option `titlepage=firstiscover' and\MessageBreak%
      `\string\makecover' together isn't supported. The\MessageBreak%
      option `titlepage=firstiscover' will be ignored. If you\MessageBreak%
      want to create an individual cover, you have to use\MessageBreak%
      `\string\extratitle' instead of `\string\makecover'.\MessageBreak%
      See also the documentation of KOMA-Script%
    }%
    \@titlepageiscoverpagefalse%
  \fi%
  \clearpage%
  \begingroup%
    \let\thanks\@gobble%
    \let\footnote\@gobble%
    \TUD@parameter@set{cover}{#1}%
    \let\tud@layout@title\tud@layout@cover%
    \tud@layout@process%
    \if@tud@cover@cdgeometry%
      \let\coverpagetopmargin\tud@dim@slimmargin%
      \let\coverpagebottommargin\tud@dim@widemargin%
      \let\coverpageleftmargin\tud@dim@widemargin%
      \let\coverpagerightmargin\tud@dim@slimmargin%
      \tud@ifverlower{2.03}{%
        \def\coverpagetopmargin{.5\tud@dim@both}%
        \def\coverpagebottommargin{.5\tud@dim@both}%
      }{}%
    \fi%
    \ifcase\tud@layout@cover\relax% false
      \KOMAoptions{titlepage=firstiscover}%
      \let\@extratitle\@empty%
      \let\@uppertitleback\@empty%
      \let\@lowertitleback\@empty%
      \let\@dedication\@empty%
      \ifx\tud@titlepagenumber\relax\gdef\tud@titlepagenumber{1}\fi%
      \tud@cmd@use{maketitle}[\tud@titlepagenumber]%
    \else% !false
      \@tud@covertrue%
      \@titlepagetrue%
      \edef\titlepage@restore{%
        \noexpand\endgroup%
        \noexpand\global\noexpand\@colht\the\@colht%
        \noexpand\global\noexpand\@colroom\the\@colroom%
        \noexpand\global\vsize\the\vsize%
        \noexpand\let\noexpand\titlepage@restore\noexpand\relax%
      }%
      \begingroup%
        \oddsidemargin=\dimexpr\coverpageleftmargin-1in\relax%
        \evensidemargin=\dimexpr\coverpageleftmargin-1in\relax%
        \textwidth=\dimexpr\paperwidth-\coverpageleftmargin%
          -\coverpagerightmargin\relax%
        \headheight=0pt%
        \headsep=0pt%
        \footskip=\dimexpr\tud@dim@footsep+\tud@ta@footheight\relax%
        \tud@ifverlower{2.03}{%
          \footskip=\dimexpr\tud@dim@headsep+\tud@ta@footheight%
            -1.25\baselineskip\relax%
        }{}%
        \if@tud@cover@cdgeometry%
          \def\coverpagetopmargin{%
            \dimexpr\tud@dim@topmargin+\tud@dim@barheight%
              +\tud@dim@headsep\relax%
          }%
        \else%
          \topmargin=\dimexpr\tud@dim@topmargin+\tud@dim@barheight%
            +\tud@dim@headsep-1in\relax%
          \def\@tempa{2\dimexpr\coverpagetopmargin\relax}%
          \ifx\@tempa\coverpagebottommargin\relax%
            \let\coverpagebottommargin\tud@dim@widemargin%
            \tud@ifverlower{2.03}{%
              \def\coverpagebottommargin{.5\tud@dim@both}%
            }{}%
          \fi%
        \fi%
        \textheight=\dimexpr\paperheight-\coverpagetopmargin%
          -\coverpagebottommargin-\tud@dim@extrabottommargin\relax%
        \topmargin=\dimexpr\coverpagetopmargin-1in\relax%
        \@colht=\textheight%
        \@colroom=\textheight%
        \vsize=\textheight%
        \columnwidth=\textwidth%
        \hsize=\columnwidth%
        \linewidth=\hsize%
        \tud@dim@headdiff=\z@%
        \ifdef{\hypersetup}{\hypersetup{pageanchor=false}}{}%
        \tud@maketitle%
        \clearpage%
      \csname titlepage@restore\endcsname%
    \fi%
  \endgroup%
}
\bool@lock{@tud@cover@cdgeometry}
\TUD@parameter{cover}{%
  \TUD@parameter@define{cdcover}[true]{\TUDoption{cdcover}{#1}}%
  \TUD@parameter@let{cd}{cdcover}%
  \TUD@parameter@define{cdgeometry}[true]{%
    \ifstrbool{#1}{%
      \bool@set@lock{@tud@cover@cdgeometry}{true}%
    }{%
      \bool@set@lock{@tud@cover@cdgeometry}{false}%
    }{%
      \TUD@parameter@error{cdgeometry}{true,false}%
    }%
  }%
  \TUD@parameter@define{pagenumber}{\def\tud@titlepagenumber{#1}}%
  \TUD@parameter@define@ps{#1}%
  \TUD@parameter@sethandler{%
    \ifxnumber{#1}{%
      \TUD@parameter@set{cover}{pagenumber=#1}%
    }{%
      \TUD@parameter@set{cover}{cdgeometry=#1}%
    }%
  }%
}
%%% From File: tudscr-comp.dtx
\newcommand*\tud@deprecated@cmd[2]{%
  \AtBeginDocument{%
    \ifcsdef{#1}{}{%
      \expandafter\newrobustcmd\csname #1\endcsname{%
        \ClassWarning{\tudcls@name}{%
          The command `\@backslashchar#1' is deprecated.\MessageBreak%
          It's recommended to use `\@backslashchar#2' instead%
        }%
        \csletcs{#1}{#2}%
        \@nameuse{#2}%
      }%
    }%
  }%
}
\newlength\chapterheadingvskip
\let\chapterheadingvskip\headingsvskip
\tud@deprecated@cmd{professorship}{chair}
\tud@deprecated@cmd{studentid}{matriculationnumber}
\tud@deprecated@cmd{matriculationid}{matriculationnumber}
\tud@deprecated@cmd{enrolmentyear}{matriculationyear}%
\tud@deprecated@cmd{birthplace}{placeofbirth}
\tud@deprecated@cmd{location}{place}
\tud@deprecated@cmd{submissiondate}{date}
\tud@deprecated@cmd{oralexaminationdate}{defensedate}%
\tud@deprecated@cmd{birthday}{dateofbirth}
\tud@deprecated@cmd{logofile}{headlogo}
\tud@deprecated@cmd{logofilename}{headlogo}
\AfterPackage{tudscrsupervisor}{%
  \tud@deprecated@cmd{startdate}{issuedate}%
  \tud@deprecated@cmd{finaldate}{duedate}%
  \tud@deprecated@cmd{maturitydate}{duedate}%
}
%%% From File: tudscr-misc.dtx
\newcounter{symbolheadings}[chapter]%
\newcommand*\tudbookmark[1][]{\@gobbletwo}
\newcommand*\tud@footnote@unhyper{}
\AfterPackage{hyperref}{%
  \renewcommand*\tudbookmark[3][]{%
    \relax%
    \if@tud@bookmarks%
      \phantomsection%
      \ifblank{#1}{\pdfbookmark{#2}{#3}}{\pdfbookmark[#1]{#2}{#3}}%
    \fi%
  }%
  \renewcommand*\tud@footnote@unhyper{%
    \let\Hy@saved@footnotemark\@footnotemark%
    \let\Hy@saved@footnotetext\@footnotetext%
    \let\@footnotemark\H@@footnotemark%
    \let\@footnotetext\H@@footnotetext%
  }%
  \pdfstringdefDisableCommands{\let\NoCaseChange\@firstofone}%
}
\pretocmd{\maketitle}{%
  \if@tud@bookmarks%
    \ifdef{\bookmarksetup}{\bookmarksetup{startatroot}}{}%
  \fi%
  \tudbookmark[0]{\titlepagename}{title}%
}{}{\tud@patch@wrn{maketitle}}
\pretocmd{\tableofcontents}{%
  \if@tud@bookmarks%
    \ifdef{\bookmarksetup}{\bookmarksetup{startatroot}}{}%
  \fi%
  \tudbookmark[0]{\contentsname}{toc}%
}{}{\tud@patch@wrn{tableofcontents}}
\BeforePackage{tocloft}{%
  \ClassWarning{\tudcls@name}{%
    It is not recommended to use package `tocloft'.\MessageBreak%
    Loading the package will certainly lead to problems\MessageBreak%
    with table of contents and any list of floats. You\MessageBreak%
    should use the appropriate options of KOMA-Script%
  }%
}
\endinput
%%
%% End of file `tudscrreprt.cls'.
