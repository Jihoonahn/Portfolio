// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Portfolio",
    platforms: [.macOS(.v12), .iOS(.v13)],
    products: [
        .executable(name: "Portfolio", targets: ["Portfolio"])
    ],
    dependencies: [
        .package(url: "https://github.com/TokamakUI/Tokamak.git", from: "0.11.1")
    ],
    targets: [
        .executableTarget(
            name: "Portfolio",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak"),
                .product(name: "TokamakDOM", package: "Tokamak"),
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
