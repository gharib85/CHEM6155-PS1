\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{chem6155problemset}

\def\@pgfopt{ }

\DeclareOption{solutions}{
\def\solutions{1}
\PassOptionsToClass{\CurrentOption}{article}
}

\ProcessOptions\relax

\LoadClass[11pt,a4paper]{article}

\voffset-1in
\hoffset-1in
\textwidth17cm
\textheight24cm

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage[T1]{fontenc}
\RequirePackage{arev}
\RequirePackage[adobe-utopia]{mathdesign}
\RequirePackage[utf8]{inputenc}
\RequirePackage{pgfpages}
\RequirePackage{tikz}
\RequirePackage{verbatim}

\newcommand{\tensor}[1]{\ensuremath{\boldsymbol{#1}}}
\newcommand{\ket}[1]{\ensuremath{|{#1}\rangle}}
\newcommand{\bra}[1]{\ensuremath{\langle{#1}|}}
\newcommand{\braket}[2]{\ensuremath{\langle {#1} | {#2}\rangle}}
\newcommand{\ketbra}[2]{\ensuremath{|{#1}\rangle\langle {#2}|}}
\newcommand{\op}[1]{\ensuremath{\hat{#1}}}
\newcommand{\vect}[1]{\ensuremath{\mathbf{#1}}}
\newcommand{\total}{\mathrm{d}}
\newcommand{\chemical}[1]{\ensuremath{\mathrm{#1}}}
\newcommand{\putat}[3]{\begin{picture}(0,0)(0,0)\put(#1,#2){#3}\end{picture}} % just a shorthand

\definecolor{soton11}{RGB}{1,67,89}
\definecolor{soton12}{RGB}{0,114,117}
\definecolor{soton13}{RGB}{10,160,169}
\definecolor{soton14}{RGB}{50,61,67}
\definecolor{soton15}{RGB}{151,158,69}
\definecolor{soton16}{RGB}{153,153,166}
\definecolor{soton29}{RGB}{254,62,20}


\ifx\solutions\undefined
\newenvironment{solution}[1][\unskip]
{\comment}
{\endcomment}
\else
\newenvironment{solution}[1][\unskip]
{\par\noindent
\color{soton13}
\textbf{Solution #1: }}
{}
\fi



\endinput