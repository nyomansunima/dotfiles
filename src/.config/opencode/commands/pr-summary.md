---
description: Generate an industry-standard PR summary from branch changes
---

Generate a pull request summary. Extra context: $ARGUMENTS

Source data:
!`git status --short && git branch --show-current`
!`git log --oneline main..HEAD 2>/dev/null || git log --oneline -10`
!`git diff --stat main...HEAD 2>/dev/null || git diff --stat HEAD`
!`git diff main...HEAD 2>/dev/null || git diff HEAD`

Rules:

- Start with "This PR..." in 2-3 sentences (per repo convention).
- Then use these sections, omit empties: What changed, Features, Fixes, Breaking changes, Testing, Notes.
- Breaking changes section is required: list any or state "None".
- Keep it lean and factual, no hype, no emojis. Use file paths with line refs where useful.
- Target branch is the current branch vs main. Do not push or create the PR, only output the title and body.
- Suggest a semantic PR title: `<type>: <summary>`.
