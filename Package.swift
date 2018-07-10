// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JWT",
    providers: [
        .brew(["libjwt"]),
        .apt(["libjwt"]),
    ],
    dependencies: [
        .package(url: "git@github.com:giginet/jansson-Swift.git", from: "1.0.0"),
        .package(url: "git@github.com:IBM-Swift/OpenSSL.git", from: "1.0.0"),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "JWT",
            targets: ["JWT"]
        )
    ],
    targets: [
        .target(name: "JWT")
    ]
)
