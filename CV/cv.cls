\ProvidesClass{cv}[2020/11/13 v1.1 CV class]

\LoadClass[10pt, letterpaper]{article}

\pagestyle{empty}

\usepackage{tabto}
\usepackage{changepage}
\usepackage{charter}

%\addtolength{\topmargin}{-1.5cm}
\def \spacing {1.25in}
\def \rightedge {0.35in}
\def \tabspace {2.2in}

\setlength{\parindent}{0pt}

\newenvironment{education}[7]
    {\textit{#1}---\tabto{\spacing}\textbf{Degree:}\tabto{\tabspace}#3 in #4\\
    \textit{#2}\tabto{\spacing}\textbf{Where:}\tabto{\tabspace}#5, #6\\
    \tabto{\spacing}\textbf{GPA:}\tabto{\tabspace}#7
    \begin{adjustwidth}{\spacing}{\rightedge}
    }
    {\end{adjustwidth}
    }

\newenvironment{work_exp}[4]
    {\textit{#1}---\tabto{\spacing}\textbf{Position:}\tabto{\tabspace}#3\\
    \textit{#2}\tabto{\spacing}\textbf{Where:}\tabto{\tabspace}#4\\
    \begin{adjustwidth}{\spacing}{\rightedge}
    }
    {
    \end{adjustwidth}
    \vspace{0.1in}
    }

\newenvironment{research_exp}[5]
    {\textit{#1}---\tabto{\spacing}\textbf{Project:}\tabto{\tabspace}#3\\
    \textit{#2}\tabto{\spacing}\textbf{Where:}\tabto{\tabspace}#4\\
    \tabto{\spacing}\textbf{Advisor:}\tabto{\tabspace}#5
    \begin{adjustwidth}{\spacing}{\rightedge}
    \textbf{Contributions:}
    }
    {
    \end{adjustwidth}
    \vspace{0.1in}
    }

%    begin, end, position, where
\newenvironment{employment}[4]
    {\textit{#1}---\tabto{\spacing}\textbf{Position:}\tabto{\tabspace}#3\\
    \textit{#2}\tabto{\spacing}\textbf{Where:}\tabto{\tabspace}#4
    \begin{adjustwidth}{\spacing}{\rightedge}
    }
    {
    \end{adjustwidth}
    \vspace{0.12in}
    }
    