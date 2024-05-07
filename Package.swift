// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let configurationMode = "prod"

let package = Package(
    name: "MealziOSSDK",
    defaultLocalization: "fr",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "MealziOSSDK",
//            type: .dynamic,
            targets: ["MealziOSSDK"]),
    ],
    dependencies: {
        [
            .package(url: "https://github.com/Dwalero-org/MealzCoreRelease", from: "1.0.13")
        ]
    }(),
    targets: [
        .target(
            name: "MealziOSSDK",
            dependencies: ["MealziOSSDKDependency"]
        ),
        .binaryTarget(
            name: "MealziOSSDKDependency",
            url: "https://github.com/Dwalero-org/MealzIOSFrameworkRelease/raw/release/1.0.11/MealziOSSDK.zip",
            checksum: "e49e650a1e134c6c9e1906676c163e2963f9089e300f6326c83be2fd6d545641"
        )
    ]
)
/*

 */
