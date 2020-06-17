%!TEX root = C:\Users\s118759\Documents\GitHub\ThesisSoftRobotics\main.tex
%%%%%%% PHD THESIS CLASS FOR LATEX %%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{phd}[2014/08/16 Example LaTeX class]
%%%%%%% MAIN CLASS %%%%%%%
\LoadClass[11pt,openright]{report}
\newcommand{\headlinecolor}{\normalcolor}

%%%%%% EQUATION ALIGNMENT %%%%%%%
\PassOptionsToPackage{fleqn}{amsmath}
% \makeatletter
% \setlength{\@mathmargin}{50pt}
% \makeatother

%%%%%%% LOAD PACKAGES %%%%%%%
\RequirePackage{xcolor}
\RequirePackage{pdfpages}
\RequirePackage{xcolor}
\RequirePackage{float}
\RequirePackage{pgfplots}
\RequirePackage{grffile}
\RequirePackage{mathtools}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{chapterbib}   
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{natbib}
\RequirePackage[explicit]{titlesec}
\RequirePackage{lipsum}
\RequirePackage{lettrine}
\RequirePackage{type1cm}
\RequirePackage{epstopdf}
%\RequirePackage[outdir=./]{epstopdf}
\RequirePackage[DIV=11,BCOR=2mm,headinclude=true,footinclude=false]{typearea}
\definecolor{slcolor}{HTML}{882B21}

\RequirePackage[final,bookmarks]{hyperref}
\hypersetup{
    pdftitle={Bla},
    colorlinks= true,
    linkcolor={blue},
    citecolor={blue!50!black},
    urlcolor={green!50!black}}

 
\renewcommand{\baselinestretch}{1.15}

% \makeatletter
% \renewcommand*\env@matrix[1][\arraystretch]{%
%   \edef\arraystretch{#1}%
%   \hskip -\arraycolsep
%   \let\@ifnextchar\new@ifnextchar
%   \array{*\c@MaxMatrixCols c}}
% \makeatother

 %%%%%%% MATH OPERATORS %%%%%%%
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}{Corollary}[chapter]
\newtheorem{lemma}{Lemma}[chapter]
\newtheorem{intermezzo}{Intermezzo}[chapter]
\newtheorem{definition}{Definition}[chapter]
\theoremstyle{definition}

%%%%%%% SET OFFSETS LEFT RIGHT %%%%%%%
%\makeatletter
\if@twoside 
    \newlength{\textblockoffset}
    \setlength{\textblockoffset}{12mm}
    \addtolength{\hoffset}{\textblockoffset}
    \addtolength{\evensidemargin}{-2.0\textblockoffset}
\fi
%\makeatother

\pgfplotsset{compat=newest}
\usetikzlibrary{plotmarks}
\usetikzlibrary{arrows.meta}
\usepgfplotslibrary{patchplots}

%%%%%%% DECLARACTIONS %%%%%%%
\newcommand{\schrift}{\Large \textsc{Proefschrift}}
\def\birthplace#1{\gdef\@birthplace{#1}}
\def\rectormagnificus#1{\gdef\@rectormagnificus{#1}}
\def\degreetime#1{\gdef\@degreetime{#1}}
\def\degreedate#1{\gdef\@degreedate{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\college#1{\gdef\@college{#1}}
\def\candidateno#1{\gdef\@candidateno{#1}}
\def\wordcount#1{\gdef\@wordcount{#1}}
\newif\ifmasterssubmission
\masterssubmissionfalse

\newcommand{\placeofbirth}{geboren te \@birthplace }

\newcommand{\submittedtext}{
 ter verkrijgen van de graad van doctor aan de \\
      Technische Universiteit Eindhoven, op gezag van de \\
      rector magnificus \@rectormagnificus, voor een \\
      commissie aangewezen door het College van \\
      Promoties, in het openbaar te verdedigen \\
      op \@degreedate  om \@degreetime  uur}

\newcommand{\commiteetext}{ \noindent Dit proefschrift is goedgekeurd door de promotoren en de samenstelling van de \\
promotiecommissie is als volgt: \\
}

%%%%%%% MATH OPERATORS %%%%%%%
\newcommand{\M}{\mathcal{M}}
\newcommand{\Lg}{\mathcal{V}}
\newcommand{\G}{\mathcal{G}}
\newcommand{\g}{\mathfrak{g}}
\newcommand{\V}{\mathcal{V}}
\newcommand{\T}{\mathcal{T}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\E}{\mathbb{E}}
\newcommand{\I}{{I}}
\newcommand{\q}{\boldsymbol{q}}
\newcommand{\Ph}{\mathbb{E}}
\newcommand{\tr}{\top}
\newcommand{\ad}{\text{ad}}
\newcommand{\Ad}{\text{Ad}}
\newcommand{\p}{\partial}
\newcommand{\rank}{\textnormal{rank}}
\newcommand{\col}{\textnormal{col}}
\newcommand{\row}{\textnormal{row}}
\newcommand{\pinv}{+}
\newcommand{\ginv}{{g} }
\newcommand{\pinvt}{{+\top} }

