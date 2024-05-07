// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let configurationMode = "prod"

let package = Package(
    name: "MealzIOSFramework",
    defaultLocalization: "fr",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "MealzIOSFramework",
  //          type: .dynamic,
            targets: ["MealzIOSFramework"]),
    ],
    dependencies: {
        [
            .package(url: "https://github.com/Dwalero-org/MealzCoreRelease", from: "1.0.13")
        ]
    }(),
    targets: [
        
        .target(name: "MealzIOSFramework",
                dependencies:[
                    .product(name: "MealzCore", package: "MealzCoreRelease")
                ]
               )/*,
        .binaryTarget(
            name: "MealzIOSFramework",
            url: "https://github.com/Dwalero-org/MealzIOSFrameworkRelease/raw/release/1.0.3/MealzIOSFramework.zip",
            checksum: "364022a7cc50bf6e2c2f7db471f94208afe90fdbf0c24ba9ef5bf332955542bb"
        )*/
    ]
)
/*

 */
