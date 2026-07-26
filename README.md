# ZhThesis

ZhThesis is a modern, customizable LaTeX framework for writing Chinese academic theses. It provides a structured document class, bilingual abstracts, academic front matter, bibliography integration, and reusable chapter files for institution-specific thesis projects.

[![License](https://img.shields.io/badge/License-LPPL_1.3c-blue.svg)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Maintained-success.svg)](#project-status)
[![LaTeX](https://img.shields.io/badge/LaTeX-Thesis_Framework-008080.svg)](#requirements)
[![Compiler](https://img.shields.io/badge/Compiler-XeLaTeX-orange.svg)](#compilation)
[![Overleaf](https://img.shields.io/badge/Overleaf-Compatible-47A141.svg)](#overleaf)

## Overview

ZhThesis gives students and researchers a clean foundation for Chinese academic writing without requiring them to build a document class from scratch. It separates document metadata, chapter content, bibliography data, and layout behavior so the framework can be adapted to different institutional requirements.

The class intentionally contains Chinese labels and declaration text used in generated Chinese theses. Project documentation and source comments are written in English, while runtime document strings remain Chinese by design.

## Features

- Chinese and English abstract support
- Thesis cover, declarations, authorization pages, and structured front matter
- Chapter, appendix, acknowledgement, figure, table, and bibliography styling
- Reusable chapter files under `texs/`
- XeLaTeX-compatible Chinese typography
- BibTeX bibliography workflow
- Local and Overleaf-compatible project structure

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

Edit the metadata in `main.tex`, then write chapter content under `texs/`.

## Compilation

Run the following sequence:

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
├── CITATION.cff
├── CONTRIBUTING.md
├── LICENSE
├── NOTICE
└── README.md
```

## Customization

Update thesis metadata through the commands in `main.tex`, including the title,
school, class, author, and supervisor. Institution-specific cover pages,
declarations, margins, fonts, and heading rules can be adapted in
`zhthesis.cls`.

Always review the current requirements of your institution before submission.
ZhThesis is a reusable framework and does not guarantee compliance with any
particular university, department, degree, or publication standard.

## Generated Documents

Theses and other documents generated with ZhThesis belong to their respective
authors. They do not need to use the LPPL, display a ZhThesis notice, cite the
project, or publish their source merely because the framework was used to
produce them.

## Citation

If ZhThesis supports your work and you would like to acknowledge or recommend
the project, please cite or link to the official repository:

```text
Yixuan Huang. ZhThesis: A Modern LaTeX Framework for Chinese Academic Theses.
GitHub repository: https://github.com/yixnhuang/zhthesis
```

The included `CITATION.cff` enables GitHub's **Cite this repository** feature.
Citation is appreciated, but it is not required inside a generated thesis.

## Contributing

Questions, reproducible bug reports, compatibility findings, documentation
corrections, and focused improvements are welcome. For substantial changes,
please open an issue first so the scope and institutional impact can be
discussed.

Thank you to everyone who uses ZhThesis, shares careful feedback, and recognizes
the work behind the project. Your experience helps make the framework more
dependable and useful to future students and researchers.

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines.

## Project Status

Maintained. ZhThesis is suitable as a reusable starting point, but
institution-specific adjustments may be required.

## License

ZhThesis is distributed under the
[LaTeX Project Public License, version 1.3c or later](LICENSE).

This work has the LPPL maintenance status `maintained`. The Current Maintainer
is Yixuan Huang. Modified versions must comply with the LPPL and must not imply
that they are an official ZhThesis release.

See [NOTICE](NOTICE) for generated-document, official-version, and third-party
material clarifications.

## Contact

- Website: [yixuanhuang.com](https://yixuanhuang.com)
- Email: [yixnhuang@gmail.com](mailto:yixnhuang@gmail.com)
- Repository: [github.com/yixnhuang/zhthesis](https://github.com/yixnhuang/zhthesis)
