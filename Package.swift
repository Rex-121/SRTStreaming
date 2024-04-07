// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SRTExample",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SRTStreaming",
            targets: ["SRTStreaming"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "libsrt", path: "Libs/SRT/libsrt.xcframework"),
        .target(
            name: "SRTStreaming", dependencies: ["libsrt"], path: "Sources"),
        .testTarget(
            name: "SRTStreamingTests",
            dependencies: ["SRTStreaming"]),
    ]
)
