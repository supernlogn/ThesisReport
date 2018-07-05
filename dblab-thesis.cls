% Class Information
\def\filename{dblab-thesis}
\def\fileversion{1.0}
\def\filedate{2003/02/01}
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{dblab-thesis}[%
    \filedate\space\fileversion\space LaTeX document class (Finik).]
% Required Packaged
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{datetime}
\RequirePackage{fancyhdr}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,11pt]{book}



\usepackage{polyglossia}
\usepackage{float}

\setdefaultlanguage{greek}


\pagestyle{fancy}
% Title Page and Front Matter
\def\@supervisor{}              \def\supervisor#1{\gdef\@supervisor{#1}}
\def\@epitropiF{}               \def\epitropiF#1{\gdef\@epitropiF{#1}}
\def\@epitropiS{}               \def\epitropiS#1{\gdef\@epitropiS{#1}}
\def\@subtitle{}                    \def\subtitle#1{\gdef\@subtitle{#1}}
\def\@translator{}              \def\translator#1{\gdef\@translator{#1}}
\def\@institution{}             \def\institution#1{\gdef\@institution{#1}}
\def\@department{}              \def\department#1{\gdef\@department{#1}}
\def\@division{}                    \def\division#1{\gdef\@division{#1}}
\def\@lab{}                             \def\lab#1{\gdef\@lab{#1}}
\def\@other{}                           \def\other#1{\gdef\@other{#1}}
\def\@dedication{}              \def\dedication#1{\def\@dedication{#1}}
\def\@uppertitleback{}      \long\def\uppertitleback#1{\def\@uppertitleback{#1}}
\def\@middletitleback{}   \long\def\middletitleback#1{\def\@middletitleback{#1}}
\def\@lowertitleback{}    \long\def\lowertitleback#1{\def\@lowertitleback{#1}}
\def\@approval{}   \long\def\approval#1{\def\@approval{#1}}
\def\@mysig{}             \long\def\mysig#1{\def\@mysig{#1}}

                          \def\url#1{\gdef\@url{\texttt{#1}}}
                          \def\TRnumber#1{\gdef\@TRnumber{#1}}
\def\@trurl{}             \def\trurl#1{\gdef\@trurl{\texttt{#1}}}
\def\@trftp{}             \def\trftp#1{\gdef\@trftp{\texttt{#1}}}

\def\new@tpage{\newpage\thispagestyle{empty}\null}
% Measurements
\setlength{\oddsidemargin}{7mm}
\setlength{\evensidemargin}{0mm}
\setlength{\textwidth}{150mm}

