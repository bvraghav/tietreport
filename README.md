# tietreport — TIET University Report LaTeX Class

A professional LaTeX document class for university
project reports, specifically designed for Thapar
Institute of Engineering and Technology
(TIET). Provides consistent formatting, custom title
pages, headers, and bibliography management out of the
box.

## Features

- **Custom Title Page**: Formatted for TIET
  institutional requirements with course code, student
  roll numbers, advisor info, and department footer.
- **Professional Layout**: Two-sided printing with
  asymmetric margins (binding gutter on inner edge).
- **Chapter Styling**: Raggedleft chapter titles with
  horizontal rules and professional spacing.
- **Alternating Headers**: Automatic left/right page
  headers with page numbers and project titles on outer
  margins.
- **Bibliography Management**: Integrated biblatex with
  biber backend for modern citation management.
- **Zotero Integration**: Compatible with Zotero +
  BetterBibTeX for automatic reference synchronization.
- **Table of Contents**: Auto-generated TOC with proper
  chapter/section hierarchy.
- **Font and Math Support**: amsmath, amssymb, graphicx
  for professional content.

## Installation

### Option 1: Local Installation

Copy `tietreport.cls` to your LaTeX project directory
alongside your document.

### Option 2: System-Wide Installation

Place `tietreport.cls` in your local TEXMF tree:

```
~/texmf/tex/latex/tietreport/tietreport.cls
```

Then run `texhash` to update the database.

### Option 3: CTAN Installation

Install via your package manager:

```bash
tlmgr install tietreport
```

Or download from CTAN: https://ctan.org/pkg/tietreport

## Quick Start

```latex
\documentclass{tietreport}

\TitlePageHeader{%
  UCS 503 Software Engineering Lab%
}

\ProjectTitle{%
  My Amazing Project%
}

\ProjectSubTitle{%
  A Comprehensive Study%
}

\author{%
  \texttt{10217001} Alice Smith \\
  \texttt{10217002} Bob Johnson \\
  \texttt{10217003} Carol White \\
  \texttt{10217004} David Brown%
}

\TitlePageSubText{%
  Group: \texttt{3001} BE Third Year, CSE%
}

\AdvisorName{%
  Dr. Prof. Name%
}

\TitlePageFooterText{{%
    \large Mid-Semester Evaluation \\[0.2cm]
    \bfseries Computer Science and Engineering
    Department%
  } \\[0.15cm]
  Thapar Institute of Engineering and
  Technology, Patiala%
}

\usepackage[
  style=alphabetic,
  backend=biber
]{biblatex}
\addbibresource{references.bib}

\begin{document}
\maketitle
\tableofcontents

\chapter{Introduction}

Your content here...

\printbibliography

\end{document}
```

## Configuration Options

### Document Class Options

Pass options to `\documentclass`:

```latex
\documentclass[twoside,12pt]{tietreport}
```

Standard report class options are supported: `twoside`,
`oneside`, `openright`, `openany`, `12pt`, `11pt`,
`10pt`, etc.

### Title Page Customization

Override any title page element using these commands in
your preamble:

```latex
\TitlePageHeader{...}
\ProjectTitle{...}
\ProjectSubTitle{...}
\author{...}
\TitlePageSubText{...}
\AdvisorName{...}
\TitlePageFooterText{...}
```

### Margin Adjustment

The class sets margins for two-sided printing:
- Inner (binding): 1.5in
- Outer: 1in
- Top: 1.8in
- Bottom: 0.85in

To customize, load geometry after the class:

```latex
\usepackage[
  inner=1.4in,
  outer=0.9in
]{geometry}
```

### Bibliography Style

Change citation style by passing options to biblatex:

```latex
\usepackage[
  style=authoryear,
  backend=biber
]{biblatex}
```

Available styles: `alphabetic`, `authoryear`,
`numeric`, `ieee`, `apa`, and more.

## Zotero Workflow

1. Install Zotero: https://www.zotero.org/
2. Add BetterBibTeX extension:
   https://retorque.re/zotero-better-bibtex/
3. Create/import references in Zotero
4. Set up auto-export to `references.bib`:
   - Right-click collection → Export
   - Format: BibLaTeX
   - Check "Keep updated"
5. Cite in your document with `\cite{}`
6. Compile: pdflatex → biber → pdflatex

## Sample Documents

The package includes example documents:

- `sample-report-raw.tex`: Full LaTeX document showing
  all features
- `sample-report.tex`: Minimal template with tables,
  figures, and citations

## Requirements

- LaTeX2e with recent packages
- biber (for biblatex bibliography backend)
- graphicx, hyperref, fancyhdr, titlesec
- amsmath, amssymb (optional, for math)

## Compilation

```bash
latexmk -pdf document.tex
```

Or manually:

```bash
pdflatex document
biber document
pdflatex document
pdflatex document
```

## Troubleshooting

**"Class file not found"**
- Ensure `tietreport.cls` is in your document directory
  or TEXMF path
- Run `texhash` if installed system-wide

**Bibliography not appearing**
- Verify `\addbibresource{references.bib}` in preamble
- Ensure `references.bib` exists
- Run biber (not bibtex)
- Compile 3 times: pdflatex → biber → pdflatex →
  pdflatex

**Missing citations**
- Check citation keys match .bib file exactly
- Use `\cite{}`, `\textcite{}`, or `\parencite{}`
- Verify biblatex options in preamble

## Documentation

Full documentation available in:
- `tietreport.cls`: Inline code comments
- `sample-report.tex`: Working example
- `sample-report-raw.tex`: Feature showcase

## License

MIT License. See LICENSE file for details.

## Contributing

Contributions welcome! Submit issues or pull requests
to: https://github.com/bvraghav/tietreport

## Citation

If you use tietreport in academic work, please cite:

```bibtex
@software{tietreport2024,
  author = {Raghav B. Venkataramaiyer},
  title = {tietreport: TIET University Report
  LaTeX Class},
  year = {2024},
  url = {https://ctan.org/pkg/tietreport}
}
```

## Support

- GitHub Issues:
  https://github.com/bvraghav/tietreport/issues
- CTAN Package: https://ctan.org/pkg/tietreport
- Email: support@tietreport.org

## Changelog

### Version 1.0.2 (2026-09-03)

- Fix: Update GitHub Actions upload-artifact to v4
- Fix: Ensure CI/CD workflow uses current action versions

### Version 1.0.1 (2026-09-03)

- Add GitHub Actions CI/CD workflow
- Automate CTAN package generation on releases
- Enable streamlined release distribution

### Version 1.0 (2024-09-03)

- Initial release
- tietreport document class
- Comprehensive documentation
- Zotero + BibTeX integration
- Overleaf template support
