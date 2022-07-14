\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mpshort}[2022/05/31 -- shvetz.anton@gmail.com]

\LoadClass[11pt]{beamer}
\RequirePackage{luatex85}
\RequirePackage[babelshorthands]{polyglossia}
\RequirePackage{microtype}
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage{unicode-math}[math-style=ISO,partial=italic]
\RequirePackage{array}
\RequirePackage{hologo}
\RequirePackage{luamplib}

\setdefaultlanguage{russian}
\setotherlanguages{english,french}

\setmainfont{Alegreya}[WordSpace=1.8]
\setsansfont{Alegreya Sans}[WordSpace=1.8]
\setmonofont{Iosevka Fixed}[Scale=MatchLowercase]
\setmathfont{XITS Math}[Scale=MatchLowercase]
\setmathfont{Alegreya}[Numbers=Lining,range={up}]
\setmathfont{Alegreya Italic}[range={it}]
\setmathfont{XITS Math}[range={\cuberoot,\partial}]

\usefonttheme{structurebold}
\usefonttheme[onlymath]{serif}

\makeatletter

\mode<presentation>

\setbeamercolor{normal text}{fg=white,bg=black}
\setbeamerfont{normal text}{family*=\sfdefault}

\setbeamerfont{math text}{family*=\rmdefault}
\setbeamercolor{math text}{fg=cyan!25!white}
\setbeamercolor{normal text in math text}{fg=white}

\setbeamercolor{verbatim text}{fg=yellow!50!white}
\setbeamerfont{verbatim text}{family*=\ttdefault}

\setbeamercolor{verbatim screen text}{fg=green!25!white}
\setbeamerfont{verbatim screen text}{size=\normalsize,parent={verbatim text}}

\setbeamercolor{user input screen text}{fg=cyan}
\setbeamercolor{prompt screen text}{fg=yellow}

\setbeamercolor{verbatim programlisting text}{parent=verbatim text}
\setbeamerfont{verbatim programlisting text}{size=\normalsize,parent={verbatim text}}

\setbeamercolor{replaceable text}{fg=green!15!white}
\setbeamerfont{replaceable text}{parent=normal text,shape=\itshape}

\setbeamercolor{alerted text}{fg=yellow}

\setbeamercolor{emphasized text}{fg=green!20!white}
\setbeamerfont{emphasized text}{shape=\itshape}

\setbeamercolor{structure}{fg=blue!30!white}
\setbeamerfont{structure}{family*=\sfdefault}

\setbeamerfont{section in toc shaded}{parent=section in toc}
\setbeamerfont{section in head/foot}{}
\setbeamerfont{section in sidebar}{size=\tiny}
\setbeamerfont{section number projected}{size=\small,parent={section in toc,projected text}}
\setbeamercolor{section in toc}{fg=orange!75!white}

\setbeamerfont{subsubsection in toc}{size=\footnotesize}
\setbeamerfont{subsubsection in toc shaded}{parent=subsubsection in toc}
\setbeamerfont{subsubsection in head/foot}{}
\setbeamerfont{subsubsection in sidebar}{}

\setbeamerfont{subsection in toc}{}
\setbeamerfont{subsection in toc shaded}{parent=subsection in toc}
\setbeamerfont{subsection in head/foot}{}
\setbeamerfont{subsection in sidebar}{}

\setbeamertemplate{bibliography item}[triangle]

%\defbeamertemplate*{title page}{customized}[1][]
%{
%	\usebeamerfont{title}\inserttitle\par
%	\bigskip
%	\usebeamerfont{author}\insertauthor\par
%	%\usebeamerfont{email}\insertemail\par
%	\usebeamerfont{institute}\insertinstitute\par
%	\usebeamerfont{date}\insertdate\par
%	%\usebeamercolor[fg]{titlegraphic}\inserttitlegraphic
%}

\mathsurround=\p@

\newcommand\sectionwithlogo[2]{%
{\section{#1}%
\setbeamercolor{structure}{fg=orange!75!white}%
\frame{%\frametitle{\thesection}%
\begin{columns}
\column{.45\textwidth}
\tableofcontents[currentsection]
\column{.55\textwidth}
\centering#2
\end{columns}}%
}}

\renewcommand\emph[1]{{\usebeamerfont{emphasized text}\usebeamercolor[fg]{emphasized text}#1}}

\newcommand\literal[1]{{\usebeamerfont{verbatim text}\usebeamercolor[fg]{verbatim text}#1}}
\newcommand\userinput[1]{{\usebeamercolor[fg]{user input screen text}#1}}
\newcommand\prompt[1]{{\usebeamercolor[fg]{prompt screen text}#1}}

\newcommand\replaceable[1]%
	{{\usebeamercolor[fg]{replaceable text}%
	\usebeamerfont{replaceable text}%
	{\mathsurround\z@\everymath{}$\langle$#1$\rangle$}}}

\newenvironment{programlisting}%
	%{\begin{semiverbatim}\usebeamercolor[fg]{verbatim programlisting text}\usebeamerfont{verbatim programlisting text}}%
	%{\end{semiverbatim}}
	{%
		%\bgroup
		\selectlanguage{english}
		\usebeamercolor[fg]{verbatim programlisting text}%
		\usebeamerfont{verbatim programlisting text}%
		\parindent\z@\parskip\z@
		%\par
		\raggedright
		%\leftskip\m@ne em%
		%\advance\leftskip-3em%
		\begin{semiverbatim}%
		}
	{%
		\end{semiverbatim}%
		%\egroup
		}

\newenvironment{screen}
	{\usebeamerfont{verbatim screen text}%
	\usebeamercolor[fg]{verbatim screen text}%
	\parindent\z@\parskip\z@
	\begin{semiverbatim}}
	{\end{semiverbatim}}

%\pgfdeclareimage[width=11pt,height=14pt]{attach}{img/stock_attach}
%\setbeamertemplate{bibliography item}{\lower3.5pt\hbox{\hskip2pt\pgfuseimage{attach}\hskip1pt}}

\newenvironment{grid}[1]
	{\bgroup\tabcolsep\z@\begin{tabular}{#1}}
	{\end{tabular}\egroup}

\newcommand\slashfrac[2]{#1{\divslash}#2}

\pdfpkresolution1200
%\hypersetup{pdfpagemode=FullScreen}

\parskip=2ex plus.5ex minus.25ex

\mplibtextextlabel{enable}

%..kpse.find_file(token.scan_string(), 'mp')
%callback.find('start_file')(3, kpse.find_file(token.scan_string(), 'mp'))
%callback.find('stop_file')(3)
\newcommand\includeMPgraphics[1]{%
	\leavevmode
	\directlua{
		local mp_file=token.scan_string()
		texio.write('<')
		tex.print('\\begin{mplibcode}input '..mp_file..';\\end{mplibcode}')
		texio.write(kpse.find_file(mp_file, 'mp'))
		texio.write('>')
		}#1}

\input{\jobname.gitinfo}

\makeatother
