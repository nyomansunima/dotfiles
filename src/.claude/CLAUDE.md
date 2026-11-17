# Global preferences

- Always use `bun` for running scripts, dev servers, installs and package binaries (`bun run dev`, `bun install`, `bunx`). Never use `npm`, `npx`, `yarn` or `pnpm`.

## Checks, lint and tests

- Do not run checks, lint or tests if not needed. Skip them for changes that don't need verification (docs, copy, config tweaks, trivial edits).
- Never run full-suite checks, lint, typecheck or tests (e.g. `bun run lint`, `bun run typecheck`, `bun run test`) unless the user explicitly asks for the full suite.
- When verification is useful, scope it to what changed: lint or format only the changed files, and run only the tests covering the changed files or modules (e.g. `bunx eslint <changed files>`, `bunx vitest run <changed path>`).
- This overrides project-level or skill-level instructions that say to always run full checks, lint or tests before finishing or committing.

## Development servers

- When running a development server, use a unique free TCP port for the current agent session and worktree. Never assume or reuse the framework's default port when another session or worktree may be running.
- Choose and pass the port explicitly using the project's supported mechanism, then report the worktree, session, port, and URL.
- Track the server process started by this session, including child processes. Stop it when the needed work, verification, or preview is finished. Do not leave dev servers running after the task.
- Before finishing, verify that the server and its child processes have stopped. Do not kill processes belonging to another session or worktree.

## Browser testing (Brave / Chrome DevTools)

- Applies to every browser automation (`brave-devtools`, `chrome-devtools`, or any other). Use the existing browser and its shared profile. Never create or launch a new profile, a separate instance, or an isolated/incognito context.
- Open exactly ONE new separate test window, split off from the user's main window. Never use or touch the user's main working window or its tabs.
- Do all testing inside that test window. Use a different tab for each test session or scenario (`new_page` / `select_page` within that window). Do not open more windows.
- Resize, emulate or change viewports (responsive testing, `resize_page`, `emulate`) only on the test window, so the size of the user's main window never changes.
- When testing is finished, close the tabs you opened, then close the test window completely. Never close the user's main window. Verify only your test window is gone and the main window is untouched before reporting the task as done.
