// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibrary01",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MyLibrary01",
            targets: ["MyLibrary01"]
        ),
        .library(
            name: "Library1",
            targets: ["Target1"]
        ),
        .library(
            name: "IDK",
            targets: ["IDK"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "MyLibrary01",
            dependencies: []
        ),
        .target(
            name: "Target1",
            dependencies: []
        ),
        .target(
            name: "IDK",
            dependencies: []
        ),
        .testTarget(
            name: "MyLibrary01Tests",
            dependencies: ["MyLibrary01"]
        )
    ]
)
