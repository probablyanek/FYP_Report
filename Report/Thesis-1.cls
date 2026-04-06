\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis-1}
              [2025/01/01 v2.0
   LaTeX document class -- B.Tech ECE VIT Chennai]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

%% ----------------------------------------------------------------
%% DECLARATION PAGE
%% ----------------------------------------------------------------
\newcommand\Declaration[1]{
  \btypeout{Declaration}
  \addtotoc{Declaration}
  \thispagestyle{plain}
  \null\vfil
  \begin{center}\includegraphics[width=0.5\textwidth]{logo.png}\end{center}
  \begin{center}{\Large\bf School of Electronics Engineering\par}\end{center}
  \begin{center}{\huge\bf Declaration\par}\end{center}
  {\normalsize #1}
  \vfil\vfil\null
}

%% ----------------------------------------------------------------
%% CERTIFICATE PAGE
%% ----------------------------------------------------------------
\newcommand\Certificate[1]{
  \btypeout{Certificate}
  \addtotoc{Certificate}
  \thispagestyle{plain}
  \begin{center}\includegraphics[width=0.5\textwidth]{logo.png}\end{center}
  \begin{center}{\Large\bf School of Electronics Engineering\par}\end{center}
  \begin{center}{\LARGE\bf Certificate\par}\end{center}
  {\normalsize #1}
  \null\vfil
}

%% ----------------------------------------------------------------
%% UTILITY COMMANDS
%% ----------------------------------------------------------------
\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\number\day\space\ifcase\month\or January\or February\or March\or
  April\or May\or June\or July\or August\or September\or October\or November\or
  December\fi\space\number\year}

%% ----------------------------------------------------------------
%% PAGE LAYOUT
%% ----------------------------------------------------------------
\usepackage{setspace}
\setstretch{1.15}
\setlength{\parindent}{0pt}
\setlength{\parskip}{1.0ex plus0.3ex minus0.2ex}

%% Compact chapter/section headings
\usepackage{titlesec}
\titleformat{\chapter}[display]
  {\normalfont\huge\bfseries}{\chaptertitlename\ \thechapter}{14pt}{\Huge}
\titlespacing*{\chapter}{0pt}{-20pt}{20pt}
\titlespacing*{\section}{0pt}{1.5ex plus 0.5ex minus .2ex}{0.8ex plus .2ex}
\titlespacing*{\subsection}{0pt}{1.2ex plus 0.4ex minus .2ex}{0.6ex plus .2ex}
\usepackage{vmargin}
\setmarginsrb{1.5in}   % left margin
             {0.6in}   % top margin
             {1.0in}   % right margin
             {0.8in}   % bottom margin
             {20pt}    % head height
             {0.25in}  % head sep
             {9pt}     % foot height
             {0.3in}   % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000     % No consecutive line hyphens.
\brokenpenalty=10000            % No broken words across columns/pages.
\widowpenalty=9999              % Almost no widows at bottom of page.
\clubpenalty=9999               % Almost no orphans at top of page.
\interfootnotelinepenalty=9999  % Almost never break footnotes.

%% ----------------------------------------------------------------
%% HEADERS & FOOTERS
%% ----------------------------------------------------------------
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{%
  \btypeout{\thechapter\space #1}%
  \markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
  \hbox{}\thispagestyle{empty}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

%% ----------------------------------------------------------------
%% MATHS
%% ----------------------------------------------------------------
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}

%% Tighter equation spacing
\AtBeginDocument{%
  \abovedisplayskip=8pt plus 2pt minus 4pt
  \belowdisplayskip=8pt plus 2pt minus 4pt
  \abovedisplayshortskip=4pt plus 2pt
  \belowdisplayshortskip=6pt plus 2pt minus 2pt
}

\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}

%% ----------------------------------------------------------------
%% CAPTIONS & CROSS-REFERENCES
%% ----------------------------------------------------------------
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}

%% ----------------------------------------------------------------
%% FLOATS
%% ----------------------------------------------------------------
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{0.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{0.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}

%% ----------------------------------------------------------------
%% GRAPHICS & MISC PACKAGES
%% ----------------------------------------------------------------
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage[scriptsize]{subfigure}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}

%% ----------------------------------------------------------------
%% CODE LISTING STYLE (Courier, small, line numbers)
%% ----------------------------------------------------------------
\lstset{
  basicstyle=\ttfamily\small,
  numbers=left,
  numberstyle=\tiny,
  numbersep=5pt,
  breaklines=true,
  captionpos=b,
  frame=single,
  tabsize=2,
  showstringspaces=false
}

%% ----------------------------------------------------------------
%% HYPERREF
%% ----------------------------------------------------------------
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{\let\\\space}

%% ----------------------------------------------------------------
%% METADATA COMMANDS
%% ----------------------------------------------------------------
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}

