# ZhThesis: A modern LaTeX template for Chinese academic theses

[简体中文](README.md) | English

Copyright (c) 2026 Yixuan Huang.

A modern and customizable LaTeX thesis template collection designed for Chinese universities.

This project was independently created and maintained by Yixuan Huang.  
The template is intended to provide a clean, extensible, and reusable thesis-writing framework for students and researchers across different Chinese universities.

---

## License and Usage

You are welcome to:

- Use this template for personal, academic, and educational purposes
- Modify the template for your own university or thesis requirements
- Fork this repository and publicly develop your own customized version
- Open-source your modified version based on this project

However, by using this repository, you agree to the following conditions:

### Attribution Requirement

If you publish, redistribute, or open-source a modified version of this template in electronic form, you must:

- Fork this repository instead of directly re-uploading or republishing the source files
- Clearly reference and attribute the original repository in your README or documentation

Please respect the original work and development effort behind this project.

### Copyright and Authorship

The author reserves full authorship and original copyright of this project.

Unauthorized redistribution without attribution is prohibited.

### Commercial Restriction

Commercial use of this project is strictly prohibited, including but not limited to:

- Selling the template
- Selling modified versions
- Packaging the project into paid products or services

### Acknowledgement

If this template has helped you during your thesis writing process and you would like to mention it in your acknowledgement section, it would be sincerely appreciated.

It is always meaningful to know that this project has been useful to others.

### License

This project is distributed under the:

Yixuan Huang Non-Commercial Attribution Template License
Version 1.0

See the `LICENSE` file for full terms and conditions.

---

## Usage

This template can be used in several ways.

### Method 1: Use the Overleaf Template

You can directly create a project from the Overleaf template link:

(Coming soon)

### Method 2: Import Release Package into Overleaf

1. Download the `.zip` package from the Releases page
2. Log in to [Overleaf](https://www.overleaf.com/)
3. Select `New Project -> Upload Project`
4. Upload the downloaded `.zip` file

> [!NOTE]
> After uploading the project, please set the compiler in the Overleaf Menu to `XeLaTeX`.
> Otherwise, Chinese fonts may fail to compile correctly.

You may also clone the repository and compress the project manually before uploading.

### Method 3: Compile Locally

Clone the repository using Git:

```bash
git clone https://github.com/yixnhuang/zhthesis.git
```

Then compile the project using your local LaTeX environment.

Recommended compilation sequence:

```text
XeLaTeX
BibTeX
XeLaTeX
XeLaTeX
```

Recommended environments:

- TeX Live
- MacTeX
- MiKTeX
- VS Code + LaTeX Workshop

---

## Contact

If you have any questions about the template, you may contact me using the most recent email address available on my personal website:

[https://github.com/yixnhuang](https://yixnhuang.github.io)

English email communication is preferred.

---

## Recommended Project Structure

```text
.
├── main.tex                    % Main TeX source file
├── zhthesis.cls                % Thesis document class
├── references.bib              % Bibliography database
├── figures/                    % Images and figures
├── texs/                       % Thesis chapter files
│   ├── 00_abstract.tex         % Chinese and English abstracts
│   ├── 01_intro.tex            % Introduction
│   ├── ...
│   ├── 06_conclusion.tex       % Conclusion
│   ├── 20_acknowledgement.tex  % Acknowledgement
│   └── 30_appendices.tex       % Appendices
├── README.md                   % Project documentation (Simplified Chinese)
└── README_en.md                % Project documentation (English)
```