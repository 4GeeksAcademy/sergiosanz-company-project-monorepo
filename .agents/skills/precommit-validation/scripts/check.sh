#!/usr/bin/env bash
set -euo pipefail

base_ref="${1:-origin/main}"
branch="$(git branch --show-current)"

if [[ -z "$branch" || "$branch" == "main" ]]; then
  printf 'FAIL: changes must be prepared on a feature branch (current: %s)\n' "${branch:-detached HEAD}" >&2
  exit 1
fi

if ! git rev-parse --verify --quiet "$base_ref" >/dev/null; then
  printf 'FAIL: base reference does not exist: %s\n' "$base_ref" >&2
  exit 1
fi

staged_files="$(git diff --cached --name-only)"
if [[ -z "$staged_files" ]]; then
  printf 'FAIL: stage the intended files before running pre-commit validation\n' >&2
  exit 1
fi

git diff --check --cached
git diff --check
git diff --check "${base_ref}...HEAD"

printf 'PASS: branch %s; base %s; whitespace checks passed.\nStaged files:\n%s\n' \
  "$branch" "$base_ref" "$staged_files"
