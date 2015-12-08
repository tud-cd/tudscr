%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Buch-Klasse fuer die TU Dresden
%   Autor: Klaus Bergmann
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\fileversion{1.6}
\def\filedate{2012/08/04 }
\def\filename{tudbook}

\NeedsTeXFormat{LaTeX2e}  \ProvidesClass{\filename}[\filedate Buch-Klasse fuer die TU Dresden, (c) by Klaus Bergmann]
\typeout{Class: '\filename' Version \fileversion, Buchvorlage der Technischen Universitaet Dresden}

\newif\if@color
\newif\if@colortitle
\DeclareOption{color}{\@colortrue\@colortitletrue}

\DeclareOption{colortitle}{\@colortitletrue}
\DeclareOption{nocolortitle}{\@colortitlefalse}

\newif\if@ddc
\DeclareOption{ddc}{\@ddctrue}

\newif\if@sansmath\@sansmathtrue
\DeclareOption{serifmath}{\@sansmathfalse}

\newif\if@all@chapterpage
\DeclareOption{chapterpage}{\@all@chapterpagetrue}

% Papierformate <> A4 werden abgefangen, weil das Buch immer in A4 gedruckt wird
\DeclareOption{a5paper}{}\DeclareOption{b5paper}{}\DeclareOption{letterpaper}{}\DeclareOption{legalpaper}{}\DeclareOption{executivepaper}{}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[a4paper]{book}

\RequirePackage{graphicx}
\RequirePackage{ifthen}
\RequirePackage[T1]{fontenc}

\newif\if@color@required
\if@color\@color@requiredtrue\fi
\if@colortitle\@color@requiredtrue\fi
\if@color@required\RequirePackage{color}\fi

% Schriftspezifische Definitionen
\DeclareFixedFont{\univLightIX}{T1}        {aun}{l}{n}{9}
\DeclareFixedFont{\univBoldIX}{T1}         {aun}{b}{n}{9}
\DeclareFixedFont{\univLightXI}{T1}        {aun}{l}{n}{11}
\DeclareFixedFont{\univLightObliqueXI}{T1} {aun}{l}{sl}{11}
\DeclareFixedFont{\univBoldXI}{T1}         {aun}{b}{n}{11}
\DeclareFixedFont{\univLightVII}{T1}       {aun}{l}{n}{7}
\DeclareFixedFont{\univLightObliqueVII}{T1}{aun}{l}{sl}{7}

\newcommand*{\dinBold}{\fontencoding{T1}\fontfamily{din}\fontseries{b}\selectfont}
%\newcommand*{\dinBoldXVI}{\fontencoding{T1}\fontfamily{din}\fontseries{b}\fontsize{16pt}{19.2pt}\selectfont}

\renewcommand*{\encodingdefault}{T1}
\renewcommand*{\familydefault}{aun}
\renewcommand*{\seriesdefault}{l}
\renewcommand*{\shapedefault}{n}
\renewcommand*{\sfdefault}{aun}
\renewcommand*{\sffamily}{\fontfamily{aun}\selectfont}
\renewcommand*{\ttfamily}{\fontfamily{\ttdefault}\fontseries{\mddefault}\selectfont}

