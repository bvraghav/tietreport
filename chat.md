This is a chat record with Claude Code, useful for
historical context.

# Initial Handshake

The project here intends to create a LaTeX
`documentclass` for a University Report, written over
the `\documentclass{report}`.

I maintain the chat history in the following format
under the file @chat.md

``` markdown
# TITLE 
<!-- (TITLE above to be replaced by the chatbot if
necessary) -->

## Prompt
<!-- (This section should have already been filled by
the user) -->

> Please read the following content and translate this
> as a markdown using a pandoc binary under a shell
> agent: [Google Doc, How to write a project
> report][PROJECT_CONTENT_URL]

[PROJECT_CONTENT_URL]: https://docs.google.com/document/d/1MeNxL0KqnRh324XNBLGc5wSdJnJAKE8A-D7QhwGt3tU/edit?tab=t.0#heading=h.yyr0ftyu94xg

---

<!-- (Chatbot append the findings here, preferably
starting with a new header) -->
```

1. Each h1 is a roundtrip conversation between the bot
   and user.
2. The user’s prompt shall have been filled.  Replace
   the prompt as blockquote sensibly.  *E.g.* leave the
   URL ref’s as above untouched.
3. In order to fill in the response, the bot shall
   replace the last h1 section completely as follows,
   _a)_ Replace the string "TITLE"; _b)_ append the
   bot’s response in md format in the indicated place,
   and leave the user prompt as is; _c)_ append the
   following template.
4. Assume the column-width is 55.
5. After each response git commit as necessary.
6. In case the title is already filled by the user,
   i.e. leave it as is.
7. In case the last prompt already has a bot response,
   create a new section at h1, and append the new
   response.

Template to append (as mentioned in point 3.)
``` markdown
# TITLE

## Prompt

```
   
Ask me if any query, or else let me know, if we are
ready to go.


1. Ignore `report-content-template.md` unless
   explicitly asked.
2. That google doc was a part of the markdown template
   as reference.  I’ll separately instruct.



# Decide the course of action

## Prompt

The plan is as follows:

1. To create a latex document named
   `sample-report-raw.tex` that resembles the
   @sample-report.pdf.  Use a shell agent to run
   `latexmk` on my computer and create a pdf.  I shall
   audit the pdf.
2. Fill the contents in the `sample-report-raw.tex`
   from @report-content-template.md
3. I’ll modify the document to strip it off to a bare
   minimum input and present a `sample-report.tex`
   mentioning `\documentclass{tietreport}`.
4. You shall fill in the gap by creating a
   `tietreport.cls`
5. Again I’ll audit.
6. Finally, we shall publish to ctan and create an
   overleaf template.
   
Read the files as and when necessary.  Just vet the
plan now and ask before starting each step.


During the creating of `sample-report-raw.txt`, the
following set of variables were (re)-defined.

``` tex
% Define Vars
% -----------------------------------------------------
% Title Page Header
\newcommand{\TitlePageHeader}{%
  UCS 503 Software Engineering Project Report%
}

% Project Title
\newcommand{\ProjectTitle}{Proposal to Final}

% Project SubTitle
\newcommand{\ProjectSubTitle}{How to Write a Project Report}

% Authors
\renewcommand{\author}{%
\texttt{102XXXXXXX} {Name Title} \\
\texttt{102XXXXXXX} {Name Title} \\
\texttt{102XXXXXXX} {Name Title} \\
\texttt{102XXXXXXX} {Name Title} \\
}

% Title Page SubText
\newcommand{\TitlePageSubText}{%
  Group: \texttt{3XXX} BE Third Year, CSE%
}

% Advisor Name
\newcommand{\AdvisorName}{Dr. NAME OF THE ADVISOR}

% Title Page Footer Text
\newcommand{\TitlePageFooterText}{{%
    \large Mid-Semester Evaluation \\[0.2cm]
    \bfseries Computer Science and Engineering
    Department%
  } \\[0.15cm]
  Thapar Institute of Engineering and
  Technology, Patiala%
}

% -----------------------------------------------------
```

