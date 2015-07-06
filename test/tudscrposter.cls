%%
%% This is file `tudscrposter.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tudscr-version.dtx  (with options: `class,poster')
%% tudscr-base.dtx  (with options: `class,load')
%% tudscr-fonts.dtx  (with options: `class,option')
%% tudscr-pagestyle.dtx  (with options: `class,poster,option')
%% tudscr-layout.dtx  (with options: `class,poster,option')
%% tudscr-title.dtx  (with options: `class,poster,option')
%% tudscr-frontmatter.dtx  (with options: `class,poster,option')
%% tudscr-comp.dtx  (with options: `class,poster,option')
%% tudscr-misc.dtx  (with options: `class,poster,option')
%% tudscr-misc.dtx  (with options: `class,poster,execute')
%% tudscr-base.dtx  (with options: `class,body')
%% tudscr-fonts.dtx  (with options: `class,body')
%% tudscr-fields.dtx  (with options: `class,poster,body')
%% tudscr-locale.dtx  (with options: `class,poster,body')
%% tudscr-pagestyle.dtx  (with options: `class,poster,body')
%% tudscr-layout.dtx  (with options: `class,poster,body')
%% tudscr-poster.dtx  (with options: `class,body')
%% tudscr-title.dtx  (with options: `class,poster,body')
%% tudscr-frontmatter.dtx  (with options: `class,poster,body')
%% tudscr-comp.dtx  (with options: `class,poster,body')
%% tudscr-misc.dtx  (with options: `class,poster,body')
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
\newcommand*\TUD@ProvidesClass[3]{%
  \newcommand*\TUDClassName@KOMA{#2}%
  \@ifundefined{TUDClassName@Parent}{\newcommand*\TUDClassName{#1}}{}%
  \ProvidesClass{#1}[%
  2015/07/03 v2.05 BETA TUD-KOMA-Script
    ^^J#3 (#2)%
  ]%
  \@ifundefined{TUDClassName@Parent}{\TUD@ClassInfo}{}%
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
\TUD@ProvidesClass{tudscrposter}{scrartcl}{poster class}
\@ifundefined{TUDScript}{%
  \DeclareRobustCommand{\TUDScript}{%
    \ifdin{TUD-KOMA-SCRIPT}{%
      \textsf{T\kern.05em U\kern.05em D\kern.1em-\kern.1em}\KOMAScript%
    }\csname xspace\endcsname%
  }%
}{}
%%% From File: tudscr-base.dtx
\RequirePackage{tudscrbase}[\TUDVersion]
\ifx\TUD@noworlater\TUD@noworlater@simple
  \renewcommand*{\TUD@noworlater}[2]{#1\AtEndOfClass{#1#2}}%
  \AtEndOfClass{\renewcommand*\TUD@noworlater[2]{#1#2}}%
\fi
%%% From File: tudscr-fonts.dtx
\PreventPackageFromLoading[%
  \ClassWarning{\TUDClassName}{%
    The package `tudscrfonts' must not be used with\MessageBreak%
    a TUD-KOMA-Script class%
  }%
]{tudscrfonts}
\newif\if@tud@univers
\newif\if@tud@dinbold
\newcommand*\tud@univers{lun}
\newcommand*\tud@dinbold{0m6}
\newif\if@tud@fontspec
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
  \AtEndOfFamilyOptions{\if@atdocument\tud@font@skip@set\fi}%
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
\newcommand*\tud@ps@list{}
\newcommand*\tud@iftudps[3]{%
  \xifinlist{\GetRealPageStyle{#1}}{\tud@ps@list}{#2}{#3}%
}
\newif\if@tud@ddc@internal
\newcommand*\tud@clearpage@iftudps{%
  \if@tud@ddc@internal\else\if@atdocument%
    \tud@iftudps{\currentpagestyle}{\clearpage}{}%
  \fi\fi%
}
\newcommand*\tud@pagestyle@iftudps{%
  \if@tud@ddc@internal\else\if@atdocument%
    \tud@iftudps{\currentpagestyle}{%
      \expandafter\pagestyle\expandafter{\currentpagestyle}%
    }{}%
  \fi\fi%
}
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
\newif\if@tud@headlogo@option@set
\newif\if@tud@footlogo@option@set
\newif\if@tud@ddc@auto
\newcommand*\tud@ddc{0}
\TUD@key{ddc}[true]{%
  \tud@ifverlower{2.04}{\tud@clearpage@iftudps}{}%
  \TUD@set@numkey{ddc}{tud@ddc}{\tud@ddc@switch}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tud@ddc@internal%
      \@tud@ddc@autofalse%
    \else%
      \@tud@ddc@autotrue%
      \@tud@ddc@internaltrue%
      \TUDoptions{ddchead=false}%
      \TUDoptions{ddcfoot=false}%
      \@tud@ddc@internalfalse%
    \fi%
    \global\@tud@headlogo@option@settrue%
    \global\@tud@footlogo@option@settrue%
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
      \TUDoptions{ddcfoot=false}%
      \TUDoptions{ddc=false}%
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
      \TUDoptions{ddchead=false}%
      \TUDoptions{ddc=false}%
      \@tud@ddc@internalfalse%
    \fi%
  \fi%
  \tud@ifverlower{2.04}{\tud@pagestyle@iftudps}{}%
}
\newcommand*\tud@ddc@check{%
  \let\@tempa\tud@ddc@head%
  \let\@tempb\tud@ddc@foot%
  \if@tud@ddc@auto%
    \ifdefvoid{\@headlogo}{%
      \let\@tempa\tud@ddc%
      \let\@tempb\z@%
    }{%
      \let\@tempa\z@%
      \let\@tempb\tud@ddc%
    }%
  \fi%
  \tud@ifverlower{2.03}{%
    \ifnum\@tempb=\z@\relax%
      \ifdefvoid{\@footlogo}{}{\let\@tempb\m@ne}%
    \fi%
  }{}%
}
\newlength\tud@dim@extrabottommargin
\TUD@key{extrabottommargin}{%
  \TUD@noworlater{%
    \TUD@set@lengthkey{extrabottommargin}{\tud@dim@extrabottommargin}{#1}%
  }{%
    \ifx\FamilyKeyState\FamilyKeyStateProcessed%
      \if@atdocument\tud@geometry@process\fi%
    \fi%
  }%
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
        \ifx\@mkdouble\@gobble\else\KOMAoptions{automark}\fi%
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
    {symmetric}{2},{centred}{2},{centered}{2},%
    {normal}{2},{standard}{2},{std}{2},%
    {twoside}{3},{balanced}{3}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@atdocument\recalctypearea\fi%
  \fi%
}
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
\newcommand*\tud@cd{0}
\TUD@key{cd}[true]{%
  \TUD@set@numkey{cd}{tud@cd}{\tud@layout@switch}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
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
      \ifcase\tud@cd\relax\else% !false
        \tud@font@koma@reset{part}%
        \tud@font@koma@reset{partnumber}%
        \tud@font@koma@reset{section}%
        \tud@font@koma@reset{subsection}%
        \tud@font@koma@reset{subsubsection}%
      \fi%
    \fi%
  }%
}
%%% From File: tudscr-title.dtx
%%% From File: tudscr-frontmatter.dtx
\newcommand*\tud@fm@switch{%
  {section}{2},{sect}{2},{sec}{2},{addsec}{2},%
  {new}{2},{standard}{2},{heading}{2},%
  {nottotoc}{10},{notoc}{10},%
  {totoc}{11},{toc}{11},{totoclevelup}{11},{toclevelup}{11},{levelup}{11},%
  {totocleveldown}{12},{tocleveldown}{12},{leveldown}{12},%
  {tocmultiple}{13},{tocmulti}{13},{tocall}{13},{tocaggregate}{13},%
  {totocmultiple}{13},{totocmulti}{13},{totocall}{13},{totocaggregate}{13}%
}
\newcommand*\tud@abstract@level{0}
\cs@lock{tud@abstract@toc}{0}
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
    \or% single
    \or% multiple
    \or% nofil
    \or% fil
    \or% markboth
    \or% nomarkboth
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
%%% From File: tudscr-comp.dtx
\newcommand*\TUD@deprecated@key[2]{%
  \ClassWarning{\TUDClassName}%
  {%
    The option key `#1' is deprecated.\MessageBreak%
    It's recommended to use `#2'\MessageBreak%
    instead%
  }%
  \TUDoptions{#2}%
}
\TUD@key{fontspec}[true]{%
  \ClassWarning{\TUDClassName}%
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
    \ClassError{\TUDClassName}%
      {Option `fontspec' too late}{%
      Option `fontspec' can only be set while loading the\MessageBreak%
      class `\TUDClassName'
      but you have tried to set it up later.%
    }%
    \FamilyKeyStateProcessed%
  }%
  \if@tud@fontspec%
    \RequirePackage{fontspec}[2014/06/21]%
  \fi%
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
    \ClassWarningNoLine{\TUDClassName}%
    {%
      You have set option `tudscrver' to `#1', but\MessageBreak%
      this value is not supported. Because of this, the\MessageBreak%
      value for `tudscrver' was set to `first'%
    }%
    \FamilyKeyStateProcessed%
  }{%
    \ClassInfoNoLine{\TUDClassName}%
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
    \ClassError{\TUDClassName}%
    {Option `tudscrver' too late}{%
      Option `tudscrver' can only be set while loading the\MessageBreak%
      class `\TUDClassName'
      but you have tried to set it up later.%
    }%
    \FamilyKeyStateProcessed%
  }%
  \ifcsdef{scr@v@3.17}{%
    \ifnum\scr@compatibility<\@nameuse{scr@v@3.12}\relax%
      \ClassError{\TUDClassName}{%
        KOMA-Script compatibility level too low%
      }{%
        \TUDVersion\space has to be used at least with\MessageBreak%
        KOMA-Script compatibility option `version=v3.12'.%
      }%
    \fi%
  }{%
    \ClassError{\TUDClassName}{%
      KOMA-Script v3.17 is required%
    }{%
      \TUDVersion\space has to be used with KOMA-Script v3.17\MessageBreak%
      at least. You're using \KOMAScriptVersion%
    }%
  }%
}
\@namedef{tud@v@first}{0}
\@namedef{tud@v@2.02}{0}
\@namedef{tud@v@v2.02}{0}
\@namedef{tud@v@2.03}{1}
\@namedef{tud@v@v2.03}{1}
\@namedef{tud@v@2.04}{2}
\@namedef{tud@v@v2.04}{2}
\@namedef{tud@v@2.05}{2}
\@namedef{tud@v@v2.05}{2}
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
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\TUDClassName@KOMA}}
\TUDExecuteOptions{cd=bicolor,cdfont=true,tudbookmarks=false}
\TUDProcessOptions\relax
\LoadClass{\TUDClassName@KOMA}[2015/04/23]
%%% From File: tudscr-base.dtx
\RequirePackage{environ}[2013/04/01]
\AtEndPreamble{%
  \@ifpackageloaded{graphicx}{}{%
    \@ifpackageloaded{graphics}{%
      \ClassWarningNoLine{\TUDClassName}{%
        The package `graphics' was superseded by `graphicx',\MessageBreak%
        which is automatically loaded%
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
      \ClassWarning{\TUDClassName}{%
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
\@tempcnta=\z@\relax
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
      \ClassInfoNoLine{\TUDClassName}%
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
      \ClassWarningNoLine{\TUDClassName}%
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
\providecommand*\tudfont[1]{\cdfont{#1}}
\newcommand*\textcdfont[2]{%
  \@cdfont{#1}%
  \ifx\@tempc\relax\else%
    \ifstr{\@tempc}{dinbn}{\textdbn{#2}}{\@nameuse{textu\@tempc}{#2}}%
  \fi%
}
\newcommand*\@cdfont[1]{%
  \tud@trimfontname\@tempa{#1}%
  \ifstr{\@tempa}{45}{\def\@tempc{ln}}{%
  \ifstr{\@tempa}{55}{\def\@tempc{rn}}{%
  \ifstr{\@tempa}{65}{\def\@tempc{bn}}{%
  \ifstr{\@tempa}{75}{\def\@tempc{xn}}{%
  \ifstr{\@tempa}{45oblique}{\def\@tempc{ls}}{%
  \ifstr{\@tempa}{55oblique}{\def\@tempc{rs}}{%
  \ifstr{\@tempa}{65oblique}{\def\@tempc{bs}}{%
  \ifstr{\@tempa}{75oblique}{\def\@tempc{xs}}{%
  \ifstr{\@tempa}{oblique45}{\def\@tempc{ls}}{%
  \ifstr{\@tempa}{oblique55}{\def\@tempc{rs}}{%
  \ifstr{\@tempa}{oblique65}{\def\@tempc{bs}}{%
  \ifstr{\@tempa}{oblique75}{\def\@tempc{xs}}{%
  \ifstr{\@tempa}{din}{\def\@tempc{dinbn}}{%
  \ifstr{\@tempa}{din65}{\def\@tempc{dinbn}}{%
    \let\@tempc\relax%
    \ClassWarning{\TUDClassName}%
      {The font `#1' is unknown}%
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
  \tud@@trimfontname{univers}{}%
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
      \ClassWarningNoLine{\TUDClassName}%
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
  \tud@font@skip@set%
  \ifstr{#1}{nomath}{}{\tud@font@math@set}%
  \normalfont\selectfont%
  \tud@layout@process%
}
\newcommand*\tud@font@skip@set{%
  \tud@ifverlower{2.04}{}{%
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
  }%
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
      \ClassWarning{\TUDClassName}{%
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
\newcommand*\@department{}
\newcommand*\@institute{}
\newcommand*\@chair{}
\newcommand*\@faculty@foot{}
\newcommand*\@department@foot{}
\newcommand*\@institute@foot{}
\newcommand*\@chair@foot{}
\newcommand*\faculty[2][\@empty]{\tud@foot@line@add{faculty}{#2}{#1}}
\newcommand*\department[2][\@empty]{\tud@foot@line@add{department}{#2}{#1}}
\newcommand*\institute[2][\@empty]{\tud@foot@line@add{institute}{#2}{#1}}
\newcommand*\chair[2][\@empty]{\tud@foot@line@add{chair}{#2}{#1}}
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
\providecommand*\publisher[1]{\publishers{#1}}
\newcommand*\@professor{}
\newcommand*\@professor@foot{}
\newcommand*\professor[2][\@empty]{\tud@foot@line@add{professor}{#2}{#1}}
\newcommand*\supervisor[1]{}
\newcommand*\@place{Dresden}
\newcommand*\place[1]{\gdef\@place{#1}}
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
\newcommand*\printdate[1]{#1}
\BeforePackage{isodate}{\undef\printdate}
\newcommand*\tud@printdate[2]{%
  \ifx\today#2\relax%
    \gdef#1{#2}%
  \else%
    \ifxblank{#2}%
      {\gdef#1{}}%
      {\gdef#1{\printdate{#2}}}%
  \fi%
}
\newcommand*\tud@datecheck{%
  \ifdefvoid{\@duedate}{%
    \ClassWarning{\TUDClassName}{%
      `\string\date' was not given.\MessageBreak%
      Since a thesis is a self-contained work, an end\MessageBreak%
      date should be specified by the author.\MessageBreak%
      Nevertheless, today's date is used%
    }%
  }{%
    \ClassWarning{\TUDClassName}{%
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
\newcommand*\@contactperson{}
\newcommand*\contactperson[1]{\gdef\@contactperson{#1}}
\let\supervisor\contactperson
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
}
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
}
\newcommand*\tud@split@contactperson[2]{}
\newcommand*\tud@split@contactperson@list{office,telephone,emailaddress}
%%% From File: tudscr-locale.dtx
\newcommand*\tud@locale@define[1]{%
  \providecommand*#1{%
    \ClassError{\TUDClassName}{%
      `\string#1' not defined for language `\languagename'%
    }{%
      Currently the class `\TUDClassName' only supports the\MessageBreak%
      languages german and english an its dialects. You must\MessageBreak%
      define single patterns by yourself, e.g.:\MessageBreak%
      `\string\providecaptionname{\languagename}\string#1{<text>}'\MessageBreak%
      You can send your definitions to \tudscrmail\space in\MessageBreak%
      order to implement support for additional languages.
    }%
  }%
}
\tud@locale@define{\authorname}
\tud@locale@define{\contactname}
\tud@locale@define{\contactpersonname}
\newcommand*\tud@locale@german{%
  \providecaptionname{%
    german,ngerman,austrian,naustrian,swissgerman,nswissgerman%
  }%
}
\tud@locale@german{\authorname}{Autor}%
\tud@locale@german{\contactname}{Kontakt}%
\tud@locale@german{\contactpersonname}{Ansprechpartner}%
\newcommand*\tud@locale@english{%
  \providecaptionname{%
    american,australian,british,canadian,english,newzealand,UKenglish,USenglish%
  }%
}
\tud@locale@english{\authorname}{Author}%
\tud@locale@english{\contactname}{Contact}%
\tud@locale@english{\contactpersonname}{Contact}%
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
\tud@cmd@store{pagestyle}
\cslet{ps@tudheadings}{\ps@headings}%
\cslet{ps@plain.tudheadings}{\ps@plain}%
\cslet{ps@empty.tudheadings}{\ps@empty}%
\providecommand*\currentpagestyle{plain}
\providecommand*\BeforeSelectAnyPageStyle[1]{}
\providecommand*\GetRealPageStyle[1]{#1}
\BeforePackage{scrlayer-scrpage}{%
  \tud@cmd@restore{pagestyle}%
  \csundef{ps@tudheadings}%
  \csundef{ps@plain.tudheadings}%
  \csundef{ps@empty.tudheadings}%
  \undef\currentpagestyle%
  \undef\BeforeSelectAnyPageStyle%
  \undef\GetRealPageStyle%
}
\let\tud@pagestyle\pagestyle
\apptocmd{\tud@pagestyle}{%
  \edef\currentpagestyle{#1}%
}{}{\tud@patch@wrn{pagestyle}}%
\renewcommand*\pagestyle[1]{\AfterPackage!{scrlayer-scrpage}{\pagestyle{#1}}}
\AtEndPreamble{%
  \@ifpackageloaded{scrlayer-scrpage}{}{%
    \let\pagestyle\tud@pagestyle%
    \undef\tud@pagestyle%
  }%
}
\AfterPackage{scrlayer-scrpage}{%
  \DeclareNewLayer[%
    background,headsep,%
    voffset=\tud@dim@logoy,%
    contents={%
      \tud@mainlogo@set%
      \tud@headlogo@option@set%
      \hspace*{\dimexpr\tud@dim@logox-\tud@dim@widemargin\relax}%
      \tud@mainlogo@use\hfill\tud@headlogo@use%
    },%
  ]{tudheadings.head.content}%
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
          \@tempc\rule{\layerwidth}{\layerheight}%
        \fi%
      \fi%
    },%
  ]{tudheadings.foot.back}%
  \tud@ifverlower{2.03}{%
    \ModifyLayer[%
      addvoffset=-\tud@dim@ddcdiff+\ht\strutbox,%
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
          \fi%
        \fi%
      },%
    ]{tudheadings.foot.back}%
  }{}%
  \DeclareNewLayer[%
    background,foot,%
    height=\dimexpr\paperheight-\layeryoffset\relax,%
    contents={%
      \tud@footlogoheight@set%
      \setlength\@tempdima{\dimexpr\layerheight-\dp\strutbox\relax}%
      \tud@footlogo@option@set%
      \tud@footlogo@cmd@set{\@tempdima}{\layerwidth}%
      \tud@footcontent@use{\@tempdima}{\layerwidth}%
      \hspace*{-\layerwidth}%
      \tud@footlogo@cmd@use%
      \hspace*{-\layerwidth}%
      \hfill\tud@footlogo@ddc@use{\@tempdima}%
    },%
  ]{tudheadings.foot.content}%
  \tud@ifverlower{2.03}{%
    \ModifyLayer[%
      addvoffset=-\tud@dim@ddcdiff+\ht\strutbox,%
      height=\dimexpr.6\tud@dim@topmargin+\dp\strutbox\relax,%
    ]{tudheadings.foot.content}%
  }{}%
  \DeclareNewLayer[%
    background,%
  ]{tudheadings.last}%
  \DeclareNewPageStyleByLayers[%
    onselect=\tud@ps@onselect,onbackground=\tud@ps@onbackground%
  ]{tudheadings}{%
    tudheadings.head.back,%
    tudheadings.head.content,%
    tudheadings.head.bar,%
    tudheadings.head.text,%
    tudheadings.head.upperline,%
    tudheadings.head.lowerline,%
    tudheadings.head.upperwideline,%
    tudheadings.head.lowerwideline,%
    tudheadings.foot.back,%
    tudheadings.foot.content,%
    tudheadings.last,%
    scrheadings.foot.odd,%
    scrheadings.foot.even,%
    scrheadings.foot.oneside,%
    scrheadings.foot.above.line,%
    scrheadings.foot.below.line%
  }%
  \listadd\tud@ps@list{tudheadings}%
  \DeclareNewPageStyleAlias{tud}{tudheadings}%
  \DeclareNewPageStyleAlias{tudscr}{tudheadings}%
  \DeclareNewPageStyleAlias{tudscrheadings}{tudheadings}%
  \DeclareNewPageStyleByLayers[%
    onselect=\tud@ps@onselect,onbackground=\tud@ps@onbackground%
  ]{plain.tudheadings}{%
    tudheadings.head.back,%
    tudheadings.head.content,%
    tudheadings.head.bar,%
    tudheadings.head.text,%
    tudheadings.head.upperline,%
    tudheadings.head.lowerline,%
    tudheadings.head.upperwideline,%
    tudheadings.head.lowerwideline,%
    tudheadings.foot.back,%
    tudheadings.foot.content,%
    tudheadings.last,%
    plain.scrheadings.foot.odd,%
    plain.scrheadings.foot.even,%
    plain.scrheadings.foot.oneside,%
    plain.scrheadings.foot.above.line,%
    plain.scrheadings.foot.below.line%
  }%
  \listadd\tud@ps@list{plain.tudheadings}%
  \DeclareNewPageStyleAlias{plain.tudscrheadings}{plain.tudheadings}%
  \DeclareNewPageStyleAlias{tudplain}{plain.tudheadings}%
  \DeclareNewPageStyleAlias{tudscrplain}{plain.tudheadings}%
  \DeclareNewPageStyleAlias{tudheadingsplain}{plain.tudheadings}%
  \DeclareNewPageStyleAlias{tudscrheadingsplain}{plain.tudheadings}%
  \DeclareNewPageStyleByLayers[%
    onselect=\tud@ps@onselect,onbackground=\tud@ps@onbackground%
  ]{empty.tudheadings}{%
    tudheadings.head.back,%
    tudheadings.head.content,%
    tudheadings.head.bar,%
    tudheadings.head.text,%
    tudheadings.head.upperline,%
    tudheadings.head.lowerline,%
    tudheadings.head.upperwideline,%
    tudheadings.head.lowerwideline,%
    tudheadings.foot.back,%
    tudheadings.foot.content,%
    tudheadings.last%
  }%
  \listadd\tud@ps@list{empty.tudheadings}%
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
\PreventPackageFromLoading[%
  \ClassWarning{\TUDClassName}{%
    The package `fancyhdr' must not be used with a\MessageBreak%
    TUD-KOMA-Script class. You should make use of the\MessageBreak%
    capabilities of package `scrlayer-scrpage' instead%
  }%
]{fancyhdr}
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
    \ClassWarningNoLine{\TUDClassName}{No `\string\faculty' given}%
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
  \ClassWarning{\TUDClassName}{%
    The given entries for the headline\MessageBreak%
    (faculty, institute etc.) are #1\MessageBreak%
    too wide for the textwidth%
  }%
  \global\let\tud@head@text@wrn\@gobble%
}
\newcommand*\tud@newlayerbox[1]{%
  \expandafter\newsavebox\csname tud@logo@#1\endcsname%
}
\newcommand*\tud@savelayerbox[1]{%
  \global\expandafter\sbox\csname tud@logo@#1\endcsname%
}
\newcommand*\tud@uselayerbox[1]{%
  \expandafter\usebox\csname tud@logo@#1\endcsname%
}
\newcommand*\tud@vlayerbox[3]{%
  \begingroup%
    \setbox\z@\vbox{#2}%
    \setlength\@tempdima{\dimexpr\ht\z@+\dp\z@-#1\relax}%
    \ifdim\@tempdima>\z@\relax%
      \ClassWarning{\TUDClassName}{%
        #3\MessageBreak%
        The maximum height is exceeded by \the\@tempdima%
      }%
    \fi%
  \endgroup%
  \vbox to #1{#2}%
}
\tud@newlayerbox{main@black}
\tud@newlayerbox{main@HKS41}
\tud@newlayerbox{main@white}
\newlength\tud@mainlogoheight
\newcommand*\tud@mainlogo@wrn[1]{}
\newif\if@tud@mainlogo@set
\newcommand*\tud@mainlogo@set{%
  \if@tud@mainlogo@set%
    \def\@tempa{\includegraphics[keepaspectratio,width=\tud@dim@logowidth]}%
    \tud@savelayerbox{main@black}{\@tempa{TUD-black}}%
    \tud@savelayerbox{main@HKS41}{\@tempa{TUD-blue}}%
    \tud@savelayerbox{main@white}{\@tempa{TUD-white}}%
    \setlength\tud@mainlogoheight{\ht\tud@logo@main@black}%
    \global\tud@mainlogoheight=\tud@mainlogoheight%
    \gdef\tud@mainlogo@wrn##1{%
      \ifdim##1<\ta@bcor\relax%
        \ClassWarning{\TUDClassName}{%
          The selected page layout means that the\MessageBreak%
          logo of TUD extends beyond the printing area.\MessageBreak%
          The inner margin is smaller than BCOR\MessageBreak%
          (`BCOR=\the\ta@bcor', inner margin is \the##1)\MessageBreak%
          Maybe you should decrease the current value\MessageBreak%
          of DIV (`DIV=\the\ta@div')%
        }%
        \global\let\tud@mainlogo@wrn\@gobble%
      \fi%
    }%
    \tud@headlogo@set%
    \tud@footlogo@set%
    \global\@tud@mainlogo@setfalse%
  \fi%
}
\newcommand*\tud@mainlogo@use{%
  \tud@mainlogo@wrn{%
    \dimexpr\oddsidemargin+1in+\tud@dim@logox-\tud@dim@widemargin\relax%
  }%
  \tud@uselayerbox{main@\tud@head@logocolor}%
}
\tud@newlayerbox{head@black}
\tud@newlayerbox{head@HKS41}
\tud@newlayerbox{head@white}
\tud@newlayerbox{head@option}
\newcommand*\@headlogo{}
\newcommand*\@@headlogo{}
\newcommand*\tud@headlogo@wrn{}
\newcommand*\headlogo[2][]{%
  \tud@ifverlower{2.04}{\tud@clearpage@iftudps}{}%
  \def\@headlogo{#2}%
  \def\@@headlogo{#1}%
  \global\@tud@headlogo@option@settrue%
  \global\@tud@footlogo@option@settrue%
  \gdef\tud@headlogo@wrn{%
    \ClassWarning{\TUDClassName}{%
      The secondary logo `\string\headlogo{\@headlogo}' is\MessageBreak%
      overwritten with DDC logo. Maybe you should use\MessageBreak%
      `ddcfoot' or better `ddc' instead of `ddchead'%
    }%
    \global\let\tud@headlogo@wrn\relax%
  }%
  \tud@ifverlower{2.04}{\tud@pagestyle@iftudps}{}%
}
\newcommand*\tud@headlogo@set{%
  \def\@tempa{%
    \includegraphics[keepaspectratio,totalheight=\tud@mainlogoheight]%
  }%
  \tud@savelayerbox{head@black}{\@tempa{DDC-24}}%
  \tud@savelayerbox{head@HKS41}{\@tempa{DDC-27}}%
  \tud@savelayerbox{head@white}{\@tempa{DDC-30}}%
  \tud@headlogo@option@set%
}
\newcommand*\tud@headlogo@option@set{%
  \if@tud@headlogo@option@set%
    \def\@tempc##1##2{%
      \tud@savelayerbox{head@option}{%
        \includegraphics[%
          keepaspectratio,totalheight=\tud@mainlogoheight,##2%
        ]{\trim@spaces{##1}}%
      }%
    }%
    \tud@savelayerbox{head@option}{}%
    \tud@ddc@check%
    \ifcase\@tempa\relax% \tud@ddc@head=false
      \ifdefvoid{\@headlogo}{}{%
        \protected@edef\@tempb{\noexpand\@tempc{\@headlogo}{\@@headlogo}}%
        \@tempb%
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
    \global\@tud@headlogo@option@setfalse%
  \fi%
}
\newcommand*\tud@headlogo@use{%
  \tud@vlayerbox{\tud@mainlogoheight}{%
    \vss%
    \hbox{%
      \tud@ddc@check%
      \ifnum\@tempa=\@ne\relax% \tud@ddc@head=true
        \tud@uselayerbox{head@\tud@head@logocolor}%
      \else%
        \tud@uselayerbox{head@option}%
      \fi%
    }%
    \vss%
  }{%
    The given `\string\headlogo{\@headlogo}' is too large.%
  }
  \ifdefvoid{\@headlogo}{}{%
    \tud@ddc@check%
    \ifnum\@tempa>\z@\relax\tud@headlogo@wrn\fi%
  }%
}
\tud@newlayerbox{foot@black}
\tud@newlayerbox{foot@HKS41}
\tud@newlayerbox{foot@white}
\tud@newlayerbox{foot@option}
\newlength\footlogoheight
\newlength\tud@footlogoheight
\newcommand*\tud@footlogoheight@set{%
  \ifdim\footlogoheight=\z@\relax%
    \tud@ifverlower{2.03}{%
      \setlength\tud@footlogoheight{.6\tud@dim@topmargin}%
    }{%
      \setlength\tud@footlogoheight{\tud@mainlogoheight}%
    }%
  \else%
    \ifdim\footlogoheight=\tud@footlogoheight\relax\else%
      \setlength\tud@footlogoheight{\footlogoheight}%
      \global\@tud@footlogo@option@settrue%
    \fi%
  \fi%
  \global\tud@footlogoheight=\tud@footlogoheight%
}
\newcommand*\tud@footlogo@ddc@set[2]{%
  \tud@footlogoheight@set%
  \tud@savelayerbox{foot@#1}{%
    \includegraphics[keepaspectratio,totalheight=\tud@footlogoheight]{#2}%
  }%
}
\newcommand*\tud@footlogo@set{%
  \tud@footlogo@ddc@set{black}{DDC-22}%
  \tud@footlogo@ddc@set{HKS41}{DDC-25}%
  \tud@footlogo@ddc@set{white}{DDC-28}%
  \tud@footlogo@option@set%
}
\newcommand*\tud@footlogo@option@set{%
  \if@tud@footlogo@option@set%
    \tud@ddc@check%
    \ifcase\@tempb\relax\or\or% \tud@ddc@foot=color
      \tud@footlogo@ddc@set{option}{DDC-01}%
    \or% \tud@ddc@foot=colorblack
      \tud@footlogo@ddc@set{option}{DDC-07}%
    \or% \tud@ddc@foot=gray
      \tud@footlogo@ddc@set{option}{DDC-19}%
    \or% \tud@ddc@foot=black
      \tud@footlogo@ddc@set{option}{DDC-22}%
    \or% \tud@ddc@foot=blue
      \tud@footlogo@ddc@set{option}{DDC-25}%
    \or% \tud@ddc@foot=white
      \tud@footlogo@ddc@set{option}{DDC-28}%
    \fi%
    \global\@tud@footlogo@option@setfalse%
  \fi%
}
\newcommand*\tud@footlogo@ddc@use[1]{%
  \tud@vlayerbox{#1}{%
    \vss%
    \hbox{%
      \tud@ddc@check%
      \ifcase\@tempb\relax\or% \tud@ddc@foot=true
        \tud@uselayerbox{foot@\tud@foot@logocolor}%
      \else%
        \tud@uselayerbox{foot@option}%
      \fi%
    }%
    \vss\vss%
  }{%
    The `\string\footlogoheight' (\the\footlogoheight) is too\MessageBreak%
    high. You should reduce this length.%
    \ifcase\tud@geometry\relax\else% true/symmetric/twoside
      \MessageBreak%
      Alternatively you can enlarge the bottom margin\MessageBreak%
      by using option `extrabottommargin'.%
    \fi%
  }%
}
\tud@newlayerbox{foot@cmd}
\newcommand*\footlogosep{\hfill}
\newcommand*\@footlogo{}
\newcommand*\@@footlogo{}
\newcommand*\footlogo[2][]{%
  \tud@ifverlower{2.04}{\tud@clearpage@iftudps}{}%
  \def\@footlogo{#2}%
  \def\@@footlogo{#1}%
  \global\@tud@footlogo@cmd@settrue%
  \tud@ifverlower{2.04}{\tud@pagestyle@iftudps}{}%
}
\newif\if@tud@footlogo@cmd@set
\newcommand*\tud@footlogo@cmd@set[2]{%
  \if@tud@footlogo@cmd@set%
    \tud@footlogoheight@set%
    \tud@savelayerbox{foot@cmd}{%
      \hbox to #2{%
        \let\@tempa\relax%
        \@for\@tempb:=\@footlogo\do{%
          \edef\@tempb{\expandafter\trim@spaces\expandafter{\@tempb}}%
          \@tempa%
          \ifx\@tempb\@empty\else%
            \expandafter\tud@footlogo@cmd@@set\expandafter{\@tempb}{#1}%
          \fi%
          \let\@tempa\footlogosep%
        }%
        \hss%
      }%
    }%
    \global\@tud@footlogo@cmd@setfalse%
  \fi%
}
\newcommand*\tud@footlogo@cmd@@set[2]{%
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
    \let\@tempc\relax%
    \DeclareListParser{\@tempc}{:}%
    \@tempc{#1}%
    \preto\@@footlogo{%
      keepaspectratio,totalheight=\tud@footlogoheight,%
    }%
    \appto\@@footlogo{\@tempb}%
    \protected@edef\@tempc{\noexpand\includegraphics[\@@footlogo]{\@tempa}}%
    \tud@vlayerbox{#2}{\vss\hbox{\@tempc}\vss\vss}{%
      The given `\string\footlogo{\@tempa}' is too large.%
    }%
  \endgroup%
}
\newcommand*\tud@footlogo@cmd@use{\tud@uselayerbox{foot@cmd}}%
\newkomafont{tudheadings}{%
  \sffamily%
  \tud@color{\tud@foot@fontcolor}%
}
\newcommand*\tud@footcontent@font{}
\newcommand*\tud@footcontent@left{}
\newcommand*\tud@footcontent@right{}
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
    {\@@footcontent{#1}{#2}[\@nnil]}%
}
\newcommand*\@@footcontent{}
\def\@@footcontent#1#2[#3]{%
  \if@tempswa%
    \def\tud@footcontent@font{%
      \usekomafont{tudheadings}%
      \tud@divide\@tempa{\tud@head@font@size}{\f@size}%
      \linespread{\@tempa}%
      \selectfont%
      \tud@head@font@light%
      #1%
    }%
  \else%
    \def\tud@footcontent@font{#1}%
  \fi%
  \def\tud@footcontent@left{#2}%
  \def\tud@footcontent@right{#3}%
}
\newcommand*\tud@footcontent@use[2]{%
  \tud@ddc@check%
  \ifcase\@tempb%
    \setlength\@tempdimc{\z@}%
  \else%
    \settowidth\@tempdimc{\tud@uselayerbox{foot@black}}%
    \addtolength\@tempdimc{\columnsep}%
  \fi%
  \tud@vlayerbox{#1}{%
    \vss%
    \hbox to #2{%
      \tud@footcontent@font%
      \expandafter\ifx\tud@footcontent@right\@nnil\relax%
        \vtop{%
          \hsize=\dimexpr#2-\@tempdimc\relax%
          \strut\ignorespaces\tud@footcontent@left\strut%
        }%
      \else%
        \vtop{%
          \hsize=\dimexpr(#2-\columnsep)/2\relax%
          \strut\ignorespaces\tud@footcontent@left\strut%
        }%
        \hspace{\columnsep}%
        \vtop{%
          \hsize=\dimexpr(#2-\columnsep)/2-\@tempdimc\relax%
          \strut\ignorespaces\tud@footcontent@right\strut%
        }%
      \fi%
      \hss%
    }%
    \vss\vss%
  }{%
    The content for the footer (`\string\footcontent')\MessageBreak%
    is too high. You should either reduce the content or\MessageBreak%
    lower the fontsize via the optional argument.%
    \ifcase\tud@geometry\relax\else% true/symmetric/twoside
      \MessageBreak%
      Alternatively you can enlarge the bottom margin\MessageBreak%
      by using option `extrabottommargin'.%
    \fi%
  }%
}
\AtEndPreamble{%
  \@ifpackageloaded{geometry}{}{%
    \def\tud@geometry@process{\tud@geometry@set}%
    \let\tud@BeforeSelectAnyPageStyle\@gobble%
  }%
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
        \ClassWarning{\TUDClassName}{%
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
    \if@atdocument%
      \ifstr{\tud@currentgeometry}{typearea}{}{%
        \expandafter\loadgeometry\expandafter{\tud@currentgeometry}%
      }%
    \fi%
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
  \gdef\tud@currentgeometry{}%
  \expandafter\pagestyle\expandafter{\currentpagestyle}%
}
\AtEndPreamble{%
  \tud@ifsacrop{}{%
    \AfterCalculatingTypearea{\tud@AfterChangingArea}%
    \AfterSettingArea{\tud@AfterChangingArea}%
    \BeforeSelectAnyPageStyle{\tud@BeforeSelectAnyPageStyle{#1}}%
    \recalctypearea%
  }%
}
\newcommand*\tud@ps{tudheadings}
\newcommand*\tud@ps@select{%
  \expandafter\pagestyle\expandafter{\tud@ps}%
  \ifstr{\GetRealPageStyle{\tud@ps}}{empty}{%
    \renewcommand*\titlepagestyle{empty}%
    \renewcommand*\indexpagestyle{empty}%
  }{}%
  \ifstr{\GetRealPageStyle{\tud@ps}}{empty.tudheadings}{%
    \renewcommand*\titlepagestyle{empty.tudheadings}%
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
\newlength\pageheadingsvskip
\newlength\headingsvskip
\newcommand*\tud@layout@process{%
  \ifcase\tud@cd\relax% false
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
    \tud@cmd@restore{partheadstartvskip}%
    \ifcsdef{scr@v@3.18}{%
      \tud@cmd@restore{scr@@startpart}%
    }{%
      \tud@cmd@restore{@part}%
    }%
    \tud@sectioning@reset[addpart]{part}%
    \tud@font@koma@unset{partnumber}%
    \tud@sectioning@reset[addsec]{section}%
    \tud@sectioning@reset{subsection}%
    \tud@sectioning@reset{subsubsection}%
    \tud@sectioning@reset{minisec}%
    \footcontent{}%
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
    \tud@cmd@store{partheadstartvskip}%
    \ifcsdef{scr@v@3.18}{%
      \tud@cmd@store{scr@@startpart}%
    }{%
      \tud@cmd@store{@part}%
    }%
      \tud@sectioning@set[addpart]{part}{%
        \tud@font@heading%
        \tud@color{\tud@part@fontcolor}%
      }%
      \tud@font@koma@set{partnumber}{%
        \tud@font@heading%
        \tud@color{\tud@part@fontcolor}%
      }%
    \let\partheadstartvskip\tud@partheadstartvskip%
    \ifcsdef{scr@v@3.18}{%
      \let\scr@@startpart\tud@@startpart%
    }{%
      \let\@part\tud@@part%
    }%
    \tud@sectioning@set[addsec]{section}{\tud@font@heading}%
    \tud@sectioning@set{subsection}{\tud@font@heading}%
    \tud@sectioning@set{subsubsection}{\tud@font@heading}%
    \tud@sectioning@set{minisec}{\tud@font@heading}%
    % §§§ Eher auf Beginn des Dokumentes schieben, bei entsprechender Option
    \pagestyle{empty.tudheadings}%
    \footcontent{\tud@foot@poster@left}[\tud@foot@poster@right]%
    \ifcase\tud@cd\relax\or% true
      \TUDoptions{cdhead=nocolor,cdfoot=true}%
    \or% litecolor
      \TUDoptions{cdhead=litecolor,cdfoot=true}%
    \or% barcolor
      \TUDoptions{cdhead=barcolor,cdfoot=true}%
    \else% bicolor/color/full
      \TUDoptions{cdhead=bicolor,cdfoot=bicolor}%
    \fi%
    % §§§ ENDE
  \fi%
}
\newcommand*\tud@partheadstartvskip{}
\let\tud@partheadstartvskip\partheadstartvskip%
\pretocmd{\tud@partheadstartvskip}{%
  \def\tud@part@fontcolor{}% false/true
  \ifcase\tud@cd\relax\or\else% *color
    \def\tud@part@fontcolor{HKS41}%
  \fi%
}{}{\tud@patch@wrn{tud@partheadstartvskip}}
\ifcsdef{scr@v@3.18}{\@tempswatrue}{\@tempswafalse}%
\if@tempswa
  \newcommand*\tud@@startpart{}%
  \let\tud@@startpart\scr@@startpart%
  \patchcmd{\tud@@startpart}%
    {\usekomafont{#1prefix}{\@nameuse{#1format}}}%
    {\usekomafont{#1prefix}{\tud@makeuppercase{\@nameuse{#1format}}}}%
    {}{\tud@patch@wrn{scr@@startpart}}%
\else
  \newcommand*\tud@@part{}%
  \let\tud@@part\@part
  \patchcmd{\tud@@part}%
    {\size@partnumber{\partformat}}%
    {\size@partnumber{\tud@makeuppercase{\partformat}}}%
    {}{\tud@patch@wrn{@part}}%
\fi
\newcommand*\tud@part{}
\newcommand*\tud@spart{}
\newcommand*\tud@addpart{}
\newcommand*\tud@saddpart{}
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
%%% From File: tudscr-poster.dtx
% §§§ verschieben in Layout?
\newcommand*\tud@foot@line@add[3]{%
  \csgdef{@#1}{\trim@spaces{#2}}%
  \ifx\@empty#3\relax%
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
%%% From File: tudscr-title.dtx
% §§§ \maketitle komplett neu
% §§§ Warnung bei \if@titlepagetrue
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
}
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
          \ClassWarning{\TUDClassName}{%
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
        \ifdef{\bookmarksetup}{\bookmarksetup{startatroot}}{}%
      \else%
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
        \@tempa%
        \begingroup%
          \let\thispagestyle\@gobble%
          \next@tpage%
        \endgroup%
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
    \ClassError{\TUDClassName}{%
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
      \ClassWarning{\TUDClassName}{%
        You are using a two-column title along with\MessageBreak%
        the DDC-logo. Unfortunately in this case, the\MessageBreak%
        type area has to be adjusted manually. Please\MessageBreak%
        use `\string\enlargethispage{-\the\tud@dim@ddcdiff}'\MessageBreak%
        in both columns after the title%
      }%
    \fi%
  }{}%
}
\newcommand*\tud@letsubjectthesis{%
  \if@tud@subjectthesis\ifx\@thesis\@empty\else%
    \ifx\@subject\@empty\else%
      \ClassWarning{\TUDClassName}{%
        The option `subjectthesis' was activated.\MessageBreak%
        The field `subject' will be overwritten with the\MessageBreak%
        given thesis%
      }%
    \fi%
    \let\@subject\@thesis%
  \fi\fi%
}
\newcommand*\tud@title@wrn[1]{%
  \ClassWarning{\TUDClassName}{%
    `\@backslashchar#1' has to be used with\MessageBreak%
    activated titlepage option%
  }%
}
%%% From File: tudscr-frontmatter.dtx
\newcommand*\tud@fm@check[2]{%
  \ifnum\@nameuse{tud@#1@toc}>\tw@\relax%
    \tud@fm@toc{#1}{#2}%
  \fi%
  \global\let\tud@fm@set\tud@fm@first%
  #2%
}
\newcommand*\tud@fm@@toc{}
\newcommand*\tud@fm@@@toc{}
\newcommand*\tud@fm@toc[2]{%
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
        }{%
        }%
      }%
    \@tempa%
}
\newcommand\tud@fm@set[1]{}
\newcommand\tud@fm@first[1]{%
}
\newcommand\tud@fm@next[1]{%
  \if@twocolumn%
    \par%
  \else%
      \ifnum\@nameuse{tud@#1@level}=\z@%
        \ifdef{\main@language}{\vspace*{-\baselineskip}}{}%
      \fi%
  \fi%
}
% §§§ Ausmisten
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
  \fi%
  \ifbool{@tud@#1@markboth}{%
    \markboth{\MakeMarkcase{#2}}{\MakeMarkcase{#2}}%
  }{}%
  \ifnum\@nameuse{tud@#1@toc}>\z@\relax%
    \ifnum\@nameuse{tud@#1@toc}<\thr@@\relax%
      \ifnumodd{\csname tud@#1@toc\endcsname}{%
      }{%
      }%
    \fi%
  \fi%
}
\newcommand*\tud@fm@pagestyle[2]{%
  \if@titlepage%
    \ifcsdef{ps@#2}{\def\tud@ps{#2}}{%
      \ClassError{\TUDClassName}{`#2' is no valid pagestyle}{%
        You tried to use `#2' as a pagestyle for the\MessageBreak%
        `#1' environment, but it was never defined.%
      }%
    }%
  \else%
    \ClassWarning{\TUDClassName}{%
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
  \ClassError{\TUDClassName}{Incorrect usage of `\string\nextabstract'}{%
    The command `\string\nextabstract' can only be used within\MessageBreak%
    the environment `abstract'.%
  }%
}
%%% From File: tudscr-comp.dtx
\newcommand*\tud@deprecated@cmd[2]{%
  \AtBeginDocument{%
    \ifcsdef{#1}{}{%
      \expandafter\newrobustcmd\csname #1\endcsname{%
        \ClassWarning{\TUDClassName}{%
          The command `\@backslashchar#1' is deprecated.\MessageBreak%
          It's recommended to use `\@backslashchar#2' instead%
        }%
        \csletcs{#1}{#2}%
        \@nameuse{#2}%
      }%
    }%
  }%
}
% §§§ Ausmisten
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
\newcounter{symbolheadings}%
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
  \tudbookmark[1]{\titlepagename}{title}%
}{}{\tud@patch@wrn{maketitle}}
\pretocmd{\tableofcontents}{%
  \if@tud@bookmarks%
    \ifdef{\bookmarksetup}{\bookmarksetup{startatroot}}{}%
  \fi%
  \tudbookmark[1]{\contentsname}{toc}%
}{}{\tud@patch@wrn{tableofcontents}}
\BeforePackage{tocloft}{%
  \ClassWarning{\TUDClassName}{%
    It is not recommended to use package `tocloft'.\MessageBreak%
    Loading the package will certainly lead to problems\MessageBreak%
    with table of contents and any list of floats. You\MessageBreak%
    should use the appropriate options of KOMA-Script%
  }%
}
\endinput
%%
%% End of file `tudscrposter.cls'.
