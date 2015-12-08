%
% Hausmitteilungs-Klasse fuer die TU Dresden
% Autor: Klaus Bergmann
%
\def\fileversion{1.2}
\def\filedate{2011/05/02 }
\def\filename{tudhaus}

\NeedsTeXFormat{LaTeX2e}  \ProvidesClass{\filename}[\filedate Hausmitteilungs-Klasse fuer die TU Dresden, (c) by Klaus Bergmann]
\typeout{Class: '\filename' Version \fileversion, Hausmitteilungsvorlage der Technischen Universitaet Dresden}

\makeatletter

\newif\if@useGerman                             % explizit deutsche Namen verwenden und german-Package einbinden ?
\newif\if@useNoGerman                           % explizit englische Namen verwenden
\DeclareOption{nogerman}{\@useNoGermantrue\@useGermanfalse}
\DeclareOption{german}{\@useGermantrue\@useNoGermanfalse}
\newif\if@ddc
\DeclareOption{ddc}{\@ddctrue}

\newif\if@sansmath\@sansmathtrue
\DeclareOption{serifmath}{\@sansmathfalse}

% Papierformate <> A4 werden abgefangen, weil die Mitteilung immer in A4 gedruckt wird
\DeclareOption{a5paper}{}\DeclareOption{b5paper}{}\DeclareOption{letterpaper}{}\DeclareOption{legalpaper}{}\DeclareOption{executivepaper}{}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}
\ProcessOptions\relax
\LoadClass[a4paper]{letter}

\RequirePackage{graphicx}
\RequirePackage{ifthen}
\if@useGerman\RequirePackage{ngerman}\RequirePackage[OT1]{fontenc}\fi

% Schriftspezifische Definitionen
\DeclareFixedFont{\univLightVII}{OT1}{aun}{l}{n}{7}
\DeclareFixedFont{\univLightObliqueVII}{OT1}{aun}{l}{sl}{7}
\DeclareFixedFont{\univLightIX}{OT1}{aun}{l}{n}{9}
\DeclareFixedFont{\univBoldIX}{OT1}{aun}{b}{n}{9}
\DeclareFixedFont{\univLightXI}{OT1}{aun}{l}{n}{11}
\DeclareFixedFont{\univLightObliqueXI}{OT1}{aun}{l}{sl}{11}
\DeclareFixedFont{\univBoldXI}{OT1}{aun}{b}{n}{11}
\DeclareFixedFont{\univBoldXV}{OT1}{aun}{b}{n}{15}
% TODO Laufweite 40 bei Schriftgroesse 7
% TODO Laufweite 30 bei Schriftgroesse 11
% TODO Laufweite 40 bei Schriftgroesse 15

\renewcommand*{\familydefault}{aun}
\renewcommand*{\seriesdefault}{l}
\renewcommand*{\shapedefault}{n}
\renewcommand*{\sfdefault}{aun}
\renewcommand*{\sffamily}{\fontfamily{aun}\selectfont}
\renewcommand*{\ttfamily}{\fontfamily{\ttdefault}\fontseries{\mddefault}\selectfont}

\if@sansmath
    \DeclareSymbolFont{aunLetters}{OT1}{aun}{l}{it}
    \SetSymbolFont{aunLetters}{bold}{OT1}{aun}{b}{it}
    \DeclareSymbolFont{aunOperators}{OT1}{aun}{l}{n}
    \SetSymbolFont{aunOperators}{bold}{OT1}{aun}{b}{n}
    
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
    \DeclareMathAlphabet\mathbf{OT1}{aun}{b}{n}
    \SetMathAlphabet\mathbf{bold}{OT1}{aun}{b}{n}
    \DeclareMathAlphabet\mathit{OT1}{aun}{l}{it}
    \SetMathAlphabet\mathit{bold}{OT1}{aun}{l}{it}
    
    \let\operator@font\sf
\fi

% Vordefinierte Namen und Bezeichnungen
\newcommand*{\englishnames}{%
    \newcommand*{\@memoname}{Memorandum}
    \newcommand*{\@from}{From:}
    \newcommand*{\@to}{To:}
    \newcommand*{\@fon}{Telephone:}
    \newcommand*{\@fax}{Telefax:}
    \newcommand*{\@xemail}{E-mail:}
    \ifx\@undefined\@vorwahl\newcommand*{\@vorwahl}{+49-351-463}\fi
    \newcommand*{\@xdate}{Date:}

    \renewcommand*{\enclname}{encl}
}

