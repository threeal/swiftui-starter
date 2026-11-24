// swift-tools-version: 6.4

import PackageDescription

let package = Package(
  name: "bonacci",
  products: [
    .executable(name: "bonacci", targets: ["bonacci"]),
    .library(name: "BonacciKit", targets: ["BonacciKit"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-argument-parser", from: "1.8.2")
  ],
  targets: [
    .executableTarget(
      name: "bonacci",
      dependencies: [
        "BonacciKit",
        .product(name: "ArgumentParser", package: "swift-argument-parser"),
      ]
    ),
    .target(name: "BonacciKit"),
    .testTarget(name: "BonacciKitTests", dependencies: ["BonacciKit"]),
  ]
)
