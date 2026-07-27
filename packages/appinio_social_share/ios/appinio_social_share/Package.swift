// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "appinio_social_share",
    platforms: [
        .iOS("13.0"),
    ],
    products: [
        .library(name: "appinio-social-share", targets: ["appinio_social_share"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/facebook/facebook-ios-sdk",
            "18.0.2" ..< "19.0.0"
        ),
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
    ],
    targets: [
        .target(
            name: "appinio_social_share",
            dependencies: [
                .product(name: "FacebookCore", package: "facebook-ios-sdk"),
                .product(name: "FacebookShare", package: "facebook-ios-sdk"),
                .product(name: "FlutterFramework", package: "FlutterFramework"),
            ],
            path: "Sources/appinio_social_share"
        ),
    ]
)
