% Intro Options
\ProvidesClass{charan}[2021/07/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{fontawesome}

\definecolor{date}{HTML}{000000} 
\definecolor{primary}{HTML}{000000}
\definecolor{headings}{HTML}{0E0E0F}
\definecolor{subheadings}{HTML}{1A1C1E}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/NiveauGrotesk/, Scale=1.09]{Niveau-Lig}
\newcommand{\custombold}[1]
{\color{subheadings}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-ExtraLight}\selectfont #1 \normalfont}
\linespread{1.1}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(165,0)
\color{date}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Lig}\fontsize{7pt}{10pt}\selectfont 
Last Updated on
\today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
	\centering{
		\sffamily
		\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{40pt}{10cm}\selectfont #1 
		\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{39pt}{10cm}\selectfont #2
	} \\
	\vspace{6pt}
	\centering{ \color{headings}\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Lig}\fontsize{12pt}{14pt}\selectfont #3}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.1pt}}
	\vspace{-15pt}
}
\titlespacing{\section}{0pt}{0pt}{4pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-ExtraLight}\fontsize{17pt}{20pt}\selectfont \raggedright\uppercase}{} {0em}{}

% % Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Positions
\newcommand{\gitproject}[2]{	
    \color{subheadings}\raggedright\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{12pt}{12pt}\selectfont {#1}\normalfont
\hfill
\color{subheadings}\raggedleft\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{10pt}{10pt}\selectfont {#2\\}\normalfont
}


% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{11pt}{2pt}\selectfont {#1 \\} \normalfont}


% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Workplace
\newcommand{\workplace}[2]{
\color{subheadings}\raggedright
\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Bol}\fontsize{14pt}{12pt}\selectfont\bfseries {#1} \normalfont
\hfill
\color{subheadings}\raggedleft
\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{12pt}{12pt}\selectfont\bfseries {#2} \normalfont
}

% Positions
\newcommand{\position}[2]{	
    \color{subheadings}\raggedright\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{12pt}{13pt}\selectfont {#1}\normalfont
\hfill
\color{subheadings}\raggedleft\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Reg}\fontsize{12pt}{13pt}\selectfont {#2\\}\normalfont
}

% Grad 
\newcommand{\grad}[2]{	
    \color{subheadings}\raggedright\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Lig}\fontsize{12pt}{13pt}\selectfont {#1}\normalfont
\hfill
\color{subheadings}\raggedleft\scshape\fontspec[Path = fonts/NiveauGrotesk/]{Niveau-Lig}\fontsize{12pt}{13pt}\selectfont {#2\\}\normalfont
}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}
