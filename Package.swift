// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "LabirintsGoogleAds",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "LabirintsGoogleAds",
            targets: ["LabirintsGoogleAds"]
        )
    ],
    targets: [
        .target(
            name: "LabirintsGoogleAds",
            dependencies: [
                "GoogleMobileAds",
                "UserMessagingPlatform"
            ],
            path: "Sources/LabirintsGoogleAds",
            linkerSettings: [
                .linkedFramework("WebKit")
            ]
        ),
        .binaryTarget(
            name: "GoogleMobileAds",
            path: "Binaries/GoogleMobileAds.xcframework"
        ),
        .binaryTarget(
            name: "UserMessagingPlatform",
            path: "Binaries/UserMessagingPlatform.xcframework"
        )
    ]
)