%% Defaults
\supervisor  {}
\examiner    {}
\degree      {Bachelor of Technology}
\authors     {}
\university  {\texorpdfstring{\href{https://chennai.vit.ac.in/}%
               {Vellore Institute of Technology, Chennai}}%
               {Vellore Institute of Technology, Chennai}}
\UNIVERSITY  {\texorpdfstring{\href{https://chennai.vit.ac.in/}%
               {VELLORE INSTITUTE OF TECHNOLOGY, CHENNAI}}%
               {VELLORE INSTITUTE OF TECHNOLOGY, CHENNAI}}
\department  {\texorpdfstring{\href{https://chennai.vit.ac.in/}%
               {Electronics and Communication Engineering}}%
               {Electronics and Communication Engineering}}
\DEPARTMENT  {\texorpdfstring{\href{https://chennai.vit.ac.in/}%
               {ELECTRONICS AND COMMUNICATION ENGINEERING}}%
               {ELECTRONICS AND COMMUNICATION ENGINEERING}}
\group       {\texorpdfstring{\href{https://chennai.vit.ac.in/}%
               {School of Electronics Engineering}}%
               {School of Electronics Engineering}}
\GROUP       {\texorpdfstring{\href{https://chennai.vit.ac.in/}%
               {SCHOOL OF ELECTRONICS ENGINEERING}}%
               {SCHOOL OF ELECTRONICS ENGINEERING}}
\faculty     {}
\FACULTY     {}
\addresses   {}
\subject     {}
\keywords    {}

%% ----------------------------------------------------------------
%% TITLE PAGE
%% ----------------------------------------------------------------
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let\footnote\thanks
    \setcounter{footnote}{0}
    \null\vfil
    \begin{center}
      {\Huge\bf \@title}
      \bigskip\bigskip

      {\large A project report submitted in partial fulfilment\par}
      {\large of the requirements for the degree of\par}
      {\Large Bachelor of Technology\par}
      {\large in\par}
      {\Large Electronics and Communication Engineering\par}
      \bigskip
      {\LARGE by\par}
      \smallskip
      {\large \textbf{22BEC1435} \quad Avinash Nair\par}
      {\large \textbf{22BEC1376} \quad Anek Sreedhar T S\par}
      {\large \textbf{22BEC1386} \quad Dasangam Akash\par}
      \bigskip\bigskip
      \includegraphics[width=8cm]{logo.png}\par
      \bigskip\bigskip
      {\large School of Electronics Engineering,\par}
      {\large Vellore Institute of Technology, Chennai,\par}
      {\large Vandalur--Kelambakkam Road,\par}
      {\large Chennai -- 600127, India.\par}
      \bigskip\bigskip
      {\Large \@date\par}
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}

%% ----------------------------------------------------------------
%% ABSTRACT ENVIRONMENT
%% ----------------------------------------------------------------
\newenvironment{abstract}{
  \btypeout{Abstract Page}
  \thispagestyle{empty}
  \begin{center}
    {\huge\textit{Abstract}\par}
    \bigskip\bigskip\bigskip
  \end{center}
}{
  \vfil\vfil\vfil\null
  \cleardoublepage
}

%% ----------------------------------------------------------------
%% TABLE OF CONTENTS / LIST OF FIGURES / LIST OF TABLES
%% ----------------------------------------------------------------
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
  \refstepcounter{dummy}
  \addcontentsline{toc}{chapter}{#1}}

\renewcommand\tableofcontents{
  \btypeout{Table of Contents}
  \begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn\@restonecoltrue\onecolumn\else\@restonecolfalse\fi
    \chapter*{\contentsname
      \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
  }\end{spacing}
}

\renewcommand\listoffigures{
  \btypeout{List of Figures}
  \addtotoc{List of Figures}
  \begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn\@restonecoltrue\onecolumn\else\@restonecolfalse\fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}{\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
  }\end{spacing}
}

\renewcommand\listoftables{
  \btypeout{List of Tables}
  \addtotoc{List of Tables}
  \begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn\@restonecoltrue\onecolumn\else\@restonecolfalse\fi
    \chapter*{\listtablename
      \@mkboth{\MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
  }\end{spacing}
}

%% ----------------------------------------------------------------
%% ACKNOWLEDGEMENTS
%% ----------------------------------------------------------------
\newcommand\acknowledgements[1]{
  \btypeout{Acknowledgements}
  \addtotoc{Acknowledgements}
  \thispagestyle{plain}
  \begin{center}{\huge\textit{Acknowledgements}\par}\end{center}
  {\normalsize #1}
  \vfil\vfil\null
}

%% ----------------------------------------------------------------
%% DEDICATORY
%% ----------------------------------------------------------------
\newcommand\dedicatory[1]{
  \btypeout{Dedicatory}
  \thispagestyle{plain}
  \null\vfil\vskip 60\p@
  \begin{center}{\Large\sl #1}\end{center}
  \vfil\null\cleardoublepage
}

%% ----------------------------------------------------------------
%% BACK MATTER
%% ----------------------------------------------------------------
\renewcommand\backmatter{
  \if@openright\cleardoublepage\else\clearpage\fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}

\endinput
%% End of file `Thesis-1.cls' (v2.0 -- B.Tech ECE VIT Chennai)
