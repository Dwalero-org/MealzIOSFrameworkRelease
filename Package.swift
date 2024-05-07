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
            targets: ["MealziOSSDK"]),
        .library(
            name: "MealziOSSDKDependency",
            targets: ["MealziOSSDKDependency"]),
        
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
            path: "./"
        ),
        .binaryTarget(
            name: "MealziOSSDK",
            url: "https://github.com/Dwalero-org/MealzIOSFrameworkRelease/raw/release/1.0.17/MealziOSSDK.zip",
            checksum: "ef85cc995830615d24cbefa8f232e55114fc53993d2100beb305d9f112bde3cf"
        )
        
    ]
)
/*
 
 */
