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
%% tudscr-title.dtx  (with options: `class,poster,body')
%% tudscr-frontmatter.dtx  (with options: `class,poster,body')
%% tudscr-comp.dtx  (with options: `class,poster,body')
%% tudscr-misc.dtx  (with options: `class,poster,body')
%% 
%% ============================================================================
%% 
%%  TUD-KOMA-Script
%%  Copyright (c) Falk Hanisch <tudscr@gmail.com>, 2012-2016
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
    \newcommand*\@TUDVersion[1]{%
      \gdef\TUDVersion{#1}%
      \gdef\TUDScriptVersion{#1}%
    }%
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
  \@TUDVersion{2016/01/16 v2.05 BETA TUD-KOMA-Script}%
\endgroup%
\NeedsTeXFormat{LaTeX2e}
\providecommand*\tudscrmail{tudscr@gmail.com}
\newcommand*\TUD@ProvidesClass[3]{%
  \ProvidesClass{#1}[%
  2016/01/16 v2.05 BETA TUD-KOMA-Script
    ^^J#3 (#2)%
  ]%
  \newcommand*\TUDClassName@KOMA{#2}%
  \@ifundefined{TUDClassName@Parent}{%
    \newcommand*\TUDClassName{#1}%
    \TUD@ClassInfo%
  }{}%
}
\providecommand*\TUD@ClassInfo{%
  \typeout{+---------------------------------------------------------------}%
  \typeout{| The Corporate Design of Technische Universitaet Dresden}%
  \typeout{| Class: \TUDClassName}%
  \typeout{| Version: \TUDVersion}%
  \typeout{| Author: Falk Hanisch (\tudscrmail)}%
  \typeout{| Forum: http://latex.wcms-file3.tu-dresden.de/phpBB3/index.php}%
  \typeout{+---------------------------------------------------------------}%
}
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
  \renewcommand*\TUD@noworlater[2]{#1\AtEndOfClass{#1#2}}%
  \AtEndOfClass{\renewcommand*\TUD@noworlater[2]{#1#2}}%
\fi
\renewcommand*\TUD@KOMAoptions[1]{%
  \if@atdocument%
    \KOMAoptions{#1}%
  \else%
    \@ifclassloaded{\TUDClassName@KOMA}{%
      \KOMAoptions{#1}%
    }{%
      \PassOptionsToClass{#1}{\TUDClassName@KOMA}%
    }%
  \fi%
}
%%% From File: tudscr-fonts.dtx
\PreventPackageFromLoading[%
  \ClassWarning{\TUDClassName}{%
    The package `tudscrfonts' must not be used with\MessageBreak%
    a TUD-KOMA-Script class%
  }%
]{tudscrfonts}
\newif\if@tud@cdfont@din%
\@tud@cdfont@dintrue
\newcommand*\tud@cdfont{1}
\newif\if@tud@cdfont@ultrabold%
\TUD@key{cdfont}[true]{%
  \TUD@set@numkey{cdfont}{@tempa}{%
    \TUD@numkey@bool,%
    {light}{1},{lightfont}{1},{lite}{1},{litefont}{1},{noheavyfont}{1},%
    {heavy}{2},{heavyfont}{2},{bold}{2},{boldfont}{2},%
    {normalbold}{3},{boldnormal}{3},%
    {extendedbold}{4},{boldextended}{4},{ultrabold}{4},{boldultra}{4},%
    {nodin}{5},{nodinbold}{5},{noDIN}{5},{noDINBold}{5},%
    {din}{6},{dinbold}{6},{DIN}{6},{DINBold}{6},%
    {nohead}{7},{nocdhead}{7},{noheadfont}{7},{noheadcdfont}{7},%
    {nocdheadfont}{7},{nobar}{7},{nobarfont}{7},%
    {head}{8},{headfont}{8},{cdhead}{8},{headcdfont}{8},{cdheadfont}{8},%
    {bar}{8},{barfont}{8},%
    {lighthead}{8},{lightheadfont}{8},{lightfonthead}{8},%
    {lightcdhead}{8},{lightheadcdfont}{8},{lightcdheadfont}{8},%
    {lightbar}{8},{lightbarfont}{8},{lightfontbar}{8},%
    {headlight}{8},{headfontlight}{8},{headlightfont}{8},%
    {cdheadlight}{8},{headcdfontlight}{8},{cdheadfontlight}{8},%
    {barlight}{8},{barfontlight}{8},{barlightfont}{8},%
    {litehead}{8},{liteheadfont}{8},{litefonthead}{8},%
    {litecdhead}{8},{liteheadcdfont}{8},{litecdheadfont}{8},%
    {litebar}{8},{litebarfont}{8},{litefontbar}{8},%
    {headlite}{8},{headfontlite}{8},{headlitefont}{8},%
    {cdheadlite}{8},{headcdfontlite}{8},{cdheadfontlite}{8},%
    {barlite}{8},{barfontlite}{8},{barlitefont}{8},%
    {noheavyhead}{8},{noheavyheadfont}{8},{noheavyfonthead}{8},%
    {noheavycdhead}{8},{noheavyheadcdfont}{8},{noheavycdheadfont}{8},%
    {noheavybar}{8},{noheavybarfont}{8},{noheavyfontbar}{8},%
    {headnoheavy}{8},{headfontnoheavy}{8},{headnoheavyfont}{8},%
    {cdheadnoheavy}{8},{headcdfontnoheavy}{8},{cdheadfontnoheavy}{8},%
    {barnoheavy}{8},{barfontnoheavy}{8},{barnoheavyfont}{8},%
    {heavyhead}{9},{heavyheadfont}{9},{heavyfonthead}{9},%
    {heavycdhead}{9},{heavyheadcdfont}{9},{heavycdheadfont}{9},%
    {heavybar}{9},{heavybarfont}{9},{heavyfontbar}{9},%
    {headheavy}{9},{headfontheavy}{9},{headheavyfont}{9},%
    {cdheadheavy}{9},{headcdfontheavy}{9},{cdheadfontheavy}{9},%
    {barheavy}{9},{barfontheavy}{9},{barheavyfont}{9},%
    {nomath}{10},{nocdmath}{10},%
    {serifmath}{10},{serif}{10},{nosansmath}{10},{nosans}{10},%
    {math}{11},{cdmath}{11},{sansmath}{11},{sans}{11},%
    {upgreek}{12},{upright}{12},{uprightgreek}{12},{uprightGreek}{12},%
    {slgreek}{13},{slanted}{13},{slantedgreek}{13},{slantedGreek}{13},%
    {fontspec}{14},{luatex}{14},{lualatex}{14}{xetex}{14},{xelatex}{14},%
    {nofontspec}{15},{nfss}{15},{pdftex}{15},{pdflatex}{15}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \renewcommand*\tud@cdfont{0}%
      \if@atdocument\tud@font@set\fi%
    \or% true
      \renewcommand*\tud@cdfont{1}%
      \if@atdocument\tud@font@set\fi%
    \or% heavy
      \renewcommand*\tud@cdfont{2}%
      \if@atdocument\tud@font@set\fi%
    \or% normalbold
      \@tud@cdfont@ultraboldfalse%
      \ifcase\tud@cdfont\relax% false to true
        \renewcommand*\tud@cdfont{1}%
      \fi%
      \if@atdocument\tud@font@set\fi%
    \or% ultrabold
      \@tud@cdfont@ultraboldtrue%
      \ifcase\tud@cdfont\relax% false to true
        \renewcommand*\tud@cdfont{1}%
      \fi%
      \if@atdocument\tud@font@set\fi%
    \or% nodin
      \@tud@cdfont@dinfalse%
    \or% din
      \@tud@cdfont@dintrue%
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
    \ifdimen{#1}{%
      \ifdim#1>\z@\relax%
        \TUD@KOMAoptions{fontsize=#1}%
        \csname @tud@fontsize@settrue\endcsname%
        \ifcase\tud@cdfont\relax% false to true
          \renewcommand*\tud@cdfont{1}%
          \if@atdocument\tud@font@set\fi%
        \fi%
        \FamilyKeyStateProcessed%
      \fi%
    }{}%
  \fi%
}
\newif\if@tud@fontspec
\AfterPackage*{fontspec}{\@tud@fontspectrue}
\newif\if@tud@vspacing
\TUD@key{vspacing}[true]{%
  \TUD@set@numkey{vspacing}{@tempa}{%
    \TUD@numkey@bool,%
    {absolute}{0},{classic}{0},{standard}{0},%
    {relative}{1},{fontsize}{1},{font}{1},{size}{1}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \@tud@vspacingfalse%
    \or% true
      \@tud@vspacingtrue%
    \fi%
    \if@atdocument\tud@font@skip@set\fi%
  \fi%
}
\TUDExecuteOptions{vspacing=true}%
\DefineFamilyMember{KOMA}
\DefineFamilyKey{KOMA}{fontsize}{%
  \if@atdocument\AtEndOfFamilyOptions{\tud@font@skip@set}\fi%
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
\newcommand*\clearpage@iftudps{%
  \if@tud@ddc@internal\else\if@atdocument%
    \tud@iftudps{\currentpagestyle}{\clearpage}{}%
  \fi\fi%
}
\newcommand*\resetpagestyle@iftudps{%
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
  \tud@ifverlower{2.04}{\clearpage@iftudps}{}%
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
  \tud@ifverlower{2.04}{\resetpagestyle@iftudps}{}%
}
\newcommand*\tud@ddc@head{0}
\TUD@key{ddchead}[true]{%
  \tud@ifverlower{2.04}{\clearpage@iftudps}{}%
  \TUD@set@numkey{ddchead}{tud@ddc@head}{\tud@ddc@switch}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tud@ddc@internal\else%
      \@tud@ddc@internaltrue%
      \TUDoptions{ddcfoot=false}%
      \TUDoptions{ddc=false}%
      \@tud@ddc@internalfalse%
    \fi%
  \fi%
  \tud@ifverlower{2.04}{\resetpagestyle@iftudps}{}%
}
\newcommand*\tud@ddc@foot{0}
\TUD@key{ddcfoot}[true]{%
  \tud@ifverlower{2.04}{\clearpage@iftudps}{}%
  \TUD@set@numkey{ddcfoot}{tud@ddc@foot}{\tud@ddc@switch}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \if@tud@ddc@internal\else%
      \@tud@ddc@internaltrue%
      \TUDoptions{ddchead=false}%
      \TUDoptions{ddc=false}%
      \@tud@ddc@internalfalse%
    \fi%
  \fi%
  \tud@ifverlower{2.04}{\resetpagestyle@iftudps}{}%
}
\cs@lock{tud@head@font}{0}
\cs@lock{tud@head@bar}{0}
\bool@lock{@tud@head@widebar}
\newif\if@tud@head@font@set
\TUD@key{cdhead}[true]{%
  \TUD@set@numkey{cdhead}{@tempa}{%
    \TUD@numkey@bool,%
    {nocd}{0},{nocdfont}{0},{nocdfonts}{0},{notudfonts}{0},%
    {cd}{1},{cdfont}{1},{cdfonts}{1},{tudfonts}{1},%
    {light}{1},{lightfont}{1},{lite}{1},{litefont}{1},{noheavyfont}{1},%
    {heavy}{2},{heavyfont}{2},{bold}{2},{boldfont}{2},%
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
    \ifnum\@tempa<\thr@@\relax%
      \global\@tud@head@font@settrue%
    \fi%
  \fi%
}
\TUD@AfterPackage@Set{scrlayer-scrpage}
\bool@lock{@tud@foot@colored}
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
      \bool@set@lock{@tud@foot@colored}{false}%
    \or% color
      \bool@set@lock{@tud@foot@colored}{true}%
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
\cs@lock{tud@geometry}{0}
\newcommand*\tud@geometry@calc{0}
\TUD@key{cdgeometry}[true]{%
  \TUD@set@numkey{cdgeometry}{@tempa}{%
    \TUD@numkey@bool,%
    {typearea}{0},%
    {cd}{1},{tud}{1},{asymmetric}{1},%
    {symmetric}{2},{centred}{2},{centered}{2},%
    {normal}{2},{standard}{2},{std}{2},%
    {twoside}{3},{balanced}{3},%
    {oneside}{4},%
    {restricted}{5},%
    {adapted}{6},{adapt}{6},{adapting}{6},{unrestricted}{6},%
    {calculated}{7},{calc}{7},{calculate}{7},{calculating}{7},%
    {custom}{8},{user}{8},{package}{8}%
  }{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa% false/typearea
      \cs@set@lock{tud@geometry}{0}%
      \if@atdocument\tud@recalctypearea\fi%
    \or% true/cd
      \cs@set@lock{tud@geometry}{2}%
      \if@atdocument\tud@recalctypearea\fi%
    \or% symmetric
      \cs@set@lock{tud@geometry}{3}%
      \if@atdocument\tud@recalctypearea\fi%
    \or% twoside
      \cs@set@lock{tud@geometry}{4}%
      \TUD@KOMAoptions{twoside=true}%
    \or% oneside
      \ifnum\tud@geometry>\thr@@\relax%
        \cs@set@lock{tud@geometry}{3}%
      \fi%
      \TUD@KOMAoptions{twoside=false}%
    \or% restricted
      \cs@std@lock{tud@geometry}{2}%
      \renewcommand*\tud@geometry@calc{0}%
      \if@atdocument\tud@recalctypearea\fi%
    \or% adapted
      \cs@std@lock{tud@geometry}{2}%
      \renewcommand*\tud@geometry@calc{1}%
      \if@atdocument\tud@recalctypearea\fi%
    \or% calculated
      \cs@std@lock{tud@geometry}{2}%
      \renewcommand*\tud@geometry@calc{2}%
      \if@atdocument\tud@recalctypearea\fi%
    \or% custom
      \cs@set@lock{tud@geometry}{1}%
    \fi%
  \fi%
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
\DefineFamilyMember{KOMA}
\DefineFamilyKey{KOMA}{twoside}{%
  \if@atdocument\AtEndOfFamilyOptions{\tud@geometry@process}\fi%
  \FamilyKeyStateProcessed%
}
\DefineFamilyKey{KOMA}{twocolumn}{%
  \if@atdocument\AtEndOfFamilyOptions{\tud@geometry@process}\fi%
  \FamilyKeyStateProcessed%
}
\IfFileExists{silence.sty}{%
  \RequirePackage{silence}%
  \WarningFilter[typearea]{typearea}{DIV for}%
  \WarningFilter[typearea]{typearea}{Bad type area settings!}%
  \WarningFilter[typearea]{typearea}{Maybe no optimal type area settings!}%
  \WarningFilter[typearea]{typearea}{Very low DIV value!}%
  \BeforePackage{typearea}{\ActivateWarningFilters[typearea]}%
  \AfterPackage{typearea}{\DeactivateWarningFilters[typearea]}%
}{}
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
\cs@lock{tud@layout@title}{0}
\cs@lock{tud@layout@part}{0}
\cs@lock{tud@layout@section}{0}
\newcommand*\tud@cd{0}
\TUD@key{cd}[true]{%
  \TUD@set@numkey{cd}{tud@cd}{\tud@layout@switch}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\tud@cd\relax% false
      \cs@std@lock{tud@layout@title}{0}%
      \cs@std@lock{tud@layout@part}{0}%
      \cs@std@lock{tud@layout@section}{0}%
    \or% true
      \cs@std@lock{tud@layout@title}{1}%
      \cs@std@lock{tud@layout@part}{1}%
      \cs@std@lock{tud@layout@section}{1}%
    \or% litecolor
      \cs@std@lock{tud@layout@title}{2}%
      \cs@std@lock{tud@layout@part}{2}%
      \cs@std@lock{tud@layout@section}{2}%
    \or% barcolor
      \cs@std@lock{tud@layout@title}{3}%
      \cs@std@lock{tud@layout@part}{3}%
      \cs@std@lock{tud@layout@section}{2}%
    \or% bicolor
      \cs@std@lock{tud@layout@title}{4}%
      \cs@std@lock{tud@layout@part}{4}%
      \cs@std@lock{tud@layout@section}{2}%
    \or% color
      \cs@std@lock{tud@layout@title}{5}%
      \cs@std@lock{tud@layout@part}{5}%
      \cs@std@lock{tud@layout@section}{2}%
    \or% full
      \cs@std@lock{tud@layout@title}{6}%
      \cs@std@lock{tud@layout@part}{6}%
      \cs@std@lock{tud@layout@section}{2}%
    \fi%
    \if@atdocument%
      \tud@layout@process%
    \else%
      \ifcase\tud@cd\relax% false
        \cs@std@lock{tud@geometry}{0}%
      \else% !false
        \cs@std@lock{tud@geometry}{2}%
      \fi%
    \fi%
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
\TUD@key{cdsection}[true]{%
  \TUD@set@numkey{cdsection}{@tempa}{\tud@layout@switch}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \cs@set@lock{tud@layout@section}{0}%
    \or% true
      \cs@set@lock{tud@layout@section}{1}%
    \else% *color
      \cs@set@lock{tud@layout@section}{2}%
    \fi%
    \if@atdocument\tud@layout@process\fi%
  \fi%
}
\newcommand*\tud@font@koma@set[2]{%
  \ifcsdef{tud@font@koma@#1}{}{\addtokomafont{#1}{\@nameuse{tud@font@koma@#1}}}%
  \@namedef{tud@font@koma@#1}{#2\nobreak}%
}
\newcommand*\tud@font@koma@unset[1]{%
  \ifcsdef{tud@font@koma@#1}{}{\addtokomafont{#1}{\@nameuse{tud@font@koma@#1}}}%
  \@namedef{tud@font@koma@#1}{\relax}%
}
\newcommand*\tud@font@koma@reset[1]{%
  \ifcsdef{tud@font@koma@#1}{\addtokomafont{#1}{\@nameuse{tud@font@koma@#1}}}{}%
}
\DefineFamilyMember{KOMA}
\DefineFamilyKey{KOMA}{headings}{%
  \if@atdocument%
    \AtEndOfFamilyOptions{\tud@headings@reset}%
  \fi%
  \FamilyKeyStateProcessed%
}
\DefineFamilyKey{KOMA}{open}{%
  \if@atdocument%
    \AtEndOfFamilyOptions{\tud@headings@reset}%
  \fi%
  \FamilyKeyStateProcessed%
}
\DefineFamilyKey{KOMA}{chapterprefix}{%
  \if@atdocument%
    \AtEndOfFamilyOptions{\tud@headings@reset}%
  \fi%
  \FamilyKeyStateProcessed%
}
\newcommand*\tud@headings@reset{%
  \tud@layout@process%
  \tud@headings@set[%
    \ifcase\tud@layout@part\relax\else% !false
      \tud@font@koma@reset{part}%
      \tud@font@koma@reset{partnumber}%
    \fi%
    \ifcase\tud@layout@section\relax\else% !false
      \tud@font@koma@reset{section}%
      \tud@font@koma@reset{subsection}%
      \tud@font@koma@reset{subsubsection}%
    \fi%
  ]%
}
%%% From File: tudscr-title.dtx
\DefineFamilyMember{KOMA}
\DefineFamilyKey{KOMA}{titlepage}[true]{%
  \TUD@set@numkey{titlepage}{@tempa}{\TUD@numkey@bool,{firstiscover}{2}}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \AtEndOfFamilyOptions{\tud@titlepage@deactivate}%
  \fi%
}
\newcommand*\tud@titlepage@deactivate{%
  \if@titlepage%
    \KOMAoptions{titlepage=false}%
    \ClassWarning{\TUDClassName}{%
      The class `\TUDClassName' can't be used with\MessageBreak%
      activated titlepage option. It will be enforced to\MessageBreak%
      `titlepage=false'%
    }%
    \renewcommand*\tud@titlepage@deactivate{%
      \if@titlepage\KOMAoptions{titlepage=false}\fi%
    }%
  \fi%
}
\AtBeginDocument{\tud@titlepage@deactivate}
%%% From File: tudscr-frontmatter.dtx
\newcommand*\tud@fm@switch{%
  {section}{2},{sect}{2},{sec}{2},{addsec}{2},%
  {new}{2},{standard}{2},{heading}{2},%
}
\newcommand*\tud@abstract@level{0}
\TUD@key{abstract}[true]{%
  \edef\@tempb{\TUD@numkey@bool,\tud@fm@switch}%
  \TUD@set@numkey{abstract}{@tempa}{\@tempb}{#1}%
  \ifx\FamilyKeyState\FamilyKeyStateProcessed%
    \ifcase\@tempa\relax% false
      \renewcommand*\tud@abstract@level{0}%
    \or% true
      \renewcommand*\tud@abstract@level{1}%
    \or% section
      \renewcommand*\tud@abstract@level{2}%
    \fi%
  \fi%
}
\DefineFamilyMember{KOMA}
\DefineFamilyKey{KOMA}{abstract}[true]{%
  \AtEndOfFamilyOptions{\TUDoptions{abstract=#1}}%
}
%%% From File: tudscr-comp.dtx
\newcommand*\TUD@deprecated@key[2]{%
  \ClassWarning{\TUDClassName}%
  {%
    The option key `#1' is deprecated\MessageBreak%
    It's recommended to use `#2'\MessageBreak%
    instead%
  }%
  \TUDoptions{#2}%
}
\TUD@key{fontspec}[true]{%
  \ClassWarning{\TUDClassName}%
  {%
    The option key `fontspec' is deprecated\MessageBreak%
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
    {heavy}{2},{heavyfont}{2},{bold}{2},{boldfont}{2}%
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
  \def\@tempa{\@ifnextchar v{\@tempb}{\@tempb v}}%
  \def\@tempb v##1\@nil{\def\@tempc{##1}}%
  \@tempa #1\@nil%
  \ifcsvoid{tud@v@\@tempc}{%
    \def\tud@v@comp{0}%
    \ClassWarningNoLine{\TUDClassName}%
    {%
      You have set option `tudscrver' to `\@tempc', but\MessageBreak%
      this value is not supported. Because of this, the\MessageBreak%
      value for `tudscrver' was set to `first'%
    }%
    \FamilyKeyStateProcessed%
  }{%
    \ClassInfoNoLine{\TUDClassName}%
    {%
      Switching compatibility level to `\@tempc'%
    }%
    \edef\tud@v@comp{\@nameuse{tud@v@\@tempc}}%
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
        KOMA-Script compatibility option `version=3.12'.%
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
\@namedef{tud@v@2.03}{1}
\@namedef{tud@v@2.03a}{1}
\@namedef{tud@v@2.04}{2}
\@namedef{tud@v@2.04a}{2}
\@namedef{tud@v@2.04b}{2}
\@namedef{tud@v@2.05}{3}
\@namedef{tud@v@last}{3}
\newcommand*\tud@ifverlower[1]{%
  \ifnum\tud@v@comp<\@nameuse{tud@v@#1}\relax%
    \expandafter\@firstoftwo%
  \else%
    \expandafter\@secondoftwo%
  \fi%
}
%%% From File: tudscr-misc.dtx
\newif\if@tud@paper@set
\TUD@key{paper}{%
  \tud@lowerstring{\@tempa}{#1}%
  \def\@tempb##1##2\@nil{%
    \@tempswafalse%
    \if ##1a\@tempswatrue%
      \else\if ##1b\@tempswatrue%
        \else\if ##1c\@tempswatrue%
          \else\if ##1d\@tempswatrue%
    \fi\fi\fi\fi%
    \if@tempswa%
      \ifnumber{##2}{}{\@tempswafalse}%
    \fi%
  }%
  \expandafter\@tempb\@tempa\@nil%
  \if@tempswa\else%
    \def\@tempb##1:##2:##3\@nil{%
      \edef\@tempc{##1}%
      \ifx\@tempc\@empty\@tempswafalse\else%
        \edef\@tempc{##2}%
        \ifx\@tempc\@empty\@tempswafalse\else\@tempswatrue\fi%
      \fi%
    }%
    \expandafter\@tempb\@tempa::\@nil%
  \fi%
  \@tud@paper@setfalse%
  \if@tempswa%
    \ifstr{\@tempa}{a4}{}{\@tud@paper@settrue}%
    \FamilyKeyStateProcessed%
  \else%
    \FamilyKeyStateUnknownValue%
  \fi%
}
\newif\if@tud@fontsize@set
\TUD@key{fontsize}{%
  \@tud@fontsize@settrue%
  \PassOptionsToClass{fontsize=#1}{\TUDClassName@KOMA}%
  \FamilyKeyStateProcessed%
}
\AtEndOfClass{%
  \RelaxFamilyKey{TUD}{paper}%
  \RelaxFamilyKey{TUD}{fontsize}%
  \ifboolexpr{bool {@tud@paper@set} or bool {@landscape}}{%
    \if@tud@fontsize@set\else%
      \ClassWarningNoLine{\TUDClassName}{%
        You've set a paper size, which is different from\MessageBreak%
        default (paper=a4, paper=portrait). Therefore you\MessageBreak%
        should additionally specify an explicit font size.\MessageBreak%
        See the manual for further information.%
      }%
    \fi%
  }{}%
}
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
\newcommand*\tud@x@paper{%
  \expandafter\tud@x@@paper\CurrentOption paper\tud@x@@paper%
}
\newcommand*\tud@x@@paper{}
\def\tud@x@@paper #1#2paper#3\tud@x@@paper{%
  \@tempswafalse%
  \ifstr{#3}{paper}{\ifnumber{#2}{%
    \ifstr{#1}{a}{\@tempswatrue}{%
    \ifstr{#1}{b}{\@tempswatrue}{%
    \ifstr{#1}{c}{\@tempswatrue}{%
    \ifstr{#1}{d}{\@tempswatrue}{%
    }}}}%
  }{}}{}%
  \if@tempswa\TUDExecuteOptions{#3=#1#2}\fi%
  \PassOptionsToClass{\CurrentOption}{\TUDClassName@KOMA}%
}
\DeclareOption*{\tud@x@paper}
\TUDExecuteOptions{cd=bicolor,tudbookmarks=false}
\TUDProcessOptions\relax
\LoadClass{\TUDClassName@KOMA}[2015/04/23]
%%% From File: tudscr-base.dtx
\RequirePackage{environ}[2013/04/01]
\AtEndPreamble{%
  \@ifpackageloaded{graphicx}{}{%
    \@ifpackageloaded{graphics}{%
      \ClassWarningNoLine{\TUDClassName}{%
        The package `graphics' was superseded by `graphicx',\MessageBreak%
        which now will be loaded automatically%
      }%
    }{}%
  }%
  \RequirePackage{graphicx}[1999/02/16]%
  \RequirePackage{tudscrcolor}[\TUDVersion]%
}
\newcommand*\TUD@parameter@defaulthandler[2]{%
  \def\@tempa##1{%
    \ifstr{##1}{twocolumn}{\def\@tempb{2}}{\def\@tempb{##1}}%
    \ifxnumber{\@tempb}{%
      \TUD@parameter@set{#1}{columns=\@tempb}%
    }{%
      \iflanguageloaded{\@tempb}{%
        \TUD@parameter@set{#1}{language=\@tempb}%
      }{%
        \ClassError{\TUDClassName}{%
          Unknown key `\@tempb' for environment #1%
        }{%
          If key `\@tempb' is a language, you haven't loaded it.%
        }%
      }%
    }%
  }%
  \forcsvlist\@tempa{#2}%
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
\newcommand*\tud@univers{lun}
\newif\if@tud@univers
\newif\if@tud@universmath
\newcommand*\tud@dinbold{0m6}
\newif\if@tud@dinbold
\newif\if@tud@dinboldmath
\newcommand*\tud@font@nofontspecerror{}
\IfFileExists{expl3.sty}{\@tempswatrue}{\@tempswafalse}%
\if@tempswa
  \RequirePackage{expl3}%
  \ExplSyntaxOn%
  \renewcommand*\tud@font@nofontspecerror{%
    \__fontspec_font_suppress_not_found_error:
    \msg_redirect_name:nnn {fontspec}{font-not-found}{none}
  }%
  \ExplSyntaxOff%
\fi%
\newcommand*\tud@font@check{%
  \edef\@tempa##1##2{\lowercase{\noexpand\IfFileExists{##1##2.fd}}}%
  \def\@tempb##1{%
    \ifnum\tud@cdfont>\z@\relax% true/heavy
      \if@tud@cdmath%
        \ClassWarningNoLine{\TUDClassName}%
        {%
          `##1' fonts for math typesetting not found\MessageBreak%
          Please use one of the installation scripts for the\MessageBreak%
          tudscr-bundle mentioned in the manual%
        }%
      \fi%
    \fi%
  }%
  \@tempa{OT1}{\tud@univers}{\@tud@universmathtrue}{\@tempb{Univers}}%
  \@tempa{OT1}{\tud@dinbold}{\@tud@dinboldmathtrue}{\@tempb{DIN Bold}}%
  \if@tud@fontspec%
    \def\@tempc##1##2{%
      \fontspec{##1}%
      \expandafter\ifx\the\font\nullfont%
        ##2%
        \ifnum\tud@cdfont>\z@\relax% true/heavy
          \ClassWarningNoLine{\TUDClassName}%
          {%
            `##1' fonts not found for encoding `\encodingdefault'\MessageBreak%
            It seems, you haven't installed the required\MessageBreak%
            OTF-font on your system. A fallback layout is used%
          }%
        \fi%
      \fi%
    }%
    \begingroup%
      \tud@font@nofontspecerror%
      \global\@tud@universtrue%
      \@tempc{Univers Light}{\global\@tud@universfalse}%
      \@tempc{Univers}{\global\@tud@universfalse}%
      \@tempc{Univers Bold}{\global\@tud@universfalse}%
      \@tempc{Univers Black}{\global\@tud@universfalse}%
      \@tempc{Univers Light Oblique}{\global\@tud@universfalse}%
      \@tempc{Univers Oblique}{\global\@tud@universfalse}%
      \@tempc{Univers Bold Oblique}{\global\@tud@universfalse}%
      \@tempc{Univers Black Oblique}{\global\@tud@universfalse}%
      \global\@tud@dinboldtrue%
      \@tempc{DIN Bold}{\global\@tud@dinboldfalse}%
    \endgroup%
  \else%
    \def\@tempc##1{%
      \ifnum\tud@cdfont>\z@\relax% true/heavy
        \@tempswafalse%
        \ifstr{OT1}{\encodingdefault}{\@tempswatrue}{}%
        \ifstr{T1}{\encodingdefault}{\@tempswatrue}{}%
        \ClassWarningNoLine{\TUDClassName}%
        {%
          `##1' fonts not found for encoding `\encodingdefault'\MessageBreak%
          \if@tempswa%
            Please use one of the installation scripts for the\MessageBreak%
            tudscr-bundle mentioned in the manual.\MessageBreak%
          \else%
            Please choose a possible encoding (`OT1' or `T1').\MessageBreak%
          \fi%
          A fallback layout is used%
        }%
      \fi%
    }%
    \@tempa{\encodingdefault}%
      {\tud@univers}{\@tud@universtrue}{\@tempc{Univers}}%
    \@tempa{\encodingdefault}%
      {\tud@dinbold}{\@tud@dinboldtrue}{\@tempc{DIN Bold}}%
  \fi%
  \undef\tud@font@check%
}
\newcommand*\tud@font@init{%
  \if@tud@univers%
    \if@tud@fontspec%
      \newfontface\univln{Univers Light}[NFSSFamily=UniversLight]
      \newfontface\univrn{Univers}[NFSSFamily=UniversRegular]
      \newfontface\univbn{Univers Bold}[NFSSFamily=UniversBold]
      \newfontface\univxn{Univers Black}[NFSSFamily=UniversBlack]
      \newfontface\univls{Univers Light Oblique}[NFSSFamily=UniversLightOblique]
      \newfontface\univrs{Univers Oblique}[NFSSFamily=UniversRegularOblique]
      \newfontface\univbs{Univers Bold Oblique}[NFSSFamily=UniversBoldOblique]
      \newfontface\univxs{Univers Black Oblique}[NFSSFamily=UniversBlackOblique]
    \else%
      \newrobustcmd*\univln{\usefont{\encodingdefault}{\tud@univers}{l}{n}}%
      \newrobustcmd*\univrn{\usefont{\encodingdefault}{\tud@univers}{m}{n}}%
      \newrobustcmd*\univbn{\usefont{\encodingdefault}{\tud@univers}{b}{n}}%
      \newrobustcmd*\univxn{\usefont{\encodingdefault}{\tud@univers}{eb}{n}}%
      \newrobustcmd*\univls{\usefont{\encodingdefault}{\tud@univers}{l}{sl}}%
      \newrobustcmd*\univrs{\usefont{\encodingdefault}{\tud@univers}{m}{sl}}%
      \newrobustcmd*\univbs{\usefont{\encodingdefault}{\tud@univers}{b}{sl}}%
      \newrobustcmd*\univxs{\usefont{\encodingdefault}{\tud@univers}{eb}{sl}}%
    \fi%
  \else%
    \newrobustcmd*\univln{\tud@font@fallback{Univers Light}{md}{up}}%
    \newrobustcmd*\univrn{\tud@font@fallback{Univers}{md}{up}}%
    \newrobustcmd*\univbn{\tud@font@fallback{Univers Bold}{bf}{up}}%
    \newrobustcmd*\univxn{\tud@font@fallback{Univers Black}{bf}{up}}%
    \newrobustcmd*\univls{\tud@font@fallback{Univers Light Oblique}{md}{sl}}%
    \newrobustcmd*\univrs{\tud@font@fallback{Univers Oblique}{md}{sl}}%
    \newrobustcmd*\univbs{\tud@font@fallback{Univers Bold Oblique}{bf}{sl}}%
    \newrobustcmd*\univxs{\tud@font@fallback{Univers Black Oblique}{bf}{sl}}%
  \fi%
  \if@tud@dinbold%
    \if@tud@fontspec%
      \newfontface\@dinbn{DIN Bold}[NFSSFamily=DINBold,BoldFont = DIN Bold]
    \else%
      \newrobustcmd*\@dinbn{\usefont{\encodingdefault}{\tud@dinbold}{b}{n}}%
    \fi%
    \if@tud@dinboldmath%
      \appto\@dinbn{\mathversion{dinbold}}%
    \fi%
    \newrobustcmd*\dinbn{\@dinbn}%
  \else%
    \newrobustcmd*\@dinbn{\sectfont}%
    \newrobustcmd*\dinbn{\tud@font@fallback@wrn{DIN Bold}\@dinbn}%
  \fi%
  \newcommand*\textuln{}%
  \newcommand*\texturn{}%
  \newcommand*\textubn{}%
  \newcommand*\textuxn{}%
  \newcommand*\textuls{}%
  \newcommand*\texturs{}%
  \newcommand*\textubs{}%
  \newcommand*\textuxs{}%
  \newcommand*\textdbn{}%
  \DeclareTextFontCommand{\textuln}{\univln}%
  \DeclareTextFontCommand{\texturn}{\univrn}%
  \DeclareTextFontCommand{\textubn}{\univbn}%
  \DeclareTextFontCommand{\textuxn}{\univxn}%
  \DeclareTextFontCommand{\textuls}{\univls}%
  \DeclareTextFontCommand{\texturs}{\univrs}%
  \DeclareTextFontCommand{\textubs}{\univbs}%
  \DeclareTextFontCommand{\textuxs}{\univxs}%
  \DeclareTextFontCommand{\textdbn}{\dinbn}%
  \undef\tud@font@init%
}
\newcommand*\tud@font@fallback[3]{%
  \tud@font@fallback@wrn{#1}%
  \sffamily\csuse{#2series}\csuse{#3shape}%
}
\newcommand*\tud@font@fallback@wrn[1]{%
  \ClassWarning{\TUDClassName}%
  {%
    The requested font `#1' is not available, so\MessageBreak%
    a fallback layout is used%
  }%
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
\newif\if@tud@mweights
\AfterPackage*{mweights}{\@tud@mweightstrue}
\newcommand*\tud@font@set{%
  \if@atdocument%
    \ifnum\tud@cdfont>\z@\relax% true/heavy
      \if@tud@univers\else%
        \ClassWarning{\TUDClassName}%
          {`Univers' fonts not found}%
      \fi%
      \if@tud@dinbold\else%
        \ClassWarning{\TUDClassName}%
          {`DIN Bold' fonts not found}%
      \fi%
    \fi%
  \fi%
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
    \ifcase\tud@cd\relax% false
      \cs@std@lock{tud@head@font}{0}%
    \else% !false
      \cs@std@lock{tud@head@font}{1}%
    \fi%
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
    \if@tud@univers%
      \if@tud@fontspec%
        \ifnum\tud@cdfont=\@ne\relax% true
          \if@tud@cdfont@ultrabold% ultrabold
            \setsansfont{Univers Light}[%
              BoldFont = Univers Bold,%
              ItalicFont = Univers Light Oblique,%
              BoldItalicFont = Univers Bold Oblique,%
            ]%
          \else% normalbold
            \setsansfont{Univers Light}[%
              BoldFont = Univers,%
              ItalicFont = Univers Light Oblique,%
              BoldItalicFont = Univers Oblique,%
            ]%
          \fi%
          \setmonofont{LMMonoLt10-Regular}[%
            BoldFont = LMMono10-Regular,%
            ItalicFont = LMMonoLt10-Oblique,%
            BoldItalicFont = LMMonoSlant10-Regular,%
          ]%
        \else% heavy
          \if@tud@cdfont@ultrabold% ultrabold
            \setsansfont{Univers}[%
              BoldFont = Univers Black,%
              ItalicFont = Univers Oblique,%
              BoldItalicFont = Univers Black Oblique,
            ]%
          \else% normalbold
            \setsansfont{Univers}[%
              BoldFont = Univers Bold,%
              ItalicFont = Univers Oblique,%
              BoldItalicFont = Univers Bold Oblique,%
            ]%
          \fi%
          \setmonofont{LMMono10-Regular}[%
            BoldFont = LMMonoLt10-Bold,%
            ItalicFont = LMMonoSlant10-Regular,%
            BoldItalicFont = LMMonoLt10-BoldOblique,%
          ]%
        \fi%
      \else%
        \renewcommand*\sfdefault{\tud@univers}%
        \renewcommand*\ttdefault{\tud@univers t}%
        \renewcommand*\itdefault{\sldefault}%
        \ifnum\tud@cdfont=\@ne\relax% true
          \if@tud@cdfont@ultrabold%
            \renewcommand*\bfdefault{b}%
          \else%
            \renewcommand*\bfdefault{m}%
          \fi%
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
          \if@tud@cdfont@ultrabold%
            \renewcommand*\bfdefault{eb}%
          \else%
            \renewcommand*\bfdefault{b}%
          \fi%
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
      \renewcommand*\rmdefault{\sfdefault}%
    \fi%
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
  \ifdefined\tud@font@math@init\else\tud@font@math@set\fi%
  \tud@font@skip@set%
  \normalfont\selectfont%
  \tud@layout@process%
  \global\@tud@head@font@settrue%
}
\newcommand*\tud@font@skip@set{%
  \if@tud@vspacing%
    \tud@skip@store{smallskipamount}%
    \tud@skip@store{medskipamount}%
    \tud@skip@store{bigskipamount}%
    \tud@skip@store{abovecaptionskip}%
    \tud@skip@store{belowcaptionskip}%
    \tud@skip@store{columnsep}%
    \tud@font@skip@@set%
  \else%
    \tud@skip@restore{smallskipamount}%
    \tud@skip@restore{medskipamount}%
    \tud@skip@restore{bigskipamount}%
    \tud@skip@restore{abovecaptionskip}%
    \tud@skip@restore{belowcaptionskip}%
    \tud@skip@restore{columnsep}%
  \fi%
}
\newcommand*\tud@font@skip@@set{%
  \scr@setlength\smallskipamount{\dimexpr\f@baselineskip/4\relax}%
    {\dimexpr\f@baselineskip/12\relax}{\dimexpr\f@baselineskip/12\relax}%
  \scr@setlength\medskipamount{\dimexpr\f@baselineskip/2\relax}%
    {\dimexpr\f@baselineskip/6\relax}{\dimexpr\f@baselineskip/6\relax}%
  \scr@setlength\bigskipamount{\f@baselineskip}%
    {\dimexpr\f@baselineskip/3\relax}{\dimexpr\f@baselineskip/3\relax}%
  \tud@skip@set\abovecaptionskip{\dimexpr\f@baselineskip*4/5\relax}%
  \tud@skip@set\belowcaptionskip{\z@}%
  \tud@skip@set\columnsep{1.1\baselineskip}%
}
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
\newcommand*\mv@univers{}%
\newcommand*\mv@universbold{}%
\newcommand*\mv@dinbold{}%
\newcommand*\tud@font@math@init{%
  \if@tud@fontspec\if@tud@cdmath%
    \ifboolexpr{bool {@tud@universmath} or bool {@tud@dinboldmath}}{%
      \@ifpackagewith{fontspec}{no-math}{}{%
        \ClassWarningNoLine{\TUDClassName}%
        {%
          It's recommended to load package `fontspec'\MessageBreak%
          with option `no-math', if you want to use the\MessageBreak%
          corporate design fonts in math mode%
        }%
      }%
    }{}%
  \fi\fi%
  \if@tud@universmath%
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
    \SetMathAlphabet{\mathrm}{univers}{OT1}{\tud@univers}{l}{n}%
    \SetMathAlphabet{\mathrm}{universbold}{OT1}{\tud@univers}{b}{n}%
    \SetMathAlphabet{\mathnormal}{univers}{OML}{\tud@univers}{l}{sl}%
    \SetMathAlphabet{\mathnormal}{universbold}{OML}{\tud@univers}{b}{sl}%
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
  \if@tud@dinboldmath%
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
  \sbox\z@{\@dinbn$ $}%
  \undef\tud@font@math@init%
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
\newcommand*\tud@font@math@set{%
  \if@atdocument%
    \ifnum\tud@cdfont>\z@\relax% true/heavy
      \if@tud@cdmath%
        \if@tud@universmath\else%
          \ClassWarning{\TUDClassName}%
            {`Univers' math fonts not found}%
        \fi%
        \if@tud@dinboldmath\else%
          \ClassWarning{\TUDClassName}%
            {`DIN Bold' math fonts not found}%
        \fi%
      \fi%
    \fi%
  \fi%
  \if@tud@universmath%
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
\AtEndPreamble%
{%
  \tud@font@check%
  \tud@font@init%
  \tud@font@set%
  \AtBeginDocument{\tud@font@math@init}%
}
\newcommand*\tud@disposition@font[1][]{%
  \if@tud@cdfont@din%
    \@dinbn\tud@raggedright%
  \else%
    \sectfont#1\tud@RaggedRight%
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
\RequirePackage{textcase}[2004/10/07]
\newcommand*\tud@uclcnotmath{%
  \def\footnote##1##{\toks@{\noexpand\footnote##1}\@footnote}%
  \def\@footnote##1{\NoCaseChange{\the\toks@{##1}}}%
  \def\@mkboth##1##2{\NoCaseChange{\@mkboth{##1}{##2}}}%
}
\patchcmd{\@uclcnotmath}{\@nonchangecase\ensuremath}{%
  \@nonchangecase\ensuremath\tud@uclcnotmath%
}{}{\tud@patch@wrn{@uclcnotmath}}%
\newcommand*\tud@makeuppercase[1]{%
  \ifdin{\begingroup\MakeTextUppercase{#1}\endgroup}{#1}%
  \protect\vphantom{\"A\"O\"U}%
}
\AfterClass*{beamer}{\usefonttheme[onlymath]{serif}}
\newcommand*\tud@raggedright{\raggedright}
\newcommand*\tud@RaggedRight{\raggedright}
\AfterPackage*{ragged2e}{%
  \ifdef{\LaTeXraggedright}{%
    \renewcommand*\tud@raggedright{\LaTeXraggedright}%
  }{}%
  \renewcommand*\tud@RaggedRight{\RaggedRight}%
}
\AfterPackage*{siunitx}{%
  \providecommand*\lseries{\fontseries{l}\selectfont}%
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
\newcommand*\extraheadline[1]{\tud@head@text@field{extraheadline}{#1}}
\newcommand*\tud@head@text@field[2]{%
  \csgdef{@#1}{\trim@spaces{#2}}%
  \global\@tud@head@text@settrue%
}
\newcommand*\tud@foot@line@add[3]{%
  \tud@head@text@field{#1}{#2}%
  \ifx\@empty#3\relax%
    \global\csletcs{@#1@foot}{@#1}%
  \else%
    \csgdef{@#1@foot}{\trim@spaces{#3}}%
  \fi%
}
\newcommand*\tud@foot@line@write[1]{%
  \protected@edef\@tempa{\csuse{@#1@foot}}%
  \ifx\@tempa\@empty\else\newline\mbox{\csuse{@#1@foot}}\fi%
}
\newcommand*\@@title{}
\robustify\@title
\renewcommand*\title[1]{%
  \gdef\@title{#1}%
  \begingroup%
    \let\thanks\@gobble%
    \let\footnote\@gobble%
    \def\newline{\space\ignorespaces}%
    \def\\{\space\ignorespaces}%
    \protected@xdef\@@title{\trim@spaces{#1}}%
  \endgroup%
}
\newcommand*\@@author{}
\renewcommand*\author[1]{%
  \gdef\@author{#1}%
  \begingroup%
    \let\thanks\@gobble%
    \let\footnote\@gobble%
    \def\newline{\space\ignorespaces}%
    \def\\{\space\ignorespaces}%
    \def\@tempa##1{\csdef{##1}####1{\noexpand\relax}}%
    \let\@tempb\tud@split@author@list%
    \robustify\and%
    \expandafter\forcsvlist\expandafter\@tempa\expandafter{\@tempb}%
    \protected@edef\@@author{#1}%
    \tud@replace\@@author{ \relax }{}%
    \tud@replace\@@author{\relax }{}%
    \tud@replace\@@author{ \relax}{}%
    \tud@replace\@@author{\relax}{}%
    \tud@replace\@@author{ \and }{\and}%
    \tud@replace\@@author{ \and}{\and}%
    \tud@replace\@@author{\and }{\and}%
    \protected@xdef\@@author{\trim@spaces{\@@author}}%
  \endgroup%
}
\newcommand*\@authormore{}
\newrobustcmd*\authormore[1]{\gdef\@authormore{#1}\ignorespaces}
\providecommand*\publisher[1]{\publishers{#1}}
\newcommand*\@professor@foot{}
\newcommand*\professor[1]{\gdef\@professor@foot{#1}}
\newcommand*\supervisor[1]{}
\newcommand*\@webpage{}
\newcommand*\webpage[2][]{\gdef\@webpage{#2}}
\AfterPackage{hyperref}{%
  \renewrobustcmd*\webpage[2][hidelinks]{%
    \gdef\@webpage{%
      \begingroup%
        \hypersetup{#1}%
        \urlstyle{same}%
        \url{#2}%
      \endgroup%
    }%
  }%
}
\renewcommand*\date[2][]{}
\newcommand*\@contactperson{}
\newcommand*\contactperson[1]{\gdef\@contactperson{#1}}
\let\supervisor\contactperson
\newcommand*\@office{}
\newrobustcmd*\office[1]{\gdef\@office{#1}}
\newcommand*\@telephone{}
\newrobustcmd*\telephone[1]{\gdef\@telephone{#1}}
\newcommand*\@telefax{}
\newrobustcmd*\telefax[1]{\gdef\@telefax{#1}}
\newcommand*\@emailaddress{}
\newrobustcmd*\emailaddress[2][]{\gdef\@emailaddress{#2}}
\AfterPackage*{hyperref}{%
  \renewrobustcmd*\emailaddress[2][hidelinks]{%
    \gdef\@emailaddress{%
      \begingroup%
        \hypersetup{#1}%
        \urlstyle{same}%
        \href{mailto:#2}{\nolinkurl{#2}}%
      \endgroup%
    }%
  }%
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
  \def\@tempa##1{\ifcsdef{@##1}{\tud@cmd@store{@##1}}{}}%
  \letcs\@tempb{tud@split#1@list}%
  \let\and\relax%
  \expandafter\forcsvlist\expandafter\@tempa\expandafter{\@tempb}%
  \begingroup%
    \let\thanks\@gobble%
    \let\footnote\@gobble%
    \sbox\z@{#2}%
  \endgroup%
}
\newcommand*\tud@multiple@fields@restore[1]{%
  \def\@tempa##1{%
    \ifcsdef{@##1}{%
      \tud@cmd@restore{@##1}%
      \global\csletcs{@##1}{@##1}%
    }{}%
  }%
  \letcs\@tempb{tud@split#1@list}%
  \let\and\relax%
  \expandafter\forcsvlist\expandafter\@tempa\expandafter{\@tempb}%
}
\newcommand*\tud@multiple@fields@preset[3]{%
  \def\@tempa##1{%
    \edef\@tempc{\@nameuse{##1}}%
    \ifstr{#2}{*}{%
      \@namedef{@##1}{}%
    }{%
      \begingroup%
        \protected@expandtwoargs\in@{\@tempc}{\@nameuse{#1}}%
        \ifin@%
          \ifcsempty{@##1}{\@tempc{#2}}{}%
        \fi%
      \endgroup%
    }%
  }%
  \letcs\@tempb{tud@split#1@list}%
  \let\and\relax%
  \expandafter\forcsvlist\expandafter\@tempa\expandafter{\@tempb}%
  \begingroup%
    \let\thanks\@gobble%
    \let\footnote\@gobble%
    \sbox\z@{#3}%
  \endgroup%
}
\newcommand*\tud@split@author[2]{}
\newcommand*\tud@split@author@list{%
  authormore,office,telephone,telefax,emailaddress%
}
\newcommand*\tud@split@contactperson[2]{}
\newcommand*\tud@split@contactperson@list{%
  office,telephone,telefax,emailaddress%
}
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
      order to implement support for additional languages.%
    }%
  }%
}
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
\tud@locale@define{\authorname}
\tud@locale@define{\contactname}
\tud@locale@define{\contactpersonname}
\newcommand*\tud@if@and[1]{%
  \begingroup%
    \protecting{%
      \global\@tempswafalse%
      \def\and{\global\@tempswatrue}%
      \sbox\z@{#1}%
    }%
  \endgroup%
  \if@tempswa%
    \expandafter\@firstoftwo%
  \else%
    \expandafter\@secondoftwo%
  \fi%
}
\newcommand*\tud@locale@german{%
  \providecaptionname{%
    german,ngerman,austrian,naustrian,swissgerman,nswissgerman%
  }%
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
\tud@locale@german{\authorname}{Autor}%
\tud@locale@german{\contactname}{Kontakt}%
\tud@locale@german{\contactpersonname}{Ansprechpartner}%
\newcommand*\tud@locale@english{%
  \providecaptionname{%
    american,australian,british,canadian,english,newzealand,UKenglish,USenglish%
  }%
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
\newif\if@tud@geometry@adjust
\newcommand*\tud@geometry@set{%
  \tud@ifverlower{2.05}{%
    \ifdim\paperheight<\dimexpr105mm+1.5mm\relax%
      \def\@tempa{0}%
    \else\ifdim\paperheight<\dimexpr148mm+1.5mm\relax%
      \def\@tempa{1}%
    \else\ifdim\paperheight<\dimexpr229mm+2mm\relax%
      \def\@tempa{2}%
    \else\ifdim\paperheight<\dimexpr297mm+2mm\relax%
      \def\@tempa{3}%
    \else\ifdim\paperheight<\dimexpr420mm+2mm\relax%
      \def\@tempa{4}%
    \else\ifdim\paperheight<\dimexpr594mm+2mm\relax%
      \def\@tempa{5}%
    \else\ifdim\paperheight<\dimexpr841mm+3mm\relax%
      \def\@tempa{6}%
    \else\ifdim\paperheight<\dimexpr1189mm+3mm\relax%%
      \def\@tempa{7}%
    \else%
      \def\@tempa{8}%
    \fi\fi\fi\fi\fi\fi\fi\fi%
  }{%
    \ifdim\paperheight<\dimexpr125mm+1.5mm\relax%
      \def\@tempa{0}%
    \else\ifdim\paperheight<\dimexpr176mm+2mm\relax%
      \def\@tempa{1}%
    \else\ifdim\paperheight<\dimexpr250mm+2mm\relax%
      \def\@tempa{2}%
    \else\ifdim\paperheight<\dimexpr353mm+2mm\relax%
      \def\@tempa{3}%
    \else\ifdim\paperheight<\dimexpr500mm+2mm\relax%
      \def\@tempa{4}%
    \else\ifdim\paperheight<\dimexpr707mm+3mm\relax%
      \def\@tempa{5}%
    \else\ifdim\paperheight<\dimexpr1000mm+3mm\relax%
      \def\@tempa{6}%
    \else\ifdim\paperheight<\dimexpr1414mm+3mm\relax%
      \def\@tempa{7}%
    \else%
      \def\@tempa{8}%
    \fi\fi\fi\fi\fi\fi\fi\fi%
  }%
  \@tud@geometry@adjustfalse%
  \ifnum\tud@geometry@calc=\tw@\relax%
    \ifnum\@tempa>\z@\relax%
      \ifnum\@tempa<8\relax%
        \def\@tempa{3}%
      \fi%
    \fi%
  \fi%
  \ifcase\@tempa\relax% <=A7/B7
    \ifnum\tud@geometry@calc=\tw@\relax\else%
      \ClassWarning{\TUDClassName}{%
        There's no type area defined for such a\MessageBreak%
        small paper height. It is recommended to increase\MessageBreak%
        the paper size. Nevertheless, it will be tried to\MessageBreak%
        calculate a proper type area%
      }%
    \fi%
    \tud@divide\@tempa{\paperheight}{148mm}%
    \setlength\tud@dim@widemargin{15mm}%
    \setlength\tud@dim@widemargin{\@tempa\tud@dim@widemargin}%
    \setlength\tud@dim@heavyline{0.5pt}%
    \setlength\tud@dim@heavyline{\@tempa\tud@dim@heavyline}%
    \setlength\tud@dim@thinline{0.25pt}%
    \setlength\tud@dim@thinline{\@tempa\tud@dim@thinline}%
    \setlength{\@tempdima}{4.5pt}%
    \setlength{\@tempdima}{\@tempa\@tempdima}%
    \edef\tud@head@fontsize{\strip@pt\@tempdima}%
  \or% <=A6/B6
    \setlength\tud@dim@widemargin{15mm}%
    \setlength\tud@dim@heavyline{0.5pt}%
    \setlength\tud@dim@thinline{0.25pt}%
    \renewcommand*\tud@head@fontsize{4.5}%
  \or% <=A5/B5
    \ifnum\tud@geometry@calc=\z@\relax% restricted
      \@tud@geometry@adjusttrue%
      \setlength\tud@dim@widemargin{30mm}%
      \setlength\tud@dim@heavyline{1pt}%
      \setlength\tud@dim@thinline{0.5pt}%
      \renewcommand*\tud@head@fontsize{9}%
    \else%
      \setlength\tud@dim@widemargin{21.213203mm}%
      \setlength\tud@dim@heavyline{0.707107pt}%
      \setlength\tud@dim@thinline{0.353553pt}%
      \renewcommand*\tud@head@fontsize{6.363961}%
    \fi%
  \or% <=A4/B4
    \setlength\tud@dim@widemargin{30mm}%
    \setlength\tud@dim@heavyline{1pt}%
    \setlength\tud@dim@thinline{0.5pt}%
    \renewcommand*\tud@head@fontsize{9}%
  \or% <=A3/B3
    \setlength\tud@dim@widemargin{42.426407mm}%
    \setlength\tud@dim@heavyline{1.414214pt}%
    \setlength\tud@dim@thinline{0.707107pt}%
    \renewcommand*\tud@head@fontsize{12.727922}%
  \or% <=A2/B2
    \setlength\tud@dim@widemargin{60mm}%
    \setlength\tud@dim@heavyline{2pt}%
    \setlength\tud@dim@thinline{1pt}%
    \renewcommand*\tud@head@fontsize{18}%
  \or% <=A1/B1
    \setlength\tud@dim@widemargin{84.852814mm}%
    \setlength\tud@dim@heavyline{2.828427pt}%
    \setlength\tud@dim@thinline{1.414214pt}%
    \renewcommand*\tud@head@fontsize{25.455844}%
  \or% <=A0/B0
    \setlength\tud@dim@widemargin{120mm}%
    \setlength\tud@dim@heavyline{4pt}%
    \setlength\tud@dim@thinline{2pt}%
    \renewcommand*\tud@head@fontsize{36}%
  \else% >A0/B0
    \ifnum\tud@geometry@calc=\tw@\relax\else%
      \ClassWarning{\TUDClassName}{%
        There's no type area defined for such a\MessageBreak%
        huge paper height. It is recommended to reduce\MessageBreak%
        the paper size. Nevertheless, it will be tried to\MessageBreak%
        calculate a proper type area%
      }%
    \fi%
    \tud@divide\@tempa{\paperheight}{1189mm}%
    \setlength\tud@dim@widemargin{120mm}%
    \setlength\tud@dim@widemargin{\@tempa\tud@dim@widemargin}%
    \setlength\tud@dim@heavyline{4pt}%
    \setlength\tud@dim@heavyline{\@tempa\tud@dim@heavyline}%
    \setlength\tud@dim@thinline{2pt}%
    \setlength\tud@dim@thinline{\@tempa\tud@dim@thinline}%
    \setlength{\@tempdima}{36pt}%
    \setlength{\@tempdima}{\@tempa\@tempdima}%
    \edef\tud@head@fontsize{\strip@pt\@tempdima}%
  \fi%
  \ifnum\tud@geometry@calc=\tw@\relax%
    \tud@divide\@tempa{\paperheight}{297mm}%
    \setlength\tud@dim@widemargin{\@tempa\tud@dim@widemargin}%
    \setlength\tud@dim@heavyline{\@tempa\tud@dim@heavyline}%
    \setlength\tud@dim@thinline{\@tempa\tud@dim@thinline}%
    \setlength{\@tempdima}{\tud@head@fontsize pt}%
    \setlength{\@tempdima}{\@tempa\@tempdima}%
    \edef\tud@head@fontsize{\strip@pt\@tempdima}%
  \fi%
  \global\@tud@head@font@settrue%
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
  \if@tud@geometry@adjust%
    \setlength\tud@dim@headsep{\dimexpr.707107\tud@dim@headsep\relax}%
    \setlength\tud@dim@footsep{\dimexpr.707107\tud@dim@footsep\relax}%
  \fi%
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
  \scr@ifundefinedorrelax{if@chapter}{%
    \newif\if@chapter%
    \scr@ifundefinedorrelax{chapter}{\@chapterfalse}{\@chaptertrue}%
  }{}%
}{%
  \AtEndPreamble{\RequirePackage{scrlayer-scrpage}[2013/12/14]}%
}
\newcommand*\tud@pagestyle{}
\let\tud@pagestyle\pagestyle
\pretocmd{\tud@pagestyle}{%
  \edef\currentpagestyle{#1}%
}{}{\tud@patch@wrn{pagestyle}}
\tud@cmd@store{pagestyle}
\renewcommand*\pagestyle[1]{\AfterPackage!{scrlayer-scrpage}{\pagestyle{#1}}}
\BeforePackage{scrlayer-scrpage}{%
  \tud@cmd@restore{pagestyle}%
  \undef\tud@pagestyle%
}
\TUD@UnwindPackage{scrlayer-scrpage}{%
  \cslet{ps@tudheadings}{\ps@headings}%
  \cslet{ps@plain.tudheadings}{\ps@plain}%
  \cslet{ps@empty.tudheadings}{\ps@empty}%
  \providecommand*\currentpagestyle{plain}%
  \providecommand*\BeforeSelectAnyPageStyle[1]{}%
  \providecommand*\GetRealPageStyle[1]{#1}%
  \let\pagestyle\tud@pagestyle%
  \undef\tud@pagestyle%
  \expandafter\pagestyle\expandafter{\currentpagestyle}%
}
\AfterPackage{scrlayer-scrpage}{%
  \DeclareNewLayer[%
    background,headsep,%
    voffset=\tud@dim@logoy,%
    addhoffset=\dimexpr\tud@dim@logox-\tud@dim@widemargin\relax,%
    addwidth=\dimexpr-\tud@dim@logox+\tud@dim@widemargin\relax,%
    contents={%
      \tud@mainlogo@set%
      \tud@headlogo@option@set%
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
        \setlength{\@tempdima}{\dimexpr\ht\strutbox-\tud@dim@barheight\relax}%
        \ifdim\@tempdima<\z@\relax\setlength\@tempdima{\z@}\fi%
        \raisebox{\@tempdima}{\rule{\layerwidth}{\tud@dim@barheight}}%
      \fi%
    },%
  ]{tudheadings.head.bar}%
  \DeclareNewLayer[%
    background,headsep,%
    voffset=\dimexpr\tud@dim@topmargin+\tud@dim@line\relax,%
    contents={%
      \tud@head@font@set%
      \tud@head@text@set%
      \tud@head@text@box%
    },%
  ]{tudheadings.head.text}%
  \DeclareNewLayer[%
    background,headsep,%
    voffset=\dimexpr\tud@dim@topmargin-.5\tud@dim@line\relax,%
    contents={%
      \ifnum\tud@head@bar<\tw@\relax% cdhead=nocolor/litecolor
        \if@tud@head@widebar\else\tud@head@rule{\textwidth}\fi%
      \fi%
    },%
  ]{tudheadings.head.upline}%
  \DeclareNewLayer[%
    background,headsep,%
    voffset=\dimexpr\tud@dim@topmargin+\tud@dim@barheight%
      -.5\tud@dim@line\relax,%
    contents={%
      \ifnum\tud@head@bar<\tw@\relax% cdhead=nocolor/litecolor
        \if@tud@head@widebar\else\tud@head@rule{\textwidth}\fi%
      \fi%
    },%
  ]{tudheadings.head.lowline}%
  \DeclareNewLayer[%
    background,%
    voffset=\dimexpr\tud@dim@topmargin-.5\tud@dim@line\relax,%
    contents={%
      \ifnum\tud@head@bar<\tw@\relax% cdhead=nocolor/litecolor
        \if@tud@head@widebar\tud@head@rule{\paperwidth}\fi%
      \fi%
    },%
  ]{tudheadings.head.uplinewide}%
  \DeclareNewLayer[%
    background,%
    voffset=\dimexpr\tud@dim@topmargin+\tud@dim@barheight%
      -.5\tud@dim@line\relax,%
    contents={%
      \ifnum\tud@head@bar<\tw@\relax% cdhead=nocolor/litecolor
        \if@tud@head@widebar\tud@head@rule{\paperwidth}\fi%
      \fi%
    },%
  ]{tudheadings.head.lowlinewide}%
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
          \ifcase\tud@head@bar\relax\or% cdhead=litecolor
            \def\@tempc{\color{HKS41!60}}%
          \or% cdhead=barcolor
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
      \tud@footlogo@cmd@use{\@tempdima}{\layerwidth}%
      \tud@footlogo@ddc@use{\@tempdima}{\layerwidth}%
      \tud@footcontent@use{\@tempdima}{\layerwidth}%
    },%
  ]{tudheadings.foot.content}%
  \tud@ifverlower{2.03}{%
    \ModifyLayer[%
      addvoffset=-\tud@dim@ddcdiff+\ht\strutbox,%
      contents={%
        \tud@footlogoheight@set%
        \setlength\@tempdima{\dimexpr\layerheight-\dp\strutbox\relax}%
        \tud@ddc@check%
        \ifcase\@tempb\relax% \tud@ddc@foot=false
          \addtolength\@tempdima{\dimexpr\ht\strutbox-\tud@dim@ddcdiff\relax}%
          \vskip\dimexpr\tud@dim@ddcdiff-\ht\strutbox-\baselineskip\relax%
        \fi%
        \tud@footlogo@cmd@use{\@tempdima}{\layerwidth}%
        \tud@footlogo@ddc@use{\@tempdima}{\layerwidth}%
        \tud@footcontent@use{\@tempdima}{\layerwidth}%
      },%
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
    tudheadings.head.upline,%
    tudheadings.head.lowline,%
    tudheadings.head.uplinewide,%
    tudheadings.head.lowlinewide,%
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
    tudheadings.head.upline,%
    tudheadings.head.lowline,%
    tudheadings.head.uplinewide,%
    tudheadings.head.lowlinewide,%
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
    tudheadings.head.upline,%
    tudheadings.head.lowline,%
    tudheadings.head.uplinewide,%
    tudheadings.head.lowlinewide,%
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
      \renewcommand*\tud@head@logocolor{black}%
      \renewcommand*\tud@head@fontcolor{}%
    \or% cdhead=litecolor
      \renewcommand*\tud@head@logocolor{HKS41}%
      \renewcommand*\tud@head@fontcolor{HKS41}%
    \or% cdhead=barcolor
      \renewcommand*\tud@head@logocolor{HKS41}%
      \renewcommand*\tud@head@fontcolor{white}%
    \or% cdhead=color
      \renewcommand*\tud@head@logocolor{white}%
      \renewcommand*\tud@head@fontcolor{white}%
    \fi%
    \ifcase\tud@head@bar\relax% cdhead=nocolor
      \renewcommand*\tud@foot@logocolor{black}%
      \renewcommand*\tud@foot@fontcolor{}%
      \if@tud@foot@colored%
        \ClassWarning{\TUDClassName}{%
          It isn't possible to use a colored foot together\MessageBreak%
          with a non-colored head (`cdhead=nocolor')%
        }%
      \fi%
    \else% cdhead=*color
      \if@tud@foot@colored%
        \renewcommand*\tud@foot@logocolor{white}%
        \renewcommand*\tud@foot@fontcolor{white}%
      \else%
        \renewcommand*\tud@foot@logocolor{HKS41}%
        \renewcommand*\tud@foot@fontcolor{HKS41}%
      \fi%
    \fi%
  }{%
    \ifstr{\tud@pagecolor}{HKS41}{%
      \renewcommand*\tud@head@logocolor{white}%
      \renewcommand*\tud@head@fontcolor{white}%
      \renewcommand*\tud@foot@logocolor{white}%
      \if@tud@foot@colored%
        \renewcommand*\tud@foot@fontcolor{white}%
      \else%
        \renewcommand*\tud@foot@fontcolor{HKS41!30}%
      \fi%
      \bool@std@lock{@tud@head@widebar}{true}%
    }{%
      \renewcommand*\tud@head@logocolor{HKS41}%
      \renewcommand*\tud@head@fontcolor{HKS41}%
      \ifcase\tud@head@bar\relax\or\or\or% cdhead=color
        \renewcommand*\tud@head@logocolor{white}%
        \renewcommand*\tud@head@fontcolor{white}%
      \fi%
      \if@tud@foot@colored%
        \renewcommand*\tud@foot@logocolor{white}%
        \renewcommand*\tud@foot@fontcolor{white}%
      \else%
        \renewcommand*\tud@foot@logocolor{HKS41}%
        \renewcommand*\tud@foot@fontcolor{HKS41}%
      \fi%
      \bool@std@lock{@tud@head@widebar}{true}%
    }%
  }%
  \let\tud@dim@line\tud@dim@thinline%
  \ifstr{\tud@head@fontcolor}{white}{\let\tud@dim@line\tud@dim@heavyline}{}%
  \global\let\tud@foot@fontcolor\tud@foot@fontcolor%
}
\patchcmd{\thispagestyle}{\gdef\@specialstyle{#1}}{%
  \xdef\@specialstyle{\GetRealPageStyle{#1}}%
}{}{\tud@patch@wrn{thispagestyle}}
\newcommand*\tud@head@fontsize{}
\newcommand*\tud@head@font@bold{}
\newcommand*\tud@head@font@light{}
\newcommand*\tud@head@font@set{%
  \ifcase\tud@head@font\relax% false
    \ifnum\tud@cdfont>\z@\relax% true/heavy
      \if@tud@head@font@set%
        \ClassWarning{\TUDClassName}{%
          It isn't possible to use `cdhead=false'\MessageBreak%
          together with `cdfont=true'%
        }%
      \fi%
      \TUDoptions{cdhead=true}%
    \fi%
  \fi%
  \if@tud@head@font@set%
    \DeclareFixedFont{\tud@head@font@bold}{\encodingdefault}%
      {\sfdefault}{\bfdefault}{\updefault}{\tud@head@fontsize}%
    \DeclareFixedFont{\tud@head@font@light}{\encodingdefault}%
      {\sfdefault}{\mddefault}{\updefault}{\tud@head@fontsize}%
    \ifcase\tud@head@font\relax\else% true/heavy
      \if@tud@univers%
        \if@tud@fontspec%
          \DeclareFixedFont{\tud@head@font@bold}{\encodingdefault}%
            {UniversBold}{m}{n}{\tud@head@fontsize}%
          \ifcase\tud@head@font\relax\or% true
            \DeclareFixedFont{\tud@head@font@light}{\encodingdefault}%
              {UniversLight}{m}{n}{\tud@head@fontsize}%
          \or% heavy
            \DeclareFixedFont{\tud@head@font@light}{\encodingdefault}%
              {UniversRegular}{m}{n}{\tud@head@fontsize}%
          \fi%
        \else%
          \DeclareFixedFont{\tud@head@font@bold}{\encodingdefault}%
            {\tud@univers}{b}{n}{\tud@head@fontsize}%
          \ifcase\tud@head@font\relax\or% true
            \DeclareFixedFont{\tud@head@font@light}{\encodingdefault}%
              {\tud@univers}{l}{n}{\tud@head@fontsize}%
          \or% heavy
            \DeclareFixedFont{\tud@head@font@light}{\encodingdefault}%
              {\tud@univers}{m}{n}{\tud@head@fontsize}%
          \fi%
        \fi%
      \fi%
    \fi%
    \global\@tud@head@font@setfalse%
    \global\@tud@head@text@settrue%
  \fi%
}
\newcommand*\tud@head@text{}
\newcommand*\tud@head@text@list{}
\newcommand*\tud@head@text@delimiter{}
\newcommand*\tud@head@text@buffer{}
\newcommand*\tud@head@text@add[3][{, }]{%
  \ifstr{#3}{}{}{%
    \edef\tud@head@text@delimiter{\expandonce\tud@head@text@buffer}%
    \def\tud@head@text@buffer{#1}%
    \edef\@tempa{%
      \expandonce\tud@head@text%
      \expandonce\tud@head@text@delimiter%
      \unexpanded{#2#3}%
    }%
    \settowidth\@tempdima{\@tempa}%
    \ifdim\@tempdima>\textwidth\relax%
      \listeadd\tud@head@text@list{\expandonce\tud@head@text}%
      \protected@edef\tud@head@text{#2#3}%
    \else%
      \edef\tud@head@text{\expandonce\@tempa}%
    \fi%
  }%
}
\newif\if@tud@head@text@set
\newcommand*\tud@head@text@wrn[1]{}
\newcommand*\tud@head@text@set{%
  \if@tud@head@text@set%
    \def\tud@head@text{}%
    \def\tud@head@text@list{}%
    \def\tud@head@text@buffer{}%
    \tud@head@text@add[\enskip]{\tud@head@font@bold}{\@faculty}%
    \tud@head@text@add{\tud@head@font@light}{\@department}%
    \tud@head@text@add{\tud@head@font@light}{\@institute}%
    \tud@head@text@add{\tud@head@font@light}{\@chair}%
    \listeadd\tud@head@text@list{\expandonce\tud@head@text}%
    \ifstr{\@extraheadline}{}{}{%%
      \listadd\tud@head@text@list{\tud@head@font@light\@extraheadline}%
    }%
    \gdef\tud@head@text@wrn##1{%
      \ClassWarning{\TUDClassName}{%
        The given entries for the headline\MessageBreak%
        (faculty, institute etc.) are ##1\MessageBreak%
        too wide for the textwidth%
      }%
    }%
  \fi%
}
\newcommand*\tud@head@text@box{%
  \ifx\@faculty\@empty%
    \ClassWarningNoLine{\TUDClassName}{No `\string\faculty' given}%
    \faculty{}%
  \fi%
  \def\@tempb{\tud@color{\tud@head@fontcolor}}%
  \def\@tempc{\depth+\tud@dim@heavyline}%
  \def\@tempa##1{%
    \settowidth\@tempdima{##1}%
    \ifdim\@tempdima>\textwidth\relax%
      \tud@head@text@wrn{\the\dimexpr\@tempdima-\textwidth\relax}%
      \ifdim\dimexpr\@tempdima-\textwidth\relax>\hfuzz\relax%
        \hfuzz=\dimexpr\@tempdima-\textwidth\relax%
      \fi%
    \fi%
    \@tempb%
    \tud@head@text@write[\@tempc]{##1}%
    \def\@tempb{\newline}%
    \def\@tempc{\z@}%
    \ifnum\tud@head@bar>\@ne% cdhead=barcolor/color
      \ifdefvoid{\tud@pagecolor}{\color{HKS41}}{%
        \ifstr{\tud@pagecolor}{HKS41}{\color{white}}{\color{HKS41}}%
      }%
    \fi%
  }%
  \vbox{%
    \let\@raggedtwoe@everyselectfont\relax%
    \setlength\spaceskip{\z@}%
    \selectfont%
    \offinterlineskip%
    \forlistloop\@tempa{\tud@head@text@list}%
  }%
  \global\let\tud@head@text@wrn\@gobble%
}
\newcommand*\tud@head@text@write[2][\z@]{%
  \raisebox{\dimexpr(\tud@dim@barheight+2\tud@dim@line-\totalheight)/2\relax}[%
    \dimexpr\tud@dim@barheight-\depth\relax%
  ][\dimexpr#1\relax]{#2\vphantom{gjpqy\"A\"O\"U}}%
}
\newcommand*\tud@head@rule[1]{%
  \tud@color{\tud@head@fontcolor}%
  \rule[\ht\strutbox]{#1}{\tud@dim@line}%
}
\newcommand*\tud@newlayerbox[1]{%
  \expandafter\newsavebox\csname tud@layer@#1\endcsname%
}
\newcommand*\tud@savelayerbox[1]{%
  \global\expandafter\sbox\csname tud@layer@#1\endcsname%
}
\newcommand*\tud@uselayerbox[1]{%
  \expandafter\usebox\csname tud@layer@#1\endcsname%
}
\newcommand*\tud@vlayerbox[3]{%
  \begingroup%
    \setbox\z@\vbox{#2}%
    \setlength\@tempdima{\dimexpr\ht\z@+\dp\z@-#1\relax}%
    \ifdim\@tempdima>\z@\relax%
      \ClassWarning{\TUDClassName}{%
        #3\MessageBreak%
        The maximum height is exceeded by \the\@tempdima\MessageBreak%
      }%
    \fi%
  \endgroup%
  \vbox to #1{#2}%
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
    \settoheight\tud@mainlogoheight{\tud@uselayerbox{main@black}}%
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
  \tud@ifverlower{2.04}{\clearpage@iftudps}{}%
  \renewcommand*\@headlogo{#2}%
  \renewcommand*\@@headlogo{#1}%
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
  \tud@ifverlower{2.04}{\resetpagestyle@iftudps}{}%
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
        ]{##1}%
      }%
    }%
    \tud@savelayerbox{head@option}{}%
    \tud@ddc@check%
    \ifcase\@tempa\relax% \tud@ddc@head=false
      \ifdefvoid{\@headlogo}{}{%
        \protected@edef\@headlogo{%
          \expandafter\trim@spaces\expandafter{\@headlogo}%
        }%
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
  }%
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
\newcommand*\tud@footlogo@ddc@use[2]{%
  \tud@ddc@check%
  \ifcase\@tempb\relax\else% \tud@ddc@foot=!false
    \tud@footlogo@option@set%
    \setbox\z@\hbox{%
      \tud@vlayerbox{#1}{%
        \vss%
        \hbox to #2{%
          \hss%
          \ifcase\@tempb\relax\or% \tud@ddc@foot=true
            \tud@uselayerbox{foot@\tud@foot@logocolor}%
          \else%
            \tud@uselayerbox{foot@option}%
          \fi%
        }%
        \vss\vss%
      }{%
        The `\string\footlogoheight' (\the\tud@footlogoheight) is\MessageBreak%
        too high. You should reduce this length.%
        \ifnum\tud@geometry>\@ne\relax% true/symmetric/twoside
          \MessageBreak%
          Alternatively you can enlarge the bottom margin\MessageBreak%
          by using option `extrabottommargin'.%
        \fi%
      }%
    }%
    \usebox\z@\hspace*{-\wd\z@}%
  \fi%
}
\tud@newlayerbox{foot@cmd}
\newcommand*\footlogosep{\hfill}
\newcommand*\@footlogo{}
\newcommand*\@@footlogo{}
\newcommand*\footlogo[2][]{%
  \tud@ifverlower{2.04}{\clearpage@iftudps}{}%
  \renewcommand*\@footlogo{#2}%
  \renewcommand*\@@footlogo{#1}%
  \global\@tud@footlogo@cmd@settrue%
  \tud@ifverlower{2.04}{\resetpagestyle@iftudps}{}%
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
\newcommand*\tud@footlogo@cmd@use[2]{%
  \tud@footlogo@option@set%
  \tud@footlogo@cmd@set{#1}{#2}%
  \setbox\z@\hbox{\tud@uselayerbox{foot@cmd}}%
  \usebox\z@\hspace*{-\wd\z@}%
}%
\newkomafont{tudheadings}{\tud@color{\tud@foot@fontcolor}}
\newcommand*\tud@footcontent@font{}
\newcommand*\tud@footcontent@left{}
\newcommand*\tud@footcontent@right{\@nil}
\newcommand*\footcontent{%
  \@ifstar{%
    \renewcommand*\tud@footcontent@font{\usekomafont{tudheadings}}%
    \@footcontent%
  }{%
    \renewcommand*\tud@footcontent@font{%
      \usekomafont{tudheadings}%
      \setlength\@tempdima{\tud@head@fontsize\p@}%
      \fontsize{\tud@head@fontsize}{1.25\@tempdima}%
      \selectfont%
    }%
    \@footcontent%
  }%
}
\newcommand*\@footcontent[2][]{%
  \kernel@ifnextchar[%]
    {\@@footcontent{#1}{#2}}%
    {\@@footcontent{#1}{#2}[\@nil]}%
}
\newcommand*\@@footcontent{}
\def\@@footcontent#1#2[#3]{%
  \appto\tud@footcontent@font{#1\selectfont}%
  \renewcommand*\tud@footcontent@left{#2}%
  \renewcommand*\tud@footcontent@right{#3}%
}
\newcommand*\tud@newline@poster{}
\newcommand*\tud@footcontent@left@poster{%
  \ifx\contactname\@empty\else%
    {\tud@head@font@bold\contactname}\newline%
  \fi%
  Technische Universit\"at Dresden%
  \tud@foot@line@write{faculty}%
  \tud@foot@line@write{department}%
  \tud@foot@line@write{institute}%
  \tud@foot@line@write{chair}%
  \tud@foot@line@write{professor}%
}
\newcommand*\tud@footcontent@right@poster{%
  \def\tud@newline@poster{%
    \ifx\@authormore\@empty\else\newline\@authormore\fi%
    \ifx\@office\@empty\else\newline\@office\fi%
    \ifx\@telephone\@empty\else\newline\@telephone\fi%
    \ifx\@telefax\@empty\else\newline\@telefax\fi%
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
      \ignorespaces##1\tud@newline@poster%
      \tud@multiple@fields@restore{@author}%
      \tud@multiple@@@split{##2}{\newline}%
    }%
    \noindent\tud@multiple@split{@author}%
    \tud@multiple@fields@restore{@author}%
    \tud@newline@poster%
    \@tempswatrue%
  \fi%
  \def\tud@newline@poster{%
    \ifx\@office\@empty\else\newline\@office\fi%
    \ifx\@telephone\@empty\else\newline\@telephone\fi%
    \ifx\@telefax\@empty\else\newline\@telefax\fi%
    \ifx\@emailaddress\@empty\else\newline\@emailaddress\fi%
  }%
  \ifx\@contactperson\@empty\else%
    \if@tempswa\newline\fi%
    \ifx\contactpersonname\@empty\else%
      {\tud@head@font@bold\contactpersonname}\newline%
    \fi%
    \renewcommand*\tud@split@contactperson[2]{%
      \tud@multiple@fields@store{@contactperson}{##1}%
      \tud@multiple@fields@preset{@contactperson}{*}{##1}%
      \ignorespaces##1\tud@newline@poster%
      \tud@multiple@fields@restore{@contactperson}%
      \tud@multiple@@@split{##2}{\newline}%
    }%
    \noindent\tud@multiple@split{@contactperson}%
    \tud@multiple@fields@restore{@contactperson}%
    \tud@newline@poster%
  \fi%
  \ifx\@webpage\@empty\else\newline\@webpage\fi%
}
\footcontent{\tud@footcontent@left@poster}[\tud@footcontent@right@poster]
\newcommand*\tud@footcontent@use[2]{%
  \@tempswafalse%
  \ifx\tud@footcontent@left\@empty\relax%
    \def\@tempa{\@nil}%
    \ifx\@tempa\tud@footcontent@right\relax\else%
      \ifx\tud@footcontent@right\@empty\relax\else%
        \@tempswatrue%
      \fi%
    \fi%
  \else%
    \@tempswatrue%
  \fi%
  \if@tempswa%
    \tud@ddc@check%
    \ifcase\@tempb%
      \setlength\@tempdimc{\z@}%
    \else%
      \settowidth\@tempdimc{\tud@uselayerbox{foot@black}}%
      \addtolength\@tempdimc{\columnsep}%
    \fi%
    \tud@vlayerbox{#1}{%
      \linespread{1}%
      \vss%
      \hbox to #2{%
        \tud@footcontent@font%
        \def\@tempa{\@nil}%
        \ifx\@tempa\tud@footcontent@right\relax%
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
      is too high. You should either reduce the content\MessageBreak%
      or lower the fontsize via the optional argument.%
      \ifnum\tud@geometry>\@ne\relax% true/symmetric/twoside
        \MessageBreak%
        Alternatively you can enlarge the bottom margin\MessageBreak%
        by using option `extrabottommargin'.%
      \fi%
    }%
  \else%
    \hbox to #2{}%
  \fi%
}
\TUD@UnwindPackage{geometry}{%
  \newcommand*\tud@geometry@process{\tud@geometry@set}%
  \let\tud@BeforeSelectAnyPageStyle\@gobble%
}
\@tempswatrue
\tud@ifsacrop{%
  \@tempswafalse%
  \PreventPackageFromLoading{geometry}%
}{}
\if@tempswa%
  \RequirePackage{geometry}[2010/09/12]%
  \newcommand*\tud@geometry@hmargin{}%
  \newcommand*\tud@geometry@vmargin{}%
  \newcommand*\tud@geometry@tudmargin{}%
  \tud@ifverlower{2.03}{\newcommand*\tud@geometry@ddcmargin{}}{}%
  \newif\if@tud@geometry@enabled%
  \@tud@geometry@enabledtrue%
  \newcommand*\tud@newgeometry[1]{%
    \@tud@geometry@enabledfalse%
    \if@atdocument%
      \edef\@tempa{#1}%
      \expandafter\newgeometry\expandafter{#1}%
    \else%
      \edef\@tempa{%
        reset,paperwidth=\the\paperwidth,paperheight=\the\paperheight,#1%
      }%
      \expandafter\geometry\expandafter{\@tempa}%
    \fi%
    \@tud@geometry@enabledtrue%
  }%
  \newcommand*\tud@loadgeometry[1]{%
    \@tud@geometry@enabledfalse%
    \loadgeometry{#1}%
    \@currsize%
    \@tud@geometry@enabledtrue%
  }%
  \newcommand*\tud@geometry@custom{}
  \apptocmd{\geometry}{%
    \if@tud@geometry@enabled%
      \addto\tud@geometry@custom{,#1}%
    \fi%
  }{}{\tud@patch@wrn{geometry}}%
  \AtEndPreamble{%
    \tud@newgeometry{%
      \tud@geometry@mpincl,%
      \if@reversemargin%
        reversemarginpar=true,%
      \else%
        reversemarginpar=false,%
      \fi
      bindingoffset=\the\ta@bcor,%
      \tud@geometry@hincl,%
      \tud@geometry@fincl,%
      \tud@geometry@custom%
    }%
  }%
  \apptocmd{\Gm@changelayout}{%
    \if@tud@geometry@enabled\tud@recalctypearea\fi%
  }{}{\tud@patch@wrn{Gm@changelayout}}%
  \newcommand*\tud@geometry@process{%
    \tud@geometry@set%
    \ifnum\tud@geometry<\tw@\relax% false/custom
      \setlength\tud@ta@headdiff{%
        \dimexpr\tud@dim@topmargin+\tud@dim@barheight+\tud@dim@headsep%
          -\tud@ta@topmargin-\tud@ta@headheight-\tud@ta@headsep-1in\relax%
      }%
      \ifdim\tud@ta@headdiff<\z@\relax%
        \addtolength\tud@dim@headsep{-\tud@ta@headdiff}%
      \fi%
      \ifcase\tud@geometry\relax%
        \edef\tud@geometry@hmargin{%
          left=\the\dimexpr\oddsidemargin+1in-\ta@bcor\relax,%
          textwidth=\the\textwidth,%
          \tud@geometry@mpincl,%
          marginparwidth=\the\marginparwidth,%
          marginparsep=\the\marginparsep,%
          \if@reversemargin%
            reversemarginpar=true,%
          \else%
            reversemarginpar=false,%
          \fi%
          bindingoffset=\the\ta@bcor%
        }%
        \edef\tud@geometry@vmargin{%
          \if@hincl%
            includehead=true,%
            top=\the\dimexpr\tud@ta@topmargin+1in\relax,%
          \else%
            includehead=false,%
            top=\the\dimexpr\tud@ta@topmargin%
              +\tud@ta@headheight+\tud@ta@headsep+1in\relax,%
          \fi%
          headheight=\the\tud@ta@headheight,%
          headsep=\the\tud@ta@headsep,%
          textheight=\the\tud@ta@textheight,%
          \tud@geometry@fincl,%
          footskip=\the\tud@ta@footskip%
        }%
      \else% custom
        \edef\tud@geometry@hmargin{%
          left=\Gm@lmargin,%
          right=\Gm@rmargin,%
          \ifGm@includemp%
            includemp=true,%
          \else%
            includemp=false,%
          \fi%
          marginparwidth=\the\marginparwidth,%
          marginparsep=\the\marginparsep,%
          \if@reversemargin%
            reversemarginpar=true,%
          \else%
            reversemarginpar=false,%
          \fi%
          bindingoffset=\the\Gm@bindingoffset%
        }%
        \edef\tud@geometry@vmargin{%
          \ifGm@includehead%
            includehead=true,%
            top=\the\dimexpr\tud@ta@topmargin+1in\relax,%
          \else%
            includehead=false,%
            top=\the\dimexpr\tud@ta@topmargin%
              +\tud@ta@headheight+\tud@ta@headsep+1in\relax,%
          \fi%
          headheight=\the\tud@ta@headheight,%
          headsep=\the\tud@ta@headsep,%
          textheight=\the\tud@ta@textheight,%
          footskip=\the\tud@ta@footskip,%
          \ifGm@includefoot%
            includefoot=true,%
          \else%
            includefoot=false,%
          \fi%
        }%
      \fi%
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
          package typearea or custom layout is used\MessageBreak%
          (`cdgeometry=false/custom')%
        }%
      \fi%
    \else%  true/symmetric/twoside
      \ifcase\tud@geometry\or\or%  true
        \setlength\@tempdima{\tud@dim@widemargin}%
        \if@reversemargin%
          \setlength\@tempdimc{\tud@dim@widemargin}%
        \else%
          \setlength\@tempdimc{\tud@dim@slimmargin}%
        \fi%
      \or% symmetric
        \setlength\@tempdima{.5\tud@dim@both}%
        \setlength\@tempdimc{.5\tud@dim@both}%
      \or% twoside
        \if@twoside%
          \setlength\@tempdima{.4\tud@dim@both}%
        \else%
          \setlength\@tempdima{.5\tud@dim@both}%
        \fi%
        \setlength\@tempdimc{.5\tud@dim@both}%
        \if@twoside%
          \if@reversemargin%
            \setlength\@tempdimc{.4\tud@dim@both}%
          \else%
            \setlength\@tempdimc{.6\tud@dim@both}%
          \fi%
        \fi%
      \fi%
      \addtolength\@tempdimc{-\tud@ta@headsep}%
      \setlength\@tempdimb{\dimexpr\paperwidth-\tud@dim@both-\ta@bcor\relax}%
      \if@mincl%
        \addtolength\@tempdimb{-\@tempdimc}%
      \fi%
      \edef\tud@geometry@hmargin{%
        left=\the\@tempdima,%
        textwidth=\the\@tempdimb,%
        \tud@geometry@mpincl,%
        marginparwidth=\the\@tempdimc,%
        marginparsep=\the\dimexpr.5\tud@ta@headsep\relax,%
        \if@reversemargin%
          reversemarginpar=true,%
        \else%
          reversemarginpar=false,%
        \fi%
        bindingoffset=\the\ta@bcor%
      }%
      \if@twoside%
        \ifcase\tud@geometry\or\or% true
          \appto\tud@geometry@hmargin{,asymmetric}%
        \else% symmetric/twoside
          \appto\tud@geometry@hmargin{,twoside}%
        \fi%
      \fi%
      \tud@ifverlower{2.03}{%
        \edef\tud@geometry@vmargin{%
          \tud@geometry@hincl,%
          top=\the\dimexpr.5\tud@dim@both\relax,%
          headheight=\the\tud@ta@headheight,%
          headsep=\the\tud@dim@headsep,%
          bottom=\the\dimexpr.5\tud@dim@both+\tud@dim@extrabottommargin\relax,%
          \tud@geometry@fincl,%
          footskip=\the\dimexpr\tud@dim@headsep+\tud@ta@footheight%
            -1.25\baselineskip\relax%
        }%
      }{%
        \edef\tud@geometry@vmargin{%
          \tud@geometry@hincl,%
          top=\the\tud@dim@slimmargin,%
          headheight=\the\tud@ta@headheight,%
          headsep=\the\tud@ta@headsep,%
          bottom=\the\dimexpr\tud@dim@widemargin%
            +\tud@dim@extrabottommargin\relax,%
          \tud@geometry@fincl,%
          footskip=\the\dimexpr\tud@dim@footsep+\tud@ta@footheight\relax%
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
    \if@tud@geometry@adjust%
      \setlength\tud@dim@headingsvskip{.3\tud@dim@topmargin}%
    \else%
      \setlength\tud@dim@headingsvskip{.6\tud@dim@topmargin}%
    \fi%
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
        \expandafter\tud@loadgeometry\expandafter{\tud@currentgeometry}%
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
\fi
\newcommand*\tud@currentgeometry{}
\newcommand*\tud@BeforeSelectAnyPageStyle[1]{%
  \ifstr{#1}{\GetRealPageStyle{#1}}{%
    \tud@iftudps{#1}{%
      \tud@ifverlower{2.03}{%
        \tud@ddc@check%
        \ifcase\@tempb\relax% \tud@ddc@foot=false
          \ifstr{\tud@currentgeometry}{tudarea}{}{%
            \tud@loadgeometry{tudarea}%
            \gdef\tud@currentgeometry{tudarea}%
          }%
        \else% \tud@ddc@foot!=false
          \ifstr{\tud@currentgeometry}{tudareaddc}{}{%
            \tud@loadgeometry{tudareaddc}%
            \gdef\tud@currentgeometry{tudareaddc}%
          }%
        \fi%
      }{%
        \ifstr{\tud@currentgeometry}{tudarea}{}{%
          \tud@loadgeometry{tudarea}%
          \gdef\tud@currentgeometry{tudarea}%
        }%
      }%
      \setlength\tud@dim@headdiff{\z@}%
      \tud@font@koma@set{pagefoot}{\usekomafont{tudheadings}}%
      \tud@font@koma@set{pagenumber}{\usekomafont{tudheadings}}%
    }{%
      \ifstr{\tud@currentgeometry}{typearea}{}{%
        \tud@loadgeometry{typearea}%
        \gdef\tud@currentgeometry{typearea}%
      }%
      \setlength\tud@dim@headdiff{\tud@ta@headdiff}%
      \ifnum\tud@geometry>\@ne\relax% true/symmetric/twoside
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
\newcommand*\tud@recalctypearea{%
  \ifcase\tud@geometry\relax%
    \recalctypearea%
  \else%
    \tud@AfterChangingArea%
  \fi%
}
\AtEndPreamble{%
  \tud@ifsacrop{}{%
    \AfterCalculatingTypearea{\tud@AfterChangingArea}%
    \AfterSettingArea{\tud@AfterChangingArea}%
    \ifdefvoid\AfterRestoreareas{}{%
      \AfterRestoreareas{\tud@AfterChangingArea}%
    }%
    \BeforeSelectAnyPageStyle{\tud@BeforeSelectAnyPageStyle{#1}}%
    \tud@recalctypearea%
  }%
}
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
%%% From File: tudscr-layout.dtx
\newcommand*\tud@headings{}
\newcommand*\tud@disposition@fontsize{}
\newcommand*\tud@headings@set[1][]{%
  \def\@tempa##1##2##3{%
    \ifstr{##1}{\tud@headings}{}{%
      \renewcommand*\tud@headings{##1}%
      \renewcommand*\tud@disposition@fontsize{##2}%
      #1%
    }%
  }%
  \KOMAoptionOf[\def\@tempb]{\KOMAClassFileName}{headings}%
  \@for\@tempc:=\@tempb\do{%
    \ifstr{standardclasses}{\@tempc}{\@tempa{standardclasses}{\Huge}{\LARGE}}{%
    \ifstr{big}{\@tempc}{\@tempa{big}{\Huge}{\LARGE}}{%
    \ifstr{normal}{\@tempc}{\@tempa{normal}{\huge}{\Large}}{%
    \ifstr{small}{\@tempc}{\@tempa{small}{\LARGE}{\Large}}{}}}}%
  }%
}
\AtEndPreamble{\tud@headings@set}
\newcommand*\tud@part@fontcolor{}
\newcommand*\tud@section@fontcolor{}
\newcommand*\tud@layout@process{%
  \ifcase\tud@layout@title\relax% false
    \renewcommand*\titlepagestyle{empty}%
    \tud@font@koma@unset{titlehead}%
    \tud@font@koma@unset{title}%
    \tud@font@koma@unset{subtitle}%
    \tud@font@koma@unset{subject}%
  \else% !false
    \renewcommand*\titlepagestyle{empty.tudheadings}%
    \tud@font@koma@set{titlehead}{\usekomafont{titlepage}}%
    \tud@font@koma@set{title}{%
      \usekomafont{disposition}%
      \tud@disposition@font%
      \tud@disposition@fontsize%
      \tud@color{\tud@title@fontcolor}%
    }%
    \tud@font@koma@set{subtitle}{%
      \ifstr{\mddefault}{l}{%
        \tud@disposition@font[\fontseries{m}]%
      }{%
        \tud@disposition@font[\fontseries{bx}]%
      }%
%      \tud@disposition@font%
      \usesizeofkomafont{section}%
      \tud@color{\tud@title@fontcolor}%
    }%
    \tud@font@koma@set{subject}{%
      \sffamily%
      \bfseries%
      \tud@color{\tud@title@fontcolor}%
    }%
  \fi%
  \ifcase\tud@layout@part\relax% false
    \tud@cmd@restore{partheadstartvskip}%
    \ifcsdef{scr@v@3.18}{%
      \tud@cmd@restore{scr@@startpart}%
    }{%
      \tud@cmd@restore{@part}%
    }%
    \tud@sectioning@reset[addpart]{part}%
    \tud@font@koma@unset{partnumber}%
  \else% !false
    \tud@cmd@store{partheadstartvskip}%
    \let\partheadstartvskip\tud@partheadstartvskip%
    \ifcsdef{scr@v@3.18}{%
      \tud@cmd@store{scr@@startpart}%
      \let\scr@@startpart\tud@@startpart%
    }{%
      \tud@cmd@store{@part}%
      \let\@part\tud@@part%
    }%
      \tud@sectioning@set[addpart]{part}{%
        \tud@disposition@font%
        \tud@color{\tud@part@fontcolor}%
      }%
      \tud@font@koma@set{partnumber}{%
        \tud@disposition@font%
        \tud@color{\tud@part@fontcolor}%
      }%
  \fi%
  \ifcase\tud@layout@section\relax% false
    \tud@sectioning@reset[addsec]{section}%
    \tud@sectioning@reset{subsection}%
    \tud@sectioning@reset{subsubsection}%
    \tud@sectioning@reset{minisec}%
    \tud@sectioning@reset{paragraph}%
    \tud@sectioning@reset{subparagraph}%
  \else% !false
    \renewcommand*\tud@section@fontcolor{}%
    \ifcase\tud@layout@section\relax\or\else% *color
      \renewcommand*\tud@section@fontcolor{HKS41}%
    \fi%
    \tud@sectioning@set[addsec]{section}{%
      \tud@disposition@font%
      \tud@color{\tud@section@fontcolor}%
    }%
    \tud@sectioning@set{subsection}{%
      \tud@disposition@font%
      \tud@color{\tud@section@fontcolor}%
    }%
    \tud@sectioning@set{subsubsection}{%
      \tud@disposition@font%
      \tud@color{\tud@section@fontcolor}%
    }%
    \tud@sectioning@set{minisec}{%
      \tud@disposition@font%
      \tud@color{\tud@section@fontcolor}%
    }%
    \tud@sectioning@set{paragraph}{%
      \tud@color{\tud@section@fontcolor}%
    }%
    \tud@sectioning@set{subparagraph}{%
      \tud@color{\tud@section@fontcolor}%
    }%
  \fi%
  \ifcase\tud@cd\relax% false
    \pagestyle{empty}%
  \else% !false
    \pagestyle{empty.tudheadings}%
    \ifcase\tud@cd\relax\or% true
      \cs@std@lock{tud@head@bar}{0}%
      \bool@std@lock{@tud@foot@colored}{false}%
    \or% litecolor
      \cs@std@lock{tud@head@bar}{1}%
      \bool@std@lock{@tud@foot@colored}{false}%
    \or% barcolor
      \cs@std@lock{tud@head@bar}{2}%
      \bool@std@lock{@tud@foot@colored}{false}%
    \else% bicolor/color/full
      \cs@std@lock{tud@head@bar}{3}%
      \bool@std@lock{@tud@foot@colored}{true}%
    \fi%
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
\newcommand*\tud@partheadstartvskip{}
\let\tud@partheadstartvskip\partheadstartvskip
\pretocmd{\tud@partheadstartvskip}{%
  \renewcommand*\tud@part@fontcolor{}% false/true
  \ifcase\tud@layout@part\relax\or\else% *color
    \renewcommand*\tud@part@fontcolor{HKS41}%
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
  \let\tud@@part\@part%
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
%%% From File: tudscr-title.dtx
\newkomafont{titlepage}{%
  \usekomafont{subject}%
  \mdseries%
  \large%
}
\robustify{\thanks}%
\robustify{\footnotemark}%
\newcommand*\tud@title@uppercase[1]{%
  \let\@tempa\relax%
  \begingroup%
    \let\\\newline%
    \def\thanks##1{\gdef\@tempa{##1}}%
    \let\footnote\thanks%
    \sbox\z@{#1}%
    \let\thanks\@gobble%
    \let\footnote\@gobble%
    \tud@makeuppercase{#1}%
  \endgroup%
  \ifx\@tempa\relax\else\thanks\@tempa\fi%
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
      \tud@iftudps{\currentpagestyle}{%
        \ifstr{\titlepagestyle}{empty}{\thispagestyle{empty.tudheadings}}{}%
      }{}%
    \else% !false
        \tud@maketitlehead%
    \fi%
  \endgroup%
  \setcounter{footnote}{0}%
  \global\let\and\relax%
}
\patchcmd{\titlepage}{\thispagestyle{empty}}{%
  \tud@iftudps{\currentpagestyle}{%
    \thispagestyle{empty.tudheadings}%
  }{%
    \thispagestyle{empty}%
  }%
}{}{\tud@patch@wrn{titlepage}}
\tud@cmd@store{maketitle}%
\let\maketitle\tud@maketitle%
\TUD@parameter{title}{%
  \TUD@parameter@define{cdtitle}[true]{\TUDoption{cdtitle}{#1}}%
  \TUD@parameter@let{cd}{cdtitle}%
  \TUD@parameter@define{pagenumber}{\def\tud@titlepagenumber{#1}}%
  \TUD@parameter@define@ps{#1}%
  \TUD@parameter@sethandler{\TUD@parameter@set{title}{pagenumber=#1}}%
}
\newcommand*\tud@maketitlehead{%
  \renewcommand*\tud@title@fontcolor{}%
  \ifcase\tud@layout@title\relax\or\else% *color
    \renewcommand*\tud@title@fontcolor{HKS41}%
  \fi%
  \par%
  \ifx\tud@titlepagenumber\relax\else%
    \ifnum\tud@titlepagenumber=\@ne\else%
      \ClassWarning{\TUDClassName}{%
        Optional argument of \string\maketitle\space ignored\MessageBreak%
        at notitlepage-mode%
      }%
    \fi%
  \fi%
  \begingroup%
    \let\titlepage@restore\relax%
    \renewcommand*\thefootnote{\@fnsymbol\c@footnote}%
    \let\@oldmakefnmark\@makefnmark%
    \renewcommand*\@makefnmark{\rlap\@oldmakefnmark}%
    \next@tdpage%
    \@tempswafalse%
    \if@twocolumn\ifnum\col@number=\tw@\relax%
      \@tempswatrue%
    \fi\fi%
    \if@tempswa%
      \ifx\@extratitle\@empty\else%
        \twocolumn[\@makeextratitle]\next@tdpage%
      \fi%
      \twocolumn[\tud@@maketitlehead]%
    \else%
      \ifx\@extratitle\@empty\else%
        \@makeextratitle\next@tdpage%
      \fi%
      \tud@@maketitlehead%
    \fi%
    \ifx\titlepagestyle\@empty\else\thispagestyle{\titlepagestyle}\fi%
    \@thanks%
  \endgroup%
}
\newcommand*\tud@@maketitlehead{%
  \global\@topnum=\z@%
  \vspace*{\dimexpr\tud@dim@headdiff-\baselineskip\relax}%
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
    \ifx\@subject\@empty\else%
      \sbox\@ne{\vbox{{\usekomafont{subject}{\@subject\par\null}}}}%
      \addtolength\@tempdima{\dimexpr\ht\@ne+\dp\@ne+\p@\relax}%
    \fi%
    \ifx\@titlehead\@empty\else\usebox\z@\par\fi%
    \ifx\@subject\@empty\else\usebox\@ne\par\fi%
    {\usekomafont{title}{\tud@title@uppercase{\@title}\par}}%
%    \vskip 2ex\@plus1ex\@minus1ex%
    \ifx\@subtitle\@empty\else%
      {\usekomafont{subtitle}{\tud@title@uppercase{\@subtitle}\par}}%
      \vskip 2ex\@plus1ex\@minus1ex%
    \fi%
    \ifnum\col@number>\@ne\relax%
      \vspace*{-\multicolsep}%
    \fi%
    \tud@ifverlower{2.03}{\tud@ddc@enlargepage[\titlepagestyle]}{}%
  \endgroup%
}
\newcommand\maketitleonecolumn[2][]{%
  \if@twocolumn%
      \tud@title@twocolumn{\tud@maketitle[#1]{#2}}%
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
%%% From File: tudscr-frontmatter.dtx
\newcommand*\tud@fm@check[2]{%
  \global\let\tud@fm@set\tud@fm@first%
  #2%
}
\newcommand\tud@fm@set[1]{}
\newcommand\tud@fm@first[1]{%
  \global\let\tud@fm@set\tud@fm@next%
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
  \fi%
}
\newcommand*\tud@quoting{quotation}
\AfterPackage{quoting}{\renewcommand*\tud@quoting{quoting}}
\csundef{abstract}
\csundef{endabstract}
\NewEnviron{abstract}[1][]{%
  \TUD@parameter@set{abstract}{#1}%
  \tud@multicols@check%
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
    \ifnum\tud@abstract@level=\tw@%
      \vskip\dimexpr\bigskipamount-\parskip\relax%
    \fi%
]
\TUD@parameter{abstract}{%
  \TUD@parameter@define{language}{\selectlanguage{#1}}%
  \TUD@parameter@define{columns}{\cs@std@lock{tud@multicols}{#1}}%
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
          The command `\@backslashchar#1' is deprecated\MessageBreak%
          It's recommended to use `\@backslashchar#2' instead%
        }%
        \csletcs{#1}{#2}%
        \@nameuse{#2}%
      }%
    }%
  }%
}
\tud@deprecated@cmd{professorship}{chair}
\tud@deprecated@cmd{logofile}{headlogo}
\tud@deprecated@cmd{logofilename}{headlogo}
\AfterPackage{tudscrsupervisor}{%
  \tud@deprecated@cmd{startdate}{issuedate}%
  \tud@deprecated@cmd{finaldate}{duedate}%
  \tud@deprecated@cmd{maturitydate}{duedate}%
}
\AtEndOfClass%
{%
  \tud@ifverlower{2.04}{\TUDoptions{vspacing=false}}{}%
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
\newcommand*\tud@bookmark@startatroot{}
\let\tud@bookmark@startatroot\relax
\AfterPackage{bookmark}{%
  \def\tud@bookmark@startatroot{%
    \if@tud@bookmarks\bookmarksetup{startatroot}\fi%
  }%
}
\pretocmd{\tud@maketitlehead}{%
  \tud@bookmark@startatroot%
  \tudbookmark[%
  1%
  ]{\titlename}{title}%
}{}{\tud@patch@wrn{tud@maketitlehead}}
\pretocmd{\@maketitle}{%
  \tud@bookmark@startatroot%
  \tudbookmark[%
  1%
  ]{\titlename}{title}%
}{}{\tud@patch@wrn{@maketitle}}
\BeforeTOCHead[toc]{%
  \tud@bookmark@startatroot%
  \let\@tempc\relax%
  \iftocfeature{toc}{totoc}{}{%
    \if@tud@bookmarks%
      \setuptoc{toc}{totoc}%
      \tud@cmd@store{addtocontents}%
      \def\@tempc{%
        \unsettoc{toc}{totoc}%
        \tud@cmd@restore{addtocontents}%
      }%
      \let\addtocontents\@gobbletwo%
    \fi%
  }%
}
\AfterTOCHead[toc]{\@tempc}
\BeforeTOCHead[lof]{\tud@bookmark@startatroot}
\BeforeTOCHead[lot]{\tud@bookmark@startatroot}
\BeforePackage{tocloft}{%
  \ClassWarningNoLine{\TUDClassName}{%
    It is absolutely not recommended to use package\MessageBreak%
    `tocloft'. Loading the package will certainly lead\MessageBreak%
    to problems with table of contents and any list of\MessageBreak%
    floats. You should use the appropriate options of\MessageBreak%
    the KOMA-Script classes%
  }%
}
\AfterPackage{multicol}{%
  \patchcmd{\twocolumn}{\col@number \tw@}{\col@number \@ne}%
    {}{\tud@patch@wrn{twocolumn}}%
}
\endinput
%%
%% End of file `tudscrposter.cls'.
