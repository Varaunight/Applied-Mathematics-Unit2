%------------------------------------------------------------------------------
% Author(s):
%  Brad Bachu
%
% Copyright:
%  Copyright (C) 2020 Brad Bachu, Arjun Mohammed, Nicholas Sammy, Kerry Singh
%
%  This file is part of Applied-Mathematics-Unit2 and is distributed under the
%  terms of the MIT License. See the LICENSE file for details.
%
%  Description: A class for formatting and creating macros
%------------------------------------------------------------------------------

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
\usepackage{caption}
\usepackage{circuitikz}

% Equation numbering 
\numberwithin{equation}{section}


% Draft Editing Macros
\newcommand{\TODO}[1]{\marginpar{\raggedright\scriptsize\textbf{TODO:} #1} (\textbf{TODO})}
\newcommand{\NOTE}[1]{\marginpar{\footnotesize\textbf{NOTE}} (\textbf{#1})}
\newcommand{\README}{\marginpar{\footnotesize\textbf{READ}}}
%

% Used in cover page
\hypersetup{
    colorlinks,
    linkcolor={blue!50!black},
    citecolor={blue!50!black},
    urlcolor={blue!80!black}
}

% Random thing I swiped from a mitthesis class
% When printed it makes sure new chapters always start on the right page
\def\chapter{\clearpage\ifodd\c@page\else
   \hbox{}\par\vfill\centerline%
   {THIS PAGE INTENTIONALLY LEFT BLANK}%
   \vfill\newpage\fi
   \thispagestyle{plain}   % Page style of chapter page is 'plain'
   \global\@topnum\z@      % Prevents figures from going at top of page.
   \@afterindentfalse      % Suppresses indent in first paragraph.  Change
   \secdef\@chapter\@schapter}   

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% General users IGNORE EVERYTHING ABOVE THIS LINE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% READ FROM HERE ONWARDS

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GENERAL
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------------------------------------------------------------------------
% Numbering
%------------------------------------------------------------------------------
%Set up the format for the listing structure
\renewcommand{\theenumi}{\Roman{enumi}} 
\renewcommand{\labelenumi}{(\theenumi)} 
\renewcommand{\theenumii}{\alph{enumii}} 
\renewcommand{\labelenumii}{\theenumi.~\theenumii}


% The begin module could not be made into a newenviroment because the input function cannot be nested
% further, I left the titles as input in case they change the heading name
% begin module
\newcommand{\bModule}[2]{\setcounter{section}{#1-1}\section{Module #1: #2}\begin{enumerate}[label=\bfseries  \arabic*.]}
% end module
\newcommand{\eModule}{\end{enumerate}}
\newcommand{\ques}[1]{\setcounter{section}{#1}\setcounter{enumi}{#1 -1}\setcounter{equation}{0} \item}
% begin subquestion, the first level of question (a), (b) etc
\newenvironment{subquestions}
{\begin{enumerate}[label = \bfseries (\alph*)]}
{\end{enumerate}}
% begin subsubquestion, the second level of question (i), (ii) etc
\newenvironment{subsubquestions}
{\begin{enumerate}[label = \bfseries (\roman*)]}
{\end{enumerate}}
% begin subsubsubquestion, the third level of question a), b) etc
\newenvironment{subsubsubquestions}
{\begin{enumerate}[label = \bfseries \alph*)]}
{\end{enumerate}}
% these are just redefinitions of item to help keep track of what place you are at
\newcommand{\subquestion}{\item}
\newcommand{\subsubquestion}{\item}
\newcommand{\subsubsubquestion}{\item}


%------------------------------------------------------------------------------
% Referencing 
%------------------------------------------------------------------------------
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
% Only remark is a different style
\theoremstyle{remark}
\newtheorem*{rem}{Remark}
% Shortcuts for citation related commands
\newcommand{\req}[1]{Eq.~(\ref{#1})} % reference equation
\newcommand{\reqs}[2]{Eqs.~(\ref{#1}) and (\ref{#2})} % reference 2 equations
\newcommand{\rfig}[1]{Fig.~\ref{#1}} % reference figure
\newcommand{\rfigs}[2]{Figs.~\ref{#1} and \ref{#2}} % reference 2 figures
\newcommand{\rtab}[1]{Table~\ref{#1}} % reference table
\newcommand{\rdef}[1]{Def.~\ref{#1}} % reference def
\newcommand{\rprop}[1]{Prop.~\ref{#1}} % reference prop
\newcommand{\rlem}[1]{Lemma~\ref{#1}} % reference lemma
\newcommand{\rcor}[1]{Corollary~\ref{#1}} % reference cor
\newcommand{\raxi}[1]{Axiom~\ref{#1}} % reference axiom


%------------------------------------------------------------------------------
% Math
%------------------------------------------------------------------------------
% Shorcuts in mathmode (general)
\newcommand{\nn}{\nonumber} % use to remove number in align env.
\newcommand{\lbl}[1]{\label{#1}} % use to label equations or anything.
% Shortcuts for enviroments
\newcommand{\beq}{\begin{equation}}
\newcommand{\eeq}{\end{equation}}
\newcommand{\bal}{\begin{align}}
\newcommand{\eal}{\end{align}}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MODULE 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MODULE 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Shortcuts for mod 2
\newcommand{\var}{\text{Var}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MODULE 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%------------------------------------------------------------------------------
% Vectors 
%------------------------------------------------------------------------------
\newcommand{\ihat}{\hat{i}}
\newcommand{\jhat}{\hat{j}}
\newcommand{\khat}{\hat{k}}
\newcommand{\xhat}{\hat{x}}
\newcommand{\yhat}{\hat{y}}
\newcommand{\zhat}{\hat{z}}
\renewcommand{\v}[1]{\vec{#1}}