% \DeclarePairedDelimiterX{\infdivx}[2]{(}{)}{%
%   #1\;\delimsize\|\;#2%
% }
% \newcommand{\infdiv}{D\infdivx}
\DeclarePairedDelimiterX{\norm}[1]{\lVert}{\rVert}{#1}
\DeclarePairedDelimiterX{\norms}[1]{\lVert}{\rVert^2}{#1}
\DeclarePairedDelimiterX{\bk}[1]{(}{)}{#1}

\DeclareMathOperator{\sech}{sech}
\DeclareMathOperator{\csch}{csch}
\DeclareMathOperator{\inv}{^{-1}}
\DeclareMathOperator{\Rp}{\R_{\ge 0}}
\DeclareMathOperator{\Rsp}{\R_{>0}}
\newcommand{\Rot}[1]{^{#1}\boldsymbol{\Phi}}
\renewcommand{\vec}[1]{{#1}}
\newcommand{\mat}[1]{{#1}}
\newcommand{\se}[1]{{\mathfrak{se}(#1)}}
\newcommand{\so}[1]{{\mathfrak{so}(#1)}}
\newcommand{\SO}[1]{{\mathbb{SO}(#1)}}
\newcommand{\SE}[1]{{\mathbb{SE}(#1)}}
\newcommand{\Id}[1]{{\mathbb{I}^#1}}
%\newcommand{\mat}[1]{\boldsymbol{#1}}
%\renewcommand{\vec}[1]{\boldsymbol{#1}}
%\newcommand{\Rotlin}[1]{^{#1}\hat{\boldsymbol{\Phi}}
\newcommand{\base}[2]{^{#1}{#2}}
\newcommand{\blkdiag}[1]{\textnormal{blkdiag}\left\{ {#1} \right\}}

%%%%%%% FIGURE SIZES %%%%%%%
\newcommand*{\smallfig}{0.5\textwidth}
\newcommand*{\normfig}{0.75\textwidth}
\newcommand*{\bigfig}{.95\textwidth}

%%%%%%% lOGO DEFINTION %%%%%%%%
\def\crest{{\includegraphics{fig/logo.pdf}}}

\newenvironment{alwayssingle}{%
       \@restonecolfalse
       \if@twocolumn\@restonecoltrue\onecolumn
       \else\if@openright\cleardoublepage\else\clearpage\fi
       \fi}%
       {\if@restonecol\twocolumn
       \else\newpage\thispagestyle{empty}\fi}

\renewcommand{\maketitle}{%
\begin{alwayssingle}\null
    \renewcommand{\footnotesize}{\small}
    \renewcommand{\footnoterule}{\relax}
    \thispagestyle{empty}
  \begin{center}
   \vspace*{25mm}
    { \Huge {\sffamily {\@title}} \par}
{ \vspace*{25mm}}
    {\schrift \par}
{ \vspace*{05mm}}
    {\submittedtext \par}
{ \vspace*{5mm}}
    {door \par}
{ \vspace*{5mm}}
    {{\@author} \par}
{ \vspace*{5mm}}
    {{\placeofbirth} \par}
  \end{center}
\end{alwayssingle}
\begin{alwayssingle}
\commiteetext
{ \vspace*{15mm}}
    {\begin{tabular}{ll}
    \\
    voorzitter: & prof. dr. L.P.H. de Goey \\
    $1^e$ promotor: & prof. dr. H. Nijmeijer \\
    copromotor: & dr. A.Y. Pogromsky \\
    \end{tabular}}
\end{alwayssingle}
\newpage
}

% { \vspace*{1ex}
%     {{\@college} \par}
% \vspace*{1ex}
% \vspace*{20mm}
% \large \vspace*{30mm} {\crest \par}
% \vspace*{1ex}
%     {\it {\@degree} \par}
% \vspace*{2ex}
%     {\@degreedate}}

%%%%%%%%%%%%%%%%%%%%
\titleformat{\chapter}[display]
  {\normalfont\large\sffamily}
  {\flushright\fontsize{70}{0}\textbf{\textcolor{black}{\thechapter}}}{10pt}
  {\flushright\fontsize{30}{0}\textbf{#1}\vskip10pt\rule{\textwidth}{1pt}}
\titlespacing*{\chapter}
  {0pt}{-40pt}{0pt}
