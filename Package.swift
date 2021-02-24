// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "Umbrella",
  platforms: [
    .macOS(.v10_11), .iOS(.v8), .tvOS(.v9), .watchOS(.v2)
  ],
  products: [
    .library(name: "Umbrella", targets: ["Umbrella"]),
    .library(name: "UmbrellaAppboy", targets: ["UmbrellaAppboy"]),
    .library(name: "UmbrellaAppsFlyer", targets: ["UmbrellaAppsFlyer"]),
    .library(name: "UmbrellaFirebase", targets: ["UmbrellaFirebase"]),
  ],
  targets: [
    .target(name: "Umbrella"),
    .target(name: "UmbrellaAppboy", dependencies: ["Umbrella"]),
    .target(name: "UmbrellaAppsFlyer", dependencies: ["Umbrella"]),
    .target(name: "UmbrellaFirebase", dependencies: ["Umbrella"]),
    .testTarget(name: "UmbrellaTests", dependencies: ["Umbrella"]),
    .testTarget(name: "UmbrellaAppboyTests", dependencies: ["UmbrellaAppboy"]),
    .testTarget(name: "UmbrellaAppsFlyerTests", dependencies: ["UmbrellaAppsFlyer"]),
    .testTarget(name: "UmbrellaFirebaseTests", dependencies: ["UmbrellaFirebase"]),
  ],
  swiftLanguageVersions: [.v5]
)
