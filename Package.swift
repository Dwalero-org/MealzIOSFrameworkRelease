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
            name: "MealziOSSDK",
            dependencies: [
                .target(name: "MealziOSSDKDependency"),
                .product(name: "MealzCore", package: "MealzCoreRelease")
            ]
        ),
        .binaryTarget(
            name: "MealziOSSDKDependency",
            url: "https://github.com/Dwalero-org/MealzIOSFrameworkRelease/raw/release/1.0.13/MealziOSSDK.zip",
            checksum: "8349d2543b8f75ed0af9248a77f10f1f48b95760bc207652fce6235604548153"
        )
        
    ]
)
/*
 
 */
