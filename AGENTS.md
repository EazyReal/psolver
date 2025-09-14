# Repository Guidelines

## Project Structure & Module Organization
- `lib/` — Core OCaml library (`psolver`) modules. Prefer adding new logic here. Consider adding `.mli` signatures for public APIs.
- `bin/` — Executable entry point. Public name is `psolver` (see `bin/dune`). Keep this thin; call into `lib`.
- `test/` — Test sources and `dune` test stanzas. Add new test files here and update `test/dune` if you introduce more suites.
- `dune-project`, `*/dune` — Build configuration. Edit stanzas when adding libs, executables, or tests.
- `_build/` — Dune build artifacts (generated).

## Build, Test, and Development Commands
- Install deps: `opam install . --deps-only -t` — Installs build and test dependencies.
- Build: `dune build` — Compiles library, tests, and binaries.
- Run locally: `dune exec psolver` — Executes the CLI from `bin/main.ml`.
- Tests: `dune runtest` — Runs tests under `test/`.
- Clean: `dune clean` — Removes build artifacts.
- Format (if ocamlformat installed): `dune fmt` — Formats sources.

## Coding Style & Naming Conventions
- Language: OCaml. Indentation 2 spaces, no tabs, max ~100 cols.
- Files: `snake_case.ml` / `snake_case.mli`; Modules are `Capitalized` (e.g., `hand_eval.ml` defines module `Hand_eval`).
- Public API: Prefer explicit `.mli` signatures for library modules.
- Formatting: Use `ocamlformat` if available. Keep diffs minimal and focused.

## Testing Guidelines
- Location: Place tests in `test/`. Start with `test_psolver.ml` or add more files as needed.
- Running: `dune runtest` should succeed before submitting.
- Scope: Add unit tests for new functions and regression tests for fixed bugs.
- Naming: Use descriptive test names; group related tests into modules.

## Commit & Pull Request Guidelines
- Commits: Imperative subject, concise body. Optional scope prefix: `lib: add range utils`.
- Examples:
  - `bin: wire CLI to library`
  - `lib: implement hand ranking`
  - `test: add edge cases for flush`
- Pull Requests: Include a clear description, rationale, and how to test (commands/inputs/expected output). Link related issues. Ensure `dune build` and `dune runtest` pass.

## Security & Configuration Tips
- Use an opam local switch if desired: `opam switch create .` then `eval $(opam env)`.
- Avoid checking in generated files under `_build/`.

## Agent-Specific Notes
- Keep `bin/` thin; place algorithms in `lib/` with tests in `test/`.
- When adding modules, update the corresponding `dune` stanzas.
