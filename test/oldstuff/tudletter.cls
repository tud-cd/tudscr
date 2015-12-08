%
% Letter-Klasse fuer die TU Dresden
% Autor: Klaus Bergmann
%
\def\fileversion{1.2}
\def\filedate{2011/05/02 }
\def\filename{tudletter}

\NeedsTeXFormat{LaTeX2e}  \ProvidesClass{\filename}[\filedate Letter-Klasse fuer die TU Dresden, (c) by Klaus Bergmann]
\typeout{Class: '\filename' Version \fileversion, Briefvorlage der Technischen Universitaet Dresden}

\makeatletter

\newif\if@useGerman                             % explizit deutsche Namen verwenden und german-Package einbinden ?
\newif\if@useNoGerman                           % explizit englische Namen verwenden
\DeclareOption{nogerman}{\@useNoGermantrue\@useGermanfalse}
\DeclareOption{german}{\@useGermantrue\@useNoGermanfalse}

\newif\if@finanz                                % Mit Finanzdaten ?
\DeclareOption{finanz}{\@finanztrue}
\newif\if@rollstuhl                             % Mit Rollstuhlzufahrtszeichen ?
\DeclareOption{rollstuhl}{\@rollstuhltrue}
\newif\if@emas
\DeclareOption{emas}{\@emastrue}
\newif\if@ddc
\DeclareOption{ddc}{\@ddctrue}
\newif\if@ddcfooter
\DeclareOption{ddcfooter}{\@ddcfootertrue\@emasfalse\@ddcfalse}

\newif\if@sansmath\@sansmathtrue
\DeclareOption{serifmath}{\@sansmathfalse}

% Papierformate <> A4 werden abgefangen, weil der Brief immer in A4 gedruckt wird
\DeclareOption{a5paper}{}\DeclareOption{b5paper}{}\DeclareOption{letterpaper}{}\DeclareOption{legalpaper}{}\DeclareOption{executivepaper}{}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}
\ProcessOptions\relax
\LoadClass[a4paper]{letter}

\RequirePackage{graphicx}
\RequirePackage{ifthen}
\if@useGerman\RequirePackage{ngerman}\RequirePackage[OT1]{fontenc}\fi

% Schriftspezifische Definitionen
\DeclareFixedFont{\univLightIX}{OT1}{aun}{l}{n}{9}
\DeclareFixedFont{\univBoldIX}{OT1}{aun}{b}{n}{9}
\DeclareFixedFont{\univLightXI}{OT1}{aun}{l}{n}{11}
\DeclareFixedFont{\univLightObliqueXI}{OT1}{aun}{l}{sl}{11}
\DeclareFixedFont{\univBoldXI}{OT1}{aun}{b}{n}{11}
\DeclareFixedFont{\univLightVII}{OT1}{aun}{l}{n}{7}
\DeclareFixedFont{\univLightObliqueVII}{OT1}{aun}{l}{sl}{7}

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
    \newcommand*{\@fon}{Telephone:}
    \newcommand*{\@fax}{Telefax:}
    \newcommand*{\@contact}{Contact:}
    \newcommand*{\@reference}{Ref. No:}
    \newcommand*{\@xemail}{E-mail:}
    \ifx\@undefined\@vorwahl\newcommand*{\@vorwahl}{+49-351-463}\fi

    \newcommand*{\@addressletter}{\sl Mail to}
    \newcommand*{\@addresspackage}{\sl Bulk mail to}
    \newcommand*{\@addressvisitor}{\sl Office}
    \newcommand*{\@access}{\sl Access}
    \newcommand*{\@xinternet}{\sl Web}
    \newcommand*{\@taxID}{\sl VAT registration no.}
    \newcommand*{\@bankaccount}{\sl Account}
    \newcommand*{\@bankaccountIBAN}{IBAN:}
    \newcommand*{\@bankaccountBIC}{BIC:}
    
    \newcommand*{\@konto}{00 85 001522}
}

