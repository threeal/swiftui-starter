# SwiftUI Starter

A minimal template for building an app with [SwiftUI](https://developer.apple.com/swiftui/). Ships pre-configured with formatting, linting, unit tests, pre-commit hooks, and CI.

## Getting Started

Create a new repository from this template on GitHub using [this link](https://github.com/new?template_name=swiftui-starter&template_owner=threeal), or clone it locally and point it at your own remote.

## Setup

Install [Xcode](https://developer.apple.com/xcode/), [Tuist](https://tuist.dev/), [Lefthook](https://lefthook.dev/), and [dprint](https://dprint.dev/), then register the pre-commit hook:

```sh
lefthook install
```

## Customizing

Replace or extend the template files to fit your project:

- **`Counter/`** — Replace the placeholder counter app and its tests with your own code.
- **`CLAUDE.md`** — Replace with guidance specific to your project.
- **`LICENSE`** — Replace with your preferred license, or keep the [Unlicense](https://unlicense.org/).
- **`Project.swift`** — Rename the project and its targets to your own, and replace the `com.example.counter` bundle IDs before shipping.
- **`README.md`** — Replace with a description of your project.

If your project also targets iOS, add `.iPhone` and `.iPad` to each target's `destinations` in `Project.swift`, and give its `deploymentTargets` an iOS version too.

## Development

Generate the Xcode project from `Project.swift` and open it in Xcode, where you can run the app and its tests:

```sh
tuist generate
```

Or run the tests from the command line with:

```sh
tuist test
```

Each `git commit` runs the pre-commit hook registered during setup, which checks your changes and fixes what it can in place. If it fails, fix any reported issues, re-stage the changed files, and commit again.

After committing, push to `main` or open a pull request from another branch — CI will run the same checks across all files, plus additional checks of its own.
