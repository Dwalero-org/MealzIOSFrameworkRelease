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
            ],
                path:"MealziOSSDK"),
    
       
        .binaryTarget(
            name: "MealziOSSDKTarget",
            url: "https://github.com/Dwalero-org/MealzIOSFrameworkRelease/raw/release/1.0.10/MealziOSSDK.zip",
            checksum: "5eb0fa94a81a187e112618c78378a0214391dc71a05f5efae0b82ebccbc92c6f"
        )
    ]
)
/*

 */