\if@sansmath
    \DeclareSymbolFont{aunLetters}{T1}    {lun}{l}{sl}
    \SetSymbolFont{aunLetters}{bold}{T1}  {lun}{b}{sl}
    \DeclareSymbolFont{aunOperators}{T1}  {lun}{l}{n}
    \SetSymbolFont{aunOperators}{bold}{T1}{lun}{b}{n}
    
    \DeclareMathSymbol{a}{\mathalpha}{aunLetters}{`a}
    \DeclareMathSymbol{b}{\mathalpha}{aunLetters}{`b}
    \DeclareMathSymbol{c}{\mathalpha}{aunLetters}{`c}
    \DeclareMathSymbol{d}{\mathalpha}{aunLetters}{`d}
    \DeclareMathSymbol{e}{\mathalpha}{aunLetters}{`e}
    \DeclareMathSymbol{f}{\mathalpha}{aunLetters}{`f}
    \DeclareMathSymbol{g}{\mathalpha}{aunLetters}{`g}
    \DeclareMathSymbol{h}{\mathalpha}{aunLetters}{`h}
    \DeclareMathSymbol{i}{\mathalpha}{aunLetters}{`i}
    \DeclareMathSymbol{j}{\mathalpha}{aunLetters}{`j}
    \DeclareMathSymbol{k}{\mathalpha}{aunLetters}{`k}
    \DeclareMathSymbol{l}{\mathalpha}{aunLetters}{`l}
    \DeclareMathSymbol{m}{\mathalpha}{aunLetters}{`m}
    \DeclareMathSymbol{n}{\mathalpha}{aunLetters}{`n}
    \DeclareMathSymbol{o}{\mathalpha}{aunLetters}{`o}
    \DeclareMathSymbol{p}{\mathalpha}{aunLetters}{`p}
    \DeclareMathSymbol{q}{\mathalpha}{aunLetters}{`q}
    \DeclareMathSymbol{r}{\mathalpha}{aunLetters}{`r}
    \DeclareMathSymbol{s}{\mathalpha}{aunLetters}{`s}
    \DeclareMathSymbol{t}{\mathalpha}{aunLetters}{`t}
    \DeclareMathSymbol{u}{\mathalpha}{aunLetters}{`u}
    \DeclareMathSymbol{v}{\mathalpha}{aunLetters}{`v}
    \DeclareMathSymbol{w}{\mathalpha}{aunLetters}{`w}
    \DeclareMathSymbol{x}{\mathalpha}{aunLetters}{`x}
    \DeclareMathSymbol{y}{\mathalpha}{aunLetters}{`y}
    \DeclareMathSymbol{z}{\mathalpha}{aunLetters}{`z}
    \DeclareMathSymbol{A}{\mathalpha}{aunLetters}{`A}
    \DeclareMathSymbol{B}{\mathalpha}{aunLetters}{`B}
    \DeclareMathSymbol{C}{\mathalpha}{aunLetters}{`C}
    \DeclareMathSymbol{D}{\mathalpha}{aunLetters}{`D}
    \DeclareMathSymbol{E}{\mathalpha}{aunLetters}{`E}
    \DeclareMathSymbol{F}{\mathalpha}{aunLetters}{`F}
    \DeclareMathSymbol{G}{\mathalpha}{aunLetters}{`G}
    \DeclareMathSymbol{H}{\mathalpha}{aunLetters}{`H}
    \DeclareMathSymbol{I}{\mathalpha}{aunLetters}{`I}
    \DeclareMathSymbol{J}{\mathalpha}{aunLetters}{`J}
    \DeclareMathSymbol{K}{\mathalpha}{aunLetters}{`K}
    \DeclareMathSymbol{L}{\mathalpha}{aunLetters}{`L}
    \DeclareMathSymbol{M}{\mathalpha}{aunLetters}{`M}
    \DeclareMathSymbol{N}{\mathalpha}{aunLetters}{`N}
    \DeclareMathSymbol{O}{\mathalpha}{aunLetters}{`O}
    \DeclareMathSymbol{P}{\mathalpha}{aunLetters}{`P}
    \DeclareMathSymbol{Q}{\mathalpha}{aunLetters}{`Q}
    \DeclareMathSymbol{R}{\mathalpha}{aunLetters}{`R}
    \DeclareMathSymbol{S}{\mathalpha}{aunLetters}{`S}
    \DeclareMathSymbol{T}{\mathalpha}{aunLetters}{`T}
    \DeclareMathSymbol{U}{\mathalpha}{aunLetters}{`U}
    \DeclareMathSymbol{V}{\mathalpha}{aunLetters}{`V}
    \DeclareMathSymbol{W}{\mathalpha}{aunLetters}{`W}
    \DeclareMathSymbol{X}{\mathalpha}{aunLetters}{`X}
    \DeclareMathSymbol{Y}{\mathalpha}{aunLetters}{`Y}
    \DeclareMathSymbol{Z}{\mathalpha}{aunLetters}{`Z}

    \DeclareMathSymbol{,}{\mathpunct}{aunLetters}{`,}
    \DeclareMathSymbol{.}{\mathord}{aunLetters}{`.}
    \DeclareMathSymbol{/}{\mathord}{aunLetters}{`/}

    \DeclareMathSymbol{0}\mathalpha{aunOperators}{"30}
    \DeclareMathSymbol{1}\mathalpha{aunOperators}{"31}
    \DeclareMathSymbol{2}\mathalpha{aunOperators}{"32}
    \DeclareMathSymbol{3}\mathalpha{aunOperators}{"33}
    \DeclareMathSymbol{4}\mathalpha{aunOperators}{"34}
    \DeclareMathSymbol{5}\mathalpha{aunOperators}{"35}
    \DeclareMathSymbol{6}\mathalpha{aunOperators}{"36}
    \DeclareMathSymbol{7}\mathalpha{aunOperators}{"37}
    \DeclareMathSymbol{8}\mathalpha{aunOperators}{"38}
    \DeclareMathSymbol{9}\mathalpha{aunOperators}{"39}

    \DeclareSymbolFontAlphabet{\mathsf}{aunOperators}
    \DeclareSymbolFontAlphabet{\mathnormal}{aunLetters}
    \DeclareMathAlphabet\mathbf{T1}{aun}{b}{n}
    \SetMathAlphabet\mathbf{bold}{T1}{aun}{b}{n}
    \DeclareMathAlphabet\mathit{T1}{aun}{l}{sl}
    \SetMathAlphabet\mathit{bold}{T1}{aun}{l}{sl}
    
    \let\operator@font\sf
\fi

% Vom Nutzer anzugebende / veraenderbare Namen und Bezeichnungen
\newcommand*{\@einrichtung}{}
\newcommand*{\@fachrichtung}{}
\newcommand*{\@institut}{}
\newcommand*{\@professur}{}
\newcommand*{\logo@filename}{}

% Farbdefinitionen
\if@color@required
    % Hausfarben HKS XX_K
    \definecolor{HKS41-100}{cmyk}{1.0, 0.7, 0.1, 0.5}
    \definecolor{HKS41-90}{cmyk}{0.9, 0.63, 0.09, 0.45}
    \definecolor{HKS41-80}{cmyk}{0.8, 0.56, 0.08, 0.4}
    \definecolor{HKS41-70}{cmyk}{0.7, 0.49, 0.07, 0.35}
    \definecolor{HKS41-60}{cmyk}{0.6, 0.42, 0.06, 0.3}
    \definecolor{HKS41-50}{cmyk}{0.5, 0.35, 0.05, 0.25}
    \definecolor{HKS41-40}{cmyk}{0.4, 0.28, 0.04, 0.2}
    \definecolor{HKS41-30}{cmyk}{0.3, 0.21, 0.03, 0.15}
    \definecolor{HKS41-20}{cmyk}{0.2, 0.14, 0.02, 0.1}
    \definecolor{HKS41-10}{cmyk}{0.1, 0.07, 0.01, 0.05}
    \definecolor{HKS44-100}{cmyk}{1.0, 0.5, 0.0, 0.0}
    \definecolor{HKS44-90}{cmyk}{0.9, 0.45, 0.0, 0.0}
    \definecolor{HKS44-80}{cmyk}{0.8, 0.4, 0.0, 0.0}
    \definecolor{HKS44-70}{cmyk}{0.7, 0.35, 0.0, 0.0}
    \definecolor{HKS44-60}{cmyk}{0.6, 0.3, 0.0, 0.0}
    \definecolor{HKS44-50}{cmyk}{0.5, 0.25, 0.0, 0.0}
    \definecolor{HKS44-40}{cmyk}{0.4, 0.2, 0.0, 0.0}
    \definecolor{HKS44-30}{cmyk}{0.3, 0.15, 0.0, 0.0}
    \definecolor{HKS44-20}{cmyk}{0.2, 0.1, 0.0, 0.0}
    \definecolor{HKS44-10}{cmyk}{0.1, 0.05, 0.0, 0.0}
    \definecolor{HKS36-100}{cmyk}{0.8, 0.9, 0.0, 0.0}
    \definecolor{HKS36-90}{cmyk}{0.72, 0.81, 0.0, 0.0}
    \definecolor{HKS36-80}{cmyk}{0.64, 0.72, 0.0, 0.0}
    \definecolor{HKS36-70}{cmyk}{0.56, 0.63, 0.0, 0.0}
    \definecolor{HKS36-60}{cmyk}{0.48, 0.54, 0.0, 0.0}
    \definecolor{HKS36-50}{cmyk}{0.4, 0.45, 0.0, 0.0}
    \definecolor{HKS36-40}{cmyk}{0.32, 0.36, 0.0, 0.0}
    \definecolor{HKS36-30}{cmyk}{0.24, 0.27, 0.0, 0.0}
    \definecolor{HKS36-20}{cmyk}{0.16, 0.18, 0.0, 0.0}
    \definecolor{HKS36-10}{cmyk}{0.08, 0.09, 0.0, 0.0}
    \definecolor{HKS33-100}{cmyk}{0.5, 1.0, 0.0, 0.0}
    \definecolor{HKS33-90}{cmyk}{0.45, 0.9, 0.0, 0.0}
    \definecolor{HKS33-80}{cmyk}{0.4, 0.8, 0.0, 0.0}
    \definecolor{HKS33-70}{cmyk}{0.35, 0.7, 0.0, 0.0}
    \definecolor{HKS33-60}{cmyk}{0.3, 0.6, 0.0, 0.0}
    \definecolor{HKS33-50}{cmyk}{0.25, 0.5, 0.0, 0.0}
    \definecolor{HKS33-40}{cmyk}{0.2, 0.4, 0.0, 0.0}
    \definecolor{HKS33-30}{cmyk}{0.15, 0.3, 0.0, 0.0}
    \definecolor{HKS33-20}{cmyk}{0.1, 0.2, 0.0, 0.0}
    \definecolor{HKS33-10}{cmyk}{0.05, 0.1, 0.0, 0.0}
    \definecolor{HKS57-100}{cmyk}{1.0, 0.0, 0.9, 0.2}
    \definecolor{HKS57-90}{cmyk}{0.9, 0.0, 0.81, 0.18}
    \definecolor{HKS57-80}{cmyk}{0.8, 0.0, 0.72, 0.16}
    \definecolor{HKS57-70}{cmyk}{0.7, 0.0, 0.63, 0.14}
    \definecolor{HKS57-60}{cmyk}{0.6, 0.0, 0.54, 0.12}
    \definecolor{HKS57-50}{cmyk}{0.5, 0.0, 0.45, 0.1}
    \definecolor{HKS57-40}{cmyk}{0.4, 0.0, 0.36, 0.08}
    \definecolor{HKS57-30}{cmyk}{0.3, 0.0, 0.27, 0.06}
    \definecolor{HKS57-20}{cmyk}{0.2, 0.0, 0.18, 0.04}
    \definecolor{HKS57-10}{cmyk}{0.1, 0.0, 0.09, 0.02}
    \definecolor{HKS65-100}{cmyk}{0.65, 0.0, 1.0, 0.0}
    \definecolor{HKS65-90}{cmyk}{0.585, 0.0, 0.9, 0.0}
    \definecolor{HKS65-80}{cmyk}{0.52, 0.0, 0.8, 0.0}
    \definecolor{HKS65-70}{cmyk}{0.455, 0.0, 0.7, 0.0}
    \definecolor{HKS65-60}{cmyk}{0.39, 0.0, 0.6, 0.0}
    \definecolor{HKS65-50}{cmyk}{0.325, 0.0, 0.5, 0.0}
    \definecolor{HKS65-40}{cmyk}{0.26, 0.0, 0.4, 0.0}
    \definecolor{HKS65-30}{cmyk}{0.195, 0.0, 0.3, 0.0}
    \definecolor{HKS65-20}{cmyk}{0.13, 0.0, 0.2, 0.0}
    \definecolor{HKS65-10}{cmyk}{0.065, 0.0, 0.1, 0.0}
    \definecolor{HKS07-100}{cmyk}{0.0, 0.6, 1.0, 0.0}
    \definecolor{HKS07-90}{cmyk}{0.0, 0.54, 0.9, 0.0}
    \definecolor{HKS07-80}{cmyk}{0.0, 0.48, 0.8, 0.0}
    \definecolor{HKS07-70}{cmyk}{0.0, 0.42, 0.7, 0.0}
    \definecolor{HKS07-60}{cmyk}{0.0, 0.36, 0.6, 0.0}
    \definecolor{HKS07-50}{cmyk}{0.0, 0.3, 0.5, 0.0}
    \definecolor{HKS07-40}{cmyk}{0.0, 0.24, 0.4, 0.0}
    \definecolor{HKS07-30}{cmyk}{0.0, 0.18, 0.3, 0.0}
    \definecolor{HKS07-20}{cmyk}{0.0, 0.12, 0.2, 0.0}
    \definecolor{HKS07-10}{cmyk}{0.0, 0.06, 0.1, 0.0}
    % Benannte Farben
    \definecolor{white}{gray}{1.00}
    \definecolor{black}{gray}{0.00}
    \definecolor{skyblue}{cmyk}{0.4, 0.2, 0.0, 0.0}             % HKS44-40
    \definecolor{blue}{cmyk}{1.0, 0.5, 0.0, 0.0}                % HKS44-100
    \definecolor{lightblue}{cmyk}{0.7, 0.35, 0.0, 0.0}          % HKS44-70
    \definecolor{darkblue}{rgb}{0.04, 0.16, 0.32}               % 
    \definecolor{extradarkblue}{cmyk}{1.00, 0.70, 0.10, 0.50}   % HKS41-100
    \definecolor{darkgreen}{cmyk}{1.0, 0.0, 0.9, 0.2}           % HKS57-100
    \definecolor{green}{cmyk}{0.65, 0.0, 1.0, 0.0}              % HKS65-100
    \definecolor{purple}{cmyk}{0.5, 1.0, 0.0, 0.0}              % HKS33-100
    \definecolor{indigo}{cmyk}{0.8, 0.9, 0.0, 0.0}              % HKS36-100
    \definecolor{gray}{gray}{0.59}
    \definecolor{darkgray}{gray}{0.50}
    \definecolor{darkcyan}{cmyk}{0.87, 0.4, 0.4, 0.0}
    \definecolor{cyan}{cmyk}{0.78, 0.19, 0.01, 0.0}
    \definecolor{lightcyan}{cmyk}{0.39, 0.095, 0.005, 0.0}
    \definecolor{extralightcyan}{cmyk}{0.16, 0.1, 0.0, 0.0}
\fi

\newcommand*{\einrichtung}[1]{\renewcommand*{\@einrichtung}{#1}}
\newcommand*{\fachrichtung}[1]{\renewcommand*{\@fachrichtung}{#1}}
\newcommand*{\institut}[1]{\renewcommand*{\@institut}{#1}}
\newcommand*{\professur}[1]{\renewcommand*{\@professur}{#1}}
\newcommand*{\logofilename}[1]{\renewcommand*\logo@filename{#1}}

% Dimensionen
\setlength{\textheight}{238mm}
\setlength{\topmargin}{20mm}
\addtolength{\topmargin}{-1in}
\setlength{\headheight}{0mm}
\setlength{\headsep}{10mm}
\setlength{\topskip}{0mm}
\setlength{\footskip}{17mm}

\setlength{\textwidth}{150mm}
\setlength{\oddsidemargin}{30mm}
\addtolength{\oddsidemargin}{-1in}
\setlength{\evensidemargin}{30mm}
\addtolength{\evensidemargin}{-1in}

\newcommand{\@br}[1][1]{\par\vspace{#1\baselineskip}}

% erste Seite
\newcommand*{\@@dummyComma}{}%
\newlength{\logo@Tab@Width}\setlength{\logo@Tab@Width}{160mm}
\newlength{\logo@Tab@Extra@Space}\setlength{\logo@Tab@Extra@Space}{0pt}

\newsavebox{\@@professurComma}
\newlength{\logoHeight}\settoheight{\logoHeight}{\includegraphics[width=57mm]{TU_Logo_SW}}
\newif\if@@profnewline%
\newif\if@@instnewline%
\newif\if@@nonewline%
\newcommand{\ps@firstpage}{%
  % Ränder
    \setlength{\topmargin}{-1in}    % <= keinen Rand nach oben
    \setlength{\headheight}{40mm}   % 40mm
    \setlength{\headsep}{49mm}      % 89mm
    \setlength{\topskip}{0mm}       % 89mm
    \setlength{\textheight}{216mm}
    %\setlength{\footskip}{-7mm}
  % Logo und Querbalken
    \renewcommand{\@oddhead}{%
        \if@colortitle\color{white}\fi%
		%\@@profnewlinefalse%
        \settowidth{\dimen255}{\univBoldIX\@einrichtung\ \univLightIX\@fachrichtung, \@institut, \@professur}%
        \ifdim\dimen255 > 160mm\relax%
            \@@profnewlinetrue%
            \settowidth{\dimen255}{\univBoldIX\@einrichtung\ \univLightIX\@fachrichtung, \@institut}%
            \ifdim\dimen255 > 160mm\relax%
                \@@instnewlinetrue%
                \@@profnewlinefalse%
            \fi%
        \fi%
        \if@@instnewline\else\if@@profnewline\else\@@nonewlinetrue\fi\fi%
        \setlength{\tabcolsep}{0pt}%
        \setlength{\arrayrulewidth}{0.5pt}%
        \sbox{\@@professurComma}{%
            \renewcommand*{\@@dummyComma}{}%
            \ifx\@fachrichtung\@empty\else\renewcommand*{\@@dummyComma}{, }\fi   % Fachrichtung vorhanden -> Komma
            \ifx\@institut\@empty\else\renewcommand*{\@@dummyComma}{, }\fi       % Institut vorhanden -> Komma
            \ifx\@professur\@empty\renewcommand*{\@@dummyComma}{}\fi             % keine Professur vorhanden -> kein Komma
            \if@@profnewline\renewcommand*{\@@dummyComma}{}\fi                   % Professur in neue Zeile -> kein Komma
            \@@dummyComma%
        }%
        \if@colortitle%
            \setlength{\logo@Tab@Width}{210mm}%
            \setlength{\logo@Tab@Extra@Space}{30mm}%
            \setlength{\arrayrulewidth}{1pt}%
            \hspace*{-30mm}%
        \fi
        \begin{tabular*}{\logo@Tab@Width}[b]{@{\hspace*{\logo@Tab@Extra@Space}}lp{\logo@Tab@Extra@Space}}
          % TUD-Logo
            \hspace*{-19mm}\parbox[b]{179mm}{\includegraphics[width=57mm]{TU_Logo_SW}%
            \if@ddc\hfill\if@colortitle\includegraphics[height=\logoHeight]{DDC-weiss}\else\includegraphics[height=\logoHeight]{DDC-09}\fi%
            \else%
            \ifx\logo@filename\@empty\else\hfill\includegraphics[height=\logoHeight]{\logo@filename}\fi\fi}\\[3.75mm]\hline%
          % Einrichtungsname
            \rule[-1.2mm]{0mm}{13pt}\univBoldIX\@einrichtung%
            \ifx\@einrichtung\@empty\ClassWarningNoLine{\filename}{Es wurde keine Einrichtung angegeben}\fi%
          % Fachrichtungsname
            \ifx\@fachrichtung\@empty\else\ \univLightIX\@fachrichtung\fi%
          % Komma vor Institutsname (bei Bedarf)
            \renewcommand*{\@@dummyComma}{}%
            \ifx\@institut\@empty\else\renewcommand*{\@@dummyComma}{, }\fi       % Institut vorhanden -> Komma
            \ifx\@fachrichtung\@empty\renewcommand*{\@@dummyComma}{ }\fi         % keine Fachrichtung vorhanden -> kein Komma
            \if@@instnewline\renewcommand*{\@@dummyComma}{}\fi                   % Institut in neue Zeile -> kein Komma
            \@@dummyComma%
          % Institut
            \if@@instnewline\\\hline\fi%
            \if@@instnewline\else\ifx\@institut\@empty\else\univLightIX\@institut\fi\fi%
          % Komma vor Professur (bei Bedarf)
            \if@@profnewline\else\if@@instnewline\else\usebox{\@@professurComma}\fi\fi%
          % Professur
            \if@@profnewline\\\hline\fi%
            \if@@nonewline\ifx\@professur\empty\else\univLightIX\@professur\fi\fi%
            \if@@instnewline\else\if@@profnewline\else\\\hline\fi\fi%
        \end{tabular*}\hspace{-160mm}%
        \parbox[t][0pt]{160mm}{\vspace{0.25\baselineskip}\mbox{%
            \if@@instnewline\ifx\@institut\@empty\else\univLightIX\@institut\fi\usebox{\@@professurComma}\fi%
            \if@@nonewline\else\ifx\@professur\empty\else\univLightIX\@professur\fi\fi%
        }}%
    }%
    \let\@evenhead\@oddhead%
    \let\@oddfoot\@empty\let\@evenfoot\@empty%
}

% restliche Seiten
\if@twoside%
    \renewcommand{\ps@plain}{%
        \let\@oddhead\@empty\let\@evenhead\@empty%
        \renewcommand*{\@oddfoot}{\hfil\univLightIX\thepage}%
        \renewcommand*{\@evenfoot}{\univLightIX\thepage}%
    }%
    \renewcommand{\ps@headings}{%
        \let\@oddhead\@empty\let\@evenhead\@empty%
        \renewcommand*{\@oddfoot}{\hfil\univLightVII\rightmark\quad\univLightIX\thepage}%
        \renewcommand*{\@evenfoot}{\univLightIX\thepage\quad\univLightVII\leftmark\hfil}%
        \def\chaptermark##1{%
            \markboth{%
                \ifnum \c@secnumdepth >\m@ne%
                    \if@mainmatter\@chapapp\ \thechapter\ \ \fi%
                \fi%
            ##1}{}%
        }%
        \def\sectionmark##1{\markright{\ifnum \c@secnumdepth >\z@\thesection\ \ \fi##1}}
    }%
\else%
    \renewcommand{\ps@plain}{%
        \let\@oddhead\@empty\let\@evenhead\@empty%
        \renewcommand*{\@oddfoot}{\hfil\univLightIX\thepage}%
        \let\@evenfoot\@oddfoot%
    }%
    \renewcommand{\ps@headings}{%
        \let\@oddhead\@empty\let\@evenhead\@empty%
        \renewcommand*{\@oddfoot}{\hfil\univLightVII\rightmark\quad\univLightIX\thepage}%
        \let\@evenfoot\@oddfoot%
        \def\chaptermark##1{%
            \markright{%
                \ifnum \c@secnumdepth >\m@ne%
                    \if@mainmatter\@chapapp\ \thechapter\ \ \fi%
                \fi%
            ##1}{}%
        }%
    }%
\fi%
\pagestyle{headings}

\newif\if@chapterpage
\newcommand*{\chapterpage}{\@chapterpagetrue}

\renewcommand*{\@makechapterhead}[1]{%
    \if@color%
        \color{HKS41-100}%
        \ifthenelse{\not\boolean{@all@chapterpage}\and\boolean{@chapterpage} \OR \(\boolean{@all@chapterpage}\and\not\boolean{@chapterpage}\)}{\pagecolor{HKS41-10}}{\relax}
    \fi%
    \vspace*{55mm}%
    {\parindent\z@\raggedright\normalfont%
    \interlinepenalty\@M%
    \dinBold\Huge\bfseries{%
        \ifnum \c@secnumdepth >\m@ne\if@mainmatter%
            \begin{list}{}{\setlength{\topsep}{0pt}\setlength{\partopsep}{0pt}\setlength{\parskip}{0pt}\setlength{\parsep}{0pt}%
                           \settowidth{\labelwidth}{\thechapter}\setlength{\leftmargin}{2em}%
                           \setlength{\labelsep}{2em}\addtolength{\labelsep}{-\labelwidth}}
                \item[\thechapter]\MakeUppercase{#1}%
            \end{list}%
        \fi\fi%
    }\par\nobreak%
    \vskip 2ex}%
    \ifthenelse{\not\boolean{@all@chapterpage}\and\boolean{@chapterpage} \OR \(\boolean{@all@chapterpage}\and\not\boolean{@chapterpage}\)}{%
        \thispagestyle{empty}%
        \vfill\pagebreak%
        \if@color\pagecolor{white}\fi%
    }{\relax}
    \@chapterpagefalse%
    \if@color\color{black}\fi
}%

\renewcommand*{\@makeschapterhead}[1]{%
    \if@color%
        \color{HKS41-100}%
        \ifthenelse{\not\boolean{@all@chapterpage}\and\boolean{@chapterpage} \OR \(\boolean{@all@chapterpage}\and\not\boolean{@chapterpage}\)}{\pagecolor{HKS41-10}}{\relax}
    \fi%
    \vspace*{55mm}%
    {\parindent\z@\raggedright\normalfont%
    \interlinepenalty\@M%
    \dinBold\Huge\bfseries{%
			\begin{list}{}{\setlength{\topsep}{0pt}\setlength{\partopsep}{0pt}\setlength{\parskip}{0pt}\setlength{\parsep}{0pt}%
						   \settowidth{\labelwidth}{\thechapter}\setlength{\leftmargin}{0pt}%
						   \setlength{\labelsep}{0pt}}
				\item[]\MakeUppercase{#1}
			\end{list}%
	}\par\nobreak%
    \vskip 2ex}%
    \ifthenelse{\not\boolean{@all@chapterpage}\and\boolean{@chapterpage} \OR \(\boolean{@all@chapterpage}\and\not\boolean{@chapterpage}\)}{%
        \thispagestyle{empty}%
        \vfill\pagebreak%
        \if@color\pagecolor{white}\fi%
    }{\relax}
    \@chapterpagefalse%
    \if@color\color{black}\fi
}%

\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\dinBold\Large\bfseries\MakeUppercase}}

\global\let\OrgTitlepage\titlepage
\global\let\endOrgTitlepage\endtitlepage
\renewenvironment{titlepage}{%
    \def\and{%                  % \begin{tabular}
        \end{tabular}%
        \hskip 1em \@plus.17fil%
        \begin{tabular}[t]{l}%   % \end{tabular}
    }%
    \OrgTitlepage%
        \if@colortitle%
            \pagecolor{HKS41-100}%
            \color{HKS41-30}%
        \fi%
        \thispagestyle{firstpage}\enlargethispage{-59mm}%
        \raggedright%
}{%
    \endOrgTitlepage%
    \if@colortitle%
        \pagecolor{white}%
        \color{black}%
    \fi%
}

\newcommand\showtitle[1]{{\dinBold\Huge\bfseries\MakeUppercase{#1}\par\nobreak}}
\renewcommand{\maketitle}{%
    \begin{titlepage}%
        \showtitle{\@title}
        \vskip 1em%
        {\LARGE\bfseries\begin{tabular}[t]{@{}l@{}}\@author\end{tabular}\par}%
        \vskip 3em%
        {\Large\bfseries\@date\par}%
        \@thanks
    \end{titlepage}%
    \setcounter{footnote}{0}%
    \global\let\thanks\relax%
    \global\let\maketitle\relax%
    \global\let\@thanks\@empty%
    \global\let\@author\@empty%
    \global\let\@date\@empty%
    \global\let\@title\@empty%
    \global\let\title\relax%
    \global\let\author\relax%
    \global\let\date\relax%
    \global\let\and\relax%
    \global\let\showtitle\relax%
}%

\newcommand*{\glossaryname}{Glossar}
\newenvironment{theglossary}[1][]{%
    \chapter*{\glossaryname}%
    \@mkboth{\glossaryname}{\glossaryname}\thispagestyle{headings}%
    #1%
    \begin{list}{}{\setlength{\labelsep}{0pt}\setlength{\labelwidth}{0pt}\setlength{\itemindent}{-\leftmargin}}%
}{\end{list}}
\newcommand\glossitem[1]{\item[] #1\par}%

\renewenvironment{theindex}[1][]{%
    \columnseprule \z@
    \columnsep 35\p@
    \begin{multicols}2[\@makeschapterhead{\indexname}#1]%
        \@mkboth{\indexname}{\indexname}%
        \thispagestyle{headings}\parindent\z@
        \parskip\z@ \@plus .3\p@\relax
        \let\item\@idxitem%
}{\end{multicols}\clearpage}

\providecommand\fixbibsection{%
    % Overwrites \renewcommand\bibsection{...} from natbib.sty that causes a TeX stack overflow.
    % Call the command \fixbibsection somewhere AFTER \usepackage{natbib}
    \renewcommand\bibsection{%
        \chapter*{\bibname}%
        \@mkboth{\bibname}{\bibname}\thispagestyle{headings}%
    }
}

\renewenvironment{thebibliography}[1]{%
    \chapter*{\bibname}%
    \@mkboth{\bibname}{\bibname}\thispagestyle{headings}%
    \list{\@biblabel{\@arabic\c@enumiv}}%
         {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
    \sloppy
    \clubpenalty4000
    \@clubpenalty \clubpenalty
    \widowpenalty4000%
    \sfcode`\.\@m%
}{%
    \def\@noitemerr{\@latex@warning{Leere `thebibliography' Umgebung}}%
    \endlist%
}

% Verzeichnisse neu definieren, damit Headings nicht in Grossbuchstaben
\renewcommand\tableofcontents{%
    \if@twocolumn
        \@restonecoltrue\onecolumn
    \else
        \@restonecolfalse
    \fi
    \chapter*{\contentsname}
    \@mkboth{\contentsname}{\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
}
\renewcommand\listoffigures{%
    \if@twocolumn
        \@restonecoltrue\onecolumn
    \else
        \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
    \@mkboth{\listfigurename}{\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
}
\renewcommand\listoftables{%
    \if@twocolumn
        \@restonecoltrue\onecolumn
    \else
        \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
    \@mkboth{\listtablename}{\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
}

\AtBeginDocument{%
    \setlength{\baselineskip}{2.4ex plus0.3ex minus0.2ex}%
    \setlength{\parskip}{\baselineskip}%
    \setlength{\parindent}{0mm}%
    \raggedright%
  % Math
	\if@sansmath\ifx\@undefined\germanTeX\else\DeclareMathSymbol{,}{\mathord}{aunLetters}{`,}\fi\fi%
}
