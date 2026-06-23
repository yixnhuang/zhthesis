# ZhThesis：中文学术论文模板

简体中文 | [English](README_en.md)

版权所有 © 2026 Yixuan Huang。

一个适用于中国高校的现代化、可定制化 LaTeX 论文模板集合。

本项目由 Yixuan Huang 独立设计与维护，旨在为中国高校学生与研究者提供一个简洁、规范、易扩展的论文写作框架。

---

## 使用说明与版权声明

你可以：

- 将本模板用于个人、学术与教育用途
- 根据自己的学校要求修改模板
- Fork 本仓库并公开开发你自己的模板版本
- 基于本项目开源你的修改版本

但使用本项目即代表你同意以下要求：

### 关于转载与发布

如果你希望公开发布、转载、开源或传播修改后的电子版本，你必须：

- 通过 Fork 本仓库的方式进行开发与发布
- 在你的 README 或文档中明确引用本仓库

请尊重原作者的工作与开发投入。

### 关于版权

本项目的原创权与著作权归 Yixuan Huang 所有。

禁止在未引用本仓库的情况下转载、重新发布或重新上传本项目及其修改版本。

### 关于商业行为

严禁任何形式的商业使用，包括但不限于：

- 售卖模板
- 售卖修改版本
- 将本项目用于盈利性产品或服务

### 关于致谢

如果本模板在你的论文写作过程中帮助到了你，并且你愿意在致谢部分提及本项目，我会非常开心。

能够通过自己的工作帮助到其他人，是一件非常有意义的事情。

### 关于协议

本项目遵循以下许可协议发布：

ACADEMIC ATTRIBUTION AND RESTRICTED USE LICENSE  
Version 1.0.0

完整条款及细则请参阅 LICENSE 文件。

---

## 使用方式

本模板支持以下几种使用方式。

### 方法一：使用 Overleaf 在线模板

你可以直接通过 Overleaf 模板链接创建项目：

（正在准备中）

### 方法二：通过 Release 导入 Overleaf

1. 在 Releases 页面下载 `.zip` 压缩包
2. 登录 [Overleaf](https://www.overleaf.com/)
3. 选择 `New Project -> Upload Project`
4. 上传下载的 `.zip` 文件即可开始使用

> 注意：
> 上传项目后，请在 Overleaf 的 Menu 中将 Compiler 设置为 `XeLaTeX`。
> 否则中文字体可能无法正常编译。

### 方法三：本地编译

你可以通过 Git 获取项目：

```bash
git clone https://github.com/yixuanhuang04/zhthesis.git
```

随后使用本地 LaTeX 环境进行编译。

推荐编译顺序：

```text
XeLaTeX
BibTeX
XeLaTeX
XeLaTeX
```

推荐环境：

- TeX Live
- MacTeX
- MiKTeX
- VS Code + LaTeX Workshop

---

## 联系方式

如果你对模板有任何问题，可以通过我的个人主页中最新的邮箱地址联系我：

[https://github.com/yixuanhuang04](https://yixuanhuang04.github.io)

推荐使用英文邮件进行交流。

---

## 推荐项目结构

```text
.
├── main.tex                     % 主 TeX 文件
├── zhthesis.cls                 % 论文模板类文件
├── references.bib               % 参考文献数据库
├── figures/                     % 图片与插图目录
├── texs/                        % 论文各章节文件
│   ├── 00_abstract.tex          % 中英文摘要
│   ├── 01_intro.tex             % 绪论
│   ├── ...
│   ├── 06_conclusion.tex        % 总结部分
│   ├── 20_acknowledgement.tex   % 致谢
│   └── 30_appendices.tex        % 附录
├── README.md                    % 简体中文项目说明文件
└── README_en.md                 % 英文项目说明文件
```