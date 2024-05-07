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
            type: .dynamic,
            targets: ["MealzIOSFramework"]),
    ],
    dependencies: {
        var dependencies: [Package.Dependency] = []
            dependencies.append(contentsOf: [
                .package(url: "https://github.com/Dwalero-org/MealzCoreRelease", from: "1.0.13")
            ]
            )
        return dependencies
    }(),
    targets: [
        /*
        .target(name: "MealzIOSFramework",
                dependencies:[
                    .product(name: "MealzCore", package: "MealzCoreRelease")
                ]
               ),*/
        .binaryTarget(
            name: "MealzIOSFramework",
            url: "https://github.com/Dwalero-org/MealzIOSFrameworkRelease/raw/release/1.0.2/MealzIOSFramework.zip",
            checksum: "eb765c59b932778743d81dcdd6286ca13f56b697e6c945a1fc18bd1eac3a01a1"
        )
    ]
)
/*

 */