\setlength{\topmargin}{0mm}
\setlength{\textheight}{235mm}
\advance \topmargin by -\headheight
\advance \topmargin by -\headsep
% Macros for dates
\def\aux@date@year{\dateread{\theyear}}
\newcommand\date@year[1][\date]{\expandafter\aux@date@year #1 {}\relax{}}
% Maketitle
\renewcommand{\maketitle}{
    \begin{titlepage}
        \let\footnotesize\small
        \let\footnoterule\relax
        \renewcommand{\thefootnote}{\fnsymbol{footnote}}
        \new@tpage
        \begin{center}

        \begin{minipage}{2.5cm}
            \includegraphics[width=2.5cm]{figures/Logo-APTh-text2.png}
        \end{minipage}

        \begin{minipage}{15cm}
        \begin{center}
            \textsc{
            \huge{\@institution} \\
            \large{\@department \\
            \@division \\
            %\@other
            }}
        \end{center}
        \end{minipage}
        %\hfill %\hspace{0.5cm}

        %
        \vfill
        %

           % \fbox{\fbox{%\parbox{14cm}{
                %\vspace{1mm}\hspace{1mm}
                %\begin{minipage}{5cm}
                %    \@ifundefined{@TRnumber}{ΕΣΒΓΔ-ΔΙΠΛ}{\@TRnumber}
                %\end{minipage}
                %\hfill
                %\begin{minipage}{5cm}
                %    \flushright
                %    \@date
                %\end{minipage}
                %
                %\vspace{5mm}
                %
                \begin{center}
                    \LARGE \bfseries \@title
                \end{center}
                \ifx\@subtitle\@empty\else
                \begin{center}
                    \LARGE \@subtitle
                \end{center}
                \fi
                %
                \vspace{5mm}
                %
                \begin{center}
                    \huge{\textsc{\@translator}}\\
                    \vspace{3mm}
                    \normalsize{του}\\
                    \vspace{3mm}
                    \large{\textbf{ΙΩΑΝΝΗ Σ. ΑΘΑΝΑΣΙΑΔΗ}}\\
                    \vspace{1mm}
                    \large{\textbf{ΑΕΜ: 7848}}
                \end{center}
                %
                \vspace{5mm}
                %
                \hspace{1mm}
           \end{center}

           \vfill

                \begin{minipage}{15cm}
                \begin{tabbing}
                    \large \textbf{\supervisorname :} \=\@supervisor\\
                    \>Καθηγητής Α.Π.Θ.
                \end{tabbing}
                \end{minipage}
                \vspace{1mm}
           % }}%}

            %
            \vfill
            %

            %\begin{figure}[ht] \center\leavevmode
            %\epsfxsize=8cm
            %\epsfbox{D:/thesis/figures/cover.eps}
            %\end{figure}

            \begin{center}
                %\Large \textsc{{\bfseries \@translator}}\\[12pt]
                \textsc{\@lab}\\
                Θεσσαλονίκη, Ιούνιος 2018
            \end{center}
            %
            % \cleardoublepage

            \if@twoside\new@tpage
                \noindent
                \begin{center}
                \begin{minipage}{2.5cm}
                    \includegraphics[width=2.5cm]{figures/Logo-APTh-text2.png}
                \end{minipage}
                
                \begin{minipage}{15cm}
                    % \@uppertitleback
                    \begin{center}
                        \textsc{
                        \huge{Aristotle University of Thessaloniki} \\
                        \large{School of Electrical and Computer Engineering \\
                        Department of Electronics and Computer Engineering \\
                        %\@other
                        }}
                    \end{center}                    
                \end{minipage}
                \end{center}
                \par
                \vfill
               \begin{center}
                    \LARGE \bfseries {Transfer learning with deep convolutional neural networks for object detection used in real-time embedded systems}
                \end{center}
                \ifx\@subtitle\@empty\else
                \begin{center}
                    \LARGE \@subtitle
                \end{center}
                \fi
                %
                \vspace{5mm}
                %
                \begin{center}
                    \huge{\textsc{Diploma Thesis}}\\
                    \vspace{3mm}
                    \normalsize{of}\\
                    \vspace{3mm}
                    \large{\textbf{IOANNIS S. ATHANASIADIS}}
                \end{center}
                %
                \vspace{5mm}
                %
                \hspace{1mm}


           \vfill

                \begin{minipage}{15cm}
                \begin{tabbing}
                    \large \textbf{Supervisor :} \=Loukas Petrou\\
                    \>Professor A.U.TH.
                \end{tabbing}
                \end{minipage}
                \vspace{1mm}
           \vfill

                % \begin{minipage}{\textwidth}
                %     \@approval
                % \end{minipage}

            \vfill
            \begin{center}
                %\Large \textsc{{\bfseries \@translator}}\\[12pt]
                \textsc{Computer Architecture \& Computer Systems Laboratory}\\
                Thessaloniki, June 2018
            \end{center}
            %
            \fi
           \new@tpage
           \begin{minipage}[b]{\textwidth}
             \@mysig
           \end{minipage}

            \cleardoublepage
            \if@twoside\new@tpage
                \noindent
                \begin{minipage}[t]{\textwidth}
                    \@uppertitleback
                \end{minipage}
                \par
                \vfill
                \noindent
                \begin{minipage}{\textwidth}
                    \@middletitleback
                \end{minipage}
                \par
                \vfill
                \noindent
                \begin{minipage}[b]{\textwidth}
                    \@lowertitleback
                \end{minipage}
            \fi
           % \ifx\@dedication\@empty\else \new@tpage
           %     {\centering \Large \@dedication \par}
           %     \if@twoside \newt@page \fi
           % \fi
        %\new@tpage
          %\begin{minipage}[b]{\textwidth}
          %  \@mysig
          %\end{minipage}
    \end{titlepage}
    %
    \renewcommand{\thefootnote}{\arabic{footnote}}
    \setcounter{footnote}{0}
    %
    \gdef\@thanks{}\gdef\@author{}\gdef\@translator{}\gdef\@institution{}
    \gdef\@department{}\gdef\@division{}\gdef\@lab{}\gdef\@other{}
  \gdef\@uppertitleback{}\gdef\@lowertitleback{}\gdef\@dedication{}%
  \gdef\@title{}\gdef\@subtitle{}\let\maketitle\relax%
}


% Names
\newcommand{\keywordsname}{Λέξεις Κλειδιά}
\newcommand{\keywordsnameeng}{{Keywords}}
\newcommand{\abstractname}{Περίληψη}
\newcommand{\abstractnameeng}{{Abstract}}
\newcommand{\draftname}{Προσχέδιο}
\newcommand{\prefacename}{Πρόλογος}
\newcommand{\acknowledgementsname}{Ευχαριστίες}
\newcommand{\supervisorname}{Επιβλέπων}
\newcommand{\pagesname}{Σελίδες}
\newcommand{\urlname}{{URL}}
\newcommand{\ftpname}{{FTP}}
% More Names
\translator{ΔΙΠΛΩΜΑΤΙΚΗ ΕΡΓΑΣΙΑ}
\institution{Αριστοτέλειο Πανεπιστήμιο Θεσσαλονίκης}
\department{Σχολή Ηλεκτρολόγων Μηχανικών και Μηχανικών Υπολογιστών}
\division{Τομέας Ήλεκτρονικής και Υπολογιστών}
\lab{Εργαστήριο Αρχιτεκτονικής Υπολογιστών \& Υπολογιστικών Συστημάτων}
\other{Ζωγράφου 157 73, Αθήνα}
\supervisor{Πέτρου Λουκάς}

\mysig{
\vspace{15cm}
\textit{(Υπογραφή)}\\\\\\
.........................................\\
\large{\textbf{\textsc{\@author}}}\\
\large{Υποψήφιος Ηλεκτρολόγος Μηχανικός και Μηχανικός
Υπολογιστών Α.Π.Θ.}\\
\copyright\ 2018 -- All rights reserved

}

\uppertitleback{
    \begin{minipage}{2cm}
        \includegraphics[width=2cm]{figures/Logo-APTh-text2.png}
    \end{minipage}
    \hspace{0.5cm}
    \begin{minipage}{12cm}
        \@institution \\
        \@department \\
        \@division \\
        \@lab
    \end{minipage}
}

\approval{
    Εγκρίθηκε από την τριμελή εξεταστική επιτροπή την 3η Ιουλίου
    2018.
    \begin{tabbing}
    aaaaaaaaaaaaaaaaaaaaaa\=aaaaaaaaaaaaaaaaaaaaaa\=\kill
    \textit{(Υπογραφή)}\>   \textit{(Υπογραφή)}\>  \textit{(Υπογραφή)}\\\\\\
    ........................\>  ........................\>  ........................\\
    \@supervisor\>         \@epitropiF\>    \@epitropiS\\
    Καθηγητής Α.Π.Θ.\>     Καθηγητής Α.Π.Θ.\>      Καθηγητής
    Α.Π.Θ.\\\\\\\\
    \end{tabbing}

}

\middletitleback{
    Copyright \copyright \  --All rights reserved\ \ \@author \ 2018.\\
    Με επιφύλαξη παντός δικαιώματος.\\[12pt]
    Απαγορεύεται η αντιγραφή, αποθήκευση και διανομή της παρούσας εργασίας, εξ
    ολοκλήρου ή τμήματος αυτής, για εμπορικό σκοπό.  Επιτρέπεται η ανατύπωση,
    αποθήκευση και διανομή για σκοπό μη κερδοσκοπικό, εκπαιδευτικής ή
    ερευνητικής φύσης, υπό την προϋπόθεση να αναφέρεται η πηγή προέλευσης και να
    διατηρείται το παρόν μήνυμα.  Ερωτήματα που αφορούν τη χρήση της εργασίας
    για κερδοσκοπικό σκοπό πρέπει να απευθύνονται προς τον
    συγγραφέα.
}

\renewcommand{\frontmatter}{
    \cleardoublepage
    \@mainmatterfalse \pagenumbering{roman}
}
\renewcommand{\mainmatter}{
    \label{lastfront}
    \cleardoublepage
    \@mainmattertrue\pagenumbering{arabic}
    \addtocontents{toc}{\protect\addvspace{1em}}
}
\renewcommand{\backmatter}{
    \if@openright\cleardoublepage\else\clearpage\fi
    \@mainmatterfalse
}
% Headings
\def\invisiblethingie{\tiny\ }
\def\myemptypage{
    \mbox{}
    \vspace{\fill}
    \begin{flushright}
        \invisiblethingie
    \end{flushright}
    \vspace{5ex}
    \thispagestyle{empty}
}
%
\renewcommand{\cleardoublepage}{
    \clearpage %
    \if@twoside \ifodd\c@page\else
    \myemptypage
    \newpage
    \if@twocolumn\mbox{}\newpage\fi\fi\fi
}
%
\renewcommand{\chaptermark}[1]{
    \markboth{\mbox{\selectlanguage{greek}\@chapapp}\ \thechapter.\ \ #1}{}
%        \markboth{\mbox{\@chapapp}\ \thechapter.\ \ #1}{}
}
\renewcommand{\sectionmark}[1]{
    \markright{\thesection\ \ #1}{}
}
%
\fancyhf{}
\fancyhead[LE,RO]{\thepage}
\fancyhead[LO]{\slshape\nouppercase{{\rightmark}}}
\fancyhead[RE]{\slshape\nouppercase{{\leftmark}}}
\addtolength{\headheight}{2pt}
\setlength{\headwidth}{\textwidth}
\addtolength{\topmargin}{-2pt}
%
\let\finik@tocont\tableofcontents
\renewcommand{\tableofcontents}{
    \finik@tocont
    \addcontentsline{toc}{chapter}{\contentsname}
}

\let\finik@lof\listoffigures
\renewcommand{\listoffigures}{
    \finik@lof
    \addcontentsline{toc}{chapter}{\selectlanguage{greek}\listfigurename}
}
\let\finik@lot\listoftables
\renewcommand{\listoftables}{
    \finik@lot
    \addcontentsline{toc}{chapter}{\listtablename}
}
% More Enviroments
\newenvironment{keywords}{\section*{\keywordsname}}{}
\newenvironment{keywordseng}{\section*{\keywordsnameeng}}{}
\newcommand{\footacknowledgement}[1]{%
  \let\@tmp@makefntext\@makefntext%
  \long\def\@makefntext##1{%
      \parindent 1em%
      \noindent##1}%
  \footnotetext{#1}%
  \let\@makefntext\@tmp@makefntext%
}
\newenvironment{acknowledgements}{%
  \chapter*{\acknowledgementsname}%
  \addcontentsline{toc}{chapter}{\acknowledgementsname}%
}{}
\def\abstract{%
  \chapter*{\abstractname\@mkboth{\abstractname}{\abstractname}}
  \addcontentsline{toc}{chapter}{\abstractname}
}
\def\abstracteng{
  \chapter*{\abstractnameeng\@mkboth{\abstractnameeng}{\abstractnameeng}}
  \addcontentsline{toc}{chapter}{\abstractnameeng}
}
\def\endabstract{\par\vfil\null\endtitlepage}
%
\let\finik@bibl\bibliography%#1
\renewcommand{\bibliography}[1]{
    \ifodd
        \c@page \newpage \myemptypage \newpage
    \else
        \clearpage
    \fi

    \addcontentsline{toc}{chapter}{\bibname}
    \finik@bibl{#1}
}




\AtEndDocument{\subparagraph{}\label{lastback}}
\endinput
