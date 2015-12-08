%
% Formular-Klasse fuer die TU Dresden
% Autor: Klaus Bergmann
%
\def\fileversion{1.3}
\def\filedate{2012/05/03 }
\def\filename{tudform}

\NeedsTeXFormat{LaTeX2e}  \ProvidesClass{\filename}[\filedate Formular-Klasse fuer die TU Dresden, (c) by Klaus Bergmann]
\typeout{Class: '\filename' Version \fileversion, Formularvorlage der Technischen Universitaet Dresden}

\makeatletter

\newif\if@logo
\DeclareOption{logo}{\@logotrue}
\newif\if@ddc
\DeclareOption{ddc}{\@ddctrue}

\newif\if@sansmath\@sansmathtrue
\DeclareOption{serifmath}{\@sansmathfalse}

% Papierformate <> A4 werden abgefangen, weil das Formular immer in A4 gedruckt wird
\DeclareOption{a5paper}{}\DeclareOption{b5paper}{}\DeclareOption{letterpaper}{}\DeclareOption{legalpaper}{}\DeclareOption{executivepaper}{}

\def\@super@class{article}
\DeclareOption{report}{\def\@super@class{report}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\@super@class}}
\ProcessOptions\relax
\LoadClass[a4paper]{\@super@class}

\RequirePackage{graphicx}
\RequirePackage{ifthen}

% Schriftspezifische Definitionen
\DeclareFixedFont{\univLightIX}{T1}{aun}{l}{n}{9}
\DeclareFixedFont{\univBoldIX}{T1}{aun}{b}{n}{9}
\DeclareFixedFont{\univLightXI}{T1}{aun}{l}{n}{11}
\DeclareFixedFont{\univLightObliqueXI}{T1}{aun}{l}{sl}{11}
\DeclareFixedFont{\univBoldXI}{T1}{aun}{b}{n}{11}

\renewcommand*{\familydefault}{aun}
\renewcommand*{\seriesdefault}{l}
\renewcommand*{\shapedefault}{n}
\renewcommand*{\sfdefault}{aun}
\renewcommand*{\sffamily}{\fontfamily{aun}\selectfont}
\renewcommand*{\ttfamily}{\fontfamily{\ttdefault}\fontseries{\mddefault}\selectfont}

\if@sansmath
    \DeclareSymbolFont{aunLetters}{T1}{aun}{l}{it}
    \SetSymbolFont{aunLetters}{bold}{T1}{aun}{b}{it}
    \DeclareSymbolFont{aunOperators}{T1}{aun}{l}{n}
    \SetSymbolFont{aunOperators}{bold}{T1}{aun}{b}{n}
    
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
    \DeclareMathAlphabet\mathit{T1}{aun}{l}{it}
    \SetMathAlphabet\mathit{bold}{T1}{aun}{l}{it}
    
    \let\operator@font\sf
\fi

% Vom Nutzer anzugebende / veraenderbare Namen und Bezeichnungen
\newcommand*{\@subject}{}
\newcommand*{\@einrichtung}{}
\newcommand*{\@fachrichtung}{}
\newcommand*{\@institut}{}
\newcommand*{\@professur}{}

