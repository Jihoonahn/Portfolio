// swift-tools-version:5.7

import PackageDescription
let package = Package(
    name: "Portfolio",
    products: [
        .executable(name: "Portfolio", targets: ["Portfolio"])
    ],
    dependencies: [
        .package(name: "JavaScriptKit", url: "https://github.com/swiftwasm/JavaScriptKit", from: "0.15.0")
    ],
    targets: [
        .executableTarget(
            name: "Portfolio",
            dependencies: [
                .product(name: "JavaScriptKit", package: "JavaScriptKit")
            ]),
        .testTarget(
            name: "PortfolioTests",
            dependencies: ["Portfolio"]),
    ]
)
