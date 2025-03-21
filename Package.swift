// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "architecture-util",
    platforms: [.iOS(.v14), .macOS(.v11)],
    products: [
        .library(
            name: "ArchitectureUtil",
            targets: ["ArchitectureUtil"]
        ),
        .library(
            name: "Example",
            targets: ["Example"]
        ),
    ],
    targets: [
        .target(
            name: "ArchitectureUtil"
        ),
        .target(
            name: "Example",
            dependencies: [
                .target(name: "ArchitectureUtil")
            ]
        ),
    ]
)
