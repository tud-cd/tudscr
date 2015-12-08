%
% Praesentationsfolien-Klasse fuer die TU Dresden
% Autor: Klaus Bergmann
%
\def\fileversion{1.3.1}
\def\filedate{2011/05/02 }
\def\filename{tudbeamer}

\NeedsTeXFormat{LaTeX2e}  \ProvidesClass{\filename}[\filedate Praesentationsfolien-Klasse fuer die TU Dresden, (c) by Klaus Bergmann]
\typeout{Class: '\filename' Version \fileversion, Praesentationsfolienvorlage der Technischen Universitaet Dresden}

\newif\if@useGerman                             % explizit deutsche Namen verwenden und german-Package einbinden ?
\newif\if@useNoGerman                           % explizit englische Namen verwenden
\DeclareOption{nogerman}{\@useNoGermantrue\@useGermanfalse}
\DeclareOption{german}{\@useGermantrue\@useNoGermanfalse}

\newif\if@useHeader\@useHeadertrue
\DeclareOption{noheader}{\@useHeaderfalse}

\newif\if@useNavBar\@useNavBarfalse
\DeclareOption{navbar}{\@useNavBartrue}

\newif\if@usePageNum\@usePageNumfalse
\DeclareOption{pagenum}{\@usePageNumtrue}

\newif\if@useHeavyFont\@useHeavyFontfalse
\DeclareOption{heavyfont}{\@useHeavyFonttrue}

\newif\if@noDIN\@noDINfalse
\DeclareOption{nodin}{\@noDINtrue}

\newif\if@noTotalPages\@noTotalPagesfalse
\DeclareOption{nototalpages}{\@noTotalPagestrue}

\newif\if@ddc
\DeclareOption{ddc}{\@ddctrue}
\newif\if@ddcfooter
\DeclareOption{ddcfooter}{\@ddcfootertrue\@ddcfalse}

%\newif\if@useBeamerFont\@useBeamerFontfalse
%\DeclareOption{beamerfont}{\@useBeamerFonttrue}

\newif\if@sansmath\@sansmathtrue
\DeclareOption{serifmath}{\@sansmathfalse}