\newcommand*{\germannames}{%
    \newcommand*{\@fon}{Telefon:}
    \newcommand*{\@fax}{Telefax:}
    \newcommand*{\@contact}{Bearbeiter:}
    \newcommand*{\@reference}{AZ:}
    \newcommand*{\@xemail}{E-Mail:}
    \ifx\@undefined\@vorwahl\newcommand*{\@vorwahl}{0351 463}\fi

    \newcommand*{\@addressletter}{\sl Postadresse (Briefe)}
    \newcommand*{\@addresspackage}{\sl Postadresse (Pakete u. \"a.)}
    \newcommand*{\@addressvisitor}{\sl Besucheradresse}
    \newcommand*{\@access}{\sl Zufahrt}
    \newcommand*{\@xinternet}{\sl Internet}
    \newcommand*{\@taxnum}{\sl Steuernummer}
    \newcommand*{\@taxID}{\sl Umsatzsteuer-Id.-Nr.}
    \newcommand*{\@inland}{(Inland)}
    \newcommand*{\@foreign}{(Ausland)}
    \newcommand*{\@bankaccount}{\sl Bankverbindung}
    \newcommand*{\@bankaccountaccount}{Konto}
    \newcommand*{\@bankaccountBLZ}{BLZ}
    
    \newcommand*{\@konto}{85 00 15 22}
}

% Vom Nutzer anzugebende / veraenderbare Namen und Bezeichnungen
\newcommand*{\@bank}{Deutsche Bundesbank}
\newcommand*{\@bankfiliale}{Filiale Dresden}
\newcommand*{\@BLZ}{850 000 00}
\newcommand*{\@IBAN}{DE 97 8500 0000}
\newcommand*{\@BIC}{MARKDEF 1850}
\newcommand*{\@briefadrName}{TU Dresden}
\newcommand*{\@briefadrlongName}{Technische Universit\"at Dresden}
\newcommand*{\@briefadrStrasse}{}
\newcommand*{\@briefadrPLZOrt}{01062 Dresden}
\newcommand*{\@paketadrName}{TU Dresden}
\newcommand*{\@paketadrlongName}{Technische Universit\"at Dresden}
\newcommand*{\@paketadrStrasse}{Helmholtzstr.\ 10}
\newcommand*{\@paketadrPLZOrt}{01069 Dresden}
\newcommand*{\@besucheradrA}{Sekretariat:}
\newcommand*{\@besucheradrB}{}
\newcommand*{\@besucheradrC}{}
\newcommand*{\@internet}{http://tu-dresden.de}
\newcommand*{\@steuerinland}{203/149/02549}
\newcommand*{\@steuerausland}{DE 188 369 991}

\newcommand*{\@datecity}{Dresden}

\newcommand*{\bank}[1]{\renewcommand*{\@bank}{#1}}
\newcommand*{\bankfiliale}[1]{\renewcommand*{\@bankfiliale}{#1}}
\newcommand*{\konto}[1]{\renewcommand*{\@konto}{#1}}
\newcommand*{\BLZ}[1]{\renewcommand*{\@BLZ}{#1}}
\newcommand*{\IBAN}[1]{\renewcommand*{\@IBAN}{#1}}
\newcommand*{\BIC}[1]{\renewcommand*{\@BIC}{#1}}
\newcommand*{\briefadrName}[1]{\renewcommand*{\@briefadrName}{#1}}
\newcommand*{\briefadrlongName}[1]{\renewcommand*{\@briefadrlongName}{#1}}
\newcommand*{\briefadrStrasse}[1]{\renewcommand*{\@briefadrStrasse}{#1}}
\newcommand*{\briefadrPLZOrt}[1]{\renewcommand*{\@briefadrPLZOrt}{#1}}
\newcommand*{\paketadrName}[1]{\renewcommand*{\@paketadrName}{#1}}
\newcommand*{\paketadrlongName}[1]{\renewcommand*{\@paketadrlongName}{#1}}
\newcommand*{\paketadrStrasse}[1]{\renewcommand*{\@paketadrStrasse}{#1}}
\newcommand*{\paketadrPLZOrt}[1]{\renewcommand*{\@paketadrPLZOrt}{#1}}
\newcommand*{\besucheradrA}[1]{\renewcommand*{\@besucheradrA}{#1}}
\newcommand*{\besucheradrB}[1]{\renewcommand*{\@besucheradrB}{#1}}
\newcommand*{\besucheradrC}[1]{\renewcommand*{\@besucheradrC}{#1}}
\newcommand*{\internet}[1]{\renewcommand*{\@internet}{#1}}
\newcommand*{\steuerinland}[1]{\renewcommand*{\@steuerinland}{#1}}
\newcommand*{\steuerausland}[1]{\renewcommand*{\@steuerausland}{#1}}

\newcommand*{\datecity}[1]{\renewcommand*{\@datecity}{#1}}

\def\@bearbeiter{}     
\def\@email{}
\def\@telefon{}   
\def\@telefax{}    
\def\@aktenzeichen{}    
\def\@subject{}
\def\@einrichtung{}
\def\@fachrichtung{}
\def\@institut{}
\def\@professur{}
\def\@logo{}
\def\@leitername{}
\def\@leitertitel{}
\def\@leiterfunktion{}
\def\@rollstuhladresse{}
\def\@rollstuhlanmerkungen{}

\newcommand*{\bearbeiter}[1]{\renewcommand*{\@bearbeiter}{#1}}
\newcommand*{\telefon}[1]{\renewcommand*{\@telefon}{\vorwahlstyle{\@vorwahl}#1}}
\newcommand*{\telefax}[1]{\renewcommand*{\@telefax}{\vorwahlstyle{\@vorwahl}#1}}
\newcommand*{\vorwahl}[1]{\def\@vorwahl{#1}}
\newcommand*{\vorwahlstyle}[1]{#1-}
\newcommand*{\email}[1]{\renewcommand*{\@email}{#1}}
\newcommand*{\aktenzeichen}[1]{\renewcommand*{\@aktenzeichen}{#1}}
\newcommand*{\subject}[1]{\renewcommand*{\@subject}{#1}}
\newcommand*{\einrichtung}[1]{\renewcommand*{\@einrichtung}{#1}}
\newcommand*{\fachrichtung}[1]{\renewcommand*{\@fachrichtung}{#1}}
\newcommand*{\institut}[1]{\renewcommand*{\@institut}{#1}}
\newcommand*{\professur}[1]{\renewcommand*{\@professur}{#1}}
\newcommand*{\logo}[1]{\renewcommand*{\@logo}{#1}}
\newcommand*{\leitername}[1]{\renewcommand*{\@leitername}{#1}}
\newcommand*{\leitertitel}[1]{\renewcommand*{\@leitertitel}{#1}}
\newcommand*{\leiterfunktion}[1]{\renewcommand*{\@leiterfunktion}{#1}}
\newcommand*{\rollstuhladresse}[1]{\renewcommand*{\@rollstuhladresse}{#1}}
\newcommand*{\rollstuhlanmerkungen}[1]{\renewcommand*{\@rollstuhlanmerkungen}{#1}}

% Dimensionen
\setlength{\textheight}{222mm}
\setlength{\topmargin}{30mm}
\addtolength{\topmargin}{-1in}
\setlength{\headheight}{0mm}
\setlength{\headsep}{0mm}
\setlength{\topskip}{0mm}
\setlength{\footskip}{33mm}

\setlength{\textwidth}{160mm}
\setlength{\oddsidemargin}{30mm}
\addtolength{\oddsidemargin}{-1in}
\setlength{\evensidemargin}{\oddsidemargin}

\newcommand{\@br}{\par\vspace{\baselineskip}}

% erste Briefseite
\newlength{\@@besucheradrWidth}%
\newlength{\@@handicappedWidth}%
\newcounter{@@footnoteNum}%
\newcounter{@@rowCount}%
\newcommand*{\@@dummyComma}{}%
\newsavebox{\@@professurComma}%
\newlength{\@@logowidth}%

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
  % Fussbereich
    \renewcommand{\@oddfoot}{%
        \setlength{\partopsep}{0mm}%
        \parbox[t][109.3mm][t]{150mm}{\mbox{}\\[-109.3mm]%
        \begin{minipage}[b][33mm][b]{150mm}%
            \newcommand*{\@@handicappedaccess}{%
                \settowidth{\@@handicappedWidth}{\includegraphics[height=15pt]{handicapped}}%
                \hspace*{\@@handicappedWidth}\,\,\@access%
            }%
            \newcommand*{\@@handicapped}{\raisebox{0pt}[-9pt]{\includegraphics[height=15pt]{handicapped}}\,\,\@rollstuhladresse}%
            \newcommand*{\@@briefadresse}{\@briefadrName, \ifthenelse{\equal{\@briefadrStrasse}{\@empty}}{\@briefadrPLZOrt}{\@briefadrStrasse, \@briefadrPLZOrt}}%
            \newcommand*{\@@paketadresse}{\@paketadrName, \ifthenelse{\equal{\@paketadrStrasse}{\@empty}}{\@paketadrPLZOrt}{\@paketadrStrasse, \@paketadrPLZOrt}}%
            \newcommand*{\@@addressvisitor}{%
                \settowidth{\@@besucheradrWidth}{\@besucheradrA\ \@besucheradrB\ \@besucheradrC}%
                \ifdim\@@besucheradrWidth < 60.5mm\@addressvisitor\fi%
            }%
            \newcommand*{\@@besucheradr}{%
                \settowidth{\@@besucheradrWidth}{\@besucheradrA\ \@besucheradrB\ \@besucheradrC}%
                \ifdim\@@besucheradrWidth < 60.5mm%
                    \@besucheradrA\ \@besucheradrB\ \@besucheradrC%
                \else%
                    \raisebox{0pt}[-9pt]{\parbox[b][18pt][b]{60.5mm}{%
                        \setlength{\baselineskip}{9.2pt}%
                        \raggedright\@addressvisitor\univLightVII\quad\@besucheradrA\ \@besucheradrB\ \@besucheradrC}
                    }%
                \fi%
            }%
            \setcounter{@@footnoteNum}0%
            \setcounter{@@rowCount}0%
            \newcommand*{\@@tab}{\begin{tabular*}{160mm}[b]{*{\arabic{@@rowCount}}l@{\extracolsep\fill}r}}%
            \newcommand*{\@@endtab}{\end{tabular*}}%
            \setlength{\tabcolsep}{0mm}%
            \setlength{\baselineskip}{8pt}%
            \renewcommand*{\arraystretch}{0.778}%
            \renewcommand*{\sl}{\univLightObliqueVII}%
            \univLightVII%
            \if@german  % deutsche Fusszeile
                \if@finanz%
                    \if@rollstuhl\setcounter{@@rowCount}4\else\setcounter{@@footnoteNum}1\setcounter{@@rowCount}3\fi%
                \else%
                    \if@rollstuhl\setcounter{@@footnoteNum}2\setcounter{@@rowCount}5\else\setcounter{@@footnoteNum}3\setcounter{@@rowCount}4\fi%
                \fi%
                \typeout{rowCount: \arabic{@@rowCount}   footnoteNum: \arabic{@@footnoteNum}}%
                \ifcase\c@@@footnoteNum % Finanz und Rollstuhl  -> @@rowCount == 4        Bild: h4.7mm b4.4mm
                    \@@tab
                        \hspace{64mm}     & \hspace{28mm}          & \hspace{28mm}   & \hspace{30mm}\\  % Spaltenlaengen
                        %\hspace{60.5mm}   & \hspace{31.5mm}        & \hspace{32mm}   & \hspace{26mm}\\  % Spaltenlaengen
                        \@addressletter   & \@@handicappedaccess   & \@taxnum        & \@bankaccount\\
                        \@@briefadresse   & \@@handicapped         & \@inland        & \@bank\\
                        \@addresspackage  & \@rollstuhlanmerkungen & \@steuerinland  & \@bankfiliale\\
                        \@@paketadresse   &                        & \@taxID         & \@bankaccountaccount\\
                        \@@addressvisitor & \@xinternet            & \@foreign       & \@konto\\
                        \@@besucheradr    & \@internet             & \@steuerausland & \@bankaccountBLZ\ \@BLZ
                        & \if@emas\raisebox{0pt}[-6\baselineskip]{\includegraphics[width=1.09cm]{EMAS}}\fi%
                          \if@ddcfooter\raisebox{0pt}[-6\baselineskip]{\includegraphics[height=17.96mm]{DDC-07}}\fi
                    \@@endtab
                \or                     % Finanz  -> @@rowCount == 3
                    \@@tab
                        \hspace{60.5mm}   & \hspace{31.5mm} & \hspace{58mm}\\  % Spaltenlaengen
                        \@addressletter   & \@taxnum        & \@bankaccount\\
                        \@@briefadresse   & \@inland        & \@bank\ifx\@bankfiliale\@empty\else, \@bankfiliale\fi\\
                        \@addresspackage  & \@steuerinland  & \@bankaccountaccount\ \@konto, \@bankaccountBLZ\ \@BLZ\\
                        \@@paketadresse   & \@taxID\\
                        \@@addressvisitor & \@foreign       & \@xinternet\\
                        \@@besucheradr    & \@steuerausland & \@internet
                        & \if@emas\raisebox{0pt}[-6\baselineskip]{\includegraphics[width=1.09cm]{EMAS}}\fi%
                          \if@ddcfooter\raisebox{0pt}[-6\baselineskip]{\includegraphics[height=17.96mm]{DDC-07}}\fi
                    \@@endtab
                \or                     % Rollstuhl  -> @@rowCount == 5
                    \@@tab
                        \hspace{29mm}     & \hspace{35mm}     & \hspace{28mm}     & \hspace{28mm}        & \hspace{30mm}\\  % Spaltenlaengen
                        \@addressletter   & \@addresspackage  & \@addressvisitor  & \@@handicappedaccess & \@xinternet\\
                        \@briefadrName    & \@paketadrName    & \@besucheradrA    & \@@handicapped       & \@internet\\
                        \ifthenelse{\equal{\@briefadrStrasse}{\@empty}}{\@briefadrPLZOrt}{\@briefadrStrasse} &
                            \ifthenelse{\equal{\@paketadrStrasse}{\@empty}}{\@paketadrPLZOrt}{\@paketadrStrasse} & \@besucheradrB & \@rollstuhlanmerkungen\\
                        \ifthenelse{\equal{\@briefadrStrasse}{\@empty}}{}{\@briefadrPLZOrt} & \ifthenelse{\equal{\@paketadrStrasse}{\@empty}}{}{\@paketadrPLZOrt} & 
                            \@besucheradrC & &
                        & \if@emas\raisebox{0pt}[-4\baselineskip]{\includegraphics[width=1.09cm]{EMAS}}\fi%
                          \if@ddcfooter\raisebox{0pt}[-6\baselineskip]{\includegraphics[height=17.96mm]{DDC-07}}\fi
                    \@@endtab
                \or                     % nix  -> @@rowCount == 4
                    \@@tab
                        \hspace{46.4mm}    & \hspace{42.3mm}    & \hspace{31.1mm}   & \hspace{30mm}\\  % Spaltenlaengen
                        \@addressletter    & \@addresspackage   & \@addressvisitor  & \@xinternet\\
                        \@briefadrlongName & \@paketadrlongName & \@besucheradrA    & \@internet\\
                        \ifthenelse{\equal{\@briefadrStrasse}{\@empty}}{\@briefadrPLZOrt}{\@briefadrStrasse} &
                            \ifthenelse{\equal{\@paketadrStrasse}{\@empty}}{\@paketadrPLZOrt}{\@paketadrStrasse} & \@besucheradrB\\
                        \ifthenelse{\equal{\@briefadrStrasse}{\@empty}}{}{\@briefadrPLZOrt} & \ifthenelse{\equal{\@paketadrStrasse}{\@empty}}{}{\@paketadrPLZOrt} & 
                            \@besucheradrC &
                        & \if@emas\raisebox{0pt}[-4\baselineskip]{\includegraphics[width=1.09cm]{EMAS}}\fi%
                          \if@ddcfooter\raisebox{0pt}[-6\baselineskip]{\includegraphics[height=17.96mm]{DDC-07}}\fi
                    \@@endtab
                \else\relax%
                \fi
            \else   % englische Fusszeile
                \setcounter{@@rowCount}4
                \@@tab
                    \hspace{53mm}                             & \hspace{39mm}                  & \hspace{28mm}     & \hspace{30mm}\\  % Spaltenlaengen
                    \@addressletter                           & \@addressvisitor               & \@xinternet       & \@bankaccount\\
                    \@briefadrName, \@briefadrPLZOrt, Germany & 
                        \@besucheradrB\ifthenelse{\equal{\@besucheradrC}{\@empty}}{}{, \@besucheradrC} & \@internet& \@bank\\
                    \@addresspackage                          & \@@handicappedaccess           &                   & \@bankaccountIBAN\ \@IBAN\\
                    \@paketadrName, \ifthenelse{\equal{\@briefadrStrasse}{\@empty}}{}{\@briefadrStrasse,}
                                                              & \@@handicapped                 & \@taxID           & \@konto\\
                    \@paketadrPLZOrt, Germany                 & \@rollstuhlanmerkungen         & \@steuerausland   & \@bankaccountBIC\ \@BIC
                    & \if@emas\raisebox{0pt}[-5\baselineskip]{\includegraphics[width=1.09cm]{EMAS}}\fi%
                      \if@ddcfooter\raisebox{0pt}[-6\baselineskip]{\includegraphics[height=17.96mm]{DDC-07}}\fi
                \@@endtab
            \fi%
        \end{minipage}}
    }%
    \renewcommand{\@evenhead}{}\renewcommand{\@evenfoot}{}%
}

\renewcommand{\opening}[1]{%
    \setcounter{@psCount}{0}
    \enlargethispage{-76mm}%
    \thispagestyle{firstpage}%
  % Absender und Empfaenger
    \vspace*{-54mm}%
    \setlength{\tabcolsep}{0mm}%
    \begin{tabular*}{160mm}[t]{ll}%
        \begin{minipage}[][54mm][t]{92mm}%
            \univLightVII\setlength{\baselineskip}{14pt}%
            \@briefadrlongName, \ifthenelse{\equal{\@briefadrStrasse}{\@empty}}{\@briefadrPLZOrt}{\@briefadrStrasse, \@briefadrPLZOrt}%
            \if@german\else, Germany\fi\\[14pt]
            \univLightXI\setlength{\baselineskip}{14pt}\toname\\\toaddress%
        \end{minipage} &%
        \begin{minipage}[][54mm][t]{68mm}%
            \ifthenelse{\equal{\@logo}{\@empty}}{}{%
                \settowidth{\@@logowidth}{\includegraphics[height=14.8mm]{\@logo}}%
                \ifdim\@@logowidth > 68mm\ClassWarningNoLine{\filename}{Das Zweitlogo ist zu breit! Breite des Logos: \the\@@logowidth; %
                                                                        Maximal erlaubte Breite: 193.47873pt}\fi
                \includegraphics[height=14.8mm]{\@logo}\\%
            }%
            \ifx\@leitername\@empty\else%
                \univLightVII\setlength{\baselineskip}{11pt}\@leitertitel\par
                \normalfont\@leitername\par
                \univLightVII\setlength{\baselineskip}{11pt}\@leiterfunktion\\[\baselineskip]
            \fi%
            \univLightVII\setlength{\baselineskip}{11pt}%
            \begin{tabular*}{68mm}[t]{p{19mm}p{49mm}}%
                \@contact & \@bearbeiter\\
                \@fon     & \@telefon\\
                \@fax     & \@telefax\\
                \@xemail  & \@email\\
                \ifx\@aktenzeichen\@empty\else\@reference & \@aktenzeichen\fi
            \end{tabular*}%
        \end{minipage}%
    \end{tabular*}
  % Falz- und Lochmarke
    \parbox[t][0pt][t]{0pt}{%
        \vspace*{-4.5mm}\hspace*{-19mm}\rule{5mm}{0.5pt}\\[39.3mm]\hspace*{-19mm}\rule{5mm}{0.5pt}
    }%
  % Datum und Betreff
    \normalfont\hspace*{92mm}\mbox{\ifx\@datecity\@empty\else\@datecity, \fi%
    %\if@german\else\ifx\@undefined\germanTeX\else\originalTeX\fi\fi%
    \@date}\@br%
    %\if@german\else\ifx\@undefined\germanTeX\else\germanTeX\fi\fi}\@br
    \ifx\@subject\@empty\else\textbf{\@subject}\@br\fi
  % Grussformel
    \ifthenelse{\equal{#1}{\@empty}}{}{#1\@br}%
}%

% Abschluss (MfG)
\renewcommand{\closing}[1]{%
    \normalfont\@br#1\\[3\baselineskip]
    \ifx\fromsig\@empty\@bearbeiter\else\fromsig\fi\par
}%

% P.S.
\newcounter{@psCount}
\newcounter{@psLoop}
\renewcommand{\ps}[1]{%
    \normalfont\@br%
    \stepcounter{@psCount}%
    \setcounter{@psLoop}{\value{@psCount}}%
    \whiledo{\value{@psLoop}>0}{P. \addtocounter{@psLoop}{-1}}%
    S.: #1\par
}%

% Anlage(n)
\renewcommand{\encl}[1]{\normalfont\@br\enclname\\#1\par}%

% restliche Briefseiten
\renewcommand{\ps@plain}{%
    \renewcommand*{\@oddfoot}{\univLightIX\hfill\arabic{page}}%
    \let\@evenfoot=\@oddfoot%
    \renewcommand{\@oddhead}{}\renewcommand{\@evenhead}{}%
}%
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
}%

\renewcommand{\@texttop}{}

\makeatother
