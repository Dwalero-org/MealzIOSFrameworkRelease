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
        .target(name: "MealziOSSDK",
            dependencies: [
                .target(name: "MealziOSSDKTarget"),
                .product(name: "MealzCore", package: "MealzCoreRelease")
            ]),
    
       
        .binaryTarget(
            name: "MealziOSSDKTarget",
            url: "https://github.com/Dwalero-org/MealzIOSFrameworkRelease/raw/release/1.0.9/MealziOSSDK.zip",
            checksum: "bcaf9e2ff6abe0cf52730a9079a6cff9f4488171e024aa1969b48b16d5513649"
        )
    ]
)
/*

 */
