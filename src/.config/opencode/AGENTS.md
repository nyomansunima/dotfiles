# Global Instructions

## Development servers

- When running a development server, use a unique free TCP port for the current agent session and worktree. Never assume or reuse the framework's default port when another session or worktree may be running.
- Choose and pass the port explicitly using the project's supported mechanism, then report the worktree, session, port, and URL.
- Track the server process started by this session, including child processes. Stop it when the needed work, verification, or preview is finished. Do not leave dev servers running after the task.
- Before finishing, verify that the server and its child processes have stopped. Do not kill processes belonging to another session or worktree.

## Checks, lint and tests

- Never run full-suite checks, lint, typecheck or tests (e.g. `bun run lint`, `bun run typecheck`, `bun run test`) unless the user explicitly asks for the full suite.
- When verification is useful, scope it to what changed: lint or format only the changed files, and run only the tests covering the changed files or modules (e.g. `bunx eslint <changed files>`, `bunx vitest run <changed path>`).
- This overrides project-level or skill-level instructions that say to always run full checks, lint or tests before finishing or committing.

## Working with Git

- Always use semantic commit prefixes (feat:, fix:, docs:, etc.).
- Never push to the main branch. Always push to a feature branch.
- Before committing, lint only the changed files, if the project has a linter.

## Writing

- When writing pull request descriptions, start with "This PR..." and
  keep it to 2-3 sentences.
- When writing markdown, avoid headings smaller than H2 and don't
  use bold for emphasis.

## Communication

- Be concise. Don't oversell changes or use fancy words like
  "comprehensive", "utilize", "streamline", or "leverage".
- Never use em dashes. Use commas, colons, or separate sentences instead.
- If your last message included URLs, list them at the end so I can
  open them easily.

## Browser MCP cleanup

- When you finish or are done running a browser MCP (`brave-devtools`, `chrome-devtools`, or any other browser automation), close the browser window completely, not just the tabs you opened.
- Do this before reporting the task as done, and verify the browser is no longer running.
