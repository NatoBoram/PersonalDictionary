# Project guidelines

## Architecture

- This repository is data-first: `dictionaries/*.txt` are the source of truth and build scripts package them for Gboard import.
- `scripts/build.sh` builds one dictionary into `PersonalDictionary-<name>.zip`.
- `scripts/build_all.sh` loops over every file in `dictionaries/` and builds all ZIP files.
- `scripts/*.js` files are browser-console helpers for collecting words, not Node.js runtime modules.

## Build and validation

- Prefer `pnpm` in this workspace.
- Build one dictionary with `pnpm build <dictionary-name>`.
- Build all dictionaries with `pnpm build:all`.
- Validate formatting with `pnpm lint` and fix formatting with `pnpm lint:fix`.

## Dictionary conventions

- Keep dictionaries in Gboard TSV format. Use `README.md` as the canonical format reference.
- Preserve the required Gboard header lines at the top of each dictionary file.
- Keep one dictionary per file in `dictionaries/` and use stable kebab-case file names.
- When adding words, keep entries tab-separated and sorted where practical.

## Project-specific gotchas

- `scripts/build.sh` requires the `7z` binary to be installed on the local machine.
- `scripts/build.sh` expects exactly one dictionary argument and reads `dictionaries/<name>.txt`.

## Key references

- `README.md`: usage workflow, Gboard format details and project guidelines.
- `scripts/build.sh`: canonical single-dictionary packaging flow.
- `scripts/build_all.sh`: canonical batch packaging flow.
- `dictionaries/english.txt` and `dictionaries/french.txt`: concrete TSV examples.
