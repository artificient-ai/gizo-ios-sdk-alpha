// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

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
            url: "https://zangmi.art/upload/opencv2.xcframework.zip",
            checksum: "d68b4094780451e04db624480ad2f53ec7c825b843984eb515370be18a592fe5"
        ),
        .binaryTarget(
            name: "GizoSDK",
            url: "https://zangmi.art/upload/GizoSDK.xcframework.zip",
            checksum: "566cfc76682837fe5bfb8867fcb6a8a5e63b9b4662c979b5e36abaaa411cae6d"
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
