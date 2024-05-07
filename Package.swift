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
            name: "MealziOSSDK",
            dependencies: [
                .target(name: "MealziOSSDKDependency"),
                .product(name: "MealzCore", package: "MealzCoreRelease")
            ]
        ),
        .binaryTarget(
            name: "MealziOSSDKDependency",
            url: "https://github.com/Dwalero-org/MealzIOSFrameworkRelease/raw/release/1.0.12/MealziOSSDK.zip",
            checksum: "705912d1f478f231f9d7811ae376d68d54fffc74a8749c31d7d297a133258156"
        )
        
    ]
)
/*
 
 */
