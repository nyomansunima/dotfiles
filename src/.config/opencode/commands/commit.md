---
description: Create a semantic commit from staged changes
---

Create a semantic git commit. Hint: $ARGUMENTS

Rules:

- Inspect the staged diff below. If nothing is staged, inspect unstaged changes, stage the sensible files, then commit.
- Message format: `<type>: <short imperative summary>` (max 72 chars). Types: feat, fix, docs, style, refactor, perf, test, build, ci, chore, revert.
- No body unless the hint asks for it. No co-authorship, no emojis.
- If the project has a lint script in package.json, run it first and fix failures before committing.
- Do not push. Reply with the created commit hash and message.

Staged files:
!`git status --short`

Staged diff:
!`git diff --cached --stat && git diff --cached`
