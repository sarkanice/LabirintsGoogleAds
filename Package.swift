// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "LabirintsGoogleAds",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "GoogleMobileAds",
            targets: [
                "GoogleMobileAds",
                "UserMessagingPlatform"
            ]
        ),
        .library(
            name: "GoogleUserMessagingPlatform",
            targets: [
                "UserMessagingPlatform"
            ]
        )
    ],
    targets: [
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