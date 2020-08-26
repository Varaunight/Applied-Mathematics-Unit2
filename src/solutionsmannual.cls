\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{solutionsmannual}[2020/08/25]

% Can include more options here
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[fleqn,titlepage]{book}

% Packages to be used in the document
\usepackage[T1]{fontenc}
\usepackage{amsthm}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{hyperref}
\usepackage{listings}
\usepackage{xcolor}
\usepackage{mathtools}
\usepackage{textcomp}
\usepackage{amssymb} 
\usepackage{enumitem}
\usepackage{geometry} 
\usepackage{tikz} 
\usepackage{float}
\usepackage{lmodern}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage{epsfig}




% Equation numbering 
\numberwithin{equation}{section}

% Used in cover page
\hypersetup{
    colorlinks,
    linkcolor={blue!50!black},
    citecolor={blue!50!black},
    urlcolor={blue!80!black}
}

% Set up format for definitions and axioms etc.
% Currently set up so they increment on their own
\theoremstyle{definition}
\newtheorem{thm}{Theorem}[section]
\newtheorem{lem}{Lemma}[section]
\newtheorem{law}{Law}[section]
\newtheorem{prop}{Proposition}[section]
\newtheorem{cor}{Corollary}[section]
\newtheorem{axiom}{Axiom}[section]
\newtheorem{defn}{Definition}[section]
\newtheorem{conj}{Conjecture}[section]
\newtheorem{exmp}{Example}[section]
\newtheorem{note}{Note}[section]

\theoremstyle{remark}
\newtheorem*{rem}{Remark}

%Set up the format for the listing structure
\renewcommand{\theenumi}{\Roman{enumi}} 
\renewcommand{\labelenumi}{(\theenumi)} 
\renewcommand{\theenumii}{\alph{enumii}} 
\renewcommand{\labelenumii}{\theenumi.~\theenumii}

% Commands in mathmode
\newcommand{\nn}{\nonumber}

\def\chapter{\clearpage\ifodd\c@page\else
   \hbox{}\par\vfill\centerline%
   {THIS PAGE INTENTIONALLY LEFT BLANK}%
   \vfill\newpage\fi
   \thispagestyle{plain}   % Page style of chapter page is 'plain'
   \global\@topnum\z@      % Prevents figures from going at top of page.
   \@afterindentfalse      % Suppresses indent in first paragraph.  Change
   \secdef\@chapter\@schapter}   