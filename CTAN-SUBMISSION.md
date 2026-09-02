# CTAN Submission Guide for tietreport

This document outlines the process for
submitting tietreport to CTAN (Comprehensive
TeX Archive Network).

## Files Required for CTAN

```
tietreport/
├── tietreport.cls          (main class file)
├── README.md               (package description)
├── LICENSE                 (MIT license)
├── references.bib          (sample bibliography)
├── sample-report.tex       (minimal example)
├── sample-report-raw.tex   (full-featured example)
└── overleaf-template.tex   (Overleaf template)
```

## Pre-Submission Checklist

- [x] Class file (tietreport.cls)
- [x] Documentation (README.md)
- [x] License (LICENSE - MIT)
- [x] Sample documents (*.tex)
- [x] Example bibliography (references.bib)
- [x] Version number in class file
- [x] Contact information documented

## CTAN Submission Steps

### 1. Prepare Package

Ensure all files are in the correct format:
- Class file properly commented
- README formatted for CTAN (up to 55 chars)
- License file included
- Sample files compile without errors

### 2. Create Account

Visit https://ctan.org/upload and create an
account if you don't have one.

### 3. Package Upload

1. Navigate to https://ctan.org/submit
2. Fill in package details:
   - Package name: tietreport
   - Version: 1.0
   - License: MIT
   - Summary: "TIET University Report LaTeX Class"
3. Upload the package files as a .zip or .tar.gz
4. Provide repository URL if available

### 4. Package Description

Fill in the CTAN form with:

**Package Name:**
tietreport

**Short Description:**
Professional LaTeX document class for TIET
university project reports with custom title
pages, headers, and bibliography management.

**Long Description:**
Provides a reusable LaTeX document class
tailored for Thapar Institute of Engineering
and Technology (TIET) project reports. Features
include:
- Custom institutional title page formatting
- Professional two-sided printing layout
- Chapter styling with visual hierarchy
- Alternating page headers and footers
- Integrated biblatex bibliography support
- Zotero + BetterBibTeX compatibility
- Comprehensive documentation and examples

**Topics:**
- Class files for academic theses
- Formatting project reports
- Bibliography management
- Educational use

**Maintainer:**
Raghav B. Venkataramaiyer
<bvraghav.claude@gmail.com>

### 5. Documentation

Provide links and information:

**Repository:**
https://github.com/thapar-latex/tietreport

**Bug Reports:**
https://github.com/thapar-latex/tietreport/issues

**Documentation:**
See README.md included with package

### 6. License

- License: MIT
- Include LICENSE file in submission
- Confirm license terms allow distribution

### 7. Review and Approve

1. CTAN maintainers will review submission
2. May request changes or clarifications
3. Address feedback and resubmit
4. Upon approval, package is published

## After Acceptance

Once CTAN accepts the package:

1. Package becomes available at:
   https://ctan.org/pkg/tietreport

2. Automatically included in TeX Live and
   MiKTeX distributions

3. Appears in CTAN search within 24 hours

4. Users can install via:
   ```
   tlmgr install tietreport
   ```

## CTAN Directory Structure

Standard CTAN organization:

```
tex/latex/tietreport/          (class file)
doc/latex/tietreport/          (documentation)
doc/latex/tietreport/examples/ (sample files)
```

CTAN automatically organizes files based on
extensions and conventions.

## Version Management

Update version in tietreport.cls:

```latex
\ProvidesClass{tietreport}[2024/09/03 %
  TIET Report Class v1.0]
```

Increment version for each release:
- 1.0 → 1.1 (minor improvements)
- 1.0 → 2.0 (major changes)

## Contact CTAN

**CTAN Admins:**
support@ctan.org

**Upload Interface:**
https://ctan.org/upload

**Submission Guidelines:**
https://ctan.org/help/upload

## Related Resources

- CTAN License Info: https://ctan.org/license
- TeX Live: https://tug.org/texlive/
- MiKTeX: https://miktex.org/
- Package Documentation:
  https://ctan.org/pkg/tietreport
