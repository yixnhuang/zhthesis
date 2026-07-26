# ZhThesis

A modern, customizable LaTeX framework for writing Chinese academic theses.
ZhThesis provides a structured document class, bilingual abstract support,
academic front matter, bibliography integration, and reusable chapter files for
university thesis projects.

[![License](https://img.shields.io/badge/License-Non--Commercial-blue.svg)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Maintained-success.svg)](#project-status)
[![LaTeX](https://img.shields.io/badge/LaTeX-Thesis%20Template-informational.svg)](#requirements)
[![Compiler](https://img.shields.io/badge/Compiler-XeLaTeX-orange.svg)](#compilation)
[![Overleaf](https://img.shields.io/badge/Overleaf-Compatible-47A141.svg)](#overleaf)

## Overview

ZhThesis is designed for students and researchers who need a clean foundation
for Chinese academic writing without building a document class from scratch. It
separates document metadata, chapter content, bibliography data, and layout
behavior so the template can be adapted to different institutional requirements.

The class intentionally contains Chinese labels and declaration text required in
generated Chinese theses. Project documentation and source comments are written
in English, while runtime document strings remain Chinese by design.

## Features

- Chinese and English abstract support.
- Thesis cover, declarations, authorization pages, and structured front matter.
- Chapter, appendix, acknowledgement, figure, table, and bibliography styling.
- Reusable chapter files under `texs/`.
- XeLaTeX-compatible Chinese typography.
- BibTeX bibliography workflow.
- Local and Overleaf-compatible project structure.

## Requirements

- XeLaTeX
- BibTeX
- A LaTeX distribution such as TeX Live, MacTeX, or MiKTeX
- Chinese fonts compatible with the selected environment

## Overleaf

1. Download or package the repository as a `.zip` archive.
2. In Overleaf, select `New Project` → `Upload Project`.
3. Upload the archive.
4. Set the compiler to `XeLaTeX` in the project menu.

An official Overleaf template link is not currently published.

## Local Usage

```bash
git clone https://github.com/yixnhuang/zhthesis.git
cd zhthesis
```

Edit the metadata in `main.tex` and write chapter content under `texs/`.

## Compilation

Use the following sequence:

```text
XeLaTeX
BibTeX
XeLaTeX
XeLaTeX
```

For example:

```bash
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex
```

## Project Structure

```text
.
├── main.tex
├── zhthesis.cls
├── references.bib
├── texs/
│   ├── 00_abstract.tex
│   ├── 01_intro.tex
│   ├── 06_conclusion.tex
│   ├── 20_acknowledgement.tex
│   └── 30_appendices.tex
├── LICENSE
└── README.md
```

## Customization

Update thesis metadata through the commands in `main.tex`, including title,
school, class, author, and supervisor. Institution-specific cover pages,
declarations, margins, fonts, and heading rules can be adapted in
`zhthesis.cls`.

Review institutional requirements before submitting a thesis. This template does
not guarantee compliance with any particular university or degree program.

## Project Status

Maintained. ZhThesis is suitable as a reusable starting point, but
institution-specific adjustments may be required.

## License

Copyright 2026 Yixuan Huang

Distributed under the Yixuan Huang Non-Commercial Attribution Template License,
Version 1.0. See [LICENSE](LICENSE) for the complete terms.

## Contact

- Website: [yixuanhuang.com](https://yixuanhuang.com)
- Email: [yixnhuang@gmail.com](mailto:yixnhuang@gmail.com)
