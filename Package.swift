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
        
        if configurationMode == "dev" {
            dependencies.append(contentsOf: [
                .package(path: "../MealzCore")
            ]
            )
        } else {
            dependencies.append(contentsOf: [
                .package(url: "https://github.com/Dwalero-org/MealzCoreRelease", from: "1.0.13")
            ]
            )
        }
        return dependencies
    }(),
    targets: [
        .target(
            name: "MealzIOSFramework",
            dependencies: {
                var dependencies: [Target.Dependency] = []
                if configurationMode == "dev" {
                    dependencies.append(contentsOf: [
                        .product(name: "MealzCore", package: "MealzCore"),
                    ]
                    )
                } else {
                    dependencies.append(contentsOf: [
                        .product(name: "MealzCore", package: "MealzCoreRelease"),
                    ]
                    )
                }
                return dependencies
            }(),
            resources: [
                .copy("PrivacyInfo.xcprivacy"),
                .process("Resources")
            ]
        )
    ]
)
