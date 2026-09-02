# Overleaf Template Setup Guide

Instructions for creating and using the
tietreport class on Overleaf.

## Option 1: Using Overleaf Gallery Template

Once tietreport is published:

1. Visit https://www.overleaf.com/
2. Search for "tietreport"
3. Click "Open as Template"
4. Start editing

This is the easiest option for end users.

## Option 2: Manual Setup on Overleaf

### Step 1: Create New Project

1. Log in to Overleaf
2. Click "New Project"
3. Select "Blank Project"
4. Name: "TIET Report - [Your Project]"

### Step 2: Upload Class File

1. In project, click "Files"
2. Click "Upload" button
3. Select `tietreport.cls`
4. Class is now available to your project

### Step 3: Upload Template

1. Click "Files" → "Upload"
2. Select `overleaf-template.tex`
3. Rename to `main.tex` if needed

### Step 4: Upload Bibliography

1. Click "Files" → "Upload"
2. Select `references.bib`
3. Bibliography database is ready

### Step 5: Configure Project

In project settings:
- Main document: `main.tex` or
  `overleaf-template.tex`
- Compiler: pdfLaTeX
- TeX Live version: 2024

### Step 6: Compile

1. Click "Recompile" button
2. PDF should appear without errors
3. Customize title page fields in preamble

## Files in Overleaf Template

```
main.tex              - Main document (start here)
tietreport.cls        - Document class
references.bib        - Bibliography database
```

## Customization Steps

### 1. Edit Title Page

In main.tex preamble, update:

```latex
\TitlePageHeader{Your Course Code}
\ProjectTitle{Your Project Title}
\ProjectSubTitle{Your Subtitle}
\author{Student 1 \\ Student 2 \\ ...}
\TitlePageSubText{Your Group Info}
\AdvisorName{Your Advisor Name}
```

### 2. Add References

In Overleaf:
1. Open `references.bib`
2. Add your bibliography entries
3. Cite in document with `\cite{key}`

To use Zotero:
1. Export library from Zotero as BibTeX
2. Copy contents into `references.bib`
3. Or use BetterBibTeX auto-export

### 3. Write Content

Replace template content with your work:
- Update chapter titles
- Add your sections and subsections
- Include tables and figures
- Write your analysis and conclusions

## Using Zotero on Overleaf

### Setup Workflow

1. **Zotero Desktop:**
   - Create/import references
   - Install BetterBibTeX extension

2. **Auto-Export to Overleaf:**
   - Right-click Zotero collection
   - Select "Export"
   - Format: BibLaTeX
   - Location: choose file
   - Check "Keep updated"

3. **Sync to Overleaf:**
   - Export to local file
   - Upload to Overleaf
   - Or use Zotero's WebDAV sync

4. **Citation in LaTeX:**
   - Use `\cite{citekey}`
   - Compile: pdflatex → biber → pdflatex

## Compilation on Overleaf

Overleaf automatically handles compilation.
For manual control:

**If using biblatex:**
- Menu → ⚙ Settings
- LaTeX Engine: pdfLaTeX
- Compiler will run biber automatically

**Recompile:**
1. Make changes to `.tex` file
2. Click "Recompile" button
3. PDF updates automatically

## Sharing Overleaf Project

### Option 1: Share Link

1. Click "Share" button
2. Enable "Turn on link sharing"
3. Set permissions: Can view/edit
4. Share link with collaborators

### Option 2: Collaborate

1. Click "Share"
2. Add collaborator email
3. Choose permission level
4. Send invitation

Collaborators can edit in real-time.

## Troubleshooting on Overleaf

**"File not found: tietreport.cls"**
- Verify class file is uploaded
- Check file name spelling
- Re-upload if necessary

**Bibliography not showing**
- Verify references.bib is uploaded
- Check \addbibresource path
- Compile 2-3 times
- Check for biber errors in logs

**PDF won't compile**
- Click "Logs and output files"
- Check error messages
- Common issues:
  - Missing package dependencies
  - Syntax errors in .tex file
  - Bibliography citation key mismatch

## Overleaf Gallery Submission

To submit to Overleaf Gallery:

1. Create a public/published project
2. Visit https://www.overleaf.com/gallery
3. Click "Submit template"
4. Fill in template details:
   - Title: "TIET Report"
   - Description
   - Category: Report
   - Tags: TIET, university, report
5. Include thumbnail (automatic)
6. Submit for review

Overleaf team reviews and may feature
your template.

## Support

- Overleaf Help: https://www.overleaf.com/help
- Overleaf Community:
  https://www.overleaf.com/community
- tietreport GitHub:
  https://github.com/thapar-latex/tietreport
- TIET Support: support@tietreport.org

## Best Practices

1. **Regular Backups**: Download project ZIP
   regularly
2. **Version Control**: Use git for version
   history (download → commit)
3. **Collaboration**: Use "Track Changes"
   feature
4. **Bibliography**: Keep references.bib
   updated
5. **Compilation**: Compile before major
   changes to catch errors early
6. **PDF Export**: Download PDF for
   submission/printing
