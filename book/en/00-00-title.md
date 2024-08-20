---
title:
- GitHub Actions - A practical guide
title-meta: 'GitHub Actions - A practical guide'
author:
- Louis-Guillaume MORAND
date:
- \today
papersize:
- a4
fontsize:
- 12pt
geometry:
- margin=1in
fontfamily:
- charter
header-includes:
- \usepackage{indentfirst}
- \usepackage{draftwatermark}
- \SetWatermarkText{#{DRAFT_LABEL}#}
- \usepackage{tcolorbox}
- \setlength\parindent{24pt}
- \newtcolorbox{myquote}{colback=gray!10!white, colframe=gray!75!black}
- \renewenvironment{quote}{\begin{myquote}}{\end{myquote}}
- \lstset{breaklines=true}
- \lstset{language=[Motorola68k]Assembler}
- \lstset{basicstyle=\small\ttfamily}
- \lstset{extendedchars=true}
- \lstset{tabsize=2}
- \lstset{columns=fixed}
- \lstset{showstringspaces=false}
- \lstset{frame=trbl}
- \lstset{frameround=tttt}
- \lstset{framesep=4pt}
- \lstset{numbers=none}
- \lstset{commentstyle=\color[rgb]{0.56,0.35,0.01}\itshape}
- \lstset{numberstyle=\tiny\ttfamily}
- \lstset{postbreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\color{red}\hookrightarrow\space}}}
---

\thispagestyle{empty}
\clearpage
\tableofcontents
\pagenumbering{roman}
\clearpage
\pagenumbering{arabic}
\setcounter{page}{1}