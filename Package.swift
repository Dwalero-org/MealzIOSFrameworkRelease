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
        
        /*.target(name: "MealziOSSDK",
                dependencies:[
                    .product(name: "MealzCore", package: "MealzCoreRelease")
                ]
               ),*/
        .binaryTarget(
            name: "MealzIOSFramework",
            url: "https://github.com/Dwalero-org/MealzIOSFrameworkRelease/raw/release/1.0.5/MealzIOSFramework.zip",
            checksum: "8a376f6be576fda05410231e04b2a7a709f3e1ac889e0e778bc98058640065b7"
        )
    ]
)
/*

 */
