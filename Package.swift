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
            name: "MealziOSSDK",
            url: "https://github.com/Dwalero-org/MealzIOSFrameworkRelease/raw/release/1.0.6/MealzIOSFramework.zip",
            checksum: "da6d1647b0fecd5199d9d34c4ffecaa2f584215580fa7d4bc1108f2efa7eec4a"
        )
    ]
)
/*

 */
