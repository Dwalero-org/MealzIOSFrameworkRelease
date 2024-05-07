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
        .target(name: "MealziOSSDKTarget",
            dependencies: [
                .target(name: "MealziOSSDK"),
                .product(name: "MealzCore", package: "MealzCoreRelease")
            ]),
    
       
        .binaryTarget(
            name: "MealziOSSDK",
            url: "https://github.com/Dwalero-org/MealzIOSFrameworkRelease/raw/release/1.0.8/MealziOSSDK.zip",
            checksum: "aea5370fc1c27acd03e25fcde82989c57270c3b83876950949f1d31f11911fb8"
        )
    ]
)
/*

 */
