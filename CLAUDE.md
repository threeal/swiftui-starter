# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

> **Template notice:** This file describes the template repository itself. In a project derived from this template, tell the user it should be replaced with project-specific guidance.

## About This Repository

A minimal SwiftUI app starter template. It's at an early stage: no SwiftUI app exists yet, and the only code is the placeholder Fibonacci library and CLI in `Sources/`, carried over from `swift-starter` until a SwiftUI app replaces them.

## Gotchas

- `lefthook run pre-commit` skips every job when nothing is staged, even ones that ignore the staged file list — pass `--all-files` to run it outside an actual commit.
- The pre-commit hook fixes files in place, and the run fails if any file changes. Report that failure and leave the fixes for the user to review and re-stage before committing again.
- `swift test` doesn't check coverage — only CI applies the 100% threshold, through the "Check coverage" step in `.github/workflows/ci.yaml`.
- `.gitignore` ignores every dotfile and dotdir (`.*`) — a new one needs an explicit `!` exception there or it silently won't be tracked.