\newcommand*{\subject}[1]{\renewcommand*{\@subject}{#1}}
\newcommand*{\einrichtung}[1]{\renewcommand*{\@einrichtung}{#1}}
\newcommand*{\fachrichtung}[1]{\renewcommand*{\@fachrichtung}{#1}}
\newcommand*{\institut}[1]{\renewcommand*{\@institut}{#1}}
\newcommand*{\professur}[1]{\renewcommand*{\@professur}{#1}}

% Dimensionen
\if@logo
    \setlength{\textheight}{216mm}
\else
    \setlength{\textheight}{238mm}
\fi
\setlength{\topmargin}{30mm}
\addtolength{\topmargin}{-1in}
\setlength{\headheight}{0mm}
\setlength{\headsep}{0mm}
\setlength{\topskip}{0mm}
\setlength{\footskip}{17mm}

\setlength{\textwidth}{160mm}
\setlength{\oddsidemargin}{30mm}
\addtolength{\oddsidemargin}{-1in}
\setlength{\evensidemargin}{\oddsidemargin}

\newcommand{\@br}[1][1]{\par\vspace{#1\baselineskip}}

% erste Seite
\newcommand*{\@@dummyComma}{}
\newsavebox{\@@professurComma}
\newif\if@emptypage\@emptypagefalse

\newcommand{\ps@firstpage}{%
  % Ränder
    \setlength{\topmargin}{-1in}    % <= keinen Rand nach oben
    \setlength{\headheight}{40mm}   % 40mm
    \setlength{\headsep}{12mm}      % 52mm
    \setlength{\topskip}{0mm}       % 52mm
    \setlength{\textheight}{216mm}
    %\setlength{\footskip}{-7mm}
  % Logo und Querbalken
    \renewcommand{\@oddhead}{%
        \newif\if@@profnewline%\@@profnewlinefalse%
        \newif\if@@instnewline%\@@instnewlinefalse%
        \settowidth{\dimen255}{\univBoldIX\@einrichtung\ \univLightIX\@fachrichtung, \@institut, \@professur}%
        \ifdim\dimen255 > 160mm\relax%
            \@@profnewlinetrue%
            \settowidth{\dimen255}{\univBoldIX\@einrichtung\ \univLightIX\@fachrichtung, \@institut}%
            \ifdim\dimen255 > 160mm\relax%
                \@@instnewlinetrue%
                \@@profnewlinefalse%
            \fi%
        \fi%
        \newif\if@@nonewline%
        \if@@instnewline\else\if@@profnewline\else\@@nonewlinetrue\fi\fi%
        \setlength{\tabcolsep}{0mm}%
        \setlength{\arrayrulewidth}{0.5pt}%
        \sbox{\@@professurComma}{%
            \renewcommand*{\@@dummyComma}{}%
            \ifx\@fachrichtung\@empty\else\renewcommand*{\@@dummyComma}{, }\fi   % Fachrichtung vorhanden -> Komma
            \ifx\@institut\@empty\else\renewcommand*{\@@dummyComma}{, }\fi       % Institut vorhanden -> Komma
            \ifx\@professur\@empty\renewcommand*{\@@dummyComma}{}\fi             % keine Professur vorhanden -> kein Komma
            \if@@profnewline\renewcommand*{\@@dummyComma}{}\fi                   % Professur in neue Zeile -> kein Komma
            \@@dummyComma%
        }%
        \begin{tabular*}{160mm}[b]{p{160mm}@{\extracolsep\fill}}
          % TUD-Logo
            \hspace*{-19mm}\includegraphics[height=16.73mm]{TU_Logo_SW}%  width=57mm
            \if@ddc\hfill\includegraphics[height=16.73mm]{DDC-09}\fi%
            \\[3.75mm]
            \hline%
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
    \if@logo\let\@evenhead=\@oddhead\else\renewcommand{\@evenhead}{}\fi%
    \renewcommand*{\@oddfoot}{%
        \if@emptypage
            \@emptypagefalse
        \else%
        \if@logo%
            \univLightIX\hfill\arabic{page}%
        \else%
            \parbox[b][22mm][b]{160mm}{\univLightIX\hfill\arabic{page}\\[22mm]}%
        \fi%
        \fi%
    }%
    \let\@evenfoot=\@oddfoot%
}

% restliche Seiten
\if@logo%
    \let\ps@plain=\ps@firstpage%
\else%
    \renewcommand{\ps@plain}{%
        \renewcommand*{\@oddfoot}{\univLightIX\hfill\arabic{page}}%
        \let\@evenfoot=\@oddfoot%
        \renewcommand{\@oddhead}{}\renewcommand{\@evenhead}{}%
    }%
\fi
\pagestyle{plain}

% Titlepage
\renewenvironment{titlepage}{%
    \if@twocolumn
        \@restonecoltrue\onecolumn
    \else
        %\@restonecolfalse\newpage
    \fi
    \@emptypagetrue%
    \setcounter{page}\@ne
}{%
    \if@restonecol\twocolumn \else \newpage \fi
    \if@twoside\else
        \setcounter{page}\@ne
    \fi
}
\if@titlepage
    \renewenvironment{abstract}{%
        \titlepage
        \if@logo\else\thispagestyle{empty}\fi
        \null\vfil
        \@beginparpenalty\@lowpenalty
        \begin{center}%
        \bfseries \abstractname
        \@endparpenalty\@M
        \end{center}
    }{\par\vfil\null\endtitlepage}
\else
    \renewcommand\maketitle{\par
        \begingroup
        \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
        \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
        \long\def\@makefntext##1{%
            \parindent 1em\noindent
            \hb@xt@1.8em{\hss\@textsuperscript{\normalfont\@thefnmark}}##1%
        }%
        \if@twocolumn
            \ifnum \col@number=\@ne
                \@maketitle
            \else
                \twocolumn[\@maketitle]%
            \fi
        \else
            %\newpage
            \global\@topnum\z@   % Prevents figures from going at top of page.
            \@maketitle
        \fi
        %\thispagestyle{plain}
        %\@emptypagetrue
        \@thanks
        \endgroup
        \setcounter{footnote}{0}%
        \global\let\thanks\relax
        \global\let\maketitle\relax
        \global\let\@maketitle\relax
        \global\let\@thanks\@empty
        \global\let\@author\@empty
        \global\let\@date\@empty
        \global\let\@title\@empty
        \global\let\title\relax
        \global\let\author\relax
        \global\let\date\relax
        \global\let\and\relax
    }
    \def\@maketitle{%
        %\newpage
        \null
        \vskip 2em%
        \begin{center}%
            \let \footnote \thanks
            {\LARGE \@title \par}%
            \vskip 1.5em%
            {\large
            \lineskip .5em%
            \begin{tabular}[t]{c}%
                \@author
            \end{tabular}\par}%
            \vskip 1em%
            {\large \@date}%
        \end{center}%
        \par
        \vskip 1.5em%
    }
\fi

\setlength{\parskip}{0mm}%
\setlength{\parindent}{0mm}%
\AtBeginDocument{%
    \if@logo\else\enlargethispage{-22mm}\fi%
    \thispagestyle{firstpage}%
  % Lochmarke
    \parbox[t][0pt][t]{0pt}{\vspace*{92.9mm}\hspace*{-19mm}\rule{5mm}{0.5pt}}%
  % Betreff
    \raggedright\setlength{\baselineskip}{14pt plus1pt minus1pt}%
    \ifx\@subject\@empty\else\textbf{\@subject}\@br\fi%
  % Math
	\if@sansmath\ifx\@undefined\germanTeX\else\DeclareMathSymbol{,}{\mathord}{aunLetters}{`,}\fi\fi%
}

\makeatother
