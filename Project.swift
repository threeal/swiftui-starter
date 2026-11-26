import ProjectDescription

let project = Project(
  name: "Counter",
  settings: .settings(base: [
    "SWIFT_APPROACHABLE_CONCURRENCY": "YES",
    "SWIFT_DEFAULT_ACTOR_ISOLATION": "MainActor",
    "SWIFT_VERSION": "6.0",
  ]),
  targets: [
    .target(
      name: "Counter",
      destinations: .macOS,
      product: .app,
      bundleId: "com.example.counter",
      deploymentTargets: .macOS("27.0"),
      buildableFolders: ["Counter/Sources"]
    ),
    .target(
      name: "CounterTests",
      destinations: .macOS,
      product: .unitTests,
      bundleId: "com.example.counter.tests",
      deploymentTargets: .macOS("27.0"),
      buildableFolders: ["Counter/Tests"],
      dependencies: [.target(name: "Counter")]
    ),
  ]
)
