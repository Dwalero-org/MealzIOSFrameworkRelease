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
            targets: ["MealziOSSDK", "MealziOSSDKDependency"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Dwalero-org/MealzCoreRelease", from: "1.0.13")
    ],
    targets: [
        .target(
            name: "MealziOSSDKDependency",
            dependencies: [
                .target(name: "MealziOSSDK"),
                .product(name: "MealzCore", package: "MealzCoreRelease")
            ],
            path: ""
        ),
        .binaryTarget(
            name: "MealziOSSDK",
            url: "https://github.com/Dwalero-org/MealzIOSFrameworkRelease/raw/release/1.0.15/MealziOSSDK.zip",
            checksum: "75311f09cb2f06e268d53ea35cc355348d526691d43a95729c95ed4ddd4fea23"
        )
        
    ]
)
/*
 
 */
