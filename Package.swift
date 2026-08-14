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
            targets: ["GoogleMobileAdsTarget"]
        ),
        .library(
            name: "GoogleUserMessagingPlatform",
            targets: ["UserMessagingPlatformTarget"]
        )
    ],
    targets: [
        .target(
            name: "GoogleMobileAdsTarget",
            dependencies: [
                .target(name: "GoogleMobileAds"),
                .target(name: "UserMessagingPlatform")
            ],
            path: "GoogleMobileAdsTarget"
        ),
        .target(
            name: "UserMessagingPlatformTarget",
            dependencies: [
                .target(name: "UserMessagingPlatform")
            ],
            path: "UserMessagingPlatformTarget",
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
