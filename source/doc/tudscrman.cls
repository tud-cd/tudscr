%%
%% This is file `tudscrman.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tudscr-version.dtx  (with options: `class')
%% tudscr-manual.dtx 
%% 
%% ======================================================================
%% 
%% Das Corporate Design der TU Dresden auf Basis der KOMA-Script-Klassen
%% 
%% ======================================================================
%% This work may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, version 1.3c of the license.
%% The latest version of this license is in
%%     http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later and of this work.
%% This work has the LPPL maintenance status "author-maintained".
%% The current maintainer and author of this work is Falk Hanisch.
%% ----------------------------------------------------------------------
%% Dieses Werk darf nach den Bedingungen der LaTeX Project Public Lizenz,
%% Version 1.3c, verteilt und/oder veraendert werden.
%% Die neuste Version dieser Lizenz ist
%%     http://www.latex-project.org/lppl.txt
%% und Version 1.3c ist Teil aller Verteilungen von LaTeX
%% Version 2005/12/01 oder spaeter und dieses Werks.
%% Dieses Werk hat den LPPL-Verwaltungs-Status "author-maintained"
%% (allein durch den Autor verwaltet).
%% Der aktuelle Verwalter und Autor dieses Werkes ist Falk Hanisch.
%% ======================================================================
%% 
%%% From File: tudscr-version.dtx
\begingroup%
  \makeatletter%
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
  \@TUDVersion{2014/04/24 v2.01 TUD-KOMA-Script}%
