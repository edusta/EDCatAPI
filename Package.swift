// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EDCatAPI",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "EDCatAPI",
            targets: ["EDCatAPI"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(path: "../EDNetwork"),
        .package(url: "https://github.com/Quick/Nimble.git",
                 .upToNextMajor(from: Version(11, 2, 1))),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "EDCatAPI",
            dependencies: ["EDNetwork"]),
        .testTarget(
            name: "EDCatAPITests",
            dependencies: ["EDCatAPI", "Nimble"]),
    ]
)
