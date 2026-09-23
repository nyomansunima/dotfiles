---
description: Commit semantically and push to a feature branch
---

Create a semantic git commit and push it. Hint: $ARGUMENTS

Rules:

- Same message format as /commit: `<type>: <summary>`, types feat, fix, docs, style, refactor, perf, test, build, ci, chore, revert.
- Run the lint script first if one exists. Fix failures before committing.
- Never commit directly intent to push to main or master. If on main, create a feature branch first (e.g. feat/short-name) and push with -u origin.
- Otherwise push to the current branch.
- Reply with the commit message and branch pushed.

Staged files:
!`git status --short && git branch --show-current`

Staged diff:
!`git diff --cached --stat && git diff --cached`
