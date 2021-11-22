\ProvidesClass{temp}[2016/02/01 CV]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{scrartcl}
}
\ProcessOptions\relax
\LoadClass{scrartcl}

\usepackage{fontawesome}

\usepackage[english]{babel}
\usepackage[utf8x]{inputenc}
\usepackage[default,scale=0.95]{opensans}
\usepackage[T1]{fontenc}

\usepackage[protrusion=true,expansion=true]{microtype}
\usepackage{amsmath,amsfonts,amsthm}    
\usepackage[pdftex]{graphicx}
\usepackage{wrapfig}
\usepackage[hmargin=1cm, vmargin=0.8cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}

\usepackage{sidecap}
\usepackage{geometry}
\usepackage{url}
\usepackage{float}
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns

\usepackage{changepage}
\usepackage{tabularx} % in the preamble

\usepackage{multicol}
\usepackage{color}

\usepackage{comment}

\setlength{\columnseprule}{1pt}
\def\columnseprulecolor{\color{black}}

\usepackage{booktabs}% http://ctan.org/pkg/booktabs
\newcommand{\tabitem}{~~\llap{\textbullet}~~}

\frenchspacing              % Better looking spacings after periods
\pagestyle{empty}           % No pagenumbers/headers/footers

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{191919} 
\definecolor{headings}{HTML}{025178}    % original: 025178
\definecolor{subheadings}{HTML}{000000}     % original: 002648 


%%% Custom sectioning (sectsty package)
%%% ------------------------------------------------------------
\usepackage{sectsty}

\sectionfont{\usefont{OT1}{phv}{b}{n}\sectionrule{0pt}{0pt}{-5pt}{1pt}}
\subsectionfont{\color{headings}\usefont{OT1}{phv}{b}{n}}
\subsubsectionfont{\sectionrule{0pt}{0pt}{-5pt}{3pt}}
%%% Macros
%%% ------------------------------------------------------------
\newlength{\spacebox}
\settowidth{\spacebox}{8888888888}			% Box to align text
\newcommand{\sepspace}{\vspace*{0.6em}}		% Vertical space macro (was 0.6em)

% Render author's name
% Usage: \user{<firstanme>}{<lastname>}
\newcommand\user[2]{\color{headings}{\huge #1 \textsc{\textbf{#2}}}\color{Black}}

% NewPart
\newcommand{\NewPart}[1]{\section*{ \color{headings} \uppercase{#1}} \vspace{-0.5em}}

\newcommand{\PersonalEntry}[2]{
		\noindent\hangindent=2em\hangafter=0 % Indentation
		\parbox{\spacebox}{        % Box to align text
		\textit{#1}}		       % Entry name (birth, address, etc.)
		\hspace{1.5em} #2 \par}    % Entry value

\newcommand{\EducationEntry}[6]{     
	\begin{minipage}{0.06\linewidth}
 	    \includegraphics[width=0.8cm] {#5} % Image
	\end{minipage}%                     
    \begin{minipage}{0.9\linewidth}
	    \noindent {\color{black}\bfseries {#1}} % Study
        \hfill {\color{headings}\fontsize{10pt}{12pt}#2} % Time period
	    \par   	% Uni, Location & Description
		\noindent {\color{black}{#3}, \color{black}\textit{#6} \small #4}
		         
    \end{minipage}        
 }

\newcommand{\SkillsEntry}[2]{      % Same as \PersonalEntry
		\noindent\hangindent=2em\hangafter=0 % Indentation
		\parbox{\spacebox}{        % Box to align text
		\textit{#1}}			   % Entry name (birth, address, etc.)
		\hspace{1.5em} #2 \par}    % Entry value	
        
\newcommand{\workEntry}[6]{
        \begin{minipage}{0.97\linewidth}  
    	\noindent {\includegraphics[width=1.2cm] {#5} \color{black}\bfseries\uppercase {#1}, {\color{black}\textnormal{#6}}}, {\color{headings}\textit{#3}}  
        \hfill  {\color{headings}\fontsize{10pt}{12pt}#2}  % Time period   
        \par   	
        \noindent\hangindent=2em\hangafter=0 \small #4 % Description
		\normalsize \par         
        \end{minipage}         
}

\newcommand{\flag}[1]{
	\includegraphics[height=7.5pt, width= 13.5pt]{#1}
}     

\newcommand{\headingEntry}[1]{
    \noindent {\color{subheadings}\bfseries {#1}}
    \normalsize \par
}

\newcommand{\subheadingEntry}[1]{
    \noindent {\color{subheadings}\bfseries {#1}}
}

\newcommand{\itSubheadingEntry}[1]{
    \noindent {\color{subheadings}\textit{#1}}
}

\newcommand{\software}[1]{
	\includegraphics[height=9pt]{#1}
}  

\newcommand{\softwareb}[1]{
	\raisebox{-.6\height}{\includegraphics[height=18pt]{#1}}
}