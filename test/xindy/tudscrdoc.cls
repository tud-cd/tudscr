%%
%% This is file `tudscrdoc.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tudscr-version.dtx  (with options: `class,doc')
%% tudscr-doc.dtx  (with options: `class,doc')
%% tudscr-manual.dtx  (with options: `class,doc')
%% tudscr-misc.dtx  (with options: `class,doc,xindy')
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
\begingroup
  \catcode`\@11\relax
  \ifx\TUDVersion\undefined
    \newcommand*\@TUDVersion[1]{%
      \gdef\TUDVersion{#1}%
      \gdef\TUDScriptVersion{#1}%
    }
  \else
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
    }
  \fi
  \@TUDVersion{2016/04/18 v2.05 BETA TUD-KOMA-Script}
\endgroup
\NeedsTeXFormat{LaTeX2e}
\providecommand*\tudscrmail{tudscr@gmail.com}
\newcommand*\TUD@ProvidesClass[3]{%
  \ProvidesClass{#1}[%
  2016/04/18 v2.05 BETA TUD-KOMA-Script
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
\TUD@ProvidesClass{tudscrdoc}{scrartcl}{source code documentation class}
\@ifundefined{TUDScript}{%
  \DeclareRobustCommand\TUDScript{%
    \ifdin{TUD-KOMA-SCRIPT}{%
      \textsf{T\kern.05em U\kern.05em D\kern.1em-\kern.1em}\KOMAScript%
    }\csname xspace\endcsname%
  }%
}{}
%%% From File: tudscr-doc.dtx
\IfFileExists{scrbase.sty}{%
  \RequirePackage{scrbase}[2013/12/19]%
  \newcommand*\saved@maketitle{}%
  \PassOptionsToClass{toc=left}{scrartcl}%
  \AfterClass{scrartcl}{\let\saved@maketitle\@maketitle}%
  \AfterClass{ltxdoc}{\let\@maketitle\saved@maketitle}%
  \AfterPackage{inputenc}{\RequirePackage{csquotes}[2011/10/22]}%
}{}
\IfFileExists{scrartcl.cls}{%
  \newcommand*{\sd@saved@LoadClass}{}
  \let\sd@saved@LoadClass=\LoadClass
  \renewcommand*{\LoadClass}[2][]{%
    \begingroup
      \edef\@tempc{##2}\def\@tempb{article}%
      \ifx\@tempc\@tempb
        \let\LoadClass\sd@saved@LoadClass
        \def\@tempc{scrartcl}%
      \fi
      \edef\@tempc{%
        \noexpand\endgroup\noexpand\sd@saved@LoadClass[{##1}]{\@tempc}}%
    \@tempc
  }
  \newcommand*{\sd@saved@PassOptionsToClass}{}
  \let\sd@saved@PassOptionsToClass=\PassOptionsToClass
  \renewcommand*{\PassOptionsToClass}[2]{%
    \begingroup
      \edef\@tempc{##2}\def\@tempb{article}%
      \ifx\@tempc\@tempb
        \def\@tempc{scrartcl}%
      \fi
      \edef\@tempc{%
        \noexpand\endgroup\noexpand\sd@saved@PassOptionsToClass{##1}{%
          \@tempc}}%
    \@tempc
  }
}{%
  \typeout{^^J%
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!^^J%
    !!! You should generate KOMA-Script classes first!^^J%
    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!^^J%
    ^^J%
  }%
  \DeclareRobustCommand{\KOMAScript}{\textsf{K\kern.05em O\kern.05em%
      M\kern.05em A\kern.1em-\kern.1em Script}}%
  \def\addsec{\section*}%
  \newenvironment{labeling}[2][]{%
    \description
  }{%
    \csname enddescription\endcsname
  }%
  \newcommand*{\marginline}{\marginpar}%
}
\LoadClassWithOptions{ltxdoc}
\setcounter{IndexColumns}{2}
\DoNotIndex{\ ,\",\.,\@,\\}
\DoNotIndex{\@abstrtfalse,\@abstrttrue,\@addtoreset}
\DoNotIndex{\@afterheading,\@afterindentfalse}
\DoNotIndex{\@Alph,\@alph,\@arabic}
\DoNotIndex{\@beginparpenalty}
\DoNotIndex{\@car,\@cdr,\@centercr}
\DoNotIndex{\@dblfloat,\@dotsep,\@dottedtocline}
\DoNotIndex{\@empty,\@endparpenalty}
\DoNotIndex{\@float,\@fontswitch}
\DoNotIndex{\@gobbletwo}
\DoNotIndex{\@hangfrom,\@highpenalty}
\DoNotIndex{\@ifnextchar,\@ifundefined,\@itempenalty}
\DoNotIndex{\@latex@warning}
\DoNotIndex{\@M,\@m,\@medpenalty,\@minus,\@mkboth}
\DoNotIndex{\@mparswitchfalse,\@mparswitchtrue}
\DoNotIndex{\@ne,\@nil,\@nobreakfalse,\@nobreaktrue,\@nomath}
\DoNotIndex{\@plus}
\DoNotIndex{\@Roman,\@roman}
\DoNotIndex{\@tempa,\@tempb,\@tempc}
\DoNotIndex{\@tempcnta,\@tempcntb,\@tempcntc}
\DoNotIndex{\@tempdima,\@tempdimb,\@tempdimc}
\DoNotIndex{\@tempskipka,\@tempskipkb,\@tempskipkc}
\DoNotIndex{\@tempswafalse,\@tempswatrue,\@tempswbfalse,\@tempswbtrue}
\DoNotIndex{\@tocrmarg,\@topnewpage,\@topnum}
\DoNotIndex{\@twocolumnfalse,\@twocolumntrue,\@twosidefalse,\@twosidetrue}
\DoNotIndex{\@whiledim,\@whilenum}
\DoNotIndex{\addcontentsline,\addpenalty,\addtocontents}
\DoNotIndex{\addtolength,\addvspace,\advance}
\DoNotIndex{\begin,\begingroup,\bfseries,\box,\bullet}
\DoNotIndex{\c@figure,\c@page,\c@secnumdepth,\c@table,\c@tocdepth,\cdot}
\DoNotIndex{\centering,\changes,\cleardoublepage,\clearpage,\cmd}
\DoNotIndex{\CodelineIndex,\col@number,\cs,\CurrentOption}
\DoNotIndex{\day,\dblfloatpagefraction,\dbltopfraction,\DeclareOldFontCommand}
\DoNotIndex{\DeclareOption,\def,\DisableCrossrefs,\divide,\DoNotIndex}
\DoNotIndex{\else,\em,\empty,\EnableCrossrefs,\end,\end@dblfloat,\end@float}
\DoNotIndex{\endgroup,\endlist,\endquotation,\endtitlepage,\everypar}
\DoNotIndex{\ExecuteOptions,\expandafter}
\DoNotIndex{\fboxrule,\fboxsep,\fi}
\DoNotIndex{\gdef,\global}
\DoNotIndex{\hangindent,\hbox,\hfil,\hrule,\hsize,\hskip,\hspace,\hss}
\DoNotIndex{\if,\if@tempswa,\ifcase,\ifdim,\ifnum,\ifodd,\ifx,\include}
\DoNotIndex{\input,\InputIfFileExists,\item,\itshape}
\DoNotIndex{\kern}
\DoNotIndex{\leavevmode,\leftmark,\leftskip,\let,\lineskip,\list,\long}
\DoNotIndex{\m@ne,\m@th,\marginpar,\markboth,\markright}
\DoNotIndex{\mathbf,\mathcal,\mathit,\mathnormal,\mathrm,\mathsf,\mathtt}
\DoNotIndex{\MessageBreak,\month}
\DoNotIndex{\newblock,\newcommand,\newcount,\newcounter,\newdimen}
\DoNotIndex{\newenvironment,\newlength,\newpage,\nobreak,\noindent}
\DoNotIndex{\normalcolor,\normalfont,\normallineskip,\normalsize}
\DoNotIndex{\null,\number,\numberline}
\DoNotIndex{\OldMakeindex,\OnlyDescription,\or,\overfullrule}
\DoNotIndex{\p@,\PackageError,\PackageInfo,\PackageWarningNoLine}
\DoNotIndex{\pagenumbering,\pagestyle,\par,\paragraph,\parbox}
\DoNotIndex{\PassOptionsToPackage,\pcal,\penalty,\pmit,\PrintChanges}
\DoNotIndex{\PrintIndex,\ProcessOptions,\protect,\providecommand,\ProvidesClass}
\DoNotIndex{\raggedbottom,\raggedleft,\raggedright,\refstepcounter,\relax}
\DoNotIndex{\renewcommand,\RequirePackage,\reset@font,\rightmargin,\rightmark}
\DoNotIndex{\rightskip,\rmfamily}
\DoNotIndex{\scshape,\secdef,\setbox,\setcounter,\setlength,\settowidth}
\DoNotIndex{\sfcode,\sffamily,\skip,\sloppy,\slshape,\space,\string}
\DoNotIndex{\the,\thispagestyle,\triangleright,\ttfamily,\twocolumn,\typeout}
\DoNotIndex{\undefined,\usecounter}
\DoNotIndex{\vfil,\vfill,\vspace}
\DoNotIndex{\wd}
\DoNotIndex{\xdef}
\DoNotIndex{\year}
\DoNotIndex{\z@}
\title{%
  \file{\filename}\thanks{%
    Dies ist Version \fileversion\ von Datei \file{\filename}.%
  }%
}
\author{Falk Hanisch\thanks{\tudscrmail}}
\date{\filedate}
\DeclareOption{final}{\let\tudfinalflag\relax}
\DeclareOption{xindy}{\let\tudtexindyflag\relax}
\ProcessOptions\relax
\setlength\topmargin{-1in}
\setlength\headheight{0pt}
\setlength\headsep{30pt}
\setlength\footskip{1.25\headsep}
\setlength\marginparwidth{140pt}
\setlength\marginparsep{8pt}
\setlength\oddsidemargin{\dimexpr\marginparwidth+\marginparsep-1in\relax}
\setlength\textheight{\dimexpr\paperheight-2\headsep-\footskip\relax}
\setlength\textwidth{%
  \dimexpr\paperwidth-1in-\oddsidemargin-2\marginparsep\relax%
}
\RequirePackage{tudscrbase}[\TUDVersion]
\RequirePackage{dox}[2010/12/16]
\CheckCommand\m@cro@[2]{%
  \endgroup \topsep\MacroTopsep \trivlist
  \edef\saved@macroname{\string#2}%
  #1
    \let\saved@indexname\saved@macroname
  \else
    \edef\saved@indexname{\expandafter\@gobble\string#2}%
  \fi
  \def\makelabel##1{\llap{##1}}%
  \if@inlabel
    \let\@tempa\@empty \count@\macro@cnt
    \loop \ifnum\count@>\z@
      \edef\@tempa{\@tempa\hbox{\strut}}\advance\count@\m@ne \repeat
    \edef\makelabel##1{\llap{\vtop to\baselineskip
                               {\@tempa\hbox{##1}\vss}}}%
    \advance \macro@cnt \@ne
  \else  \macro@cnt\@ne  \fi
  \edef\@tempa{\noexpand\item[%
     #1%
       \noexpand\PrintMacroName
     \else
       \noexpand\PrintEnvName
     \fi
     {\string#2}]}%
  \@tempa
  \global\advance\c@CodelineNo\@ne
   #1%
      \SpecialMainIndex{#2}\nobreak
      \DoNotIndex{#2}%
   \else
      \SpecialMainEnvIndex{#2}\nobreak
   \fi
  \global\advance\c@CodelineNo\m@ne
  \ignorespaces
}
\renewcommand*\generalname{Allgemein}
\newcommand*\implementationname{Implementierung}
\CheckCommand*\changes@[3]{%
  \protected@edef\@tempa{%
    \noexpand\glossary{%
      #1\levelchar
      \ifx\saved@macroname\@empty
        \space
        \actualchar
        \generalname
      \else
        \saved@indexname
        \actualchar
        \string\verb\quotechar*%
        \verbatimchar\saved@macroname
        \verbatimchar
      \fi
      :\levelchar #3%
    }%
  }%
  \@tempa\endgroup\@esphack%
}
\ifdefined\tudtexindyflag%
  \renewcommand*\changes@[3]{%
    \@tempswatrue%
    \ifblank{#1}{\@tempswafalse}{}%
    \ifblank{#3}{\@tempswafalse}{}%
    \if@tempswa%
      \protected@edef\@tempa{%
        \noexpand\glossary{%
          #1\levelchar%
          \ifx\saved@macroname\@empty%
            \generalname%
          \else%
            \implementationname%
          \fi%
          \levelchar
          \ifx\saved@macroname\@empty\else%
            \saved@indexname
            \ifx\saved@idxtype\@empty\else%
              \space\saved@idxtype
            \fi%
            \actualchar
            \string\verb\quotechar*%
            \verbatimchar\saved@macroname
            \verbatimchar%
            \ifx\saved@idxtype\@empty\else%
              \space(\saved@idxtype)%
            \fi%
            :\levelchar
          \fi
          #2 #3%
          \actualchar%
          #3% (#2)%
        }%
      }%
    \else%
      \let\@tempa\relax%
    \fi%
    \@tempa\endgroup\@esphack%
  }%
\else%
  \renewcommand*\changes@[3]{%
    \protected@edef\@tempa{%
      \noexpand\glossary{%
        #1\levelchar
        \ifx\saved@macroname\@empty
          \quotechar!
          \actualchar
          \generalname
        \else
          \saved@indexname
          \actualchar
          \string\verb\quotechar*%
          \verbatimchar\saved@macroname
          \verbatimchar
        \fi
        :\levelchar #3%
      }%
    }%
    \@tempa\endgroup\@esphack%
  }%
\fi%
\CheckCommand\doxitem[4][]{%
  \@nameuse{dox@macrolike\dox@macrolikedefault}%
  \def\dox@idxtype{#3}%
  \setkeys{dox}{#1}
  \@ifundefined{Print#2Name}{%
    \ifdox@macrolike
      \expandafter\def\csname Print#2Name\endcsname##1{%
        \strut\MacroFont\string ##1\ }
    \else
      \expandafter\def\csname Print#2Name\endcsname##1{%
        \strut\MacroFont ##1\ }
    \fi}{}
  \ifdox@macrolike
    \def\@doxexpr{\@doxcreatespecialmainmacrolikeindex{#2}}%
  \else
    \def\@doxexpr{\@doxcreatespecialmainindex{#2}}%
  \fi
  \expandafter\@doxexpr\expandafter{\dox@idxtype}{#4}%
  \@ifundefined{PrintDescribe#2}{%
    \ifdox@macrolike
      \expandafter\def\csname PrintDescribe#2\endcsname##1{%
        \strut\MacroFont\string ##1\ }
    \else
      \expandafter\def\csname PrintDescribe#2\endcsname##1{%
        \strut\MacroFont ##1\ }
    \fi}{}
  \ifdox@macrolike
    \def\@doxexpr{\@doxcreatespecialmacrolikeindex{#2}}%
  \else
    \def\@doxexpr{\@doxcreatespecialindex{#2}}%
  \fi
  \expandafter\@doxexpr\expandafter{\dox@idxtype}{#4}%
  \@doxcreatedescribe{#2}
  \@doxcreateenv{#2}{#3}%
}
\pretocmd\@doxcreateenv{%
  \ifdox@macrolike%
    \def\@doxexpr{\@doxcreatemacrolikeindexname{#1}}%
  \else%
    \def\@doxexpr{\@doxcreateindexname{#1}}%
  \fi%
  \expandafter\@doxexpr\expandafter{\dox@idxtype}%
}{}{\tud@patch@wrn{@doxcreateenv}}
\newcommand*\saved@idxtype{}
\def\@doxcreatemacrolikeindexname#1#2{%
  \expandafter\def\csname Set#1IndexName\endcsname##1{%
    \edef\saved@indexname{\expandafter\@gobble##1}%
    \edef\saved@idxtype{#2}%
  }%
}
\def\@doxcreateindexname#1#2{%
  \expandafter\def\csname Set#1IndexName\endcsname##1{%
    \let\saved@indexname##1%
    \edef\saved@idxtype{#2}%
  }%
}
\CheckCommand\@@doxenv[2]{%
  \endgroup%
  \topsep\MacroTopsep \trivlist%
  \edef\saved@macroname{\string#2}%
  \def\makelabel##1{\llap{##1}}%
  \if@inlabel%
    \let\@tempa\@empty%
    \count@\macro@cnt%
    \loop\ifnum\count@>\z@%
      \edef\@tempa{\@tempa\hbox{\strut}}\advance\count@\m@ne%
    \repeat%
    \edef\makelabel##1{\llap{\vtop to\baselineskip{\@tempa\hbox{##1}\vss}}}%
    \advance\macro@cnt\@ne%
  \else%
    \macro@cnt\@ne%
  \fi%
  \ifdox@noprint%
    \item%
  \else%
    \edef\@tempa{%
      \noexpand\item[%
      \expandafter\noexpand\csname Print#1Name\endcsname{\saved@macroname}]}%
    \@tempa%
  \fi%
  \ifdox@noindex\else%
    \global\advance\c@CodelineNo\@ne%
    \@nameuse{SpecialMain#1Index}{#2}\nobreak%
    \global\advance\c@CodelineNo\m@ne%
  \fi%
  \ignorespaces%
}
\patchcmd\@@doxenv{\ignorespaces}{%
  \csname Set#1IndexName\endcsname{\saved@macroname}\ignorespaces%
}{}{\tud@patch@wrn{@@doxenv}}
\def\SetMacroIndexName#1{%
  \edef\saved@indexname{\expandafter\@gobble#1}
  \let\saved@idxtype\@empty%
}
\def\SetEnvIndexName#1{%
  \let\saved@indexname#1%
  \edef\saved@idxtype{environment}%
}
% TODO: Indextypen prüfen, frontmatter: abstract (Option, Parameter, Umgebung)
\doxitem[idxtype=Umgebung]{Env}{environment}{Umgebungen}
\doxitem[idxtype=Option]{Option}{option}{Optionen}
\doxitem[idxtype=Parameter]{Parameter}{parameter}{Parameter}
\doxitem[idxtype=Seitenstil]{PageStyle}{pagestyle}{Seitenstile}
\doxitem[idxtype=Layer]{Layer}{layer}{Layer (Seitenstilebenen)}
\doxitem[macrolike,idxtype=L\noexpand\"ange]{Length}{length}{L\noexpand\"angen}
\doxitem[idxtype=Z\noexpand\"ahler]{Counter}{counter}{Z\noexpand\"ahler}
\doxitem[idxtype=Farbe]{Color}{color}{Farben}
\doxitem[macrolike,idxtype=Lok.]{Locale}{locale}{Lokalisierungsvariablen}
\doxitem[macrolike,idxtype=Feld]{Field}{field}{Eingabefelder}
\doxitem[idxtype=Schriftelement]{Font}{KOMAfont}{Schriftelemente}
\ifdefined\tudtexindyflag
  \newcommand*\tud@write{}
  \newwrite\tud@write
  \newcommand*\tud@read{}
  \newread\tud@read
  \newcommand*\tud@idx@line{}
  \def\actualchar{&=&}
  \def\quotechar{&!&}
  \def\levelchar{&>&}
  \begingroup
    \endlinechar=-1\relax%
% TODO: Index bzw. Changelog nur erzeugen, wenn auch was drin steht
    \def\tud@reserved#1#2{%
      \immediate\openin\tud@read=\jobname.#1%
      \immediate\openout\tud@write=\jobname-texindy.#1
      \@tempswafalse%
      \loop\unless\ifeof\tud@read%
        \readline\tud@read to\tud@idx@line%
        \tud@replace\tud@idx@line{@}{"@}%
        \tud@replace\tud@idx@line{\"@}{"\@backslashchar"@}%
        \expandafter\tud@replace\expandafter\tud@idx@line%
          \expandafter{\actualchar}{@}%
        \expandafter\tud@replace\expandafter\tud@idx@line%
          \expandafter{\quotechar}{"}%
        \expandafter\tud@replace\expandafter\tud@idx@line%
          \expandafter{\levelchar}{!}%
        \tud@replace\tud@idx@line{:}{":}%
        \ifeof\tud@read\else%
          \immediate\write\tud@write{\unexpanded\expandafter{\tud@idx@line}}%
        \fi%
        \@tempswatrue%
      \repeat%
      \immediate\closein\tud@read%
      \immediate\closeout\tud@write%
      \ifnum\pdfshellescape=\@ne\relax%
        \if@tempswa%
          \immediate\write18{%
            texindy\space
              -o \jobname.#2\space
              -L german-din\space
              -M \jobname-#1.xdy\space
            \jobname-texindy.#1
          }%
        \fi%
      \fi%
    }%
    \tud@reserved{idx}{ind}%
    \tud@reserved{glo}{gls}%
  \endgroup
\fi
\newcommand*\ToDo[2][]{%
  \@ifnextchar[{\@ToDo{#2}}{\@ToDo{#2}[]}%
}
\newcommand*\@ToDo{}
\newcommand*\@@ToDo{}
\def\@ToDo#1[#2]{%
  \ifdefined\tudfinalflag\else%
    \def\@@ToDo{\ifstr{#2}{}{ToDo}{ToDo: #2}}%
    \endgraf%
    \hfuzz0.8pt%
    \leavevmode\marginpar{\raggedleft\fbox{\@@ToDo\strut}}%
    \fbox{\parbox{\dimexpr\textwidth-2\fboxsep\relax}{#1\strut}}%
    \endgraf%
  \fi%
}
\AtBeginDocument{%
  \@ifpackageloaded{etoolbox}{}{%
    \providecommand*\newrobustcmd{\DeclareRobustCommand}%
  }%
  \newrobustcmd*\app[1]{\mbox{\textsl{\textbf{#1}}}}
  \newrobustcmd*\cls[1]{\mbox{\textsf{\textbf{#1}}}}
  \newrobustcmd*\pkg[1]{\mbox{\textsf{\textbf{#1}}}}
  \newrobustcmd*\opt[1]{\mbox{\texttt{#1}}}
  \newrobustcmd*\val[1]{\mbox{\texttt{#1}}}
  \newrobustcmd*\pgs[1]{\mbox{\texttt{#1}}}
  \newrobustcmd*\env[1]{\mbox{\texttt{#1}}}
  \newrobustcmd*\file[1]{\mbox{\texttt{#1}}}
  \@ifpackageloaded{hyperref}{%
    \pdfstringdefDisableCommands{%
      \def\TUDScript{TUD-KOMA-Script}%
      \let\cls\@firstofone%
      \let\pkg\@firstofone%
    }%
  }{%
    \RequirePackage{url}[2013/09/16]%
    \providecommand*\hypersetup[1]{}%
    \providecommand*\phantomsection{}%
    \providecommand*\texorpdfstring[2]{#1}%
  }%
  \@ifpackageloaded{babel}{}{%
    \ClassWarning{\TUDClassName}{Package `babel' not loaded}%
    \let\selectlanguage\@gobble%
    \let\glqq\relax%
    \let\grqq\relax%
  }%
  \@ifpackageloaded{csquotes}{}{%
    \ClassWarning{\TUDClassName}{Package `csquotes' not loaded}%
    \providecommand\enquote[1]{\glqq#1\grqq{}}%
  }%
  \@ifpackageloaded{tudscrfonts}{%
    \RequirePackage{mweights}[2013/07/21]%
    \ifnum\tud@cdfont>\z@\relax% true/heavy
      \def\mddefault{m}%
      \def\mdseries@tt{m}%
      \renewcommand*\@pnumwidth{1.7em}%
      \renewcommand*\@tocrmarg{2.7em}%
    \fi%
    \setlength\columnsep{10pt}%
  }{%
    \RequirePackage{lmodern}[2009/10/30]%
    \providecommand*\ifdin[2]{#2}%
    \providecommand*\textuln[1]{\textsf{#1}}%
    \providecommand*\texturn[1]{\textuln{#1}}%
    \providecommand*\textubn[1]{\textbf{\textuln{#1}}}%
    \providecommand*\textuxn[1]{\textubn{#1}}%
    \providecommand*\textuls[1]{\textsl{\textuln{#1}}}%
    \providecommand*\texturs[1]{\textuls{#1}}%
    \providecommand*\textubs[1]{\textbf{\textuls{#1}}}%
    \providecommand*\textuxs[1]{\textubs{#1}}%
    \providecommand*\textdbn[1]{\textubn{#1}}%
  }%
}
%%% From File: tudscr-manual.dtx
\RequirePackage{scrhack}[2014/02/27]
\RequirePackage{xspace}[2009/10/20]
\xspaceaddexceptions{"=}
\newcommand*\vTUDScript{}
\def\@tempb#1 #2 #3\relax#4\relax{\def\vTUDScript{#2}}
\edef\@tempa{\TUDVersion}
\expandafter\@tempb\@tempa\relax? ? \relax\relax
\newcommand*\vKOMAScript{v3.17\xspace}
\newcommand*\tud@english[1]{#1}
\AtBeginDocument{%
  \providecommand*\iflanguageloaded[3]{#3}%
  \iflanguageloaded{english}{%
    \renewcommand*\tud@english[1]{\foreignlanguage{english}{#1}}%
  }{}%
}
\newcommand*\CD{\tud@english{Corporate Design}\xspace}
\newcommand*\CDs{\tud@english{Corporate Designs}\xspace}
\newcommand*\TUD{Technische Universit\"at Dresden\xspace}
\newcommand*\TnUD{Technischen Universit\"at Dresden\xspace}
\newcommand*\TUDCD{\CD der \TnUD}
\newcommand*\TUDCDs{\CDs der \TnUD}
\AtBeginDocument{%
\newrobustcmd*\DDC{%
  \mbox{%
    D\kern.05em R\kern.05em E\kern.05em S\kern.05em %
    D\kern.05em E\kern.05em N\kern.1em-\kern.1em concept%
  }\xspace%
}
}
\newcommand*\Univers{\texorpdfstring{\textubn{Univers}}{Univers}\xspace}
\newcommand*\DIN{\texorpdfstring{\textdbn{DIN~BOLD}}{DIN BOLD}\xspace}
%%% From File: tudscr-misc.dtx
\newcommand*\@itemlist@def{%
  \newcommand*\@@itemlist{}%
  \newif\if@itemlist@multi%
  \newcommand*\@itemlist@init{%
    \let\@@itemlist\relax%
    \@itemlist@multifalse%
  }%
  \newcommand*\@itemlist@add[1]{%
    \ifx\@@itemlist\relax\else%
      \@itemlist@multitrue%
    \fi%
    \listadd\@@itemlist{##1}%
  }%
  \newcommand*\@itemlist@process{%
    \def\tud@reserved{}%
    \if@itemlist@multi%
      \def\tud@reserved{\subsubitem}%
      \efill%
    \fi%
    \forlistloop\tud@reserved{\@@itemlist}%
  }%
}
\catcode`\#=12
\newcommand*\@hashchar{#}
\catcode`\#=6
\begingroup
\newcommand*\tud@write@xdy{}
\newwrite\tud@write@xdy
\newif\if@tud@glo@xdy
\newcommand*\tud@xdycreate[2][theindex]{%
\ifstr{#1}{theglossary}{\@tud@glo@xdytrue}{\@tud@glo@xdyfalse}%
\openout\tud@write@xdy=\jobname-#2.xdy
\write\tud@write@xdy{(require "texindy.xdy")}
\write\tud@write@xdy{%
(markup-index^^J%
\space\space:open^^J%
"\string\begin{#1}^^J%
\space\space%
\string\providecommand*\string\lettergroupDefault[1]{\@percentchar^^J%
\@spaces\string\par\string\centerline{\string\textbf{Symbole}}%
\string\par\@percentchar^^J%
\@spaces\string\nopagebreak\@percentchar^^J%
\space\space}\@percentchar^^J%
\space\space%
\string\providecommand*\string\lettergroup[1]{\@percentchar^^J%
\@spaces\string\par\string\centerline{\string\textbf{\@hashchar1}}%
\string\par\@percentchar^^J%
\@spaces\string\nopagebreak\@percentchar^^J%
\space\space}\@percentchar^^J%
\space\space\string\makeatletter\@percentchar^^J%
\space\space\string\scan@allowedfalse\@percentchar%
}%
\if@tud@glo@xdy%
\write\tud@write@xdy{%
\space\space\string\newcommand*\string\@lettergroup{}\@percentchar^^J%
\space\space%
\string\def\string\@lettergroup\@hashchar1\string\relax%
{\string\lettergroup{\@hashchar1}}\@percentchar^^J%
\space\space\string\@itemlist@def\@percentchar%
}%
\fi%
\write\tud@write@xdy{%
"^^J%
\space\space:close "\string~n\string~n\string\end{#1}\string~n"^^J%
\space\space:hierdepth 3^^J%
)%
}%
% TODO: Seitenzahlen mit location-reference-class, location-reference, location
% (define-location-class "appendices" ("ALPHA" :sep "-" "arabic-numbers"))
\write\tud@write@xdy{%
(define-location-class^^J%
\space\space"arabic-page-numbers" ("arabic-numbers") :min-range-length 1^^J%
)^^J%
(markup-range :sep "--")^^J%
(markup-locclass-list%
\space:open "\string\,\string\dotfill\string\,"%
\space:close "\string\relax"%
)%
}%
\write\tud@write@xdy{%
(merge-rule "\string^(@+)(.*)" "\string\2\string\1" :eregexp :again)^^J%
(merge-rule "\@backslashchar[(.*)\@backslashchar]" "" :eregexp)%
}%
\if@tud@glo@xdy%
\write\tud@write@xdy{%
(markup-letter-group%
\space:open-head "\string~n\space\space\string\@gobble{"%
\space:close-head "}"%
)^^J%
(markup-indexentry-list%
\space:sep "\string~n\string~n\space\space\string\indexspace\string~n" :depth 0%
)^^J%
(markup-indexentry\@spaces\space\space%
:open "\string~n\space\space\string\@lettergroup\space"\space:depth 0%
)^^J%
(markup-indexentry-list :open "\string\relax" :depth 1)^^J%
(markup-indexentry\@spaces\space\space%
:open "\string~n\space\space\string\item\space" :depth 1%
)^^J%
(markup-indexentry-list :open "\string\efill" :depth 2)^^J%
(markup-indexentry\@spaces\space\space%
:open "\string~n\@spaces\string\subitem\space" :depth 2%
)^^J%
(markup-indexentry-list^^J%
\space\space:open\space\space"\string\@itemlist@init"^^J%
\space\space:close "\string~n \@spaces\space\string\@itemlist@process"^^J%
\space\space:depth 3^^J%
)^^J%
(markup-indexentry^^J%
\space\space:open\space\space"\string~n\@spaces\space\string\@itemlist@add{"^^J%
\space\space:close "}"^^J%
\space\space:depth 3^^J%
)%
}%
\else%
\write\tud@write@xdy{%
(markup-indexentry-list :open "\string\efill" :depth 1)%
}%
\fi%
\if@tud@glo@xdy\else%
\write\tud@write@xdy{%
(define-attributes (("main" "usage" "default")))^^J%
(markup-locref :attr "main"%
\space\space:open "\string\main{"\space\space:close "}"%
)^^J%
(markup-locref :attr "usage"%
\space:open "\string\usage{"\space:close "}"%
)%
}%
\fi%
\closeout\tud@write@xdy
}
\tud@xdycreate{idx}
\tud@xdycreate[theglossary]{glo}
\endgroup
\endinput
%%
%% End of file `tudscrdoc.cls'.
