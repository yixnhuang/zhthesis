% ------------------------------------------------------------------------------
% Chinese Thesis Template
%
% A customizable LaTeX thesis template collection for Chinese universities
%
% Originally created and maintained by:
%   Yixuan Huang
%
% Repository:
%   https://github.com/yixuanhuang04/chinese-thesis-template
%
% Copyright (c) 2026 Yixuan Huang. All rights reserved.
%
% You are allowed to use, modify, and fork this repository for academic and
% personal purposes.
%
% Redistribution or publication of modified electronic versions must be done
% through a fork of the original repository, with clear attribution to the
% original project and repository link included in the documentation.
%
% Republishing this project or modified versions without attribution is
% prohibited.
%
% Commercial use, resale, or any profit-oriented distribution of this project
% or its derivatives is strictly prohibited.
%
% Contact:
%   The most recent contact information can be found at:
%   https://github.com/yixuanhuang04
%
%   English email communication is preferred.
% ------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}[1999/12/01]

\ProvidesClass{chinese-thesis}
  [2026/05/14 Unofficial Chinese University Thesis Class]

% ------------------------------------------------------------------------------
% Internal tokens and options
% ------------------------------------------------------------------------------

\newcommand*\cthesis@tokens@titlename{}
\newcommand*\cthesis@tokens@title{}
\newcommand*\cthesis@tokens@school{}
\newcommand*\cthesis@tokens@class{}
\newcommand*\cthesis@tokens@author{}
\newcommand*\cthesis@tokens@supervisor{}
\newcommand*\cthesis@tokens@keywords{}

\newif\ifcthesis@options@minimal\cthesis@options@minimalfalse
\newif\ifcthesis@options@nobib\cthesis@options@nobibfalse
\newif\ifcthesis@options@heitipatch\cthesis@options@heitipatchfalse

\DeclareOption{minimal}{\cthesis@options@minimaltrue}
\DeclareOption{nobib}{\cthesis@options@nobibtrue}

\DeclareOption{noextrafonts}{
	\ClassWarning{chinese-thesis}{
		The `noextrafonts' option is deprecated and can now be detected automatically
	}
}

\DeclareOption{heitipatch}{
	\cthesis@options@heitipatchtrue
}

\DeclareOption*{
	\PassOptionsToClass{\CurrentOption}{ctexart}
}

\ProcessOptions\relax

\ifcthesis@options@minimal
	\cthesis@options@nobibtrue
\fi

% ------------------------------------------------------------------------------
% Engine and class configuration
% ------------------------------------------------------------------------------

\RequirePackage{ifxetex}
\RequireXeTeX

\PassOptionsToPackage{quiet}{xeCJK}

\LoadClass[a4paper,12pt]{ctexart}

\ifcthesis@options@minimal
	\cthesis@options@nobibtrue
\fi

% ------------------------------------------------------------------------------
% Package configuration
% ------------------------------------------------------------------------------

\RequirePackage{fontspec}

\setmainfont{Times New Roman}
\setsansfont{Arial}

\IfFontExistsTF{STZhongsong}{
	\providecommand{\zhongsong}{\CJKfontspec{STZhongsong}}
}{
	\IfFontExistsTF{STZhongsong.ttf}{
		\providecommand{\zhongsong}{\CJKfontspec{STZhongsong.ttf}}
	}{
		\ClassWarning{chinese-thesis}{
			Font `STZhongsong' was not found. Install it to meet formatting requirements
		}
		\providecommand{\zhongsong}{\songti}
	}
}

\ifcthesis@options@heitipatch
	\IfFontExistsTF{SimSun}{
		\setCJKmainfont{SimSun}[BoldFont={SimHei},ItalicFont={SimKai}]
	}{
		\setCJKmainfont{FandolSong}[BoldFont={FandolHei},ItalicFont={FandolKai}]
	}
\fi

\RequirePackage{amsmath,amsfonts}
\RequirePackage[includeheadfoot]{geometry}

\geometry{
	top=2.5cm,
	bottom=2cm,
	left=2.5cm,
	right=2cm,
	headheight=13pt,
	headsep=0.1cm,
	footskip=0.51cm
}