\newif\if@useNoFrameTitleSection\@useNoFrameTitleSectionfalse
\DeclareOption{nosectionnum}{\@useNoFrameTitleSectiontrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass{beamer}

\RequirePackage{graphicx}
\RequirePackage{ifthen}
\RequirePackage{color}
\if@useGerman\RequirePackage{ngerman}\fi

\def\logo@front{logo_weiss}
\def\logo@default{logo_blau}
\ifx\pdfoutput\undefined\else\ifx\pdfoutput\relax\else\ifcase\pdfoutput\else\def\logo@front{TU_Logo_SW}\def\logo@default{TU_Logo_SW}\fi\fi\fi

% Schriftspezifische Definitionen
%\if@useBeamerFont\else%
    \renewcommand*\encodingdefault{OT1}
    \renewcommand*\familydefault{aun}
    \renewcommand*\bfseries{\fontseries{b}\selectfont}
    \if@useHeavyFont\renewcommand*\seriesdefault{m}\else\renewcommand*\seriesdefault{l}\fi
    \renewcommand*\shapedefault{n}
    \renewcommand*\sfdefault{aun}
    %\renewcommand*{\sffamily}{\not@math@alphabet\sffamily\mathsf\fontfamily{aun}\selectfont}
    %\renewcommand*{\ttfamily}{\fontfamily{\ttdefault}\fontseries{\mddefault}\selectfont}
    \renewcommand*\ttfamily{\not@math@alphabet\ttfamily\mathtt\fontfamily\ttdefault\fontseries\mddefault\selectfont}
    %\DeclareRobustCommand\dindefault{din}
    \newcommand*{\dinfamily}{\fontencoding{OT1}\fontfamily{din}\fontseries{b}\selectfont}
    %\DeclareRobustCommand\dinfamily{\not@math@alphabet\sffamily\mathsf\fontfamily\dindefault\selectfont}
%\fi

\if@sansmath
    \DeclareSymbolFont{aunLetters}{T1}{aun}{l}{sl}
    \SetSymbolFont{aunLetters}{bold}{T1}{aun}{b}{sl}
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
    \DeclareMathAlphabet\mathit{T1}{aun}{l}{sl}
    \SetMathAlphabet\mathit{bold}{T1}{aun}{l}{sl}
    
    \let\operator@font\sf
\fi
\usefonttheme[onlymath]{serif}

% Farbdefinitionen
\definecolor{white}{gray}{1.00}
\definecolor{black}{gray}{0.00}
\definecolor{skyblue}{rgb}{0.80, 0.80, 1.00}
\definecolor{blue}{rgb}{0.20, 0.20, 0.80}
\definecolor{darkblue}{rgb}{0.04, 0.16, 0.32}
%\definecolor{extradarkblue}{rgb}{0.00, 0.15, 0.36}
\definecolor{extradarkblue}{cmyk}{1.00, 0.70, 0.10, 0.50}
\definecolor{turquoise}{rgb}{0.00, 0.80, 0.60}
\definecolor{gray}{gray}{0.59}
\definecolor{darkgray}{gray}{0.50}

\colorlet{text}{extradarkblue}
\colorlet{frametitle}{gray}
\colorlet{accent}{turquoise}
\colorlet{alink}{skyblue}
\colorlet{vlink}{lightgray}
\colorlet{alert}{blue}

\setbeamercolor{normal text}{fg=text}
\setbeamercolor{structure}{fg=text}
\setbeamercolor{alerted text}{fg=blue}
\setbeamercolor{frametitle}{fg=frametitle}

% Vordefinierte Namen und Bezeichnungen
\newcommand*{\englishnames}{%
    \newcommand*{\@slide}{slide}
    \newcommand*{\@of}{of}
}

\newcommand*{\germannames}{%
    \newcommand*{\@slide}{Folie}
    \newcommand*{\@of}{von}
}

\DeclareRobustCommand\one{1\kern0.1pt} % 1 mit anschliessendem Freiraum, damit sie nicht deutlich kuerzer ist als die anderen Ziffern

% Vom Nutzer anzugebende / veraenderbare Namen und Bezeichnungen
\newcommand*\@einrichtung{}
\newcommand*\@fachrichtung{}
\newcommand*\@institut{}
\newcommand*\@professur{}

\newcommand*{\einrichtung}[1]{\renewcommand*{\@einrichtung}{#1}}
\newcommand*{\fachrichtung}[1]{\renewcommand*{\@fachrichtung}{#1}}
\newcommand*{\institut}[1]{\renewcommand*{\@institut}{#1}}
\newcommand*{\professur}[1]{\renewcommand*{\@professur}{#1}}

\newcommand*{\datecity}[1]{\renewcommand*{\insertdatecity}{#1}}

\def\today{\number\day.\number\month.\number\year}

% Templates
\if@useNavBar\else\setbeamertemplate{navigation symbols}{}\fi    % Nav-Leiste aus
\beamersetleftmargin{13.86mm}
\beamersetrightmargin{9.58mm}

\newlength{\topmarginnoheader}
\setlength{\topmarginnoheader}{1mm}

\setbeamerfont{itemize/enumerate subbody}{size=\scriptsize}
\setbeamerfont{itemize/enumerate subsubbody}{size=\scriptsize}
\setbeamerfont{title}{size=\LARGE,series=\bfseries,family=\dinfamily}
\setbeamerfont{subtitle}{series=\bfseries,family=\sffamily}

\beamertemplatedotitem
\usesubitemizeitemtemplate{--}

\renewcommand\maketitle{%
    %\beamertemplateshadingbackground{darkblue}{darkblue}
    \setbeamercolor{normal text}{bg=darkblue}
    % Kopf-/Fusszeile fuer Titel
    \setbeamertemplate{headline}{%
        \vskip6.15mm\color{white}%
        \setlength{\arrayrulewidth}{0.3pt}%
        \begin{tabular*}{\paperwidth}[b]{p{\textwidth}}%@{\extracolsep\fill}
          % TUD-Logo
            \hspace*{3.0mm}\color{white}\includegraphics[height=7.81mm]{\logo@front}%
            \if@ddc\hfill\includegraphics[height=7.81mm]{DDC-weiss}\fi%
            \hspace*{11.76mm}\\[1.2mm]\hline
            \hspace*{11.76mm}\rule[-0.8mm]{0pt}{2.47mm}%
            \def\@@dummyComma{}%
            \rule{0pt}{5.8pt}\textbf{\@einrichtung}\ifx\@einrichtung\@empty\else\def\@@dummyComma{ }\fi%
            \ifx\@fachrichtung\@empty\else\@@dummyComma\@fachrichtung%
                \ifx\@institut\@empty\else\def\@@dummyComma{, }\fi%
                \ifx\@professur\@empty\else\def\@@dummyComma{, }\fi%
            \fi%
            \ifx\@institut\@empty\else\@@dummyComma\@institut
                \ifx\@professur\@empty\else\def\@@dummyComma{, }\fi
            \fi%
            \ifx\@professur\@empty\else\@@dummyComma\fi%
            \@professur\\[-1pt]\hline
        \end{tabular*}\hspace{-\paperwidth}%
    }%
    \setbeamertemplate{footline}{%
        \parbox[t][9.63mm]{\paperwidth}{%
            \vspace*{-5.63mm}%
            \rule{13.86mm}{0pt}\normalsize\color{white}\insertdatecity\ifx\insertdatecity\empty\else\ifx\insertdate\empty\else, \fi\fi\insertdate%
            \if@ddcfooter\vskip-12.5mm\hspace*{\fill}\includegraphics[height=11.76mm]{DDC-weissf}\hspace*{9.7mm}\fi
        }
    }%
    \frame{\titlepage}%
    % Kopf-/Fusszeilen fuer restliche Folien
    \setbeamertemplates%
}

% Faktor zur PPT-Vorlage: / 0,1984375      * 5,04
\setbeamertemplate{title page}{%
    \color{white}%
    {\vfill}{\renewcommand\baselinestretch{0.8}\usebeamerfont*{title}\vskip2ex plus1ex minus1ex\MakeUppercase{\inserttitle}}\vfill%
    {\ifx\insertsubtitle\empty\else\usebeamerfont*{subtitle}\insertsubtitle\vfill\fi%
    \scriptsize\insertauthor}\vfill\vfill%
}

\newcommand\setbeamertemplates{%
    %\beamertemplateshadingbackground{white}{white}
    \setbeamercolor{normal text}{bg=white}
    \if@useHeader%
        \setbeamertemplate{headline}{%
            \vskip6.15mm\color{gray}
            \setlength{\arrayrulewidth}{0.1pt}
            \begin{tabular*}{\paperwidth}[b]{l@{\extracolsep\fill}}
                \hspace*{5.0mm}\color{text}\includegraphics[height=5.95mm]{\logo@default} \\[1mm]\hline
                \rule[-2.47mm]{0pt}{2.47mm}\\[-2.47mm]\hline
            \end{tabular*}
        }
    \else
        \setbeamertemplate{headline}{%
            %\rule{0pt}{14.57mm}
            \rule{0pt}{\the\topmarginnoheader}
        }
    \fi

    \setbeamertemplate{footline}{%
        \color{gray}%
        \parbox[t][7.46mm]{\paperwidth}{%
            \rule{13.86mm}{0pt}%
            \parbox{28.83mm}{TU Dresden\ifx\insertdate\empty\else, \insertdate\fi}\rule{1.06mm}{0pt}%
            \parbox{40.57mm}{\centerline{\insertshorttitle}}\rule{7.46mm}{0pt}%
            \if@usePageNum%
                \let\insertframenumber=\insertpagenumber%
                \let\inserttotalframenumber=\inserttotalpagenumber%
            \fi%
            \parbox{26.66mm}{\raggedleft\@slide\ \insertframenumber\ \if@noTotalPages\relax\else\@of\ \inserttotalframenumber\fi}\rule{9.58mm}{0pt}%
        }
    }

    \setbeamertemplate{frametitle}{%
        \vskip6.5mm\color{frametitle}\if@useNoFrameTitleSection\else\frame@title@section\fi\insertframetitle\\%
        \vskip0.3ex\color{text}\small\bfseries\insertframesubtitle%
    }

}

% frame title
\gdef\frame@title@section{}
\def\frametitle{\secdef\tud@frametitlea\tud@frametitles}
\newcommand<>\tud@frametitlea{\gdef\frame@title@section{\ifnum\c@section>9\else 0\fi\arabic{section}\,\,}\alt#1{\@dblarg\beamer@@frametitle}{\beamer@gobbleoptional}}
\newcommand<>\tud@frametitles{\gdef\frame@title@section{}\alt#1{\@dblarg\beamer@@frametitle}{\beamer@gobbleoptional}}

% Sprache einstellen
\AtBeginDocument{%
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
            \def\today{\number\day.\number\month.\number\year}  % Datum im Format DD.MM.YYYY
        \else                                               %
            \ifx\@undefined\language\else                   %
                \ifnum0<\language\selectlanguage{english}\fi% englisch gewuenscht, aber andere Sprache eingestellt ??  =>  englisch
            \fi                                             %
            \englishnames                                   %
            \def\today{\number\year/\number\month/\number\day}  % Datum im Format YYYY/MM/DD
        \fi                                                 %
    \fi%
    \setbeamertemplates%
    \scriptsize
}%

\newcommand*{\insertdatecity}{Dresden}
\newcommand*{\inserttotalpagenumber}{\textbf{??}}
\AtEndDocument{%
    \clearpage
    \beamer@tempcount=\c@page\advance\beamer@tempcount by -1%
    \if@filesw
        \immediate\write\@auxout{\string\@writefile{nav}%
            {\noexpand\headcommand{\noexpand\beamer@partpages{\the\beamer@partstartpage}{\the\beamer@tempcount}}}}%
        \immediate\write\@auxout{\string\@writefile{nav}%
            {\noexpand\headcommand{\noexpand\beamer@subsectionpages{\the\beamer@subsectionstartpage}{\the\beamer@tempcount}}}}%
        \immediate\write\@auxout{\string\@writefile{nav}%
            {\noexpand\headcommand{\noexpand\beamer@sectionpages{\the\beamer@sectionstartpage}{\the\beamer@tempcount}}}}%
        \immediate\write\@auxout{\string\@writefile{nav}%
            {\noexpand\headcommand{\noexpand\beamer@documentpages{\the\beamer@tempcount}}}}
        \immediate\write\@auxout{\string\@writefile{nav}%
            {\noexpand\headcommand{\noexpand\def\noexpand\inserttotalframenumber{\the\c@framenumber}}}}
        \addtocounter{page}{-1}
        \immediate\write\@auxout{\string\@writefile{nav}%
            {\noexpand\headcommand{\noexpand\def\noexpand\inserttotalpagenumber{\thepage}}}}
        \newwrite\tf@nav
        \immediate\openout\tf@nav\jobname.nav\relax
        \newwrite\tf@toc
        \immediate\openout\tf@toc\jobname.toc\relax
        \newwrite\tf@snm
        \immediate\openout\tf@snm\jobname.snm\relax
    \fi%
}
