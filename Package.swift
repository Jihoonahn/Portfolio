// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Portfolio",
    platforms: [.macOS(.v12), .iOS(.v13)],
    products: [
        .executable(name: "Portfolio", targets: ["Portfolio"])
    ],
    dependencies: [
        .package(url: "https://github.com/swiftwasm/JavaScriptKit.git", from: "0.18.0")
    ],
    targets: [
        .executableTarget(
            name: "Portfolio",
            dependencies: [
                "JavaScriptKit",
                .product(name: "JavaScriptEventLoop", package: "JavaScriptKit")
            ],
            resources: [
                .process("Resources/favicon.ico")
            ]
        ),
        .testTarget(
            name: "PortfolioTests",
            dependencies: ["Portfolio"]),
    ]
)
