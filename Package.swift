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
            url: "https://github.com/Dwalero-org/MealzIOSFrameworkRelease/raw/release/1.0.16/MealziOSSDK.zip",
            checksum: "84303c60c503e06e8b6b50068146f2fb209a49add9745fe4b99460d9fe58b733"
        )
        
    ]
)
/*
 
 */
