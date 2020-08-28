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

% Equation numbering 
\numberwithin{equation}{section}

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
\newcommand{\req}[1]{Eq.~(\ref{})} % reference equation
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

%------------------------------------------------------------------------------
% Hungarian Algorithm 
%------------------------------------------------------------------------------
% TikZ allows you to reference nodes outside the current picture. This feature is enabled using the remember picture option
\newcommand{\holdcolor}{gray} % Hungarian old color: sets the color for the previous lines; this is default
%------------------------------------------------------------------------------
% Horizontal Lines
% horizontal lines are drawn from left to right
% place a node on the LEFT of the character where you want to START a line
% the name of the node is important as the lines are drawn to connect nodes
% hhs = Hungarian Horizontal Start
\newcommand{\hhs}[1]{\begin{tikzpicture}[overlay,remember picture]\node(#1)at (-0.5em,.7ex){};\end{tikzpicture}}
% place a node on the RIGHT of the character where you want to END the line
% the optional argument is the color and its default is set to \holdcolor
% hhe = Hungarian Horizontal End
\newcommand{\hhe}[2][\holdcolor]{\begin{tikzpicture}[overlay,remember picture]\draw[color=#1,thick](#2)--(0,.7ex);\end{tikzpicture}}
%------------------------------------------------------------------------------
% Vertical Lines
% vertical lines are drawn top down
% place a node at the LEFT of the character where you want to START a line
% hvs = Hungarian Vertical Start
\newcommand{\hvs}[1]{\begin{tikzpicture}[overlay,remember picture]\node(#1)at (.3em,3ex){};\end{tikzpicture}}
% place a node at the LEFT of the character where you want to END a line
% the optional argument is the color and its default is set to \holdcolor
% \hve = Hungarian Vertical End
\newcommand{\hve}[2][\holdcolor]{\begin{tikzpicture}[overlay,remember picture]\draw[color=#1,thick](#2)--(.3em,-1ex);\end{tikzpicture}}




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
