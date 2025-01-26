// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "architecture-util",
    platforms: [.iOS(.v13), .macOS(.v11)],
    products: [
        .library(
            name: "ArchitectureUtil",
            targets: ["ArchitectureUtil"]),
    ],
    targets: [
        .target(
            name: "ArchitectureUtil"
        )
    ]
)