\endgroup%
%%% From File: tudscr-manual.dtx
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tudscrman}[\TUDVersion\space{}internal manual class]%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{tudscrreprt}}
\ProcessOptions\relax
\LoadClass{tudscrreprt}
\newlength\baselineskipglue
\setlength\baselineskipglue{%
  .5\baselineskip plus .5\baselineskip minus .25\baselineskip%
}
\RequirePackage{microtype}
\RequirePackage{textcomp}
\RequirePackage{tabularx}
\RequirePackage{ragged2e}
\RequirePackage{marginnote}
\RequirePackage{xparse}
\RequirePackage{chngcntr}
\counterwithout{footnote}{chapter}
\RequirePackage{enumitem}
\setlist{noitemsep}
\newlist{values}{description}{1}
\setlist[values]{%
  topsep=.5\baselineskipglue,labelwidth=\columnwidth,labelsep=0pt,
  font=\normalfont\ttfamily,before*=\before@values%
}
\newcommand*\before@values{%
  \let\item@values\item%
  \let\item\tud@item%
%%  \par\RaggedRight%
}
\newcommand*\itemfalse{\def\tud@item@val{false/off/no}\item}
\newcommand*\itemtrue{\def\tud@item@val{true/on/yes}\item}
\newcommand*\item@values{}
\newcommand*\tud@item@val{}
\newcommand*\tud@item@add{}
\newcommand*\tud@item@format{}
\newcommand*\tud@item{%
  \@ifstar{%
    \def\tud@item@add{(S^^e4umniswert)}%
    \let\tud@item@format\emph%
    \tud@@item%
  }{%
    \let\tud@item@add\relax%
    \let\tud@item@format\relax%
    \tud@@item%
  }%
}
\newcommand*\tud@@item[1][]{%
  \ifstrempty{#1}%
    {\edef\@tempa{\tud@item@val}}%
    {\ifstr{\tud@item@val}{}%
      {\edef\@tempa{#1}}%
      {\edef\@tempa{\tud@item@val/#1}}%
    }%
  \def\tud@item@val{}%
  \ifstr{\@tempa}{}{\item@values}{\tud@@@item}%
}
\newcommand*\tud@@@item[1][]{%
  \ifstrempty{#1}{}{%
    \ifx\tud@item@add\relax%
      \def\tud@item@add{#1}%
    \else%
      \apptocmd{\tud@item@add}{~#1}{}{}
    \fi%
  }%
  \item@values[%
    \tud@item@format{\@tempa:}%
    \ifx\tud@item@add\relax\else\textuln{\space\footnotesize\tud@item@add}\fi%
  ]
}
\newlist{packages}{description}{2}
\setlist[packages]{%
  topsep=\medskipamount,labelwidth=\linewidth,labelsep=0pt,font=\normalfont,%
  parsep=\parskip,listparindent=\parindent,before=\before@packages%
}
\newcommand*\item@packages{}
\newcommand*\before@packages{%
  \ifdefvoid{\item@packages}{%
    \let\item@packages\item%
    \let\item\tud@item@pkg%
  }{}%
%%  \par\RaggedRight%
}
\newcommand*\tud@item@pkg[1][]{%
  \item@packages[{\DeclarePackage{#1}\texturn{#1}}]%
}
\RequirePackage{filemod}
\RequirePackage{pdfpages}
\newcommand*{\includeexample}[1]{%
  \lstinputlisting[style=tudscr]{examples/#1.tex}
  \filemodCmp{./examples/#1.pdf}{./examples/#1.tex}{}{%
    \immediate\write18{%
      pdflatex -output-director examples examples/#1.tex
      pdflatex -output-director examples examples/#1.tex
    }%
  }%
  \IfFileExists{examples/#1.pdf}{\includepdf[pages=-]{examples/#1.pdf}}{}%
}
\AtEndPreamble{%
  \RequirePackage[xindy,splitindex]{imakeidx}%
  \indexsetup{%
    level=\addsec,toclevel=section,noclearpage,%
    firstpagestyle=myheadings,%headers={\indexname}{\indexname}%
  }%
  \newcommand*\xdyopt{-M tudscrman.xdy -L german-din}%
  \RequirePackage{varioref}%
  \RequirePackage[hyperindex=false,colorlinks,linkcolor=blue]{hyperref}%
  \newcommand*\Email[1]{\href{mailto:#1}{\nolinkurl{#1}}}
  \pdfstringdefDisableCommands{%
    \let\Application\@Application%
    \let\Class\@Class%
    \let\Package\@Package%
  }%
  \ifdef{\printflag}{\hypersetup{hidelinks}}{\TUDoptions{color}}%
  \makeindex[title={Allgemeiner Index},options=\xdyopt]%
  \makeindex[title={Klassen- und Paketoptionen},name=options,options=\xdyopt]%
  \makeindex[title={Umgebungen und Befehle},name=macros,options=\xdyopt]%
  \makeindex[title={Umgebungs- und Befehlsparameter},name=keys,options=\xdyopt]%
  \makeindex[title={Sprachabh\"angige Bezeichner},name=terms,options=\xdyopt]%
%%  \makeindex[title={Schriftelemente},name=fonts,options=\xdyopt]%
  \makeindex[title={Farben},name=colors,options=\xdyopt]%
  \makeindex[title={Klassen, Pakete und Dateien},name=files,options=\xdyopt]%
%%  \makeindex[title={\"Anderungsliste},name=changelog,options=\xdyopt]%
}
\newcommand*\PrintIndex{%
  \@printindex%
  \@printindex[options]%
  \@printindex[macros]%
  \@printindex[keys]%
  \@printindex[terms]%
%%  \@printindex[fonts]%
  \begingroup%
  \let\lettergroup\@gobble%
  \@printindex[colors]%
  \endgroup%
  \@printindex[files]%
}
\newcommand*\Index[3][]{%
  \ifcsdef{r@idx:#3}{%
    \index{\ifblank{#1}{#2}{#1}|see{\hyperref[idx:#3]{Index der #2}}}%
  }{%
    \index{\ifblank{#1}{#2}{#1}|see{Index der #2}}%
  }%
}
\newcommand*\@printindex[1][]{%
  \pagebreak[3]%
  \ifblank{#1}{%
    \indexprologue[\vspace*{0pt}]{\label{idx:main}}%
    \printindex%
  }{%
    \indexprologue[\vspace*{0pt}]{\label{idx:#1}}
    \printindex[#1]
  }%
}
\newif\if@changelog
\newcommand*\PrintChangelog{%
  \begingroup%
  \let\lettergroup\@gobble%
  \@changelogtrue%
  \@printindex[changelog]%
  \endgroup%
}
\NewDocumentCommand\ChangedAt{mo}{%
  \begingroup%
  \setlength{\fboxsep}{0pt}%
  \marginnote{\footnotesize\fbox{\texturn{\ \strut#1\ }}}%
  \IfValueTF{#2}{%
    \let\PName\@gobble%
    \let\PBoolean\relax%
    \let\PSet\relax%
    \let\PValue\@gobble%
    \let\Parameter\@gobble%
    \let\OParameter\@gobble%
    \let\LParameter\relax%
    \let\OLParameter\@gobble%
    \let\PParameter\@gobble%
    \let\POParameter\@gobble%
    \index[changelog]{#1!#2}%
  }{}%
  \endgroup%
}
\newif\if@declare
\newif\if@openindex
\newcommand*\bsc{}
\DeclareRobustCommand*\bsc{\@backslashchar}
\newcommand*\idxfont{}
\let\idxfont\footnotesize
\newif\if@noindex
\NewDocumentCommand\Application{som}{%
  \ifdin{#3}{%
    \mbox{\textubn{#3}}
    \IfBooleanTF{#1}{}{%
      \index{#3~{\protect\idxfont(Anwendungssoftware)}\IfValueTF{#2}{|#2}{}}%
    }%
  }%
}
\DeclareExpandableDocumentCommand\@Application{som}{#3}
\NewDocumentCommand\Distribution{som}{%
  \mbox{\texturn{#3}}
  \IfBooleanTF{#1}{}{%
    \index{#3~{\protect\idxfont(Distribution)}\IfValueTF{#2}{|#2}{}}%
  }%
}
\newcommand*\Path{}
\DeclareRobustCommand*\Path[1]{\mbox{\texttt{#1}}}
\NewDocumentCommand\File{som}{%
  \mbox{\texturn{#3}}%
  \IfBooleanTF{#1}{}{%
    \index[files]{#3~{\protect\idxfont(Datei)}\IfValueTF{#2}{|#2}{}}%
  }%
}
\newcommand*\@TempClass{}
\NewDocumentCommand\Class{st'om}{%
  \ifdin{#4}{%
    \gdef\@TempClass{~{\protect\idxfont(Klasse)}}%
    \IfBooleanTF{#2}{%
      \@ProcessOutput[#1]{\texturn{#4}}{files}{#4}[\@TempClass]{autoref}%
    }{%
      \@ProcessOutput[#1]{\texturn{#4}}{files}{#4}[\@TempClass]{#3}%
    }%
  }%
}
\DeclareExpandableDocumentCommand\@Class{st'om}{#4}
\newcommand*\DeclareClass[1]{%
  \phantomsection\label{files:#1}%
  \index[files]{\hyperref[files:#1]{#1~{\protect\idxfont(Klasse)}}|declare}%
}
\newcommand*\@TempPackage{}
\NewDocumentCommand\Package{st'om}{%
  \ifdin{#4}{%
    \gdef\@TempPackage{~{\protect\idxfont(Paket)}}%
    \IfBooleanTF{#2}{%
      \@ProcessOutput[#1]{\texturn{#4}}{files}{#4}[\@TempPackage]{autoref}%
    }{%
      \@ProcessOutput[#1]{\texturn{#4}}{files}{#4}[\@TempPackage]{#3}%
    }%
  }%
}
\DeclareExpandableDocumentCommand\@Package{st'om}{#4}
\newcommand*\DeclarePackage[1]{%
  \phantomsection\label{files:#1}%
  \index[files]{\hyperref[files:#1]{#1~{\protect\idxfont(Paket)}}|declare}%
}
\newcommand*\@TempOption{}
\NewDocumentCommand\Option{st'omo}{%
  \if@changelog%
    \@ProcessChangedAt{options}{#4}%
  \else%
    \IfValueTF{#5}{\gdef\@TempOption{\texttt{=#5}}}{\gdef\@TempOption{}}%
    \IfBooleanTF{#2}{%
      \@ProcessOutput[#1]{\texttt{#4}}[\@TempOption]{options}{#4}{pageref}%
    }{%
      \@ProcessOutput[#1]{\texttt{#4}}[\@TempOption]{options}{#4}{#3}%
    }%
  \fi%
}
\newcommand*\@TempEnvironment{}
\NewDocumentCommand\Environment{st'omo}{%
  \if@changelog%
    \@ProcessChangedAt{macros}{#4}%
  \else%
    \if@declare%
      \gdef\@TempEnvironment{%
        \texttt{\bsc{}begin\{#4\}\IfValueTF{#5}{#5}{}}\tabularnewline%
        \texttt{\dots}\tabularnewline%
        \texttt{\bsc{}end\{#4\}}%
      }%
    \else%
      \gdef\@TempEnvironment{\texttt{#4}}%
    \fi%
    \IfBooleanTF{#2}{%
      \@ProcessOutput[#1]{\@TempEnvironment}{macros}{#4}{pageref}%
    }{%
      \@ProcessOutput[#1]{\@TempEnvironment}{macros}{#4}{#3}%
    }%
  \fi%
}
\NewDocumentCommand\Macro{st'om}{%
  \if@changelog%
    \@ProcessChangedAt[\bsc]{macros}{#4}%
  \else%
    \IfBooleanTF{#2}{%
      \@ProcessOutput[#1]{\texttt{\bsc#4}}{macros}[\bsc]{#4}{pageref}%
    }{%
      \@ProcessOutput[#1]{\texttt{\bsc#4}}{macros}[\bsc]{#4}{#3}%
    }%
  \fi%
}
\newcommand*\@TempKey{}
\NewDocumentCommand\Key{sommo}{%
  \begingroup%
  \let\Environment\@firstofone%
  \let\Macro\@firstofone%
  \if@changelog%
    \@ProcessChangedAt{keys}{#4}%
  \else%
    \gdef\@TempKey{\if@declare~{\protect\idxfont(Parameter)}\fi}%
    \IfValueTF{#5}{%
      \@ProcessOutput[#1]{\texttt{#4}}[\texttt{=#5}\@TempKey]%
        {macros}(#3){#4}{#2}%
    }{%
      \@ProcessOutput[#1]{\texttt{#4}}[\@TempKey]{macros}(#3){#4}{#2}%
    }%
  \fi%
  \endgroup%
}
\newcommand*\@TempLength{}
\NewDocumentCommand\Length{som}{%
  \if@changelog%
    \@ProcessChangedAt[\bsc]{macros}{#3}%
  \else%
    \gdef\@TempLength{\if@declare~{\protect\idxfont(L\"ange)}\fi}%
    \@ProcessOutput[#1]{\texttt{\bsc#3}}[\@TempLength]%
      {macros}[\bsc]{#3}[~{\protect\idxfont(L\"ange)}]{#2}%
  \fi%
}
\newcommand*\@TempCounter{}
\NewDocumentCommand\Counter{som}{%
  \if@changelog%
    \@ProcessChangedAt{macros}{#3}%
  \else%
    \gdef\@TempCounter{\if@declare~{\protect\idxfont(Z\"ahler)}\fi}%
    \@ProcessOutput[#1]{\texttt{#3}}[\@TempCounter]%
      {macros}{#3}[~{\protect\idxfont(Z\"ahler)}]{#2}%
  \fi%
}
\newcommand*\@TempTerm{}
\NewDocumentCommand\Term{som}{%
  \if@changelog%
    \@ProcessChangedAt[\bsc]{terms}{#3}%
  \else%
    \gdef\@TempTerm{\if@declare~{\protect\idxfont(Bezeichner)}\fi}%
    \@ProcessOutput[#1]{\texttt{\bsc#3}}[\@TempTerm]{terms}[\bsc]{#3}{#2}%
  \fi%
}
\newcommand\@termlist{}
\let\@termlist\relax
\NewDocumentCommand\TermTable{smg}{%
  \forcsvlist{\listadd\@termlist}{#2}%
  \vskip\baselineskipglue\noindent%
  \IfBooleanTF{#1}{%
    \IfValueTF{#3}{\setlength\@tempdima{#3}}{\setlength\@tempdima{\linewidth}}%
    \setlength{\@tempdimb}{-.7\baselineskip}%
    \begin{tabularx}{\@tempdima}{lXX}\@TermTable\end{tabularx}
  }{%
    \setlength{\@tempdimb}{\z@}%
    \begin{tabular}{lll}\@TermTable\end{tabular}
  }%
  \let\@termlist\relax%
  \par\noindent%
}
\newcommand*\@TermTable{%
  \toprule
  \textbf{Bezeichner} & \textbf{Deutsch} & \textbf{Englisch} \tabularnewline
  \midrule
  \forlistloop\@@TermTable{\@termlist}
  \bottomrule
}
\newcommand*\@@TermTable[1]{%
  \Term{#1} &
  \ifstr{\@nameuse{#1}}{}{\PName{leer}}{\@nameuse{#1}} &
  \selectlanguage{english}\vspace*{\@tempdimb}%
  \ifstr{\@nameuse{#1}}{}{\PName{empty}}{\@nameuse{#1}}\tabularnewline
}
\newcommand*\@TempFont{}
\NewDocumentCommand\Font{som}{%
  \if@changelog%
    \@ProcessChangedAt{fonts}{#3}%
  \else%
    \gdef\@TempFont{%
      \texttt{#3}\if@declare~{\protect\idxfont(Schriftelement)}\fi%
    }%
    \@ProcessOutput[#1]{\@TempFont}{fonts}{#3}{#2}%
  \fi%
}
\newcommand*\@TempColor{}
\NewDocumentCommand\Color{somo}{%
  \if@changelog%
    \@ProcessChangedAt{colors}{#3}%
  \else%
    \gdef\@TempColor{%
      \IfValueTF{#4}{~\texttt{(#4)}}{}%
      \if@declare~{\protect\idxfont(Farbe)}\fi%
    }%
    \@ProcessOutput[#1]{\texttt{#3}}[\@TempColor]{colors}{#3}{#2}%
  \fi%
}
\NewDocumentCommand\@ProcessOutput{omomd()omom}{%
  \if@declare%
    \if@openindex%
      \if@noindex\else%
        \IfValueTF{#5}%
          {\edef\@tempa{#4:#5:#7}}%
          {\edef\@tempa{#4:#7}}%
        \label{\@tempa}%
        \@HyperIndex{#4}{#5}{#6}{#7}{#8}[(declare]%
      \fi%
      #2\IfValueTF{#3}{#3}{}%
    \else%
      \if@noindex\else%
        \@HyperIndex{#4}{#5}{#6}{#7}{#8}[declare)]%
      \fi%
    \fi%
  \else%
    \IfBooleanTF{#1}{}{%
      \@tempswafalse%
      \ifstr{#9}{autoref}{\@tempswatrue}{}%
      \ifstr{#9}{pageref}{\@tempswatrue}{}%
      \if@tempswa%
        \@HyperIndex{#4}{#5}{#6}{#7}{#8}%
      \else%
        \@HyperIndex{#4}{#5}{#6}{#7}{#8}[#9]%
      \fi%
    }%
    \IfValueTF{#5}{\edef\@tempa{#4:#5:#7}}{\edef\@tempa{#4:#7}}%
    \ifcsdef{r@\@tempa}{%
      \let\@tempb\relax%
      \ifstr{#9}{autoref}{\def\@tempb{~unter \autoref{\@tempa}}}{}%
      \ifstr{#9}{pageref}{\def\@tempb{~\vpageref{\@tempa}}}{}%
      \mbox{\hyperref[\@tempa]{#2}\IfValueTF{#3}{#3}{}}\@tempb%
    }{\mbox{#2\IfValueTF{#3}{#3}{}}}%
  \fi%
}
\NewDocumentCommand\@HyperIndex{mmmmmo}{%
  \IfValueTF{#3}{\def\@tempa{#3}}{\def\@tempa{}}%
  \IfValueTF{#5}{\def\@tempb{#5}}{\def\@tempb{}}%
  \IfValueTF{#6}{\def\@tempc{|#6}}{\def\@tempc{}}%
  \IfValueTF{#2}{%
    \ifcsdef{r@#1:#2:#4}{%
      \edef\@tempb{#1:#2:#4}%
      \index[#1]{%
        #2!\hyperref[\@tempb]{\expandonce\@tempa#4}%
        ~{\protect\idxfont(Parameter)}%
        \expandonce\@tempc%
      }%
      \begingroup%
      \let\Environment\@firstofone%
      \def\Macro##1{\bsc##1}%
      \index[keys]{%
        \hyperref[\@tempb]{\expandonce\@tempa#4~{\protect\idxfont(#2)}}%
        \expandonce\@tempc%
      }%
      \endgroup%
    }{%
      \index[#1]{#2!\expandonce\@tempa#4\expandonce\@tempb}%
    }%
  }{%
    \ifcsdef{r@#1:#4}{%
      \index[#1]{%
        \hyperref[#1:#4]{\expandonce\@tempa#4\expandonce\@tempb}%
        \expandonce\@tempc%
      }%
    }{%
      \index[#1]{\expandonce\@tempa#4\expandonce\@tempb\expandonce\@tempc}%
    }%
  }%
}
\newcommand*\@ProcessChangedAt[3][]{%
  \ifcsdef{r@#2:#3}{\hyperref[#2:#3]{\mbox{#1#3}}}{\mbox{#1#3}}%
}
\newcommand\@declarationlist{}
\newcommand\@presetlist{}
\newif\if@presetlist
\newcommand\@additionallist{}
\newif\if@additionallist
\let\@declarationlist\relax
\let\@presetlist\relax
\let\@additionallist\relax
\NewDocumentEnvironment{Declaration}{moog}{%
  \listadd\@declarationlist{#1}%
  \IfNoValueTF{#2}{%
    \listadd\@presetlist{\relax}%
  }{%
    \@presetlisttrue%
    \IfNoValueTF{#3}{%
      \listadd\@presetlist{preset:\,#2}%
    }{%
      \def\@tempa[##1:##2]{##1:\,##2}%
      \listeadd\@presetlist{preset:\,#2\,|\,\expandonce{\@tempa[#3]}}%
    }%
  }%
  \IfNoValueTF{#4}{%
    \listadd\@additionallist{\relax}%
  }{%
    \@additionallisttrue%
    \listadd\@additionallist{\hspace*{\tabcolsep}\small(#4)}%
    \in@{\Environment}{#1}%
    \ifin@ \listadd\@additionallist{\tabularnewline}\fi%
  }%
}{%
  \ifx\@declarationlist\relax\else%
    \ClassError{\tudclsname}{\string\printdeclarationlist\space is missing}{%
      \string\@declarationlist\space is not empty. Did you forget\MessageBreak%
      to print this list with \string\printdeclarationlist?%
    }%
  \fi%
  \let\PName\@gobble%
  \let\PBoolean\relax%
  \let\PSet\relax%
  \let\PValue\@gobble%
  \let\Parameter\@gobble%
  \let\OParameter\@gobble%
  \let\LParameter\relax%
  \let\OLParameter\@gobble%
  \let\PParameter\@gobble%
  \let\POParameter\@gobble%
  \vskip-\lastskip%
  \@declaretrue\@openindexfalse#1\@declarefalse%
  \pagebreak[0]%
}
\NewDocumentCommand\printdeclarationlist{sod()}{%
  \ifx\@declarationlist\relax\else%
    \IfBooleanTF{#1}{\global\@noindextrue}{\global\@noindexfalse}
    \ifvmode\else\par\fi%
    \allowbreak%
    \addpenalty{\@beginparpenalty}%
    \addvspace{\baselineskipglue}%
    \@declaretrue\@openindextrue%
    \phantomsection\noindent%
    \def\@tempa##1{\ignorespaces##1\tabularnewline}%
    \begin{tabular}{|l|}%
      \hline%
      \forlistloop\@tempa{\@declarationlist}%
      \hline%
    \end{tabular}%
    \@declarefalse%
    \ifboolexpr{bool {@presetlist} or bool {@additionallist}}{%
      \if@presetlist%
        \qquad%
        \texttt{%
          \begin{tabular}{l}%
            \forlistloop\@tempa{\@presetlist}%
          \end{tabular}%
        }%
      \fi%
      \if@additionallist%
        \begin{tabular}{@{}l@{}}%
          \forlistloop\@tempa{\@additionallist}%
        \end{tabular}%
      \fi%
    }{}%
    \IfValueTF{#2}{%
      \ChangedAt{#2}%
      \begingroup%
      \let\marginnote\@gobble%
      \def\@tempa##1{\ChangedAt{#2}[##1]}%
      \forlistloop\@tempa{\@declarationlist}%
      \endgroup%
    }{}%
    \global\let\@declarationlist\relax%
    \global\let\@presetlist\relax%
    \global\@presetlistfalse%
    \global\let\@additionallist\relax%
    \global\@additionallistfalse%
    \IfValueTF{#3}{#3}{}%
    \vskip\baselineskipglue\nobreak%
    \@afterindentfalse\@afterheading%
  \fi%
}
\newsavebox\tabularm@box
\newlength\tabularm@wd
\newcommand*\tabularm@num{1}
\NewEnviron{tabularm}[1]{%
  \begin{lrbox}{\tabularm@box}%
    \let\allcolumnpar\@gobble%
    \begin{tabular}{*{#1}l}\BODY\end{tabular}%
  \end{lrbox}%
  \setlength{\tabularm@wd}{\wd\tabularm@box}%
%%  \addtolength{\tabularm@wd}{-2\tabcolsep}%
  \def\tabularm@num{#1}%
  \let\allcolumnpar\@allcolumnpar%
  \begin{tabular}{*{#1}l}\BODY\end{tabular}%
}
\newcommand*\@allcolumnpar[1]{%
  \multicolumn{\tabularm@num}{@{}p{\tabularm@wd}@{}}{#1}%
}
\DeclareRobustCommand*\PName[1]{\texttt{\textit{<#1>}}}
\DeclareRobustCommand*\PBoolean{\PName{Ein-Aus-Wert}}%
\DeclareRobustCommand*\PSet{\PName{Einstellung}}%
\DeclareRobustCommand*\Parameter[1]{\texttt{\{}\PName{#1}\texttt{\}}}
\DeclareRobustCommand*\OParameter[1]{\texttt{[}\PName{#1}\texttt{]}}
\DeclareRobustCommand*\LParameter{\texttt{[}\PName{Parameterliste}\texttt{]}}
\DeclareRobustCommand*\OLParameter[1]{%
  \texttt{[}\PName{#1}|\PName{Parameterliste}\texttt{]}
}
\DeclareRobustCommand*\PValue[1]{\texttt{#1}}
\DeclareRobustCommand*\PParameter[1]{\texttt{\{#1\}}}
\DeclareRobustCommand*\POParameter[1]{\texttt{[#1]}}
\RequirePackage{listings}
\lstnewenvironment{code}[1][]{\lstset{style=tudscr,#1}}{}
\lstdefinestyle{tudscr}{%
  basicstyle=\let\bfseries@tt\mdseries@tt\ttfamily\setstretch{1},%
  columns=fullflexible,keepspaces,%
  aboveskip=.5\baselineskipglue,%
  belowskip=.5\baselineskipglue,%
  language=[LaTeX]TeX,%
  texcl,%
}
\newenvironment{Example}{%
  \labeling{{\usekomafont{disposition}Beispiel:\ }}%
  \item[{\usekomafont{disposition}Beispiel:\ }]%
}{%
  \endlabeling%
}
\newcommand*\todo@mark{}
\newcommand\ToDo[2][]{}
\TUD@key{ToDo}[true]{%
  \TUD@set@ifkey{ToDo}{@tempswa}{#1}%
  \if@tempswa%
    \renewcommand\ToDo[2][]{%
      \def\todo@mark{\ifstr{##1}{}{ToDo}{##1}}%
      \endgraf\vskip1ex%
      \hfuzz0.8pt%
      \noindent\leavevmode\marginnote{\fbox{\todo@mark\strut}}%
        [\dimexpr-\fboxsep-\fboxrule]%
      \fbox{\parbox{\dimexpr\textwidth-2\fboxsep}{##2\strut}}%
      \vskip1ex%
      \noindent$\!\!$%
    }%
  \else%
    \renewcommand\ToDo[2][]{}%
  \fi%
}
\RequirePackage{xspace}
\newcommand*\vTUD{Version~\NoCaseChange{v}1.0\xspace}
\newcommand*\vTUDScript{}
\AtBeginDocument{%
  \def\@tempb#1 #2 #3\relax#4\relax{\def\vTUDScript{#2}}%
  \edef\@tempa{\TUDVersion}%
  \expandafter\@tempb\@tempa\relax? ? \relax\relax%
}
\DeclareRobustCommand\TUDScript{%
  \ifdin{TUD-KOMA-SCRIPT}{%
    \texorpdfstring{%
      \textsf{T\kern.05em U\kern.05em D\kern.1em-\kern.1em}\KOMAScript%
    }{TUD-KOMA-Script}%
  }%
}
\newcommand*\Attention{\marginnote{\tiny\fbox{Achtung!}}}
\newcommand*\forum{\url{http://latex.wcms-file3.tu-dresden.de/phpBB3/}\xspace}
\newcommand*\notudscrartcl{%
  F^^fcr die Klasse \Class{tudscrartcl} ist diese Einstellung nicht verf^^fcgbar.
}
\newcommand*\CD{\foreignlanguage{english}{Corporate Design}\xspace}
\newcommand*\CDs{\foreignlanguage{english}{Corporate Designs}\xspace}
\newcommand*\TUD{Technische Universit\"at Dresden\xspace}
\newcommand*\TnUD{Technischen Universit\"at Dresden\xspace}
\newcommand*\DDC{\mbox{DRESDEN-concept}\xspace}
\newcommand*\Univers{\textubn{Univers}\xspace}
\newcommand*\DIN{\textdbn{DIN~BOLD}\xspace}
\renewcommand*\partpagestyle{empty}
\endinput
%%
%% End of file `tudscrman.cls'.
