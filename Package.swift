// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.0"
let moduleName = "GizoSDK"
let checksum = "fb214e05fa98de2251b3d048aa5eabd119c843b773a7ffbbec3e4825f35b9e27"

let package = Package(
    name: "GizoSDK-iOS",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GizoSDK-iOS",
            targets: ["GizoSDK-iOS"]),
    ],
    dependencies: [
        .package(name: "MapboxMaps", url: "https://github.com/mapbox/mapbox-maps-ios.git", .exact("10.12.3")),
        .package(name: "MapboxNavigation", url: "https://github.com/mapbox/mapbox-navigation-ios.git", .exact("2.12.0")),
        .package(name: "Python-iOS", url: "https://github.com/kewlbear/Python-iOS.git", .exact("0.1.1-b20230423-090254")),
        .package(name: "NumPy-iOS", url: "https://github.com/kewlbear/NumPy-iOS.git", .branch("main")),
    ],
    targets: [
        .binaryTarget(
            name: "opencv2",
            url: "https://artificient-ai.s3.eu-central-1.amazonaws.com/opencv2.xcframework.zip",
            checksum: "d68b4094780451e04db624480ad2f53ec7c825b843984eb515370be18a592fe5"
        ),
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/artificient-ai/gizo-ios-sdk-alpha/releases/download/\(version)/\(moduleName).xcframework.zip",
            checksum: checksum
        ),
        .target(
            name: "GizoSDK-iOS",
            dependencies: ["MapboxMaps", "MapboxNavigation", "Python-iOS", "NumPy-iOS", "opencv2", "GizoSDK"],
            resources: [.copy("Gizo.bundle")],
            linkerSettings: [
                .linkedLibrary("z"),
                .linkedLibrary("bz2"),
                .linkedLibrary("sqlite3"),
                .linkedFramework("CoreML"),
                .linkedFramework("SystemConfiguration")
            ]
        )
    ]
)