\RequirePackage[indentafter]{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{titletoc}

\ifcthesis@options@nobib\else
\RequirePackage[
	backend=biber,
	style=gb7714-2015
]{biblatex}
\fi

\ifcthesis@options@minimal\else

\RequirePackage{amssymb}
\RequirePackage{bm}
\RequirePackage{enumitem}

\setlist[1]{
	parsep=0ex,
	topsep=1ex,
	itemsep=0ex
}

\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage{array,longtable,booktabs}
\RequirePackage{multirow,bigstrut,bigdelim}
\RequirePackage{caption,subcaption}

\captionsetup{labelsep=quad}
\captionsetup[figure]{skip={5pt plus 2pt minus 1pt}}

\RequirePackage{cprotect}
\RequirePackage{listings}

\fi

\RequirePackage{hyperref}
\RequirePackage{overpic}
\RequirePackage[ruled,vlined]{algorithm2e}

% ------------------------------------------------------------------------------
% Typography and layout
% ------------------------------------------------------------------------------

\widowpenalty=10000
\clubpenalty=10000

\setlength{\baselineskip}{20pt}

\renewcommand\normalsize{
	\abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
	\abovedisplayshortskip \z@ \@plus3\p@
	\belowdisplayshortskip 7\p@ \@plus3\p@ \@minus4\p@
	\belowdisplayskip \abovedisplayskip
	\let\@listi\@listI
}

\titlespacing*{\section}{0pt}{0.5\baselineskip}{0.5\baselineskip}
\titlespacing*{\subsection}{0pt}{0.5\baselineskip}{0.5\baselineskip}
\titlespacing*{\subsubsection}{0pt}{0.5\baselineskip}{0.5\baselineskip}

\hypersetup{
	pdfstartview=FitH,
	CJKbookmarks=true,
	bookmarksnumbered=true,
	bookmarksopen=true,
	allcolors=blue,
	pdfsubject={Chinese Thesis LaTeX Template},
	pdfcreator={Yixuan Huang},
	pdfproducer={XeLaTeX},
	pdfkeywords={LaTeX, thesis, template, Chinese university}
}

% Prevent incorrect section numbering before \maketitle
{\sf}

\renewcommand{\maketitle}{\par
	\begingroup
	\newpage
	\global\@topnum\z@
	\pdfbookmark[1]{封面}{anchor}
	\@maketitle
	\endgroup
	\global\let\thanks\relax
	\global\let\maketitle\relax
	\global\let\@maketitle\relax
	\global\let\@thanks\@empty
	\global\let\@author\@empty
	\global\let\@date\@empty
	\global\let\@title\@empty
	\global\let\title\relax
	\global\let\author\relax
	\global\let\date\relax
	\global\let\and\relax
}

\renewcommand{\@maketitle}{%
\smallskip
\begin{center}
	\vspace*{2.2cm}
	{\zihao{1}\zhongsong \cthesis@tokens@titlename} \\
	\vspace*{3.3cm}
	{\zihao{2}\bfseries \cthesis@tokens@title}\\
	\vspace*{5.5cm}
	\zhongsong
	\begin{tabular}{cc}
		\zihao{-2} 学院（系）：&
		\underline{\makebox[7cm][c]{\zihao{-2}\cthesis@tokens@school}} \\
		\\
		\zihao{-2}专业班级: &
		\underline{\makebox[7cm][c]{\zihao{-2}\cthesis@tokens@class}} \\
		\\
		\zihao{-2}学生姓名: &
		\underline{\makebox[7cm][c]{\zihao{-2}\cthesis@tokens@author}} \\
		\\
		\zihao{-2}指导教师: &
		\underline{\makebox[7cm][c]{\zihao{-2}\cthesis@tokens@supervisor}} \\
		\\
	\end{tabular}
\end{center}

\thispagestyle{empty}
\clearpage

% Originality statement and copyright authorization

\section*{学位论文原创性声明}

本人郑重声明：所呈交的论文是本人在导师的指导下独立进行研究所取得的研
究成果。除了文中特别加以标注引用的内容外，本论文不包括任何其他个人或集体
已经发表或撰写的成果作品。本人完全意识到本声明的法律后果由本人承担。\\

\par
\hfill 作者签名：\hspace{9em}~\par
\hfill 年 \;\;\; 月 \;\;\; 日\hspace{8em}~

\vspace{2.5cm}

\section*{学位论文版权使用授权书}

本学位论文作者完全了解学校有关保障、使用学位论文的规定，同意学校保留
并向有关学位论文管理部门或机构送交论文的复印件和电子版，允许论文被查阅和
借阅。本人授权省级优秀学士论文评选机构将本学位论文的全部或部分内容编入有
关数据进行检索，可以采用影印、缩印或扫描等复制手段保存和汇编本学位论文。

本学位论文属于1、保密$\square$，在 \;\;\;\; 年解密后适用本授权书 \\

\newlength{\cthesis@length@A}

\settowidth{\cthesis@length@A}{\indent 本学位论文属于}

\hspace*{\cthesis@length@A}2、不保密$\square$\;\;。\\

\hspace*{\cthesis@length@A}
（请在以上相应方框内打“$\surd$”）\\

\par

\hfill 作者签名： \hspace{9ex} 年 \hspace{3ex} 月 \hspace{4ex} 日\par

\hfill 导师签名： \hspace{9ex} 年 \hspace{3ex} 月 \hspace{4ex} 日\\

\thispagestyle{empty}

\clearpage
}

% ------------------------------------------------------------------------------
% Abstract environments
% ------------------------------------------------------------------------------

\renewenvironment{abstract}{%
	\section*{
		\pdfbookmark[1]{\cthesis@cap@zhabstractname}{zhabstract}
		\cthesis@cap@zhabstractname
	}
	\pagenumbering{Roman}
	\quotation
	\pagestyle{plain}
}{%
	\thispagestyle{plain}
	\endquotation
	\clearpage
}

\newenvironment{enabstract}{%
	\section*{
		\pdfbookmark[1]{\cthesis@cap@enabstractname}{enabstract}
		\cthesis@cap@enabstractname
	}
	\quotation
	\pagestyle{plain}
}{%
	\thispagestyle{plain}
	\endquotation
	\clearpage
}

% ------------------------------------------------------------------------------
% Acknowledgement environment
% ------------------------------------------------------------------------------

\newenvironment{acknowledgement}{%
	\phantomsection
	\addcontentsline{toc}{section}{\cthesis@cap@acknowledgement}
	\section*{\cthesis@cap@acknowledgement}
	\quotation
}{%
	\endquotation
}

% ------------------------------------------------------------------------------
% Quotation environment
% ------------------------------------------------------------------------------

\renewenvironment{quotation}
{
	\list{}{
		\listparindent 2em
		\itemindent \listparindent
		\rightmargin\z@
		\leftmargin\z@
		\parsep \z@ \@plus\p@
	}
	\item\relax
}
{
	\endlist
}

% ------------------------------------------------------------------------------
% Table of contents configuration
% ------------------------------------------------------------------------------

\titlecontents{section}[0pt]{\mdseries}
{\thecontentslabel\hskip.5em}
{}
{\titlerule*[0.5pc]{.}\contentspage}

\titlecontents{subsection}[4ex]{\mdseries}
{\thecontentslabel\hskip.5em}
{}
{\titlerule*[0.5pc]{.}\contentspage}

\titlecontents{subsubsection}[8ex]{\mdseries}
{\thecontentslabel\hskip.5em}
{}
{\titlerule*[0.5pc]{.}\contentspage}

\numberwithin{equation}{section}
\numberwithin{table}{section}
\numberwithin{figure}{section}

% ------------------------------------------------------------------------------
% Page style configuration
% ------------------------------------------------------------------------------

\pagestyle{fancy}

\fancyhf{}

\fancyhead[C]{\zihao{5} \cthesis@tokens@titlename}
\fancyfoot[C]{\zihao{5} \thepage}

\renewcommand{\headrulewidth}{0.65pt}

\fancypagestyle{plain}{
	\fancyhf{}
	\fancyfoot[C]{\zihao{5} \thepage}
	\renewcommand{\headrulewidth}{0pt}
}

\setcounter{secnumdepth}{3}

% ------------------------------------------------------------------------------
% Section formatting
% ------------------------------------------------------------------------------

\ctexset{
	section = {
		format = \centering\bfseries\zihao{-2},
		numberformat = \mdseries\sffamily,
		name = {第, 章},
	},
	subsection = {
		format = \bfseries\zihao{3},
		numberformat = \mdseries\sffamily,
	},
	subsubsection = {
		format = \bfseries\zihao{4},
		numberformat = \mdseries\sffamily,
	},
	appendix = {
		name = 附录,
	}
}

\let\@tableofcontents\tableofcontents

\renewcommand{\tableofcontents}{%
	\clearpage
	\begingroup
	\pagestyle{plain}
	\pdfbookmark[1]{\cthesis@cap@contentsname}{contents}
	\@tableofcontents
	\endgroup
	\thispagestyle{plain}
	\clearpage
	\pagenumbering{arabic}
	\let\@tableofcontents\relax
}

% ------------------------------------------------------------------------------
% Footnote configuration
% ------------------------------------------------------------------------------

\RequirePackage{pifont}
\RequirePackage[symbol*,stable]{footmisc}

\DefineFNsymbols{circled}{
	{\ding{192}}
	{\ding{193}}
	{\ding{194}}
	{\ding{195}}
	{\ding{196}}
	{\ding{197}}
	{\ding{198}}
	{\ding{199}}
	{\ding{200}}
	{\ding{201}}
}

\setfnsymbol{circled}

% ------------------------------------------------------------------------------
% Appendix configuration
% ------------------------------------------------------------------------------

\let\@appendix\appendix

\renewcommand\appendix{\par
	\@appendix
	\gdef\thesubsection{\appendixname\Alph{section}\@arabic\c@subsection}
	\gdef\thesubsubsection{
		\appendixname\Alph{section}\arabic{subsection}.\@arabic\c@subsubsection
	}
	\renewcommand\thefigure{\Alph{section}\arabic{figure}}
	\renewcommand\thetable{\Alph{section}\arabic{table}}
	\renewcommand\theequation{A\arabic{equation}}
	\let\@appendix\relax
}

% ------------------------------------------------------------------------------
% Caption names
% ------------------------------------------------------------------------------

\renewcommand\contentsname{\cthesis@cap@contentsname}
\renewcommand\listfigurename{\cthesis@cap@listfigurename}
\renewcommand\listtablename{\cthesis@cap@listtablename}
\renewcommand\indexname{\cthesis@cap@indexname}
\renewcommand\figurename{\cthesis@cap@figurename}
\renewcommand\tablename{\cthesis@cap@tablename}
\renewcommand\appendixname{\cthesis@cap@appendixname}

% ------------------------------------------------------------------------------
% User commands
% ------------------------------------------------------------------------------

\newcommand*\titlename[1]{
	\renewcommand{\cthesis@tokens@titlename}{#1}
}

\renewcommand*\title[1]{
	\renewcommand{\cthesis@tokens@title}{#1}
	\hypersetup{pdftitle={#1}}
}

\newcommand*\school[1]{
	\renewcommand{\cthesis@tokens@school}{#1}
}

\newcommand*\class[1]{
	\renewcommand{\cthesis@tokens@class}{#1}
}

\renewcommand*\author[1]{
	\renewcommand{\cthesis@tokens@author}{#1}
	\hypersetup{pdfauthor={#1}}
}

\newcommand*\supervisor[1]{
	\renewcommand{\cthesis@tokens@supervisor}{#1}
}

% ------------------------------------------------------------------------------
% Keyword commands
% ------------------------------------------------------------------------------

\newcommand\keywords[1]{
	\vspace{\baselineskip}
	{\noindent\zihao{4}\bfseries\cthesis@cap@keywordsname：}
	~{\zihao{-4} #1}
	\hypersetup{pdfkeywords={#1}}
}

\newcommand\enkeywords[1]{
	\vspace{\baselineskip}
	{\noindent\zihao{4}\bfseries\cthesis@cap@enkeywordsname：}
	~{\zihao{-4} #1}
}

% ------------------------------------------------------------------------------
% Bibliography configuration
% ------------------------------------------------------------------------------

\ifcthesis@options@nobib

\providecommand{\printbibliography}{
	\ClassWarning{chinese-thesis}{
		Command `\noexpand\printbibliography' requires `biblatex'
	}
}

\else

\renewcommand{\refname}{\cthesis@cap@refname}

\defbibheading{bibliography}[\refname]{
	\clearpage
	\phantomsection
	\addcontentsline{toc}{section}{\cthesis@cap@refname}
	\section*{#1}
}

\renewcommand{\bibfont}{\zihao{5}}

\fi

% ------------------------------------------------------------------------------
% Theorem environments
% ------------------------------------------------------------------------------

\ifcthesis@options@minimal\else

\newtheorem{conjecture}{\cthesis@cap@conjecture}
\newtheorem{proposition}{\cthesis@cap@proposition}
\newtheorem{problem}{\cthesis@cap@problem}
\newtheorem{assumption}{\cthesis@cap@assumption}
\newtheorem{definition}{\cthesis@cap@definition}
\newtheorem{axiom}{\cthesis@cap@axiom}
\newtheorem{lemma}{\cthesis@cap@lemma}
\newtheorem{theorem}{\cthesis@cap@theorem}
\newtheorem{principle}{\cthesis@cap@principle}
\newtheorem{conclusion}{\cthesis@cap@conclusion}
\newtheorem{corollary}{\cthesis@cap@corollary}
\newtheorem{example}{\cthesis@cap@example}
\newtheorem{solution}{\cthesis@cap@solution}
\newtheorem{proof}{\cthesis@cap@proof}
\newtheorem{property}{\cthesis@cap@property}
\newtheorem{remark}{\cthesis@cap@remark}

\fi

% ------------------------------------------------------------------------------
% Caption constants
% ------------------------------------------------------------------------------

\newcommand*{\cthesis@cap@zhabstractname}{摘~~要}
\newcommand*{\cthesis@cap@enabstractname}{Abstract}
\newcommand*{\cthesis@cap@keywordsname}{关键词}
\newcommand*{\cthesis@cap@enkeywordsname}{Key Words}
\newcommand*{\cthesis@cap@contentsname}{目~~录}
\newcommand*{\cthesis@cap@listfigurename}{插图清单}
\newcommand*{\cthesis@cap@listtablename}{附表清单}
\newcommand*{\cthesis@cap@refname}{参考文献}
\newcommand*{\cthesis@cap@indexname}{索引}
\newcommand*{\cthesis@cap@figurename}{图}
\newcommand*{\cthesis@cap@tablename}{表}
\newcommand*{\cthesis@cap@appendixname}{附}
\newcommand*{\cthesis@cap@acknowledgement}{致~~谢}

\newcommand*{\cthesis@cap@conjecture}{猜想}
\newcommand*{\cthesis@cap@proposition}{命题}
\newcommand*{\cthesis@cap@problem}{问题}
\newcommand*{\cthesis@cap@assumption}{假设}
\newcommand*{\cthesis@cap@definition}{定义}
\newcommand*{\cthesis@cap@axiom}{公理}
\newcommand*{\cthesis@cap@lemma}{引理}
\newcommand*{\cthesis@cap@theorem}{定理}
\newcommand*{\cthesis@cap@principle}{定律}
\newcommand*{\cthesis@cap@conclusion}{结论}
\newcommand*{\cthesis@cap@corollary}{推论}
\newcommand*{\cthesis@cap@example}{例}
\newcommand*{\cthesis@cap@solution}{解}
\newcommand*{\cthesis@cap@proof}{证明}
\newcommand*{\cthesis@cap@property}{性质}
\newcommand*{\cthesis@cap@remark}{注解}

\endinput