\newcommand*{\germannames}{%
    \newcommand*{\@memoname}{Hausmitteilung}
    \newcommand*{\@from}{Von:}
    \newcommand*{\@to}{An:}
    \newcommand*{\@fon}{Telefon:}
    \newcommand*{\@fax}{Telefax:}
    \newcommand*{\@xemail}{E-Mail:}
    \ifx\@undefined\@vorwahl\newcommand*{\@vorwahl}{0351 463}\fi
    \newcommand*{\@xdate}{Datum:}
}

% Vom Nutzer anzugebende / veraenderbare Namen und Bezeichnungen
\newcommand*{\@telefon}{}   
\newcommand*{\@telefax}{}    
\newcommand*{\@email}{}
\newcommand*{\@dezernat}{}
\newcommand*{\@subject}{}
\newcommand*{\@einrichtung}{}
\newcommand*{\@fachrichtung}{}
\newcommand*{\@institut}{}
\newcommand*{\@professur}{}
\newcommand*{\@logo}{}

\newcommand*{\telefon}[1]{\renewcommand*{\@telefon}{\vorwahlstyle{\@vorwahl}#1}}
\newcommand*{\telefax}[1]{\renewcommand*{\@telefax}{\vorwahlstyle{\@vorwahl}#1}}
\newcommand*{\vorwahl}[1]{\def\@vorwahl{#1}}
\newcommand*{\vorwahlstyle}[1]{#1-}
\newcommand*{\email}[1]{\renewcommand*{\@email}{#1}}
\newcommand*{\dezernat}[1]{\renewcommand*{\@dezernat}{#1}}
\newcommand*{\subject}[1]{\renewcommand*{\@subject}{#1}}
\newcommand*{\einrichtung}[1]{\renewcommand*{\@einrichtung}{#1}}
\newcommand*{\fachrichtung}[1]{\renewcommand*{\@fachrichtung}{#1}}
\newcommand*{\institut}[1]{\renewcommand*{\@institut}{#1}}
\newcommand*{\professur}[1]{\renewcommand*{\@professur}{#1}}
\newcommand*{\logo}[1]{\renewcommand*{\@logo}{#1}}

% Dimensionen
\setlength{\textheight}{234mm}
\setlength{\topmargin}{30mm}
\addtolength{\topmargin}{-1in}
\setlength{\headheight}{0mm}
\setlength{\headsep}{0mm}
\setlength{\topskip}{0mm}
\setlength{\footskip}{21mm}

\setlength{\textwidth}{160mm}
\setlength{\oddsidemargin}{30mm}
\addtolength{\oddsidemargin}{-1in}
\setlength{\evensidemargin}{\oddsidemargin}

\newcommand{\@br}[1][1]{\par\vspace{#1\baselineskip}}

% erste Mitteilungsseite
\newcommand*{\@@dummyComma}{}%

\renewcommand{\ps@firstpage}{%
  % Ränder
    \setlength{\topmargin}{-1in}    % <= keinen Rand nach oben
    \setlength{\headheight}{40mm}   %  40mm
    \setlength{\headsep}{66mm}      % 106mm
    \setlength{\topskip}{0mm}       % 106mm
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
        \newsavebox{\@@professurComma}%
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
    \renewcommand{\@oddfoot}{}\renewcommand{\@evenhead}{}\renewcommand{\@evenfoot}{}%
}

\newlength{\@@logoWidth}%
\newlength{\@@rowWidth}%
\renewcommand{\opening}[1]{%
    \setcounter{@psCount}0%
    \enlargethispage{-76mm}%
    \thispagestyle{firstpage}%
  % Absender und Empfaenger
    \vspace*{-54mm}%
    \univBoldXV\setlength{\baselineskip}{14pt}\@memoname\par\normalfont\vspace{2\baselineskip}%
    \setlength{\tabcolsep}{0mm}\renewcommand{\arraystretch}{1.17}%
    \ifthenelse{\equal{\@logo}{\@empty}}
        {\setlength{\@@logoWidth}{0mm}}
        {\settowidth{\@@logoWidth}{\includegraphics[height=17.6mm]{\@logo}}}
    \setlength{\@@rowWidth}{124.5mm}\addtolength{\@@rowWidth}{-\@@logoWidth}%
    \begin{tabular*}{160mm}[t]{p{16mm}p{19.5mm}p{\@@rowWidth}@{\extracolsep\fill}r}
        \@from  & \multicolumn2l{\fromname}\\
                & \@fon     & \@telefon\\
                & \@fax     & \@telefax\\
                & \@xemail  & \@email & \ifthenelse{\equal{\@logo}{\@empty}}{}{\raisebox{0pt}[-17.6mm]{\includegraphics[height=17.6mm]{\@logo}}}\\\mbox{}\\
        \@to    & \multicolumn3l{\toname}\\
        \ifx\@dezernat\@empty\else & \multicolumn3l{\@dezernat}\\\fi\mbox{}\\
        \@xdate & \multicolumn3l{%
                      \if@german\else\ifx\@undefined\germanTeX\else\originalTeX\fi\fi%
                      \@date%
                      \if@german\else\ifx\@undefined\germanTeX\else\germanTeX\fi\fi}\\
    \end{tabular*}\@br[2]%
    \ifx\@subject\@empty\else\textbf{\@subject}\@br\fi%
  % Grussformel
    \ifthenelse{\equal{#1}{\@empty}}{}{#1\@br}%
}

% Abschluss (MfG)
\renewcommand{\closing}[1]{%
    \normalfont\@br#1\\[3\baselineskip]
    \ifx\fromsig\@empty\fromname\else\fromsig\fi\par
}

% P.S.
\newcounter{@psCount}
\newcounter{@psLoop}
\renewcommand{\ps}[1]{%
    \normalfont\@br%
    \stepcounter{@psCount}%
    \setcounter{@psLoop}{\value{@psCount}}%
    \whiledo{\value{@psLoop}>0}{P. \addtocounter{@psLoop}{-1}}%
    S.: #1\par
}

% Anlage(n)
\renewcommand{\encl}[1]{\normalfont\@br\enclname\\#1\par}%

% restliche Briefseiten
\renewcommand{\ps@plain}{%
    \renewcommand*{\@oddfoot}{\univLightIX\hfill\arabic{page}}%
    \let\@evenfoot=\@oddfoot%
    \renewcommand{\@oddhead}{}\renewcommand{\@evenhead}{}%
}
\pagestyle{plain}

\AtBeginDocument{%
    \setlength{\parskip}{0mm}
    \setlength{\parindent}{0mm}
    \ifx\@undefined\if@german%
        \newif\if@german                                    % Nutzung des german-Packages ?
        \ifx\@undefined\germanTeX\else\@germantrue\fi       % Wenn \(n)germanTeX definiert ist,
        \ifx\@undefined\ngermanTeX\else\@germantrue\fi      % ist das (n)german-Package eingebunden
        \ifx\@undefined\language\else                       %
            \ifnum0=\language\@germanfalse\else\fi          % \language=0  =>  english
        \fi                                                 %
        \if@useGerman\@germantrue\fi                        % Zur expliziten Nutzung der deutschen Texte (das ngerman-Package wurde automatisch eingebunden)
        \if@useNoGerman\@germanfalse\fi                     % Zur expliziten Nutzung der englischen Texte (auch bei vorheriger Einbindung des german-Packages)
        \if@german                                          %
            \ifx\@undefined\language\else                   %
                \ifnum2<\language\selectlanguage{german}\fi % deutsch gewuenscht, aber andere Sprache eingestellt ??  =>  deutsch
                \ifnum2>\language\selectlanguage{german}\fi %
            \fi                                             %
            \germannames                                    %
        \else                                               %
            \ifx\@undefined\language\else                   %
                \ifnum0<\language\selectlanguage{english}\fi% englsch gewuenscht, aber andere Sprache eingestellt ??  =>  englisch
            \fi                                             %
            \englishnames                                   %
        \fi                                                 %
    \fi%
    \raggedright%
}

\renewcommand{\@texttop}{}

\makeatother
