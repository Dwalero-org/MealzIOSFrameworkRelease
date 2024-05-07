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
            ]
        ),
        .binaryTarget(
            name: "MealziOSSDK",
            url: "https://github.com/Dwalero-org/MealzIOSFrameworkRelease/raw/release/1.0.14/MealziOSSDK.zip",
            checksum: "97f33c0f291725233d8a9715ed041927d5d965fb4f3a36db130ac2f207aff577"
        )
        
    ]
)
/*
 
 */
