# Swift Starter

A minimal template for building a [Swift](https://www.swift.org/) library with an optional CLI. Ships pre-configured with formatting, linting, 100% test coverage enforcement, pre-commit hooks, and CI.

## Getting Started

Create a new repository from this template on GitHub using [this link](https://github.com/new?template_name=swift-starter&template_owner=threeal), or clone it locally and point it at your own remote.

## Setup

Install [Swift](https://www.swift.org/install/), [Lefthook](https://lefthook.dev/), and [dprint](https://dprint.dev/), then register the pre-commit hook:

```sh
lefthook install
```

## Customizing

Replace or extend the template files to fit your project:

- **`Sources/`** — Replace the placeholder library and CLI with your own code.
- **`Tests/`** — Replace the placeholder tests with your own.
- **`CLAUDE.md`** — Replace with guidance specific to your project.
- **`LICENSE`** — Replace with your preferred license, or keep the [Unlicense](https://unlicense.org/).
- **`Package.swift`** — Rename the package and its products to your own.
- **`README.md`** — Replace with a description of your project.

If your project doesn't need a CLI, remove `Sources/bonacci/`, its exclusion in the coverage check in `.github/workflows/ci.yaml`, and its executable product, target, and `swift-argument-parser` dependency in `Package.swift`.

## Development

Run the tests with:

```sh
swift test
```

CI enforces 100% line coverage on every file, excluding `Sources/bonacci/` through the coverage check in `.github/workflows/ci.yaml`.

Each `git commit` runs the pre-commit hook registered during setup, which checks your changes and fixes what it can in place. If it fails, fix any reported issues, re-stage the changed files, and commit again.

After committing, push to `main` or open a pull request from another branch — CI will run the same checks across all files, plus additional checks of its own.

## Releasing

Update the CLI's `version` in `Sources/bonacci/Bonacci.swift`, push a version tag such as `1.0.0`, and create a GitHub Release.
