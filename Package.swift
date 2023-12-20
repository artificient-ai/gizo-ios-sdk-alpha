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
        .package(name: "Python-iOS", url: "https://github.com/kewlbear/Python-iOS.git", from: "0.1.1-b"),
        .package(name: "NumPy-iOS", url: "https://github.com/kewlbear/NumPy-iOS.git", .branch("main")),
    ],
    targets: [
        .binaryTarget(
            name: "GizoSDK",
            url: "https://zangmi.art/upload/GizoSDK.xcframework.zip",
            checksum: "8bc9e57a997a8c6d4c1bcdcfb4346f9cc63697f163f537deb6c5314e1aaabf0d"
        ),
        .binaryTarget(
            name: "OpenCV",
            url: "https://github.com/opencv/opencv/releases/download/4.8.1/opencv-4.8.1-ios-framework.zip",
            checksum: "0689312a9de439757618a412b266dc5ee75d2e32aefa9eac32c3f808ade06331"
        ),
        .target(
            name: "GizoSDK-iOS",
            dependencies: ["MapboxMaps", "MapboxNavigation", "Python-iOS", "NumPy-iOS", "OpenCV", "GizoSDK"],
            path: "Sources",
            resources: [.copy("Gizo.bundle")],
            linkerSettings: [
                .linkedLibrary("z"),
                .linkedLibrary("bz2"),
                .linkedLibrary("sqlite3"),
                .linkedFramework("CoreML")
                .linkedFramework("SystemConfiguration")
            ]
        )
    ]
)
